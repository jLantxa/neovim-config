sudo apt install npm

echo "[-] Download fonts [-]"
mkdir .p ~/.fonts
echo "https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/UbuntuMono.zip"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/UbuntuMono.zip
unzip UbuntuMono.zip -d ~/.fonts
rm UbuntuMono.zip
fc-cache -fv
echo "done!"

# Install packer.nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
