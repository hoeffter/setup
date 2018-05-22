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
sudo apt-get install -y neovim
sudo apt-get install -y python3-neovim

# Install Golang
sudo apt-get install -y golang

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
npm install -g tldr
sudo apt-get install -y ranger

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