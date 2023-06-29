# set config folder location
# export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"

# Starship initialization
eval "$(starship init zsh)"

export PATH="$PATH:/home/stevenbr/.local/bin"

#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
# if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
#   source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
# fi

# Customize to your needs...
fpath=( ~/.zfunc "${fpath[@]}" )


### there was a .zplug folder in the home location when the
##  app was install so I changed the directory to that instead of the default given below
### export ZPLUG_HOME=/usr/local/opt/zplug
export ZPLUG_HOME=~/.zplug
source $ZPLUG_HOME/init.zsh

#neovim
alias vim="nvim"

alias ls="lsd"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls --tree"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# initiate fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

