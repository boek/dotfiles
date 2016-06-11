set nocompatible                 " Don't maintain compatibility with Vi.
filetype on
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'keith/rspec.vim'
Plugin 'tpope/vim-endwise'
Plugin 'jiangmiao/auto-pairs'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'kchmck/vim-coffee-script'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()            " required

set autoindent
filetype plugin indent on    " required

set laststatus=2
let g:bufferline_echo = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)|vendor\/bundle|vendor\/gems|tmp$'
let base16colorspace=256
set t_Co=256                     " Set 256 colors
set background=dark
syntax on                        " Enable syntax highlighting
colorscheme base16-eighties
set tabstop=2                    " Softer tabs
set shiftwidth=2
set expandtab
set number                       " Display the line numbers beside the buffer
set hidden                       " Allow buffer change w/o saving
set history=1000                 " Remember last 1000 commands
set scrolloff=4                  " Keep at least 4 lines below the cursor
set listchars=tab:▸\ ,eol:¬      " Whitespace character for :set list
set noswapfile                   " Gets ride of the *.swp files
set shell=$SHELL

map <C-n> :NERDTreeToggle<CR>
