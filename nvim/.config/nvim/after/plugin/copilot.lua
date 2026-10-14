
vim.g.copilot_filetypes = {
    ["*"]=false,
    ['julia']=true,
},

-- vim.g.copilot_no_tab_map = true

vim.keymap.set('i', '<C-l>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})
-- vim.keymap.set('i', '<C-c>', '<Plug>(copilot-suggest)')
vim.keymap.set('n', '<C-c>', ':Copilot<CR>')
vim.keymap.set('i', '<C-k>', '<Plug>(copilot-accept-word)')
