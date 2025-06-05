# tilex: Run <command> in parallel across <number> panes
# Usage: tilex 4 -- python script.py
tilex() {
    local count session="multirun"

    # ---------- Parse arguments ----------
    while (($#)); do
        case $1 in
        --)
            shift
            break
            ;;
        [0-9]*)
            count=$1
            shift
            ;;
        *)
            echo "Usage: tilex <number> -- <command>"
            return 1
            ;;
        esac
    done
    [[ -z $count || $# -eq 0 ]] && {
        echo "Usage: tilex <number> -- <command>"
        return 1
    }

    local cmd="$*"

    # ---------- Prepare session ----------
    if [[ -z $TMUX ]]; then
        tmux new-session -d -s "$session" "$cmd"
        target="$session"
        created=1 # First pane is created by new-session
    else
        target="." # Current window
        created=0
    fi

    # ---------- Generate panes ----------
    for ((i = created; i < count; i++)); do
        tmux split-window -t "$target" "$cmd" && ((created++))
    done

    # ---------- Format layout and connect ----------
    tmux select-layout -t "$target" tiled
    [[ -z $TMUX ]] && tmux attach-session -t "$session"

    echo "✅ tilex: created $created/$count pane(s)."
}
