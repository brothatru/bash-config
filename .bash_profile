RED="\[\e[0;31m\]"
LBLUE="\[\e[0;36m\]"
YELLOW="\[\e[0;33m\]"
GREEN="\[\e[1;32m\]"
export PS1="$RED\u$LBLUE[\w]$YELLOW\$(parse_git_branch)$GREEN\$\[\e[m\]: "

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias l='ls'
alias ll='ls -la'

# Show Git Branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

### Added by the Heroku Toolbelt
export PATH=/usr/local/git/bin/:$PATH
export PATH=/usr/local/mysql/bin/:$PATH
export PATH=/usr/local/php5/bin/:$PATH


alias mysql.start='sudo /usr/local/mysql/support-files/mysql.server start'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias mountsotg='unmountsotg; sshfs dev:/var/www/sotg_mtrieu ~/Projects/mount_sotg -oreconnect,allow_other,defer_permissions,volname=mount_sotg'
alias mountdiy='unmountdiy; sshfs dev:/var/www/mfour_mtrieu ~/Projects/mount_diy -oreconnect,allow_other,defer_permissions,volname=mount_diy'
alias unmountdiy='diskutil unmount force ~/Projects/mount_diy'
alias unmountsotg='diskutil unmount force ~/Projects/mount_sotg'
alias mountwpmfour='diskutil unmount force ~/Projects/mount_webpage_mfour; sshfs dev:/var/www/webpage_mfour ~/Projects/mount_webpage_mfour -oreconnect,allow_other,defer_permissions,volname=mount_webpage_mfour'
alias unmountar='diskutil unmount force ~/Projects/mount_automated_reporting_mtrieu'
alias mountar='unmountar; sshfs dev:/var/www/automated_reporting_mtrieu ~/Projects/mount_automated_reporting_mtrieu -oreconnect,allow_other,defer_permissions,volname=mount_automated_reporting_mtrieu'
alias mountscripts='unmountscripts; sshfs dev:/home/mtrieu/scripts ~/Projects/mount_scripts -oreconnect,allow_other,defer_permissions,volname=mount_scripts'
alias unmountscripts='diskutil unmount force ~/Projects/mount_scripts'

alias tl="vendor/bin/phpunit --testsuite Features"
alias ..="cd .."
