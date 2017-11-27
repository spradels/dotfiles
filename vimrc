" Enable vimplug
call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
Plug 'altercation/vim-colors-solarized'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
call plug#end()

" Set the leader key to ,
let mapleader = ","

" Set colorscheme
set background=dark
colorscheme solarized

" Enable linenumbers
set number
set numberwidth=5

" Enable underline on line with cursor
set cursorline

" Toggle between two files with double-leader instead of <c-^>
nnoremap <Leader><Leader> <c-^>

" Jump to last visted line when reopening a file
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Let ] clear last search highlights
:nnoremap ] :nohlsearch<cr>

" Use the system clipboard
set clipboard=unnamed

" Configure tabs
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4

" Navigate buffers with tabs
nnoremap <Tab> :bnext!<CR>
nnoremap <S-Tab> :bprev!<CR><Paste>

" Airline config
let g:airline_solarized_bg='dark'
let g:airline#extensions#tabline#enabled=1 
let g:airline_powerline_fonts=1
" Let ale use the staus line
let g:airline#extensions#ale#enabled = 1
set laststatus=2

" Ctrl-P config
nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>t :CtrlP<CR>

" ALE Config
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)


