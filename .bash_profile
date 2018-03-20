RED="\[\e[0;31m\]"
LBLUE="\[\e[0;36m\]"
YELLOW="\[\e[0;33m\]"
GREEN="\[\e[1;32m\]"
export PS1="$RED\u$LBLUE[\w]$YELLOW\$(parse_git_branch)$GREEN\$\[\e[m\]: "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Show Git Branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

vs () {
    if [[ $# = 0 ]]
    then
        open -a "Visual Studio Code"
    else
        [[ $1 = /* ]] && F="$1" || F="$PWD/${1#./}"
        open -a "Visual Studio Code" --args "$F"
    fi
}

# git bash auto completion
if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

### Added by the Heroku Toolbelt
export PATH=/usr/local/git/bin/:$PATH
export PATH=/usr/local/mysql/bin/:$PATH
export PATH=/usr/local/php5/bin/:$PATH
export PATH=/Users/mtrieu/.composer/vendor/bin:$PATH
export PATH=/Users/mtrieu/mongodb/bin:$PATH

# Aliases
alias l='ls'
alias ll='ls -la'
alias mysql.start='sudo /usr/local/mysql/support-files/mysql.server start'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias tl="vendor/bin/phpunit --testsuite Features"
alias ..="cd .."
