local status,gitsigns = pcall( require , 'gitsigns' )
if (not status) then
    print( "Gitsigns not installed." )
    return
end

gitsigns.setup()

-- keymaps
vim.keymap.set( "n" , "<leader>gk" , ":Gitsigns prev_hunk<CR>" )
vim.keymap.set( "n" , "<leader>gj" , ":Gitsigns prev_hunk<CR>" )
vim.keymap.set( "n" , "<leader>gv" , ":Gitsigns preview_hunk<CR>" )
