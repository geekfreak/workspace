alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias h='history | grep '
alias p='ps -ef | grep '
alias c='cat'
alias x='nautilus $(pwd)&'

alias nodev8='iojs -e "console.log(process.versions.v8)"'
alias ls.='ls -d .*'
alias lsd='ls -d .*/'


alias mount='mount |column -t'

alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'

# distro specific  - Debian / Ubuntu and friends #
# install with apt-get
alias apt-get="sudo apt-get"
alias updatey="sudo apt-get --yes"

# update on one command
alias update='sudo apt-get update && sudo apt-get upgrade'

# reboot / halt / poweroff
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias shutdown='sudo /sbin/shutdown'

alias httpdreload='sudo /usr/sbin/apachectl -k graceful'
alias httpdtest='sudo /usr/sbin/apachectl -t && /usr/sbin/apachectl -t -D DUMP_VHOSTS'

## set some other defaults ##
alias df='df -H'
alias du='du -ch'

# top is atop, just like vi is vim
alias top='atop'

