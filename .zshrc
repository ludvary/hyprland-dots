export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="agnosterzak"
ZSH_THEME="arrow"

plugins=( 
    git
    dnf
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
#pokemon-colorscripts --no-title -s -r #without fastfetch
#pokemon-colorscripts --no-title -s -r | fastfetch -c $HOME/.config/fastfetch/config-pokemon.jsonc --logo-type file-raw --logo-height 10 --logo-width 5 --logo -


# Set-up FZF key bindings (CTRL R for fuzzy history finder)
# source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=20000
SAVEHIST=20000
setopt appendhistory

# # Set-up icons for files/directories in terminal using lsd
# alias ls='lsd'
# alias l='ls -l'
# alias la='ls -a'
# alias lla='ls -la'
# alias lt='ls --tree'

alias ls="eza --icons"
alias ll="eza --long --no-filesize --no-user --time-style=long-iso --icons"


alias nvim="$HOME/.local/bin/lvim"
alias rip="rip --graveyard $HOME/graveyard"

alias Code="cd $HOME/hause/significant\ things/code/"

alias minecraft="java -jar $HOME/Downloads/apps/SKlauncher-3.2.12.jar"
alias silksong="wine $HOME/.wine/drive_c/Program\ Files\ \(x86\)/DODI-Repacks/Hollow\ Knight\ Silksong/Hollow\ Knight\ Silksong.exe"

alias hib="systemctl hibernate"
alias sus="systemctl suspend"


# ssh
alias ssh_lab="ssh admin3@192.168.8.31" # pass ccms@admin
alias ssh_main_lab="ssh admin3@192.168.8.26"
alias cluster_beta="ssh -X krishna@192.168.35.162" # pass : 23rd
alias my_pc="ssh -X krishna@192.168.33.174"         # pass : 23rd

alias one_nine_three="ssh -X krishna@172.16.23.193"
alias one_nine_two="ssh -X krishna@172.16.23.192"
alias one_nine_one="ssh -X krishna@172.16.23.191"
alias one_nine_zero="ssh -X krishna@172.16.23.190"

alias one_eight_six="ssh -X krishna@172.16.23.186"
alias one_eight_seven="ssh -X krishna@172.16.23.187"
alias one_eight_eight="ssh -X krishna@172.16.23.188"
alias one_eight_nine="ssh -X krishna@172.16.23.189"

alias adj_lab_i9_243="ssh -X krishna@192.168.32.243"

alias storage_server="ssh -X krishna@172.16.23.180"

# to enable some vim goodness in terminal
set -o vi

fastfetch


# add paths
export PATH="$HOME/.config/emacs/bin/:$PATH"
export PATH="$HOME/.cargo/bin/:$PATH"
export PATH="$HOME/scripts/bin/:$PATH"
export PATH=$HOME/.local/bin:$PATH
