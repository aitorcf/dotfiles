local function map(mode, lhs, rhs, desc)
  vim.keymap.set(mode, lhs, rhs, { silent = true, desc = desc })
end

-- exit to normal mode
map("t", "kj", "<C-\\><C-n>")
map("i", "kj", "<Esc>")

map("n", "<leader>nh", ":noh<CR>", "Stop search highlight")
map("n", "Y", "y$", "Yank to end of line")
map("v", "<leader>r", ":s/\\%V", "Replace in visual selection")
map("v", "<", "<gv")
map("v", ">", ">gv")

map("n", "<leader>so", ":source %<CR>", "Source current file")
map("n", "<leader>si", ":source ~/.config/nvim/init.lua<CR>", "Source init.lua")

-- windows: navigation
for _, k in ipairs({ "h", "j", "k", "l" }) do
  map("i", "<C-" .. k .. ">", "<C-\\><C-N><C-w>" .. k)
  map("n", "<C-" .. k .. ">", "<C-w>" .. k)
  map("t", "<C-" .. k .. ">", "<C-\\><C-N><C-w>" .. k)
end

-- windows: resizing
map("n", "<leader>ry", ":resize +2<CR>")
map("n", "<leader>ro", ":resize -2<CR>")
map("n", "<leader>ri", ":vertical resize +2<CR>")
map("n", "<leader>ru", ":vertical resize -2<CR>")
map("n", "<leader>0", "<C-W>=")

-- surround visual selection
map("x", "<leader>s(", "xi()<Esc>P")
map("x", "<leader>s)", "xi()<Esc>P")
map("x", "<leader>s[", "xi[]<Esc>P")
map("x", "<leader>s]", "xi[]<Esc>P")
map("x", "<leader>s}", "xi{}<Esc>P")
map("x", "<leader>s{", "xi{}<Esc>P")
map("x", "<leader>s", 'xi""<Esc>P-')

-- splits
map("n", "<leader>vv", ":rightbelow vsplit<CR>")
map("n", "<leader>hh", ":rightbelow split<CR>")
vim.keymap.set("n", "<leader>ve", ":rightbelow vsplit ")
vim.keymap.set("n", "<leader>he", ":rightbelow split ")

-- splits with terminals / REPLs
local cwd = ":let $CURR_DIR=expand('%:p:h')<CR>"
map("n", "<leader>vt", cwd .. ":rightbelow vsplit term://zsh<CR>icd $CURR_DIR<CR>clear<CR>")
map("n", "<leader>vj", cwd .. ":rightbelow vsplit term://julia<CR>")
map("n", "<leader>ht", cwd .. ":rightbelow 10split term://zsh<CR>icd $CURR_DIR<CR>clear<CR>")
map("n", "<leader>hj", cwd .. ":rightbelow 10split term://julia<CR>icd $CURR_DIR<CR>clear<CR>")

-- tabs
vim.keymap.set("n", "<leader>pe", ":tabedit ")
map("n", "<leader>pp", ":tabnew<CR>")
map("n", "<leader>pin", ":tabedit ~/.config/nvim/init.lua<CR>")
map("n", "<leader>po", ":tabonly<CR>")
map("n", "<leader>pt", ":tabnew term://zsh<CR>")
map("n", "<leader>pj", ":tabnew term://julia<CR>")
map("n", "<leader>pi", ":tabnew term://ipython<CR>")
map("n", "<leader>ps", ":tabnew term://sage<CR>")
map("n", "<leader>pg", ":tabnew term://gnuplot<CR>")
map("n", "<leader>pv", ":tabnew term://vtop<CR>")
map("n", "<leader>ph", ":tabnew term://htop<CR>")
map("n", "<Tab>l", ":tabnext<CR>")
map("n", "<Tab>h", ":tabprevious<CR>")
map("n", "<Tab>o", ":+tabmove<CR>")
map("n", "<Tab>y", ":-tabmove<CR>")
