# Install patched fonts (icon support)
echo "[-] Download fonts [-]"
mkdir -p ~/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/UbuntuMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip

unzip UbuntuMono.zip -d ~/.fonts/
unzip Hack.zip -d ~/.fonts/
unzip FiraCode.zip -d ~/.fonts/
rm UbuntuMono.zip Hack.zip FiraCode.zip

fc-cache -fv
echo "done!"
