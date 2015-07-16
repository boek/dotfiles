set nocompatible
filetype off
syntax on
set encoding=utf-8
set background=light
colorscheme heroku
set spell spellang=en_us



" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
call vundle#end()

filetype plugin indent on
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
inoremap jk <ESC>
let mapleader = "\<Space>"
