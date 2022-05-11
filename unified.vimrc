" UNIFIED VIM CONFIGURATION FILE
" vim @ $HOME/.vimrc
" nvim@ $HOME/.config/nvim/init.vim
syntax on
nnoremap # <nop>

" To prevent certain issues apparently
set nocompatible

filetype on
"filetype plugin on

" Adds transparency
"hi Normal guibg=NONE ctermbg=NONE

" GENERAL ----------------------------------------------------------{{{
set expandtab " converts tab to spaces
set tabstop=4 softtabstop=4 " tab is n spaces
set smartindent
set shiftwidth=4

set hlsearch
set smartcase
set incsearch

set lazyredraw
set showmatch
set wildmenu " command mode suggestion menu

" }}}



" PLUGINS / KEYBINDS  ------------------------------------------{{{

" Keymapping syntax:
" map_mode <what is typed> <what is executed>
" `-> nnoremap / inoremap / vnoremap
" Mapleader binding (let mapleader = "key" )

inoremap jj <Esc>
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

" Navigate split view CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split windows : CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
" noremap <c-up> <c-w>+
" noremap <c-down> <c-w>-
" noremap <c-left> <c-w>>
" noremap <c-right> <c-w><

" NERDTREE Commands
nnoremap <F3> :NERDTreeToggle<CR>


" STATUS -------------------------------------------------------{{{

" cursor shape adjusted to code 
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" Clear status line
set statusline=

" from left / middle / right
set statusline+=\ %F
set statusline+=\ {
set statusline+=\ %Y
"set statusline+=,
set statusline+=\%R
set statusline+=\ }

set statusline+=%=

set statusline+=\%p%%
set statusline+=\| 
"set statusline+=\ <<
set statusline+=\ %l
set statusline+=,
set statusline+=\%c
"set statusline+=\ >>
"set statusline+=

" Enable (2) or disable (0) custom status bar
set laststatus=0

" User highlighting
"hi User1 guibg=cyan  guifg=gray
"hi User2 ctermbg=  ctermfg=  guibg=  guifg=
"hi User3 ctermbg=  ctermfg=  guibg=  guifg=

" }}}
