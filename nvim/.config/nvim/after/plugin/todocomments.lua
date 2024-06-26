local status,todocomments = pcall( require , "todo-comments" )
if (not status) then
    print( "todo-comments not installed." )
    return
end

todocomments.setup({
    signs = false,
})

vim.keymap.set("n", "]t", function()
    require("todo-comments").jump_next()
end, { desc = "Next todo comment" })
vim.keymap.set("n", "[t", function()
    require("todo-comments").jump_prev()
end, { desc = "Previous todo comment" })
