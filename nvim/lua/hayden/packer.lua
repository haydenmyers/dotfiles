-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Color scheme
	-- use({ 'rose-pine/neovim', as = 'rose-pine' })
	use({ 'Mofiqul/vscode.nvim' })
	vim.cmd('colorscheme vscode')

	-- Fuzzy finder
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = {
			'nvim-lua/plenary.nvim',
			'kyazdani42/nvim-web-devicons',
			'nvim-telescope/telescope-live-grep-args.nvim',
			{ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
		}
	}

	-- File tree sidebar
	use({
		'kyazdani42/nvim-tree.lua',
		requires = 'kyazdani42/nvim-web-devicons'
	})

	-- A status line
	use({
		'nvim-lualine/lualine.nvim',
		requires = 'kyazdani42/nvim-web-devicons'
	})

	-- Display buffers as tabs
	use({
		'akinsho/bufferline.nvim',
		requires = 'kyazdani42/nvim-web-devicons',
		after = 'vscode.nvim',
		config = function()
			require('bufferline').setup()
		end
	})

	-- Syntax highlighting
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		requires = {
			'JoosepAlviste/nvim-ts-context-commentstring',
			'nvim-treesitter/nvim-treesitter-textobjects',
		}
	}

	-- Fast file switching
	use('ThePrimeagen/harpoon')

	-- View undo history in a tree
	use('mbbill/undotree')

	-- Manage surround chars
	use('tpope/vim-surround')

	-- Adds [b and other handy mappings
	use('tpope/vim-unimpaired')

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

	-- Automatically create parent dirs when saving
	use('jessarcher/vim-heritage')

	-- Text objects for HTML attributes
	use({
		'whatyouhide/vim-textobj-xmlattr',
		requires = 'kana/vim-textobj-user'
	})

	-- Automatically set the working directory to the project root.
	use ({
		'airblade/vim-rooter',
		setup = function()
			-- Instead of this running every time we open a file, we'll just run it once when Vim starts.
			vim.g.rooter_manual_only = 1
		end,
		config = function()
			vim.cmd('Rooter')
		end
	})

	-- Automatically add closing brackets, quotes, etc.
	use({
		'windwp/nvim-autopairs',
		config = function()
			require('nvim-autopairs').setup()
		end
	})

	-- Add smooth scrolling to avoid jarring jumps
	use({
		'karb94/neoscroll.nvim',
		config = function()
			require('neoscroll').setup()
		end
	})

	-- Split array and methods onto multiple lines, or join them back up
	use({
		'AndrewRadev/splitjoin.vim',
		config = function()
			vim.g.splitjoin_html_attributes_bracket_on_new_line = 1
			vim.g.splitjoin_trailing_comma = 1
			vim.g.splitjoin_php_method_chain_full = 1
		end
	})

	-- Automatically fix indentation when pasting code.
	use({
		'sickill/vim-pasta',
		config = function()
			vim.g.pasta_disabled_filetypes = { 'fugitive' }
		end
	})

	-- Git integration
	use('lewis6991/gitsigns.nvim')

	-- Git commands
	use({
		'tpope/vim-fugitive',
		requires = 'tpope/vim-rhubarb',
	})

	-- Floating terminal
	use('voldikss/vim-floaterm')

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
		{'b0o/schemastore.nvim'},
		-- Autocompletion
		{'hrsh7th/nvim-cmp'},     -- Required
		{'L3MON4D3/LuaSnip'},     -- Required
		{'hrsh7th/cmp-nvim-lsp'}, -- Required
		{'hrsh7th/cmp-nvim-lsp-signature-help'},
		{'saadparwaiz1/cmp_luasnip'}, -- Integrates with LuaSnip.
		{'hrsh7th/cmp-buffer'}, -- Complete words from the buffer we are in.
		{'hrsh7th/cmp-path'}, -- Complete file path.
		{'onsails/lspkind-nvim'}, -- Eye candy. Adds icons.
	}
}

end)
