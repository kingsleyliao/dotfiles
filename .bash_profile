#terminal header
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\w\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

#Aliases
alias dev="cd ~/Documents/Developer"
alias dt="cd ~/Desktop"
alias tf="source ~/tensorflow/bin/activate"

#GO programming
export GOROOT="/usr/local/go"
export GOPATH="$HOME/Documents/Developer/goWorkspace"
export PATH="$HOME/Documents/Developer/goWorkspace/bin:$PATH"

# for GO APP ENGINE
export PATH="/usr/local/go_appengine:$PATH"


#Flutter
export PATH=/Users/kingsleyliao/Documents/Developer/flutter/bin:$PATH

# Setting PATH for Python 3.6
export PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"

export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# pgsql
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

#docker
alias dc='docker-compose'
alias dm='docker-machine'

#ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
