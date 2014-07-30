git config --global user.email "davey@geekfreak.com"                
git config --global user.name "ʞɐǝɹɟʞǝǝƃ" 
git config --global core.autocrlf input

git config --global user.email "davey@geekfreak.com"                
git config --global user.name "ʞɐǝɹɟʞǝǝƃ" 
git config --global core.autocrlf input

git config --global alias.alias "!sh -c '[ \$# = 2 ] && git config --global alias.\"\$1\" \"\$2\" && exit 0 || echo \"usage: git alias <new alias> <original command>\" >&2 && exit 1' -"

git alias aliases "!git config --get-regexp 'alias.*' | colrm 1 6 | sed 's/[ ]/ = /'"
git alias st status
git alias br branch
git alias ci commit
git alias co checkout

git alias df diff
git alias changes "diff --name-status -r"
git alias diffstat "diff --stat -r"

git alias g  "grep -I"
git alias lg "log -p" 
git alias pb "publish-branch"
git alias pp "'''!echo 'Pull''''	# ; git pull; echo 'Push'; git push"
git alias rb rbranch
git alias rc rank-contributors
git alias rv review
git alias sm show-merges

git alias ksdiff "difftool -y -t Kaleidoscope"
git alias new "!sh -c 'git log $1@{1}..$1@{0} "$@"'"
git alias prune-all "!git remote | xargs -n 1 git remote prune"
git alias who "shortlog -s --"
git alias whois "!sh -c 'git log -i -1 --pretty=\"format:%an <%ae>\n\" --author=\"$1\"' -"
git alias whatis "show -s --pretty='tformat:%h (%s, %ad)' --date=short"

cd workspace/
npm install -g grunt-cli

git clone git@github.com:geekfreak/git-web-hook-handler.git
cd git-web-hook-handler/
npm install
cd ..

git clone git@github.com:uxisready/uxisready.com.git
cd uxisready.com
npm install
grunt
cd ..
