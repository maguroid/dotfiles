# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/dotfiles/.zsh.d/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# zim startup
if [ -s $ZDOTDIR/zimup.zsh ]; then
  source $ZDOTDIR/zimup.zsh
fi

# load files
if [ -d $ZDOTDIR -a -r $ZDOTDIR -a -x $ZDOTDIR ]; then
  for file in $ZDOTDIR/hooks/**/*.zsh; do
    if [ -r $file ]; then
      source $file
    fi
  done
fi

export XDG_CONFIG_HOME=$HOME/dotfiles
export VOLTA_HOME="$HOME/.volta"
export PATH=$HOME/bin:$PATH
export PATH=$HOME/commands:$PATH
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$VOLTA_HOME/bin"
export PATH="$PATH:$HOME/.foundry/bin"
export PATH="$PATH:$HOME/playground/nand2tetris/tools"
export PATH="$PATH:/opt/homebrew/opt/postgresql@13/bin"

# display settings
export LANG=ja_JP.UTF-8

# keys
bindkey -e # emacs-like key binding

# options
setopt auto_cd
setopt no_beep
setopt nolistbeep

# To customize prompt, run `p10k configure` or edit ~/dotfiles/.zsh.d/.p10k.zsh.
[[ ! -f ~/dotfiles/.zsh.d/.p10k.zsh ]] || source ~/dotfiles/.zsh.d/.p10k.zsh
