# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# paths
export XDG_CONFIG_HOME=$HOME/dotfiles
export GOENV_ROOT="$HOME/.goenv"
export PATH=$HOME/bin:$PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.anyenv/bin:$PATH"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="$GOENV_ROOT/bin:$PATH"
export PATH="$PATH:/Users/ryamaguchi/.foundry/bin"
  
eval "$(goenv init -)"

# display settings
export LANG=ja_JP.UTF-8

# completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # expanded completion
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit

# keys
bindkey -e # emacs-like key binding
alias ll='ls -l'
alias la='ls -a'
alias be='bundle exec'
alias ll='ls -t'
alias la='ls -la'
alias vi='vim'
alias d='docker'
alias d-c='docker-compose'
alias gcl='git clone'
alias gb='git branch'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gs='git status'
alias gst='git status'
alias gcm='git checkout master'
alias gad='git add'
alias gcom='git commit'
alias gpl='git pull'
alias gps='git push'
alias gpsh='git push origin head'
alias gpom='git pull origin master'
alias gmm='git merge master'
alias sl='serverless'
alias fb='firebase'
alias am='amplify'
alias amp='amplify'
alias nv='nvim'
alias g='cd $(ghq root)/$(ghq list | peco)'
alias gh='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'
alias ojt='oj test -c "go run main.go" -d tests/sample'
alias ojt:rand='oj test -c "go run main.go" -d tests/random'

# options
setopt auto_cd
setopt no_beep
setopt nolistbeep

# tools

## aws
export AWS_DEFAULT_PROFILE="mates-dev"

## anyenv
eval "$(anyenv init -)"
export VOLTA_HOME="$HOME/.volta"

## zinit
### Added by Zinit's installer
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/z-a-rust \
    zdharma-continuum/z-a-as-monitor \
    zdharma-continuum/z-a-patch-dl \
    zdharma-continuum/z-a-bin-gem-node

### End of Zinit's installer chunk

zinit ice depth=1; zinit light romkatv/powerlevel10k
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
