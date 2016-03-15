set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'kchmck/vim-coffee-script'
Plugin 'slim-template/vim-slim'
Plugin 'mattn/emmet-vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
call vundle#end()

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:indentLine_char = '|'
let g:indentLine_enabled = 0

syntax enable
set encoding=utf-8
set showcmd
filetype plugin indent on

autocmd FileType markdown setlocal colorcolumn= wrap  tw=120
autocmd FileType slim setlocal colorcolumn=120

function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
  else
    set rnu
  endif
endfunc

let mapleader = ","
set modelines=0
set nowrap
set tabstop=2 shiftwidth=2
set expandtab
set backspace=indent,eol,start

set scrolloff=3
set autoindent
set showmode
set showcmd
set cursorline
set ttyfast
set laststatus=2
set relativenumber
set undofile
set ruler
set hlsearch
set incsearch
set ignorecase
set smartcase
set gdefault
set showmatch
set number

set splitbelow
set splitright

nnoremap <leader><space> :noh<cr>
nmap <F9> :call NumberToggle()<cr>
nmap <F8> :TagbarToggle<CR>
nnoremap <tab> %
vnoremap <tab> %
vnoremap <C-X> <Esc>`.``gvP``P
nmap <CR> o<Esc>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
inoremap jj <ESC>
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

colorscheme wombat
