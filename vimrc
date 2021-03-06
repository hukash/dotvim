" ========== Vim Basic Settings ============="

" Pathogen settings.
call pathogen#infect()
" Load GO vim files
set rtp+=$GOROOT/misc/vim
syntax on
filetype plugin indent on

" Make vim incompatbile to vi.
set nocompatible
set modelines=0

" ==== Common Settings ====
set encoding=utf-8
set scrolloff=5
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
" set cursorline
set ttyfast
set ruler
set number
set backspace=indent,eol,start
set laststatus=2

" Set title to window
set title

" TAB settings.
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"Changing Leader Key
let mapleader = ","

" Make Vim to handle long lines nicely.
set wrap
set textwidth=79
set formatoptions=qrn1
"set colorcolumn=80

" To  show special characters in Vim
set list
set listchars=tab:▸\ ,trail:·

color badwolf

" Set vim to save the file on focus out.
au FocusLost * :wa

" Directories for swp files
set backupdir=~/.vimbackup
set directory=~/.vimbackup


" Working with split screen nicely
" Resize Split When the window is resized"
au VimResized * :wincmd =

" Wildmenu completion "
set wildmenu
set wildmode=list:longest
set wildignore+=.hg,.git,.svn " Version Controls"
set wildignore+=*.aux,*.out,*.toc "Latex Indermediate files"
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg,*.db "Binaries"
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest "Compiled Object files"
set wildignore+=*.sw? "Vim swap files"
set wildignore+=*.DS_Store "OSX SHIT"
set wildignore+=*.pyc "Python Object codes"
set wildignore+=*.orig "Merge resolution files"

" Make pasting done without any indentation break."
set pastetoggle=<F3>

" Enable Mouse
set mouse=a

" Settings for Searching and Moving
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

" Map Ctrl+l to clear highlighted searches
nnoremap <silent> <C-s> :<C-u>nohlsearch<CR><C-0>

" Strip trailing whitespaces on each save
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Highlight characters behind the 80 chars margin
" :au BufWinEnter * let w:m2=matchadd('ColumnMargin', '\%>80v.\+', -1)

" Make Sure that Vim returns to the same line when we reopen a file"
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \ execute 'normal! g`"zvzz' |
        \ endif
augroup END

" Easy buffer navigation between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Adding shorcuts keys using leader key.
",W Command to remove white space from a file.
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" ,ft Fold tag, helpful for HTML editing.
nnoremap <leader>ft vatzf

" ,q Re-hardwrap Paragraph
nnoremap <leader>q gqip

" ,v Select just pasted text.
nnoremap <leader>v V`]

" ,ev Shortcut to edit .vimrc file on the fly on a vertical window.
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" jj For Qicker Escaping between normal and editing mode.
inoremap jj <ESC>

" Filetype settings
au Filetype html setlocal ts=2 sts=2 sw=2
au Filetype ruby setlocal ts=2 sts=2 sw=2
au Filetype javascript setlocal ts=2 sts=2 sw=2
" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript
" Disable code folding
set nofoldenable

" Source the vimrc file after saving it
au bufwritepost vimrc source ~/.vimrc

" =========== END Basic Vim Settings ===========

" ========== Plugin Settings =========="
" Powerline settings
" let g:Powerline_symbols = 'fancy'

" NERD Tree settings
nnoremap <C-n> :NERDTreeToggle<cr>

" Tagbar
nmap <F8> :TagbarToggle<CR>

