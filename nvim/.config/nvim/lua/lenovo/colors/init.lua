vim.o.background = "dark" -- or "light" for light mode

-- Select colorscheme among files in colorschemes directory.
local selectedcolorscheme = 'gruvbox'

require( "lenovo.colors." .. selectedcolorscheme)
