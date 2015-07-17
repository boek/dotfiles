" User the space key as our leader.
let $PATH = $PATH . ':' . expand('~/.cabal/bin')
let mapleader = "\<Space>"

" Source (reload) your vimrc. Type space, s, o in sequence to trigger
nmap <leader>so :source $MYVIMRC<cr>
nmap <leader>vr :sp $MYVIMRC<cr>
nmap <leader>v :vnew <C-r>=escape(expand("%:p:h"), ' ') . '/'<cr><cr>

set tabstop=2                    " Softer tabs
set number                       " Display the line numbers beside the buffer
set nocompatible                 " Don't maintain compatibility with Vi.
set hidden                       " Allow buffer change w/o saving
set lazyredraw                   " Don't update while executing macros
set backspace=indent,eol,start   " Sane backspace behavior
set history=1000                 " Remember last 1000 commands
set scrolloff=4                  " Keep at least 4 lines below the cursor

" Bind `q` to close the buffer for help files
autocmd Filetype help noremap <buffer> q :q<cr>


" Vundle
filetype off                     " Required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'       " Vundle, required
Plugin 'Shougo/vimproc.vim'      " VimProc
Plugin 'eagletmt/ghcmod-vim'     " Haskell
Plugin 'lukerandall/haskellmode-vim'
Plugin 'ctrlpvim/ctrlp.vim'      " CTRL + P
Plugin 'tpope/vim-surround'      " Surround
Plugin 'tpope/vim-repeat'        " Repeat
Plugin 'tpope/vim-commentary'    " Supercharged Comments
Plugin 'toyamarinyon/vim-swift'  " Swift!

call vundle#end()
filetype plugin indent on        " Required
syntax on


" CTRL+P Config
let g:ctrlp_user_command = 'ag %s -l --hidden --nocolor -g ""'
let g:ctrlp_use_caching = 0

let g:haddock_browser = "open"
let g:haddock_browser_callformat = "%s %s"

