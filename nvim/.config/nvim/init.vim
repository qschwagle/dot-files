call plug#begin('~/.vim/plugged')

" Plug 'vim-syntastic/syntastic'
Plug 'rust-lang/rust.vim'
Plug 'joshdick/onedark.vim'  " one dark color scheme
Plug 'preservim/nerdtree'

" used for telescope 
Plug 'nvim-lua/plenary.nvim'

Plug 'nvim-telescope/telescope.nvim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'jackguo380/vim-lsp-cxx-highlight'

Plug 'rhysd/vim-clang-format'

call plug#end()
set number

" use system clipboard by default
set clipboard=unnamedplus

colorscheme onedark

let g:lightline = {
	\'colorscheme' : 'onedark',
\}


" telescope config
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fn <cmd>Telescope help_tags<cr>

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

" Disabiling cpp lint due to style incompatibility 
" let g:syntastic_cpp_checkers = ['cpplint']
" let g:syntastic_c_checkers = ['cpplint']
" let g:syntastic_cpp_cpplint_exec = 'cpplint'

" do we want to check on opening and on wq?
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

nnoremap <Leader>f :<C-u>ClangFormat<CR>

" coc config 
set updatetime=300

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

set exrc
set secure
