syntax on

call plug#begin('~/.vim/plugged')
    "Plug 'JuliaEditorSupport/julia-vim'
    Plug 'sheerun/vim-polyglot'
    Plug 'morhetz/gruvbox'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'tpope/vim-fugitive'
call plug#end()

set background=dark
colorscheme gruvbox

" avoid warning for wrong version
version 5.0

set number 
set numberwidth=1
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE

" mine 
set noerrorbells 
set tabstop=4 softtabstop=4 
set shiftwidth=4 
set expandtab 
set smartindent 
set nowrap 
set smartcase 
set noswapfile 
set nobackup 
set incsearch 
set scrolloff=8 
set splitright
set splitbelow
"set completeopt+=menuone 
"set completeopt+=noinsert 
"set completeopt-=preview
" dipc defaults
set nosc
"set   autoindent
set backspace=2
"set noexpandtab
set nojoinspaces
set   ruler
set noshowcmd
set   showmatch
"set tabstop=8
set shiftwidth=1
set shortmess=W
set   scrolljump=1
set textwidth=0
set   t_tp=\|23m
set nowrap
set nowrapscan
set   wrapmargin=0
set   maxmem=8192
set   maxmemtot=10240
"set   smartindent
set   updatetime=5000
set   visualbell


" =========== "
" STATUS LINE "
" =========== "
set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=\ %n\           " buffer number
set statusline+=%#Visual#       " colour
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorIM#     " colour
set statusline+=%R                        " readonly flag
set statusline+=%M                        " modified [+] flag
set statusline+=%#Cursor#               " colour
set statusline+=%#CursorLine#     " colour
set statusline+=\ %t\                   " short file name
set statusline+=%=                          " right align
set statusline+=%#CursorLine#   " colour
set statusline+=\ %Y\                   " file type
set statusline+=%#CursorIM#     " colour
set statusline+=\ %3l:%-2c\         " line + column
set statusline+=%#Cursor#       " colour
set statusline+=\ %3p%%\                " percentage

" ============ "
" KEY MAPPINGS "
" ============ "
let mapleader=" "

" yank entire line
nnoremap Y y$

nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
"tnoremap <C-h> <C-\><C-N><C-w>h
"tnoremap <C-j> <C-\><C-N><C-w>j
"tnoremap <C-k> <C-\><C-N><C-wtandard "
" ------------ "
" sourcing
nnoremap <leader>so  :source %<CR>
nnoremap <leader>si  :source ~/.config/nvim/init.vim<CR>
" file explorer
nnoremap <leader>E   :Vexplore<CR>
" window splitting (not for terminal; see below)
nnoremap <leader>hs  :rightbelow split<CR>
nnoremap <leader>vs  :rightbelow vsplit<CR>
nnoremap <leader>he  :rightbelow split 
nnoremap <leader>ve  :rightbelow vsplit 
nnoremap <leader>ht  :term<CR>
nnoremap <leader>hj  :term://julia<CR>
nnoremap <leader>vt  :vert term<CR>
nnoremap <leader>vj  :vert term://julia<CR>
" terminal creation
nnoremap <leader>t   :terminal ++curwin<CR>
nnoremap <leader>ts  :rightbelow 10split  term<CR>
nnoremap <leader>tsj :rightbelow 10split  term://julia<CR>
" window navigation with Ctrl+direction
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
nnoremap <C-h> <C-w>h
"tnoremap <C-l> <C-\><C-N><C-w>l
" neovim versions of mode exits
tnoremap kj <C-\><C-n>
nnoremap Q :q!<CR>
inoremap kj <Esc>
" window resizing
nnoremap <leader>+ :resize +2<CR>
nnoremap <leader>- :resize -2<CR>
nnoremap <leader>0 <C-W>=
" tabs (pestañas)
nnoremap          <leader>pe  :tabedit 
nnoremap <silent> <leader>pn  :tabnew<CR>
nnoremap <silent> <leader>pi  :tabedit ~/.config/nvim/init.vim<CR>
nnoremap <silent> <leader>po  :tabonly<CR>
nnoremap <silent> <leader>pt  :tabnew<CR>:term ++curwin<CR>
nnoremap <silent> <leader>pj  :tabnew term://julia<CR>
nnoremap <silent> <Tab>l      :tabnext<CR>
nnoremap <silent> <Tab>h      :tabprevious<CR>
nnoremap <silent> <Tab>o      :+tabmove<CR>
nnoremap <silent> <Tab>y      :-tabmove<CR>
" stop highlighting after search
nnoremap <leader>nh :noh<CR>
" fugitive
nnoremap <leader>gs :Git<CR>
