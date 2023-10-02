source_if_exists () {
    if test -r "$1"; then
        source "$1"
    fi
}

# source_if_exists $DOTFILES/zsh/aliases.zsh
# source_if_exists $DOTFILES/zsh/history.zsh
# source_if_exists $DOTFILES/zsh/p10k.zsh
source_if_exists $HOME/.env.sh

# POWER-LEVEL-10K -------------------------------------------------------------------------------------------
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# FILE ALIASES ----------------------------------------------------------------------------------------------
alias ls='exa --long --header'
alias ..='cd ..'

# I3 ALIASES ------------------------------------------------------------------------------------------------
alias i3='code /home/christian/repos/dotfiles'

alias apti='sudo apt install'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias notifyme='curl -d "✅🖥️🖱️ Done" https://ntfy.app.chnikel.de/reminder'
