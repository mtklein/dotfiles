set nocompatible

set background=light
filetype plugin indent on
syntax on

set hidden
set autoread

set hlsearch
set ignorecase
set incsearch
set showmatch
set smartcase
set wildmenu
set wildmode=longest:full

set autoindent
set backspace=2
set expandtab
set smartindent
set smarttab

set shiftwidth=4
set softtabstop=4
set tabstop=4

let c_no_curly_error=1
match ErrorMsg /\%>100v.\+/
set laststatus=2
set list listchars=tab:»\ ,trail:·
set scrolloff=3
set statusline=%f:%l.%c\ %m%r
set title

au BufEnter *.go setl noexpandtab listchars=tab:\ \ ,trail:·
au BufWritePre * :%s/\s\+$//e

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
highlight! link SignColumn LineNr
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_clear_cache_on_exit = 0

call plug#end()

map <CR> :nohl<CR>
map Y y$
nnoremap j gj
nnoremap k gk

map gb :CtrlPBuffer<CR>
map gh :b#<CR>
