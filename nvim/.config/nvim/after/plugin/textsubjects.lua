local status, textsubjects = pcall( require , "nvim-treesitter-textsubjects" )
if (not status) then
    print( "Oil not installed." )
    return
end

textsubjects.configure({
    prev_selection = ',',
    keymaps = {
        ['.'] = 'textsubjects-smart',
        [';'] = 'textsubjects-container-outer',
        ['i;'] = 'textsubjects-container-inner',
    },
})
