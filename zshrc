# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Autoload a screen if we're not in one and make it's name unique  
#if [[ $STY = '' ]] then screen -xR Dave-K-`date  +%Y%m%d-%H%M%S`; fi

GPG_TTY=`tty`
export GPG_TTY
setopt EXTENDED_HISTORY
export PATH=/Users/dkkirlin/.rvm/gems/ruby-2.1.0/bin:$PATH:~/bin:/usr/bin/:/usr/local/bin:/usr/local/sbin/:$HOME/.rvm/bin:/apollo/env/SDETools/bin:/apollo/env/SDETools/sbin # Add RVM to PATH for scripting

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
alias ls="ls -G"


#Git Aliases
case _myos="$(uname)" in
  Darwin) alias vim='mvim -v';;
esac

alias gia='git add'
alias gic='git commit -m'
alias gib='git branch'
alias gibd='git branch -d '
alias gibr='git checkout origin/master -b'
alias gich='git checkout '
alias gid='git diff'
alias gido='git diff origin/master'
alias gil='git log'
alias gilo='git log HEAD...origin/master'
alias giplr='git pull --rebase'
alias gips='git push'
alias gira='git rebase --abort'
alias girc='git rebase --continue'
alias giro='git rebase -i origin/master'
alias girs='git rebase --skip'
alias gis='git status'
alias giso='git diff origin/master --name-status'
alias gist='git stash'
alias gistp='git stash pop'
alias gip='git pull'
alias gitlg="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --abbrev-commit"
#
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home/"
export AWS_IAM_HOME="$HOME/.awstools/iam"
export AWS_CREDENTIAL_FILE="$AWS_IAM_H"
#
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

#no cd needed
setopt AUTO_CD

#10 second dealy on delete
setopt RM_STAR_WAIT
#
setopt VI

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

 __remote_commands=(scp rsync)
 autoload -U url-quote-magic
 zle -N self-insert url-quote-magic
 zstyle -e :urlglobber url-other-schema '[[ $__remote_commands[(i)$words[1]] -le ${#__remote_commands} ]] && reply=("*") || reply=(http https ftp)'
# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails ruby gitprompt github capistrano bundle tmux tmuxinator redis-cli rake themes )
source $ZSH/oh-my-zsh.sh
# User configuration

export PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/MacGPG2/bin:/Users/dkkirlin/bin:/usr/local/bin:/usr/local/sbin/:/Users/dkkirlin/.rvm/bin:/Users/dkkirlin/.awstools/iam/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
 export EDITOR='mvim -v'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
# insert 'sudo' upon Alt-S
 insert_sudo () { zle beginning-of-line; zle -U "sudo " }
 zle -N insert-sudo insert_sudo
 bindkey "^[s" insert-sudo
# ssh
 export SSH_KEY_PATH="~/.ssh/dsa_id"


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
