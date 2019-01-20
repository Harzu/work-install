#!bin/bash

# Bash it
git clone --depth=1 https://github.com/Bash-it/bash-it.git $HOME/.bash_it
$HOME/.bash_it/install.sh

# Colorls
gem install colorls

# Rust utils
curl https://sh.rustup.rs -sSf | sh

# NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
source ~/.nvm/nvm.sh

# Settings nvm
command -v nvm
nvm install --lts
nvm alias default lts/*

# npm global packages install
npm i -g yarn serve pm2