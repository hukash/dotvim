" Vim configuration.
" Copy or symlink to ~/.vimrc or ~/_vimrc.

set nocompatible                  " Must come first because it changes other options.

silent! call pathogen#runtime_append_all_bundles()

set modelines=0                   "Turn off modelines for security

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

runtime macros/matchit.vim        " Load the matchit plugin.
set encoding=utf-8
set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.
set autoindent

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.
"
" Stuff to ignore when tab completing
set wildignore=*.o,*.obj,*~,*.pyc,*.bak,*.exe,.DS_Store,*.db

"set number                        " Show line numbers.
set relativenumber
set ruler                         " Show cursor position.
set cursorline                    " Highlight current line.
set scrolloff=3                   " Show 3 lines of context around the cursor.

" Searching
set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.
set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.
set showmatch
set gdefault
map <leader><space> :noh<CR>      " Clear out search
nmap <tab> %
vmap <tab> %

set wrap                          " Turn on line wrapping.
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85
set title                         " Set the terminal's title

set visualbell                    " No beeping.
set ttyfast
set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.  " Keep swap files in one location
set undofile
" Indent settings
set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs

set laststatus=2                  " Show the status line all the time

" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Set your huggable colorscheme
colorscheme ir_black

" Syntax highlightning for JSON
au BufRead,BufNewFile *.json set filetype=json

" Save when losing focus "
au FocusLost * :wa

" Use the damn hjkl keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" And make them fucking work, too.
nnoremap j gj
nnoremap k gk

" Easy buffer navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nnoremap <leader>w <C-w>v<C-w>l   "open a new vertical split and switch over to it

" Bufexplorer
" With bufexplorer, you can quickly and easily switch between buffers by using the one of the default public interfaces: 

 " '\be' (normal open)  or 
 " '\bs' (force horizontal split open)  or 
 " '\bv' (force vertical split open) 
nnoremap <C-B> :BufExplorer<CR> " Map to bufexplorer

" NERD_Tree
nmap <silent> <c-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['.vim$', '\~$'] 

" Folding
set foldlevelstart=0
nnoremap <Space> za
vnoremap <Space> za
au BufNewFile,BufRead *.html map <leader>ft Vatzf

" Automatic fold settings for specific files. Uncomment to use.
" autocmd FileType ruby set foldmethod=syntax
" autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2
