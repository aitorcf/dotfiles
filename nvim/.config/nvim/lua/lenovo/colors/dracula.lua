local status,dracula = pcall( require , "dracula" )
if not status then
    print( "Colorscheme Dracula not installed." )
    return
end

dracula.setup({

  -- show the '~' characters after the end of buffers
  --
  show_end_of_buffer = true, -- default false
  -- use transparent background
  transparent_bg = true, -- default false
  -- overrides the default highlights see `:h synIDattr`
})

vim.cmd[[colorscheme dracula]]
