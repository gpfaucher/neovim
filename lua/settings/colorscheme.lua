local treesitter = require('nvim-treesitter.configs')
local cmd = vim.cmd

-- Colorscheme
--gruvbox.setup({
------------------	transparent_mode = true
--})
--cmd('colorscheme gruvbox')
--
cmd('autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE')
cmd('colorscheme ayu-dark')

-- Treesitter
treesitter.setup({
	ensure_installed = "all",
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = { 'org' }
	},
})
