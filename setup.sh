#!/bin/bash

if [[ $1 = "Ubuntu" ]]
then
  sudo apt install npm
elif [[ $1 = "Fedora" ]]
then
  sudo dnf install npm
fi

echo "[-] Download fonts [-]"
mkdir .p ~/.fonts
if [[ $1 = "Ubuntu" ]]
then
  echo "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/UbuntuMono.zip"
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/UbuntuMono.zip
  unzip UbuntuMono.zip -d ~/.fonts
  rm UbuntuMono.zip
elif [[ $1 = "Fedora" ]]
then
  echo "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip"
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
  unzip Hack.zip -d ~/.fonts
  rm Hack.zip
fi

fc-cache -fv
echo "done!"

# Install packer.nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
