" This must be first, because it changes other options as a side effect.
set nocompatible

" Required for Vundle
filetype off


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'fsharp/vim-fsharp'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'dracula/vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'IN3D/vim-raml'

call vundle#end()

" Make backspace behave in a sane manner.
set backspace=indent,eol,start
set t_Co=256
set colorcolumn=80

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Switch syntax highlighting on
syntax on
set background=dark
colorscheme dracula

" Set line numbers
set number

set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" NERDTree
map <C-n> :NERDTreeToggle<CR>

set laststatus=2
let g:bufferline_echo = 0
let g:airline#extensions#tabline#enabled = 1
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)|vendor\/bundle|vendor\/gems|tmp|node_modules$'


