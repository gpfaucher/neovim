local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
local telescope = require('telescope')
local set = vim.keymap.set

set('n', '<leader>ff', builtin.find_files, {})
set('n', '<leader>fg', builtin.live_grep, {})
set('n', '<leader>fb', builtin.buffers, {})
set('n', '<leader>fh', builtin.help_tags, {})

telescope.setup({
	defaults = {
		mappings = {
			i = {
				["<esc>"] = actions.close
			}
		}
	}
})

telescope.load_extension('media_files')
