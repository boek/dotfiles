set nocompatible " Don't maintain compatibility with Vi.
set t_Co=256
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-endwise'
Plugin 'jiangmiao/auto-pairs'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'scrooloose/syntastic'
call vundle#end()            " required

set autoindent
filetype plugin indent on    " required
syntax on
set background=dark
colorscheme ron


set laststatus=2
let g:bufferline_echo = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='jay'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)|vendor\/bundle|vendor\/gems|tmp|node_modules$'

set tabstop=2                    " Softer tabs
set shiftwidth=2
set expandtab
set number                       " Display the line numbers beside the buffer
set hidden                       " Allow buffer change w/o saving
set history=1000                 " Remember last 1000 commands
set scrolloff=4                  " Keep at least 4 lines below the cursor
set listchars=tab:▸\ ,eol:¬      " Whitespace character for :set list
set noswapfile                   " Gets ride of the *.swp files
map <C-n> :NERDTreeToggle<CR>    " Keyboard shortcut for Nerdtree
