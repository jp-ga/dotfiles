" colored syntax:
syntax on
set t_Co=16
colorscheme selenized

" line numbers:
set number

" highlight searches
set hlsearch
set incsearch
map <esc> :noh <CR>

" airline config
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#wordcount#enabled = 0
