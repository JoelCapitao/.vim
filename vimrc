" Pathogen runtime injection and help indexing
execute pathogen#infect()
call pathogen#helptags()

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Enable syntax highlighting
set t_Co=256
colorscheme delek
filetype plugin indent on
syntax on

" Don't use swapfile
set noswapfile

" Highlight the screen line of the cursor
set cursorline

" Do not highlight the column of the cursor
set nocursorcolumn

" Allows you to switch from an unsaved buffer without saving it first. 
" Also allows you to keep an undo history for multiple files. Vim will 
" complain if you try to quit without saving, and swap files will keep
" you safe if your computer crashes.
set hidden

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Show the current mode
set showmode

" Highlight searches (use <C-L> to temporarily turn off highlighting
set hlsearch

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" Copy indent from current line when starting a new line
set autoindent

" The cursor is kept in the same column (if possible)
set nostartofline

" Show the line and column number of the cursor position, separated by a comma
set ruler

" Always display the status line, even if only one windows is displayed
set laststatus=2

" Raise a dialogue asking if you wish to save changed files
set confirm

" Set the command window height to 2 lines
set cmdheight=2

" Display line numbers on the left
set number

" Show the line number relative to the line with the cursor in front of line
set relativenumber

" No beeps
set noerrorbells

" Split vertical windows right to the current windows
set splitright

" Split horizontal windows below to the current windows
set splitbelow

" Set default encoding to UTF-8
set encoding=utf-8

" Show the match while typing
set incsearch

" Highlight found searches
set hlsearch

" Buffer screen updates instead of updating all the time
set lazyredraw

" Synchronize the syntax state
syntax sync minlines=256

" open help vertically
command! -nargs=* -complete=help Help vertical belowright help <args>

" Do not hide conceal text
set conceallevel=0

"--------------------------------------------------
" File Type settings
"

au BufNewFile,BufRead *.vim setlocal noet ts=4 sw=4 sts=4
au BufNewFile,BufRead *.txt setlocal noet ts=4 sw=4
au BufNewFile,BufRead *.md setlocal spell noet ts=4 sw=4
au BufNewFile,BufRead *.yml,*.yaml setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.cpp setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.hpp setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.json setlocal expandtab ts=2 sw=2
au BufNewFile,BufRead *.jade setlocal expandtab ts=2 sw=2

augroup filetypedetect
  au BufNewFile,BufRead .tmux.conf*,tmux.conf* setf tmux
augroup END

au FileType nginx setlocal noet ts=4 sw=4 sts=4

" Markdown Settings
autocmd BufNewFile,BufReadPost *.md setl ts=4 sw=4 sts=4 expandtab

" Dockerfile settings
autocmd FileType dockerfile set noexpandtab

" shell/config/systemd settings
autocmd FileType fstab,systemd set noexpandtab
autocmd FileType gitconfig,sh,toml set noexpandtab

" python indent
autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80 smarttab expandtab

" toml settings
au BufRead,BufNewFile MAINTAINERS set ft=toml

" hcl settings
au BufRead,BufNewFile *.workflow set ft=hcl

" Wildmenu completion {{{
set wildmenu
" set wildmode=list:longest
set wildmode=list:full

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit
set wildignore+=migrations                       " Django migrations
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.orig                           " Merge resolution files


set shiftwidth=2
set softtabstop=2
set expandtab


"--------------------------------------------------
" Mappings
"

let mapleader = ","


nnoremap <leader>w :w <CR>
nnoremap <leader>x :x <CR>
nnoremap <leader>nh :set invhlsearch <CR>
nnoremap <leader>nu :set invnumber <CR>
nnoremap <leader>nt :NERDTreeToggle <CR>

" Press jk to escape
imap jk <Esc>

" Disable the key movements
nnoremap <Up> <Nop>
vnoremap <Up> <Nop>
inoremap <Up> <Nop>
nnoremap <Down> <Nop>
vnoremap <Down> <Nop>
inoremap <Down> <Nop>
nnoremap <Left> <Nop>
vnoremap <Left> <Nop>
inoremap <Left> <Nop>
nnoremap <Right> <Nop>
vnoremap <Right> <Nop>
inoremap <Right> <Nop>

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" System clipboard copy & paste support
" F2 before pasting to preserve indentation
set pastetoggle=<F2>


" -----------------------------------------
"    Plugin configs             "
" -- --------------------------------------


"==================== NerdTree ====================
" For toggling
nmap <C-n> :NERDTreeToggle<CR>
noremap <Leader>n :NERDTreeToggle<cr>
noremap <Leader>f :NERDTreeFind<cr>

let NERDTreeShowHidden=1

let NERDTreeIgnore=['\.vim$', '\~$', '\.git$', '.DS_Store']

" ==================== delimitMate ====================
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_inside_quotes = 0
let g:delimitMate_expand_space = 1
let g:delimitMate_jump_expansion = 1
let g:delimitMate_smart_matchpairs = '^\%(\w\|\$\)'
let g:delimitMate_smart_quotes = 1

