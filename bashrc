GPG_TTY=`tty`
export GPG_TTY
PATH=$PATH:~/bin:/usr/local/bin:/usr/local/sbin/:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
alias ls="ls -G"
#Git Aliases
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

export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home/"
export AWS_IAM_HOME="$HOME/.awstools/iam"
export AWS_CREDENTIAL_FILE="$AWS_IAM_HOME/AWS-account-key"
export PATH="$PATH:$AWS_IAM_HOME/bin"
