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

  -- Toggleterm terminal
  use {"akinsho/toggleterm.nvim",
  config = function() require('plugins/toggleterm') end
  }
 
  -- nvim-tree - file explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require('plugins/nvim-tree') end
  }

  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end

end)

