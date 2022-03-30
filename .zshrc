# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme
[[ ! -f ~/dotfiles-public/.p10k.zsh ]] || source ~/dotfiles-public/.p10k.zsh

POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh" # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

alias vi='nvim'

### colorls config
source $(dirname $(gem which colorls))/tab_complete.sh
alias ll='colorls -l'
alias ls='colorls -a'
alias lc='colorls --gs -l --sd -t'
alias lca='colorls --gs -l -A --sd -t'
alias lcd='colorls --gs -l -d --sd -t'
alias lcf='colorls --gs -l -f --sd -t'

function lct() {
  [[ -n "$1" ]] && depth=$1 || depth=1
  [[ -n "$2" ]] && dir=$2 || dir="."
  colorls ${dir} -l --tree=${depth} --sd --sf
}