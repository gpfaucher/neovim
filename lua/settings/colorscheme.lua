local treesitter = require('nvim-treesitter.configs')
local cmd = vim.cmd

-- Force transparency with Ayu
cmd('autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE')
cmd('highlight GitSignsAdd guibg=NONE')
cmd('highlight GitSignsChange guibg=NONE')
cmd('highlight GitSignsDelete guibg=NONE')
cmd('highlight SignColumn guibg=NONE')
cmd('autocmd ColorScheme * highlight SignColumn guibg=NONE')
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
