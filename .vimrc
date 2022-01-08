syntax on
nnoremap # <nop>

" To prevent certain issues apparently
set nocompatible

filetype on
"filetype plugin on
"filetype indent on

colorscheme molokai " until xrdb is set up 
" Adds transparency
hi Normal guibg=NONE ctermbg=NONE
" GENERAL ----------------------------------------------------------{{{

set number
set relativenumber

set expandtab " converts tab to spaces
set tabstop=4 softtabstop=4 " tab is n spaces
set smartindent
set shiftwidth=4

set hlsearch
set smartcase
set incsearch

" cursor shape adjusted to code 
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" }}}



" PLUGINS ----------------------------------------------------------{{{

" Plugins here
" Not coming soon without an exclamation mark

"  }}}



" STATUS BAR -------------------------------------------------------{{{

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
set laststatus=2

" User highlighting
"hi User1 guibg=cyan  guifg=gray
"hi User2 ctermbg=  ctermfg=  guibg=  guifg=
"hi User3 ctermbg=  ctermfg=  guibg=  guifg=

" }}}


" VIMSCRIPT --------------------------------------------------------{{{

" Enables code folding in .vimrc
" Uses marker method of folding
"augroup filetype_vim
"    autocmd!
"    autocmd FileType vim setlocal foldmethod=marker
"augroup END

"Actual vim scripting goes here VVV


" }}}
