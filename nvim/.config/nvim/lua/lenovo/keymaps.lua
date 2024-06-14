local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

-- Exit to normal mode
map( "t" , "kj" , "<C-\\><C-n>" )
map( "i" , "kj" , "<Esc>" )

-- stop highlighting after search 
map( "n" , "<leader>nh" , ":noh<CR>" )

-- Y yanks until end of line 
map( "n" , "Y" , "y$" )

-- replace in visual block 
map( "v" , "<leader>r" , ":s/\\%V" )

-- better tabbing 
map( "v" , "<" , "<gv" )
map( "v" , ">" , ">gv" )

-- source current file
map( "n" , "<leader>so" , ":source %<CR>" )

-- source config file
map( "n" , "<leader>si" , ":source ~/.config/nvim/init.lua<CR>" )

-- ======= --
-- WINDOWS --
-- ======= --
--
-- navigation
map( "i" , "<C-h>" , "<C-\\><C-N><C-w>h" )
map( "i" , "<C-j>" , "<C-\\><C-N><C-w>j" )
map( "i" , "<C-k>" , "<C-\\><C-N><C-w>k" )
map( "i" , "<C-l>" , "<C-\\><C-N><C-w>l" )
map( "n" , "<C-h>" , "<C-w>h" )
map( "n" , "<C-j>" , "<C-w>j" )
map( "n" , "<C-k>" , "<C-w>k" )
map( "n" , "<C-l>" , "<C-w>l" )
map( "t" , "<C-h>" , "<C-\\><C-N><C-w>h" )
map( "t" , "<C-j>" , "<C-\\><C-N><C-w>j" )
map( "t" , "<C-k>" , "<C-\\><C-N><C-w>k" )
map( "t" , "<C-l>" , "<C-\\><C-N><C-w>l" )
--
-- resizing 
map( "n" , "<leader>ry" ,  ":resize +2<CR>" )
map( "n" , "<leader>ro" ,  ":resize -2<CR>" )
map( "n" , "<leader>ri" ,  ":vertical resize +2<CR>" )
map( "n" , "<leader>ru" ,  ":vertical resize -2<CR>" )
map( "n" , "<leader>0"  ,  "<C-W>=" )
--
-- rotations: CTRL-W r is the default sequence
-- surrounding selected text
map( "x" , "<leader>s(" , "xi()<Esc>P" )
map( "x" , "<leader>s)" , "xi()<Esc>P" )
map( "x" , "<leader>s[" , "xi[]<Esc>P" )
map( "x" , "<leader>s]" , "xi[]<Esc>P" )
map( "x" , "<leader>s}" , "xi{}<Esc>P" )
map( "x" , "<leader>s{" , "xi{}<Esc>P" )
map( "x" , "<leader>s"  , "xi\"\"<Esc>P-" )
--
-- split 
map( "n" , "<leader>vv" , ":rightbelow vsplit<CR>" )
map( "n" , "<leader>hh" , ":rightbelow split<CR>" )
-- split and edit
vim.keymap.set( "n" , "<leader>ve" , ":rightbelow vsplit " )
vim.keymap.set( "n" , "<leader>he" , ":rightbelow split " )
-- split and open terminal 
map( "n" , "<leader>vt" , ":let $CURR_DIR=expand('%:p:h')<CR>:rightbelow vsplit term://zsh<CR>icd $CURR_DIR<CR>clear<CR>" )
map( "n" , "<leader>ht" , ":let $CURR_DIR=expand('%:p:h')<CR>:rightbelow split term://zsh<CR>icd $CURR_DIR<CR>clear<CR>" )
map( "n" , "<leader>vj" , ":let $CURR_DIR=expand('%:p:h')<CR>:rightbelow vsplit term://julia<CR>" )
map( "n" , "<leader>hj" , ":let $CURR_DIR=expand('%:p:h')<CR>:rightbelow split term://julia<CR>" )
-- horizontal small terminal
map( "n" , "<leader>ht" , ":let $CURR_DIR=expand('%:p:h')<CR>:rightbelow 10split term://zsh<CR>icd $CURR_DIR<CR>clear<CR>" )
map( "n" , "<leader>hj" , ":let $CURR_DIR=expand('%:p:h')<CR>:rightbelow 10split term://julia<CR>icd $CURR_DIR<CR>clear<CR>" )

-- ==== --
-- TABS --
-- ==== --
vim.keymap.set( "n" , "<leader>pe"  , ":tabedit " )
map( "n" , "<leader>pp"  , ":tabnew<CR>" )
map( "n" , "<leader>pin" , ":tabedit ~/.config/nvim/init.vim<CR>" )
map( "n" , "<leader>po"  , ":tabonly<CR>" )
map( "n" , "<leader>pt"  , ":tabnew term://zsh<CR>" )
map( "n" , "<leader>pj"  , ":tabnew term://julia<CR>" )
map( "n" , "<leader>pi"  , ":tabnew term://ipython<CR>" )
map( "n" , "<leader>ps"  , ":tabnew term://sage<CR>" )
map( "n" , "<leader>pg"  , ":tabnew term://gnuplot<CR>" )
map( "n" , "<leader>pv"  , ":tabnew term://vtop<CR>" )
map( "n" , "<leader>ph"  , ":tabnew term://htop<CR>" )
map( "n" , "<Tab>l"      , ":tabnext<CR>" )
map( "n" , "<Tab>h"      , ":tabprevious<CR>" )
map( "n" , "<Tab>o"      , ":+tabmove<CR>" )
map( "n" , "<Tab>y"      , ":-tabmove<CR>" )

