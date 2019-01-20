#!bin/bash

PLATFORM=""
DOTFILE_PATH=""
PROFILE_FILE_NAME=""

case "$OSTYPE" in
  darwin*)
    PLATFORM="osx"
    DOTFILES_PATH="$(dirname $0)/src/dotfiles/.bash_profile"
    PROFILE_FILE_NAME=".bash_profile"
  ;;
  linux*)
    PLATFORM="linux"
    DOTFILES_PATH="$(dirname $0)/src/dotfiles/.bashrc"
    PROFILE_FILE_NAME=".bashrc"
  ;;
esac

echo "You platform is $PLATFORM start install for your platform"
sleep 3

INSTALL_UTILS_PATH="$(dirname $0)/src/programm-install.sh"
SETUP_PLATFORM_FILE_PATH="$(dirname $0)/src/$PLATFORM-setup.sh"

# Install os packages
sh $SETUP_PLATFORM_FILE_PATH

#  Install Utils
sleep 3
sh $INSTALL_UTILS_PATH

# Copy shell dotfile
cp $DOTFILES_PATH $HOME

# Start bash_profile
source $HOME/$PROFILE_FILE_NAME || true

clear
echo "Install success!"
