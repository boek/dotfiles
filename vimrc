
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'autozimu/LanguageClient-neovim'
Plugin 'ionide/Ionide-vim'

call vundle#end()
set runtimepath+=~/.vim-plugins/LanguageClient-neovim
set rtp+=/usr/bin/fzf

filetype plugin indent on    " required
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
set colorcolumn=80
set number
set relativenumber
set backspace=indent,eol,start
set showcmd
set incsearch
set hlsearch

syntax on
let g:LanguageClient_serverCommands = {
  \ 'fsharp': g:fsharp#languageserver_command
  \ }
