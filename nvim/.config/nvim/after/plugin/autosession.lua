local status,autosession = pcall( require , 'auto-session' )
if (not status) then
    print( "auto-session not installed." )
    return
end

autosession.setup {

    log_level = "error",
    auto_restore_enabled = false ,
    auto_session_suppress_dirs = { "~/", "~/Desktop", "~/Downloads", "/"},

}
vim.keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })
vim.keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" })
