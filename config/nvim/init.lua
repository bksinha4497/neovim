local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

vim.api.nvim_exec(
    [[
    augroup Packer
        autocmd!
        autocmd BufWritePost plugins.lua PackerCompile
    augroup end
    ]],
    false
)

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

 
  require('settings')

  --- Toggleterm terminal
  use {"akinsho/toggleterm.nvim",
  config = function() require('plugins/toggleterm') end
  }

  --- Nvim-web-devicons - A lua fork of vim-devicons. This plugin provides the same icons as well as colors for each icon.
  use {"kyazdani42/nvim-web-devicons",
        config = function() require('plugins/nvim-web-devicons') end
      }


 --- nvim-tree - file explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require('plugins/nvim-tree') end
  }

  --- A tidy statusline for neovim written in lua featuring
  use 'beauwilliams/statusline.lua'
	
  local statusline = require('statusline')
  statusline.tabline = true
  statusline.lsp_diagnostics = false
  statusline.ale_diagnostics = true

  --- Nebulous.nvim - Minimalist Collection of Colorschemes Written in Lua
  use {'Yagua/nebulous.nvim',
        config = function() require('plugins/nebulous') end
    }

  --- WinShift lets you freely rearrange your window layouts by letting you move any window in any direction.
  use 'sindrets/winshift.nvim'

  --- telescope.nvim is a highly extendable fuzzy finder over lists.
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} ,{'nvim-treesitter/nvim-treesitter'},{'nvim-treesitter/nvim-treesitter'},{'nvim-telescope/telescope-media-files.nvim'}}
  ,config = function() require('plugins/telescope') end
  }    
  require('telescope').load_extension('media_files')


  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end

end)
