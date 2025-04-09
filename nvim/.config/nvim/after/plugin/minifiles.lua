local status,minifiles = pcall( require , 'mini.files' )
if (not status) then
    return
end


vim.keymap.set( "n" , "<leader>M"  , ":lua MiniFiles.open()<CR>" , {silent=true})

minifiles.setup()
