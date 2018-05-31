#!/bin/bash
#Update the system
sudo apt update && sudo apt upgrade -y

#Install Mosh
sudo apt-get install -y mosh

#Install Oh My ZSH
sudo apt-get install -y zsh
chsh -s "$(command -v zsh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Install Neovim
sudo apt-get install software-properties-common -y
sudo apt-get install python-software-properties -y
sudo apt-get install -y neovim
sudo apt-get install -y python3-neovim
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor

# Install Golang
sudo apt-get install -y golang

# Install shellcheck to write better shell-scripts
sudo apt-get install -y shellcheck

#Install Python-Stuff
##everything works better with the followin installed
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev

sudo apt-get install -y python3-venv python3-dev python3-pip
curl https://raw.githubusercontent.com/mitsuhiko/pipsi/master/get-pipsi.py | python3 - --src=git+https://github.com/mitsuhiko/pipsi.git\#egg=pipsi

pipsi install pew
pipsi install pipenv

# Install Nodejs
sudo apt install -y nodejs npm

# Install other stuff
pipsi install thefuck
pipsi install howdoi
pipsi install black
pipsi install mypy
pipsi install rebound-cli
npm install -g tldr
sudo apt-get install -y ranger

# sexy git diffs
npm install -g diff-so-fancy

# trash as the safe `rm` alternative
npm install --global trash-cli

# Install ripgrep
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/0.8.1/ripgrep_0.8.1_amd64.deb
sudo dpkg -i ripgrep_0.8.1_amd64.deb

# Install ZSH Theme
git clone https://github.com/denysdovhan/spaceship-prompt.git"$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Add settings to zshrc
{
echo "export GOPATH=$HOME/go"
echo "export PATH=${PATH}:${GOPATH}/bin"
echo "export PATH=/root/.local/bin:$PATH" 
} >> ~/.zshrc
source .zshrc
