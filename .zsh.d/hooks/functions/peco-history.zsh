function peco-history() {
    BUFFER=$(history -n -r 1 | peco --query "$LBUFFER" | sed 's/\\n/\n/g')
    CURSOR=$#BUFFER
    zle clear-screen
}
zle -N peco-history
bindkey '^R' peco-history
