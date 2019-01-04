set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'dracula/vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'fsharp/vim-fsharp'
Plugin 'itchyny/lightline.vim'

call vundle#end()

set t_Co=256
set guicursor=
" Workaround some broken plugins which set guicursor indiscriminately.
autocmd OptionSet guicursor noautocmd set guicursor=
colorscheme dracula
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }
filetype plugin indent on    " required
set colorcolumn=80
set number

