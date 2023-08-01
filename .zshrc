# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
zsh-autosuggestions
vi-mode
zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias rustscan='sudo docker run -it --rm --name rustscan rustscan/rustscan:1.10.0'
alias offsec='sudo openvpn ~/Downloads/vpn/pwk2.ovpn'
alias pg='sudo openvpn ~/Downloads/vpn/universal.ovpn'
alias thm='sudo openvpn ~/Downloads/vpn/gnans2190.ovpn'
alias htb='sudo openvpn ~/Downloads/vpn/lab_0xm3m.ovpn'
alias htbsp='sudo openvpn ~/Downloads/vpn/starting_point_0xm3m.ovpn'
alias htbs='sudo openvpn ~/Downloads/vpn/competitive_0xm3m.ovpn'
alias server='python3 -m http.server'
alias pureftp='sudo systemctl restart pure-ftpd'
alias tmls='tmux ls'
alias tmns='tmux -u new -s'
alias tma='tmux -u attach'
alias tmkill='tmux kill -t'
alias update='sudo apt update'
alias get-update='sudo apt-get update'
alias upgrade='sudo apt upgrade'
alias get-upgrade='sudo apt-get upgrade'
alias full='sudo apt update && sudo apt full-upgrade -y'
alias install='sudo apt install'
alias get-install='sudo apt-get install'
alias rev='rlwrap nc -lvnp'
alias codium='/snap/bin/codium'
alias ssh_start='sudo systemctl start ssh.service'
alias vpn='tmns vpn'
alias oscp='tmns oscp'
alias tcpallports='nmap -Pn -p- --min-rate=5000 --open -oN nmap/tcp-all-ports'
alias udpallports='sudo nmap -Pn -sU -p- -v --min-rate=5000 -oN nmap/udp-all-ports'
alias snap='sudo systemctl start snapd.service && sudo service snapd.apparmor start'

nmap_h() {
    cat "$1" | grep -E '/tcp|/udp' | cut -d "/" -f 1 | paste -sd "," - | sed 's/,$/\n/'
}




#export GOPATH=/root/go-workspace
export GOPATH=$HOME/go
#export GOROOT=/usr/local/go
#PATH=$PATH:$GOROOT/bin/:$GOPATH/bin
export PATH=${PATH}:~/go/bin



# History configurations
export HISTFILE=~/.histfile
export HISTSIZE=1000000   # the number of items for the internal history list
export SAVEHIST=1000000   # maximum number of items for the history file

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.

# Generated for pdtm. Do not edit.
export PATH=$PATH:/home/oxm3m/.pdtm/go/bin

