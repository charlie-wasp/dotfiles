set nocompatible

runtime macros/matchit.vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'slim-template/vim-slim'
Plugin 'mattn/emmet-vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'airblade/vim-gitgutter'

Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jasoncodes/ctrlp-modified.vim'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'FooSoft/vim-argwrap'
Plugin 'powerman/vim-plugin-ruscmd'
Plugin 'wellle/targets.vim'
Plugin 'vim-scripts/ReplaceWithRegister'

"Various textobjects
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-indent'
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-line'
Plugin 'nelstrom/vim-textobj-rubyblock'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'bkad/CamelCaseMotion'

Plugin 'AndrewRadev/splitjoin.vim'

"Snippets
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'elixir-lang/vim-elixir'

Plugin 'christoomey/vim-tmux-navigator'
Plugin 'w0rp/ale'
Plugin 'mileszs/ack.vim'
Plugin 'thoughtbot/vim-rspec'

Bundle 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-dispatch'

call vundle#end()

call camelcasemotion#CreateMotionMappings('<leader>')

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='solarized'
let g:airline#extensions#ale#warning_symbol = '⚠ '
let g:airline#extensions#ale#error_symbol = 'x '

let g:argwrap_tail_comma = 1
let g:ackprg = 'ag --vimgrep'
let g:rspec_command = "Dispatch rspec {spec}"

syntax enable
set encoding=utf-8
set showcmd
set clipboard=unnamed

filetype indent plugin on

" if executable('ag')
"     set grepprg=ag\ --nogroup\ --nocolor\ --column
"     set grepformat=%f:%l:%c%m
" endif

autocmd FileType markdown setlocal colorcolumn= wrap  tw=120
autocmd FileType slim setlocal colorcolumn=120
autocmd FileType coffee iabbrev <buffer> cl console.log
autocmd FileType javascript setlocal tabstop=4 shiftwidth=4
autocmd FileType css setlocal tabstop=4 shiftwidth=4
autocmd FileType php setlocal tabstop=4 shiftwidth=4
autocmd FileType html setlocal tabstop=4 shiftwidth=4
autocmd FileType ruby iabbrev <buffer> dp puts 'TEST' * 100
autocmd FileType ruby iabbrev <buffer> bb binding.pry
iabbrev Copmany Company
iabbrev copmany company
iabbrev cmopany company

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
nnoremap <Leader>m :CtrlPModified<CR>
nnoremap <Leader>M :CtrlPBranch<CR>
nnoremap tk :tabn<cr>
nnoremap tj :tabp<cr>
nmap <F8> :TagbarToggle<CR>
nnoremap <tab> %
vnoremap <tab> %
vnoremap <C-X> <Esc>`.``gvP``P
nnoremap <CR> o<Esc>
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
inoremap оо <ESC>
inoremap <esc> <nop>
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <leader>sv :so$MYVIMRC<cr>
nnoremap <c-_> :Commentary<cr>
vnoremap <c-_> :Commentary<cr>
nnoremap Y y$
nnoremap <leader>a :ArgWrap<CR>
cnoreabbrev Ack Ack!
nnoremap <leader>c :Ack!<Space>
"'string' -> :string
nmap <leader>sts ds'i:jj
" :foo => bar -> foo: bar
nnoremap <leader>h xf=dwhi:<esc>
nnoremap gz :!zeal "<cword>"&<CR><CR>
nmap <silent> [w <Plug>(ale_previous_wrap)
nmap <silent> ]w <Plug>(ale_next_wrap)

map <leader>rc :call RunCurrentSpecFile()<cr>
map <leader>rn :call RunNearestSpec()<cr>
map <leader>rl :call RunLastSpec()<cr>
map <leader>ra :call RunAllSpecs()<cr>

set background=dark
colorscheme solarized
