local cmd = vim.cmd

-- General
cmd('set noshowmode')
cmd('set termguicolors')
cmd('set signcolumn=yes')
cmd('set nocompatible')
cmd('filetype plugin on')
cmd('syntax on')
cmd('set completeopt=menu,menuone,noselect')

-- Set tab to 4 spaces
cmd('set tabstop=4')
cmd('set softtabstop=0 noexpandtab')
cmd('set shiftwidth=4')

-- Set leader key to space
cmd('let g:mapleader=" "')

-- Set line numbers
cmd('set number')
cmd('set relativenumber')

-- Hide tildes
vim.wo.fillchars = 'eob: '
