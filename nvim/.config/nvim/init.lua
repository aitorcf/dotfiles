-- ############################### ---
-- DOUBLE ENTER AND TAB WORKAROUND ---
-- ############################### ---
--
vim.env.NVIM_TUI_ENABLE_TRUE_COLOR = "1"
vim.g.termguicolors = true

-- Work around doubled <CR>/<Tab> in terminals using extended keyboard protocols
vim.o.termguicolors = true
vim.o.ttimeout = true
vim.o.ttimeoutlen = 10

-- Disable kitty/alacritty progressive keyboard behavior in Nvim TUI
vim.g.no_ufo = 1
vim.g.loaded_matchparen = 1

-- hard-disable terminal keycode negotiation that can duplicate Enter/Tab
vim.api.nvim_create_autocmd("VimEnter", {
  once = true,
  callback = function()
    pcall(vim.api.nvim_ui_set_option, "ext_linegrid", false)
  end,
})

require("config.options")
require("config.keymaps")
require("config.autocmds")
require("config.lazy")
require("config.lsp")
