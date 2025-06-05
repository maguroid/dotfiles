gcmp() {
    git_remote_str=$(git remote -v | grep origin | grep fetch)

    # Extract provider and repo from git remote URL
    if echo "$git_remote_str" | grep -q "https://"; then
        # HTTPS format: https://github.com/user/repo.git
        provider=$(echo "$git_remote_str" | sed 's|.*https://\([^\.]*\)\..*|\1|')
        repo=$(echo "$git_remote_str" | sed 's|.*https://[^/]*/\([^/]*/[^/ ]*\).*|\1|' | sed 's|\.git||')
    elif echo "$git_remote_str" | grep -q "@"; then
        # SSH format: git@github.com:user/repo.git
        provider=$(echo "$git_remote_str" | sed 's|.*@\([^\.]*\)\..*|\1|')
        repo=$(echo "$git_remote_str" | sed 's|.*:\([^ ]*\).*|\1|' | sed 's|\.git||')
    else
        echo "unsupported git remote format"
        exit 1
    fi

    delimiter=""
    if [ "$provider" = "github" ]; then
        delimiter=".."
    elif [ "$provider" = "gitlab" ]; then
        delimiter="..."
    else
        echo "unsupported provider"
        exit 1
    fi

    start=$(git log --pretty=oneline | peco)
    end=$(git log --pretty=oneline | peco)

    if [[ -z $start || -z $end ]]; then
        echo "comparing cancelled."
        exit 1
    fi

    echo " from : $start"
    echo " to   : $end"

    start_commit=$(echo "$start" | awk '{print $1}')
    end_commit=$(echo "$end" | awk '{print $1}')
    URL="https://$provider.com/$repo/compare/$start_commit$delimiter$end_commit"

    echo "$URL" | pbcopy
    open "$URL"
}
