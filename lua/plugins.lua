local packer = require('packer')

packer.startup({ function(use)
	-- Packer can manage itself
	use {
		'wbthomason/packer.nvim',
		config = function() require 'colorizer'.setup() end
	}

	use 'NvChad/nvim-colorizer.lua'

	-- Git integration
	use {
		'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
		config = function() require('gitsigns').setup() end
	}

	-- Indents
	use {
		'lukas-reineke/indent-blankline.nvim',
		config = function() require('indent_blankline').setup() end
	}

	-- Comments
	use {
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	-- Completion & LSP
	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
			'onsails/lspkind.nvim'
		}
	}
	use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })
	use {
		'junnplus/lsp-setup.nvim',
		requires = {
			'neovim/nvim-lspconfig',
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',
		}
	}

	-- Colors
	use { "ellisonleao/gruvbox.nvim" }
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use 'Shatur/neovim-ayu'


	-- File management
	use {
		'nvim-telescope/telescope.nvim', branch = '0.1.x',
		requires = {
			{ 'nvim-lua/plenary.nvim' },
			{ 'nvim-lua/popup.nvim' },
			{ 'nvim-telescope/telescope-media-files.nvim' },
		}
	}

	-- UI
	use 'echasnovski/mini.nvim'
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons' }
	}

	-- Notes
	use 'renerocksai/telekasten.nvim'
	use 'renerocksai/calendar-vim'

	-- Utilities
	use 'tpope/vim-repeat'
	use 'jghauser/mkdir.nvim'
	use {
		'ggandor/leap.nvim',
		config = function() require('leap').add_default_mappings() end
	}
	use {
		'ZhiyuanLck/smart-pairs',
		event = 'InsertEnter',
		config = function() require('pairs'):setup() end
	}

end
})
