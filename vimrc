let base16colorspace=256
set t_Co=256                     " Set 256 colors
set background=dark
syntax on                        " Enable syntax highlighting
colorscheme base16-eighties
set tabstop=2                    " Softer tabs
set shiftwidth=2
set expandtab
set number                       " Display the line numbers beside the buffer
set nocompatible                 " Don't maintain compatibility with Vi.
set hidden                       " Allow buffer change w/o saving
set history=1000                 " Remember last 1000 commands
set scrolloff=4                  " Keep at least 4 lines below the cursor
set listchars=tab:▸\ ,eol:¬      " Whitespace character for :set list
set noswapfile                   " Gets ride of the *.swp files
set shell=$SHELL

