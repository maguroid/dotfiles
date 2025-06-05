# XDG Base Directory Specification
export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CACHE_HOME=$HOME/.cache
export XDG_STATE_HOME=$HOME/.local/state

export VOLTA_HOME="$HOME/.volta"
export GPG_TTY=$TTY
export EDITOR="nvim"
export PATH=$HOME/bin:$PATH
export PATH=$HOME/commands:$PATH
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$VOLTA_HOME/bin"
export PATH="$PATH:$XDG_CONFIG_HOME/.foundry/bin"
export PATH="$PATH:$HOME/playground/nand2tetris/tools"
export PATH="$PATH:/opt/homebrew/opt/postgresql@13/bin"
export PATH="$PATH:$HOME/.codeium/windsurf/bin"
export PATH="$(brew --prefix python)/libexec/bin:$PATH"
export PATH="$HOME/.bun/bin:$PATH"

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

# display settings
export LANG=ja_JP.UTF-8

# keys
bindkey -e # emacs-like key binding

# options
setopt auto_cd
setopt no_beep
setopt nolistbeep
setopt clobber 
unsetopt nomatch

# completion behavior
# expand completion with TAB
zstyle ':completion:*' completer _expand_alias _complete _ignored

# To customize prompt, run `p10k configure` or edit ~/dotfiles/.zsh.d/.p10k.zsh.
[[ ! -f ~/dotfiles/.zsh.d/.p10k.zsh ]] || source ~/dotfiles/.zsh.d/.p10k.zsh

# pnpm
export PNPM_HOME="/Users/ryamaguchi/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
. "/Users/ryamaguchi/.deno/env"

# mise
export MISE_SHELL=zsh
export __MISE_ORIG_PATH="$PATH"

mise() {
  local command
  command="${1:-}"
  if [ "$#" = 0 ]; then
    command /Users/ryamaguchi/.local/bin/mise
    return
  fi
  shift

  case "$command" in
  deactivate|shell|sh)
    # if argv doesn't contains -h,--help
    if [[ ! " $@ " =~ " --help " ]] && [[ ! " $@ " =~ " -h " ]]; then
      eval "$(command /Users/ryamaguchi/.local/bin/mise "$command" "$@")"
      return $?
    fi
    ;;
  esac
  command /Users/ryamaguchi/.local/bin/mise "$command" "$@"
}

_mise_hook() {
  eval "$(/Users/ryamaguchi/.local/bin/mise hook-env -s zsh)";
}
typeset -ag precmd_functions;
if [[ -z "${precmd_functions[(r)_mise_hook]+1}" ]]; then
  precmd_functions=( _mise_hook ${precmd_functions[@]} )
fi
typeset -ag chpwd_functions;
if [[ -z "${chpwd_functions[(r)_mise_hook]+1}" ]]; then
  chpwd_functions=( _mise_hook ${chpwd_functions[@]} )
fi

_mise_hook
if [ -z "${_mise_cmd_not_found:-}" ]; then
    _mise_cmd_not_found=1
    [ -n "$(declare -f command_not_found_handler)" ] && eval "${$(declare -f command_not_found_handler)/command_not_found_handler/_command_not_found_handler}"

    function command_not_found_handler() {
        if [[ "$1" != "mise" && "$1" != "mise-"* ]] && /Users/ryamaguchi/.local/bin/mise hook-not-found -s zsh -- "$1"; then
          _mise_hook
          "$@"
        elif [ -n "$(declare -f _command_not_found_handler)" ]; then
            _command_not_found_handler "$@"
        else
            echo "zsh: command not found: $1" >&2
            return 127
        fi
    }
fi


# direnv
eval "$(direnv hook zsh)"
