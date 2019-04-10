set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'joshdick/onedark.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'rust-lang/rust.vim'
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'vim-syntastic/syntastic'

call vundle#end()

filetype plugin indent on    " required
set colorcolumn=80
set number
set relativenumber
set backspace=indent,eol,start
set showcmd
set incsearch
set hlsearch

syntax on
colorscheme onedark
let g:onedark_termcolors=256

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
noremap <Leader>t :NERDTreeToggle<CR>
noremap <silent> <Leader>v :NERDTreeFind<CR>
let g:airline#extensions#tabline#enabled = 1


 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*

 let g:syntastic_always_populate_loc_list = 1
 let g:syntastic_auto_loc_list = 1
 let g:syntastic_check_on_open = 1
 let g:syntastic_check_on_wq = 0
