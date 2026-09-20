return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'Everblush/nvim',
	  as = 'everblush',
  }

  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate',
	  config = "require 'plugins.nvim-treesitter'",
  }

  use 'tpope/vim-fugitive'
end)
