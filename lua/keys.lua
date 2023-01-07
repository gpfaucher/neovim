local cmd = vim.cmd


cmd("nnoremap <leader>nf :lua require('telekasten').find_notes()<CR>")
cmd("nnoremap <leader>nd :lua require('telekasten').find_daily_notes()<CR>")
cmd("nnoremap <leader>ng :lua require('telekasten').search_notes()<CR>")
cmd("nnoremap <leader>nz :lua require('telekasten').follow_link()<CR>")
cmd("nnoremap <leader>n :lua require('telekasten').panel()<CR>")
