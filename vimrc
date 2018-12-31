set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'dikiaap/minimalist'

Plugin 'vim-syntastic/syntastic'
Plugin 'fsharp/vim-fsharp'

call vundle#end()

set t_Co=256
colorscheme minimalist
filetype plugin indent on    " required
set colorcolumn=80
set number

