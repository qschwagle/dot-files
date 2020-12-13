call plug#begin('~/.vim/plugged')

Plug 'vim-syntastic/syntastic'
Plug 'rust-lang/rust.vim'
Plug 'joshdick/onedark.vim'  " one dark color scheme
Plug 'preservim/nerdtree'

call plug#end()
set number

colorscheme onedark

let g:lightline = {
	\'colorscheme' : 'onedark',
\}

