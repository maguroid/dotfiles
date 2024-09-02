# asdf
. "$HOME/.asdf/asdf.sh"
fpath=($HOME/.asdf/completions $fpath)

# direnv (managed by asdf)
eval "$(direnv hook zsh)"

# cargo
. "$HOME/.cargo/env"
