vim.cmd [[let g:netrw_banner = 0]]
vim.cmd [[let g:netrw_liststyle = 3]]
--vim.cmd [[let g:netrw_browse_split = 4]]
vim.cmd [[let g:netrw_altv = 1]]
vim.cmd [[let g:netrw_winsize = 10]]

-- keymaps
map( "n" , "<leader>E" , vim.cmd.Ex )
map( "n" , "<leader>lE", vim.cmd.Lex )
