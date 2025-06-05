gw() {
    local tree=$(git worktree list | peco --query "$LBUFFER")
    if [ -n "$tree" ]; then
        BUFFER="cd $(echo $tree | awk '{ print $1 }')"
        zle accept-line
    fi
}
