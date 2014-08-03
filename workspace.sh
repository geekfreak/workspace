git config --global user.email "davey@geekfreak.com"                
git config --global user.name "ʞɐǝɹɟʞǝǝƃ" 
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
