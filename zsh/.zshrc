# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias yeet="yay -Rcs"
alias sybau="yay -Syu" # sudo pacman -Syu
alias kys="shutdown now" # sudo pacman -Syu
alias t="tmux a || tmux"
alias iytevpn="sudo openconnect --protocol=gp vpn3.iyte.edu.tr"

alias v="nvim"
alias dprune="docker system prune -a --volumes"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

export HYPRSHOT_DIR="$HOME/screenshots"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

export ELECTRON_OZONE_PLATFORM_HINT=auto

# For the go directory
export GOPATH=$HOME/.go

export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
export _JAVA_AWT_WM_NONREPARENTING=1

# Created by `pipx` on 2025-08-16 15:37:07
export PATH="$PATH:$HOME/.local/bin"
export PATH="$HOME/.local/scripts:$PATH"

# Load secrets if the file exists
if [ -f "$HOME/.zshrc.secrets" ]; then
    source "$HOME/.zshrc.secrets"
fi

eval "$(fnm env --use-on-cd)"
