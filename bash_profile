# Git branch in Terminal prompt

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

export EDITOR=/usr/local/bin/vim  # Use Homebrew vim by default

export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
export PATH=$PATH:$HOME/scripts

# WFH Script to adjust routes
alias wfh='~/scripts/wfh.sh'

# Git Aliases
alias ga='git add'
alias gaa='git add .'
alias gau='git add -u'
alias gc='git commit'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcom='git checkout master'
alias gcos='git checkout staging'
alias gp='git pull'
alias gs='git status'
alias gst='git stash'
alias gstp='git stash pop'
alias gpo='git push origin'

# Load pyenv automatically
eval "$(pyenv init -)"

export PATH="$HOME/.cargo/bin:$PATH"
