

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
# export PATH = $HOME:"$HOME/.git-templates/scripts":$PATH


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

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
# docker
plugins=(git zsh-autosuggestions zsh-syntax-highlighting  jsontools)

#jsontools
# curl localhost:8081/netstat | pp_json
# pp_json - pretty prints json
# is_json - returns true if valid json; false otherwise
# urlencode_json - returns a url encoded string for the given json
# urldecode_json - returns decoded json for the given url encoded string

source $ZSH/oh-my-zsh.sh

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
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Node version appereance is declared in ~/.p10k.zsh


# source myfunctions

export GIT_TEMPLATES=$HOME/.git-templates
export GIT_HOOKS=$GIT_TEMPLATES/hooks
export GIT_SCRIPTS=$GIT_TEMPLATES/scripts

source "$GIT_SCRIPTS/merge-master.sh"
source "$GIT_SCRIPTS/stash-pull.sh"

init_scripts() {
  chmod u+x "$GIT_SCRIPTS"/*
}

ginit() {
    git init
    gitpath=`git rev-parse --show-superproject-working-tree --show-toplevel | head -1`
    chmod u+x "$gitpath"/.git/hooks/*
    echo "Git hooks initialized: $gitpath"

#     for submodule in "$gitpath"/.git/modules/*; do
#         chmod u+x "$submodule"/hooks/*
#     done
}

# source "~/.git-templates/scripts/merge-master"


alias reload="omz reload"
alias cls="reset"
#alias lg="lazygit"

alias config="code ~/.zshrc"
alias confzsh="code ~/.zshrc"
alias zshconfig="code ~/.zshrc"
alias confgit="code ~/.gitconfig"

# alias ginit=ginit
#alias confbash="code ~/.bashrc"

# commands

alias df="df -h"

# HTTPPIE - alternative for curl
alias curl2="https"


# DOCKER

# alias sys-docker-start="systemctl start docker"
# alias sys-docker-status="systemctl status docker"
# alias sys-docker-stop="systemctl stop docker && systemctl stop docker.socket"

# navigation
alias ghome="cd ~"
alias gprog="cd ~/Programming"
# alias gscripts="cd ~/Scripts" 

# copy password
alias bwmasterpassword="cat ~/.pw-config | pbcopy"
alias pwfiles="py ~/Programming/python/csv-protection/main.py"

# PL
# export python="python3"
alias py="python3"
alias pyinit="py -m venv venv"
alias pip="python3 -m pip"

# SCRIPTS
# Scripts are located  in .scripts
alias netinfo="zsh $HOME/.scripts/get_network_info.sh"


# Note: NVM https://github.com/nvm-sh/nvm
# curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
# to remove, delete, or uninstall nvm - just remove the `$NVM_DIR` folder (usually `~/.nvm`)
#  nvm alias default system
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"


# Load Angular CLI autocompletion.
source <(ng completion script)

# router ip adress netstat -nr|grep default

alias hosts="bat $home/private/etc/hosts"
alias raycastpublish="npx @raycast/api@latest publish"

# bun completions
# [ -s "/Users/aliaksandrzhebit/.bun/_bun" ] && source "/Users/aliaksandrzhebit/.bun/_bun"

# bun
# export BUN_INSTALL="$HOME/.bun"
# export PATH="$BUN_INSTALL/bin:$PATH"

# how_to_delete() {
#   echo "1. Remove characters on the left, until the beginning of the word: Ctrl+W"
#   echo "2. Clean up the line: You can use Ctrl+U to clear up to the beginning."
#   echo "3. Recall the deleted command: Ctrl+Y"
#   echo "4. Cancel the current command/line: Ctrl+C"
# }



# eval "$(oh-my-posh init zsh)"