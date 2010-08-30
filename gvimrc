" Vim graphical configuration.
" Copy to ~/.gvimrc or ~/_gvimrc.

set guifont=Consolas\ 12          " Font family and font size.
set antialias                     " MacVim: smooth fonts.
set encoding=utf-8                " Use UTF-8 everywhere.
set guioptions-=T                 " Hide toolbar.
set background=dark               " Background.
set lines=49 columns=120          " Window dimensions.
set guioptions-=lL                 " Don't show left scrollbar
set guioptions-=rR                 " Don't show right scrollbar
set guioptions=-bB                 " Don't show bottom scrollbar
" Resize to fullscreen

let mapleader=","

nmap <Leader>f :set co=180<CR>:set lines=49<CR> 
" Resize to default size
nmap <Leader>n :set co=120<CR>:set lines=49<CR>:winpos 150 778<CR> 
