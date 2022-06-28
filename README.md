
# README

## Instalation Ubuntu
1. neovim > 0.7
	* go to github and compile
		* https://github.com/neovim/neovim => branch stable
		*  > make CMAKE_BUILD_TYPE=Release
			> sudo make install

2. setup
	* nerd fonts: https://www.nerdfonts.com/
	* install packer.nvim : git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
	* >	cd .config/nvim 
		> git clone repo	
	* nvim : 
		> PackerSync
		> PackerCompile
3.  Inatall autocomplete "" () [] ...
	> :CocInstall coc-pairs
	
4. c++ systasis sugernces : install clangd

## Use


**ctro + n**=> open the tree directory
**ctrol + w + arrow**  [  **'->'** o **'<-'**] => switch windows
**:e /path/to/file** => if the file exists, nvim opens it and if not, nvim open to edit one and ones is saved the file is created
**:set mouse=a** => to move the mouse as graphic
**:e!** => discard everything from the last save time
**u** = **:undo** => undo
**ctrol + r** = **:redo **=> redo last changes discarded
**:bd** => buffer discard, the changes should be saved. Close the file.
**:bd!** => "**!**" panic => buffer discard the changes and close the file

