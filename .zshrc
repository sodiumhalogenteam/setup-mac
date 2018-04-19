# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/chancesmith/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="eastwood"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git sublime cloudapp node npm osx extract z)

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="$PATH:$HOME/wip/spark-installer"

# User configuration

# Remap alt-left and alt-right to forward/backward word skips.
# via @waltz, https://gist.github.com/waltz/8658549
bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


alias work='cd ~/work-in-progress/'
alias home='cd ~'

## get rid of command not found ##
alias cd..='cd ..'

## a quick way to get out of current directory ##
alias ..='cd ..'

alias editprofile= 'subl ~/.zshrc'
alias refresh-profiles= 'source ~/.zshrc'
alias speed='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'
alias speedtest='/usr/bin/open -a "/Applications/Google Chrome.app" "http://www.speedtest.net/"'
#alias handbrake='/Volumes/HandBrakeCLI-1.0.1/HandBrakeCLI --output ~/Desktop/vids --input'
alias cleanshots='automator ~/Dropbox/delete-IFTTT-screensaver-files.workflow'
alias fixcam='sudo killall VDCAssistant'

## sudo me
alias please='sudo $(history -p !!)'
alias pls='sudo $(history -p !!)'

## git
alias gs='git status'
alias ga='git add .'
alias gaa='git add --all'
alias gc='git commit -m'
alias gca='git commit --amend -m'
alias gl='git pull'
alias gp='git push'
alias gco='git checkout'
alias gpom="git pull origin master"
alias gd='git diff | mate'
alias gb='git branch'
alias gba='git branch -a'
alias del='git branch -d'
alias gr='git remote'
alias gcl='git clone'
# just in case
alias got='git '
alias get='git '

## save passphrase for ssh to prevent entering passpharse after every push and pull
## https://stackoverflow.com/questions/10032461/git-keeps-asking-me-for-my-ssh-key-passphrase
alias savessh='eval $(ssh-agent) && ssh-add -K'
alias newmac="openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//' | xargs sudo ifconfig en0 ether"
alias sitespeed="docker run --shm-size=1g --rm -v "$(pwd)":/sitespeed.io sitespeedio/sitespeed.io:6.2.3 "

## adds VScode insider to code alias
alias code="code-insiders"

## adds simpler Vi
alias v="vi"

dns() {
 echo "---- NSLOOKUP ----"
 nslookup "$1"
 echo "---- Dig ----"
 dig -t ANY "$1"
 echo "---- WHOIS ----"
 whois "$1"
}

## see/get script here
alias wpsetup="~/wp-setup.sh"

## migratedb pro (make sure WP plugin is installed and activated)
alias wpdb="wp migratedb profile"
alias db="wp migratedb profile 1"

## see/get script here
alias makegifs="~/make-gifs.sh"

## open Vanilla app on boot
# open -a Vanilla

# include Z, yo
. ~/z.sh

autoload bashcompinit
bashcompinit
#source /User/chancesmith/wp-completion.bash
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/gettext/bin:$PATH"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
