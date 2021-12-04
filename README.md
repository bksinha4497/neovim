# NEO VIM

## Installation Instruction

1. Install packages in Arch Linux using : `paru -S nvim-packer-git xclip fd ripgrep ueberzug pdftoppm`
2. Run Command : `git clone https://github.com/bksinha4497/neovim.git && cp -r neovim/config/* ~/.confg/ `
3. Open neovim using `nvim` and run command `:PackerSync`

## Screenshot 

![One](https://i.ibb.co/wwGdjjh/nvim1.png)
![two](https://i.ibb.co/Q8CTqLL/nvim2.png)

## Install packer.nvim plugin manager using  : 

[packer.nvim](https://github.com/wbthomason/packer.nvim)

Arch Linux : `paru -S nvim-packer-git xclip`

## Plugins

1. [Nebulous.nvim ](https://github.com/Yagua/nebulous.nvim) - Minimalist Collection of Colorschemes Written in Lua

2. [ToggleTerm](https://github.com/akinsho/toggleterm.nvim) - A neovim plugin to persist and toggle multiple terminals during an editing session

3. [Statusline.lua](https://github.com/beauwilliams/statusline.lua) - A tidy statusline for neovim written in lua featuring

4. [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua) - A File Explorer For Neovim Written In Lua

5. [WinShift.nvim](https://github.com/sindrets/winshift.nvim) - Rearrange your windows with ease.

6. [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - telescope.nvim is a highly extendable fuzzy finder over lists.

 ### Dependencies for telescope.vim
  #### Other Plugins : {'nvim-lua/plenary.nvim'} ,{'nvim-treesitter/nvim-treesitter'},{'nvim-treesitter/nvim-treesitter'}
  
 1. [fd  - fd is a program to find entries in your filesystem](https://github.com/sharkdp)
  install in arch linux : `paru -S fd`
  
 2. [ripgrep - ripgrep is a line-oriented search tool that recursively searches the current directory for a regex pattern.](https://github.com/BurntSushi/ripgrep)
   install in arch linux : `paru -S ripgrep`

 3. [Überzug - Überzug is a command line util which allows to draw images on terminals by using child windows.](https://github.com/seebye/ueberzug)
   install in arch linux : `paru -S ueberzug`
   
 4. [pdftoppm - Portable Document Format (PDF) to Portable Pixmap (PPM) converter (version 3.00)](https://linux.die.net/man/1/pdftoppm)
   install in arch linux : `paru -S pdftoppm`
