" Vim graphical configuration.
" Copy to ~/.gvimrc or ~/_gvimrc.

set guifont=Menlo:h12             " Font family and font size.
" set guicursor=n-v-s:ver10       " Vertical bar cursor
set antialias                     " MacVim: smooth fonts.
set background=dark               " Background.
colorscheme molokai               " overwrite terminal colorscheme
" colorscheme topfunky-light      " overwrite terminal colorscheme
set lines=51 columns=120          " Window dimensions.
set guioptions-=T                 " Hide toolbar.
set guioptions-=lL                " Don't show left scrollbar
set guioptions-=L                 " Don't show left scrollbar
set guioptions-=r                 " Don't show right scrollbar
set guioptions-=R                 " Don't show right scrollbar
set guioptions-=b                 " Don't show bottom scrollbar
set guioptions-=B                 " Don't show bottom scrollbar

" Resize to fullscreen
nmap <Leader>f :set co=180<CR>:set lines=52<CR> 
" Resize to default size
nmap <Leader>n :set co=120<CR>:set lines=50<CR>:winpos 150 778<CR> 
