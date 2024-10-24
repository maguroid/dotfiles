#!/bin/bash

# @raycast.schemaVersion 1
# @raycast.icon images/fire.svg
# @raycast.title FireCrawl Markdown
# @raycast.mode fullOutput
# @raycast.packageName FireCrawl Markdown
# @raycast.description Crawl a website and turn it into markdown
# @raycast.author @maguroid
# @raycast.argument1 {"type": "text", "placeholder": "URL"}
# @raycast.argument2 {"type": "text", "placeholder": "Pages limit", "optional": true}

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

# Arguments
URL="$1"
LIMIT=${2:-100}

# Constants
FIRECRAWL_ENDPOINT="http://localhost:3002"
BROWSER="Brave Browser"

# Variables
JOB_DATA=""
JOB_ID=""
TEMP_FILE=""

# Function to execute crawl job and retrieve results
crawl_job() {
    local url="$1"
    local next_url
    local job_response

    if [ -z "$url" ]; then
        echo "No URL provided"
        exit 1
    fi

    echo -e "${GREEN}crawl_website: $url${NC}"

    # Execute the crawl job
    job_response=$(curl -s -X POST "$FIRECRAWL_ENDPOINT/v1/crawl" \
        -H 'Content-Type: application/json' \
        -d "{\"url\": \"$url\", \"limit\": $LIMIT, \"scrapeOptions\": {\"formats\": [\"markdown\"]}}")

    JOB_ID=$(echo "$job_response" | jq -r '.id')

    echo -e "${GREEN}job_started: $JOB_ID${NC}"

    if [ -z "$JOB_ID" ]; then
        echo -e "${RED}Failed to initiate crawl job${NC}"
        exit 1
    fi

    # Get the crawl job result
    while :; do
        sleep 5
        job_response=$(curl -s -X GET "$FIRECRAWL_ENDPOINT/v1/crawl/$JOB_ID" \
            -H 'Content-Type: application/json')

        status=$(echo "$job_response" | jq -r '.status')

        echo -e "${YELLOW}job_status: $status${NC}"

        if [ "$status" == "completed" ]; then
            # Add markdown data to JOB_DATA
            JOB_DATA+=$(echo "$job_response" | jq -r '.data[].markdown')
            next_url=$(echo "$job_response" | jq -r '.next')

            # Handle next page if available
            # next_url equals null or empty string when there are no more pages
            while [ -n "$next_url" ] && [ "$next_url" != null ]; do
                next_url=${next_url/https/http}

                echo -e "${GREEN}next_url_found: $next_url${NC}"

                job_response=$(curl -s -X GET "$next_url" \
                    -H 'Content-Type: application/json')
                JOB_DATA+=$(echo "$job_response" | jq -r '.data[].markdown')
                next_url=$(echo "$job_response" | jq -r '.next')
            done
            break
        elif [ "$status" == "failed" ]; then
            echo -e "${RED}Crawl job failed${NC}"
            exit 1
        fi
    done
}

onExit() {
    curl -s -o /dev/null -X DELETE "$FIRECRAWL_ENDPOINT/v1/crawl/$JOB_ID"
    echo -e "${GREEN}Crawl job deleted${NC}"

    if [ -n "$TEMP_FILE" ]; then
        rm -f "$TEMP_FILE"
        echo -e "${GREEN}Deleted temp file: $TEMP_FILE${NC}"
    fi
}

onInterrupt() {
    curl -s -o /dev/null -X DELETE "$FIRECRAWL_ENDPOINT/v1/crawl/$JOB_ID"
    echo -e "${GREEN}Crawl job deleted${NC}"
    exit 1
}

trap 'onInterrupt' INT # Ctrl+C from Raycast cannot be trapped
trap 'onExit' EXIT

# Start the crawl job
crawl_job "$URL"

# Open the result in browser
if [ -n "$JOB_DATA" ]; then
    temp_dir=$(mktemp -d)
    TEMP_FILE="$temp_dir/firecrawl-markdown.md"

    echo "$JOB_DATA" >"$TEMP_FILE"
    echo -e "${GREEN}Created temp file: $TEMP_FILE${NC}"

    open -a "$BROWSER" "file://$TEMP_FILE"

    # Wait for the browser to open the file not to delete the temp file
    sleep 5
else
    echo -e "${RED}No markdown data found${NC}"
fi
