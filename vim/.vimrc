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

"" map <F2> to :w 
"map  <F2> :w
"map! <F2> :wi
"
"map  <F5> V/^[% ]*$gq``
"map! <F5> V/^[% ]*$gaqq``
"map  <S-F5> !}fmt
"map! <S-F5> !}fmti
"
"" wrap down / upwards and maximize / hide buffer (like PM)
"map  <F8>  
"map!  <F8>  
"map  <F7>  W
"map!  <F7>  W
"map  <F9>  c
"map  <F10> _
"map!  <F10> _
"
"" toggle paste / nopaste mode
"map! <F11> :set pastei
"map  <F11> :set pasteo
"map  <F12> :set nopaste
"
"version 5.0		" avoid warning for wrong version
"
"set bs=2		" allow backspacing over everything in insert mode
"set ai			" always set autoindenting on
"set tw=72		" always limit the width of text to 78
"set backup		" keep a backup file
"set viminfo='20,\"50	" read/write a .viminfo file, don't store more
"			" than 50 lines of registers

" When starting to edit a file:
"   For *.c and *.h files set formatting of comments and set C-indenting on
"   For other files switch it off
"   Don't change the sequence, it's important that the line with * comes first.
"autocmd BufRead * set formatoptions=tcql nocindent comments&
"autocmd BufRead *.c,*.h set formatoptions=croql cindent comments=sr:/*,mb:*,el:*/,://

" now some stuff for fortran files (*.f, *.fpp, *.for)
" ======================================================================
"autocmd BufRead *.f,*.for,*.fpp,*.web set tw=72  
" autocmd BufRead *.f,*.for,*.fpp,*.web map! ,dp double precision 
" autocmd BufRead *.f,*.for,*.fpp,*.web map! ,in implicit none
" autocmd BufRead *.f,*.for,*.fpp,*.web map! ,f function implicit noneend4-A
" autocmd BufRead *.f,*.for,*.fpp,*.web map! ,p subroutine implicit noneend4-A
" autocmd BufRead *.f,*.for,*.fpp,*.web map! ,p :r ~/share/lib/vim_lib/sub-f77.libA 


" and for LaTeX, and Web files (*.tex, *.ltx, *.web)
" ======================================================================

" general stuff
" ----------------------------------------------------------------------
" some environments  / shortcuts
" autocmd BufRead,BufNewFile *.tex,*.ltx,*.web map! ,e yypi\label{}\end{A}%3-i%\begin{A}
" for smartindend, don't use cindent
"autocmd BufRead,BufNewFile *.tex,*.ltx,*.web set cinwords=\\item,\\begin,\\caption
"autocmd BufRead,BufNewFile *.tex,*.ltx,*.web map  <F3>   :w:! latex % 
"autocmd BufRead,BufNewFile *.tex,*.ltx,*.web map! <F3> :w:! latex % 
"autocmd BufRead,BufNewFile *.tex,*.ltx       cmap view  :! xdvi -bg white -fg black %:r & 

" and for GLE (*.gle) files:
" ======================================================================
"autocmd BufRead,BufNewFile *.gle map  <F3>   :w:! gle -dx \/drawit % & 
"autocmd BufRead,BufNewFile *.gle map! <F3> :w:! gle -dx \/drawit % & 

" some stuff for (*.gpl) gnuplot:
" ----------------------------------------------------------------------
"autocmd BufRead,BufNewFile *.gpl map  <F3>   :w:! gnuplot % 
"autocmd BufRead,BufNewFile *.gpl map! <F3> :w:! gnuplot % 

" some stuff for povray:
" ----------------------------------------------------------------------
"autocmd BufRead,BufNewFile *.pov map  <F3>   :w:! x-povray +I% +D & 
"autocmd BufRead,BufNewFile *.pov map! <F3> :w:! x-povray +I% +D & 

" Enable editing of gzipped files
"    read: set binary mode before reading the file
"          uncompress text in buffer after reading
"   write: compress file after writing
"  append: uncompress file, append, compress file
"autocmd BufReadPre,FileReadPre      *.gz set bin
"autocmd BufReadPost,FileReadPost    *.gz '[,']!gunzip
"autocmd BufReadPost,FileReadPost    *.gz set nobin

"autocmd BufWritePost,FileWritePost  *.gz !mv <afile> <afile>:r
"autocmd BufWritePost,FileWritePost  *.gz !gzip <afile>:r

"autocmd FileAppendPre		    *.gz !gunzip <afile>
"autocmd FileAppendPre		    *.gz !mv <afile>:r <afile>
"autocmd FileAppendPost		    *.gz !mv <afile> <afile>:r
"autocmd FileAppendPost		    *.gz !gzip <afile>:r

"the end.

"
" ----------------------------------------------------------------------
" $Header: /usr/users/sad/dipc/admin/computing/newuser/dots/RCS/dot-vimrc,v 1.2 2000/05/30 11:40:52 sad Exp sad $
"
" $Log: dot-vimrc,v $
" Revision 1.2  2000/05/30  11:40:52  sad
" Added RCS header information.
"
"
" ----------------------------------------------------------------------
" eof.
