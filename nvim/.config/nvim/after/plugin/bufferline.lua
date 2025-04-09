local status,bufferline = pcall( require , 'bufferline' )
if (not status) then
    print( "Bufferline not installed" )
    return
end

bufferline.setup({

    options={
        mode='tabs',
        diagnostics='lsp',
        buffer_close_icon = '',
        offsets = {
            {
                filetype = "NvimTree",
                text = "",
                text_align = "center",
                separator = true,
            }
        },
    },

    highlights={
        buffer_selected={italic=false,},
    },

})
