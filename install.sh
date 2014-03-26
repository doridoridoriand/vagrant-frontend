#!/usr/bin/zsh

echo ----installing zshrc and vimrc----
cd $HOME
git clone https://github.com/unosk/dotfiles.git
cd dotfiles
./install.sh

echo ----installing ruby with rbenv and rails----
cd $HOME
sudo apt-get install git
sudo sudo apt-get install curl g++
sudo apt-get install zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev
sudo apt-get install sqlite3 libsqlite3-dev
cd $HOME
git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
exec $SHELL
mkdir -p ~/.rbenv/plugins
cd ~/.rbenv/plugins
git clone git://github.com/sstephenson/ruby-build.git
sudo aptitude install make
rbenv install 2.1.1
rbenv rehash
rbenv global 2.1.1
gem install rails --version="~>4.0"
rbenv rehash

echo ----installing node.js and grunt-cli----
cd $HOME
git clone https://github.com/creationix/nvm .nvm
cd .nvm/
source ~/.nvm/nvm.sh
echo nvm use default >> ~/.zshrc
echo npm_dir=${NVM_PATH}_modules >> ~/.zshrc
echo export NODE_PATH=$npm_dir >> ~/.zshrc
export NODE_PATH=${NVM_PATH}_modules
nvm install v0.10.24
npm install -g grunt-cli
