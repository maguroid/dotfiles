#! /bin/zsh

function x-copy-line() {
    zle kill-line
    printf %s "$CUTBUFFER" | pbcopy
}

function x-copy-whole-line() {
    zle kill-whole-line
    printf %s "$CUTBUFFER" | pbcopy
}

function x-backward-copy-word() {
    zle backward-kill-word
    printf %s "$CUTBUFFER" | pbcopy
}

function x-pb-yank() {
    CUTBUFFER=$(pbpaste)
    zle yank
}

function x-select-whole-line() {
    zle kill-whole-line
    zle set-mark-command -n
}

zle -N x-copy-line
zle -N x-copy-whole-line
zle -N x-backward-copy-word
zle -N x-pb-yank
bindkey '^K' x-copy-line
bindkey '^U' x-copy-whole-line
bindkey '^W' x-backward-copy-word
bindkey '^Y' x-pb-yank
bindkey '^S' x-select-whole-line
