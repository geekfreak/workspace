
alias apt-get='sudo apt-get'
alias df='df -H'
alias du='du -ch'
alias egrep='egrep --color=auto'
alias fastping='ping -c 100 -s.2'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias h='history | grep '
alias httpdreload='sudo /usr/sbin/apachectl -k graceful'
alias httpdtest='sudo /usr/sbin/apachectl -t && /usr/sbin/apachectl -t -D DUMP_VHOSTS'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls --color=auto'
alias mount='mount |column -t'
alias now='date +"%T"'
alias nowdate='date +"%d-%m-%Y"'
alias nowtime='now'
alias p='ps -ef | grep '
alias path='echo -e ${PATH//:/\\n}'
alias ping='ping -c 5'
alias poweroff='sudo /sbin/poweroff'
alias reboot='sudo /sbin/reboot'
alias shutdown='sudo /sbin/shutdown'
alias top='atop'
alias update='sudo apt-get update && sudo apt-get upgrade'
alias updatey='sudo apt-get --yes'

git config --global user.email "davey@geekfreak.com"                
git config --global user.name "ʞɐǝɹɟʞǝǝƃ" 

git config --global user.email "davey@prodigic.com"
git config --global user.name "ɯoɔ˙ɔᴉƃᴉpoɹd@ʎǝʌɐp"

git config --global core.autocrlf input

git config --global alias.alias "!sh -c '[ \$# = 2 ] && git config --global alias.\"\$1\" \"\$2\" && exit 0 || echo \"usage: git alias <new alias> <original command>\" >&2 && exit 1' -"

git alias aliases "!git config --get-regexp 'alias.*' | colrm 1 6 | sort | sed 's/[ ]/\t/'"
git alias st status
git alias br branch
git alias ci commit
git alias co checkout

git alias unstage 'reset HEAD --'
git alias last 'log -1 HEAD'

git alias df diff
git alias changes "diff --name-status -r"
git alias diffstat "diff --stat -r"

