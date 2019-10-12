#!/bin/bash
#Add repository for newest Emacs
sudo add-apt-repository ppa:kelleyk/emacs
sudo add-apt-repository ppa:longsleep/golang-backports

#Update the system
sudo apt update && sudo apt upgrade -y

#Install Mosh
sudo apt-get install -y mosh

#Install Emacs
sudo apt install Emacs26

#Install Spacemacs
git clone -b develop https://github.com/syl20bnr/spacemacs ~/.emacs.d

#Install Golang
sudo apt-get install -y golang-go

# Install shellcheck to write better shell-scripts
sudo apt-get install -y shellcheck

#Install Python-Stuff
##everything works better with the followin installed
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev

sudo apt-get install -y python3-venv python3-dev python3-pip
curl https://raw.githubusercontent.com/mitsuhiko/pipsi/master/get-pipsi.py | python3 - --src=git+https://github.com/mitsuhiko/pipsi.git\#egg=pipsi

# Install Nodejs
sudo apt install -y nodejs npm
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
export PATH=~/.npm-global/bin:$PATH
source ~/.profile

# Install other stuff
pipsi install pew
pipsi install pipenv
pipsi install thefuck
pipsi install howdoi
pipsi install black
pipsi install mypy
pipsi install rebound-cli
npm install -g tldr
sudo apt-get install -y ranger
sudo apt-get install -y git-extras

# sexy git diffs
npm install -g diff-so-fancy
git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"
git config --global color.ui true

git config --global color.diff-highlight.oldNormal    "red bold"
git config --global color.diff-highlight.oldHighlight "red bold 52"
git config --global color.diff-highlight.newNormal    "green bold"
git config --global color.diff-highlight.newHighlight "green bold 22"

git config --global color.diff.meta       "yellow"
git config --global color.diff.frag       "magenta bold"
git config --global color.diff.commit     "yellow bold"
git config --global color.diff.old        "red bold"
git config --global color.diff.new        "green bold"
git config --global color.diff.whitespace "red reverse"
git config --bool --global diff-so-fancy.markEmptyLines false

# trash as the safe `rm` alternative
npm install --global trash-cli

# Install ripgrep
sudo apt-get install ripgrep

#Install the SourceCodePro-Font
chmod a+x Install_SourceCodePro.sh
./Install_SourceCodePro.sh
