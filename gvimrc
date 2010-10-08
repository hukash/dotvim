" Vim graphical configuration.
" Copy to ~/.gvimrc or ~/_gvimrc.

set guifont=Menlo:h12             " Font family and font size.
set antialias                     " MacVim: smooth fonts.
set background=dark               " Background.
colorscheme cloud_midnight        " overwrite terminal colorscheme
set lines=50 columns=120          " Window dimensions.
set guioptions-=T                 " Hide toolbar.
set guioptions-=lL                " Don't show left scrollbar
set guioptions-=rR                " Don't show right scrollbar
set guioptions=-bB                " Don't show bottom scrollbar

" Resize to fullscreen
nmap <Leader>f :set co=180<CR>:set lines=52<CR> 
" Resize to default size
nmap <Leader>n :set co=120<CR>:set lines=50<CR>:winpos 150 778<CR> 
                                                                                                                                                                               :
