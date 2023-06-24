-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Color scheme
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  vim.cmd('colorscheme rose-pine')

  -- Fuzzy finder
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Syntax highlighting
  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  }

  -- Fast file switching
  use('ThePrimeagen/harpoon')

  -- View undo history in a tree
  use('mbbill/undotree')

  -- Git
  use('tpope/vim-fugitive')

  -- Manage surround chars
  use('tpope/vim-surround')

  -- Commenting support (gcc / gc in other modes/motions)
  use('tpope/vim-commentary')

  -- Indent autodetection with editorconfig support
  use('tpope/vim-sleuth')

  -- Allow plugins to enable repeating of commands
  use('tpope/vim-repeat')

  -- Jump to the last location when opening a file
  use('farmergreg/vim-lastplace')

  -- Enable * searching with visually selected text
  use('nelstrom/vim-visual-star-search')

  -- LSP
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {                                      -- Optional
			  'williamboman/mason.nvim',
			  run = function()
				  pcall(vim.cmd, 'MasonUpdate')
			  end,
		  },
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},     -- Required
		  {'hrsh7th/cmp-nvim-lsp'}, -- Required
		  {'L3MON4D3/LuaSnip'},     -- Required
	   }
  }

end)
