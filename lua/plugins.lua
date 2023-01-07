local packer = require('packer')

packer.startup({ function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Git integration
	use {
		'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
		config = function() require('gitsigns').setup() end
	}

	-- Completion & LSP
	use {
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
			'hrsh7th/cmp-vsnip',
			'hrsh7th/vim-vsnip'
		}
	}
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
