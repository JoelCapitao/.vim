" Pathogen runtime injection and help indexing
execute pathogen#infect()
call pathogen#helptags()

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

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

" Enable syntax highlighting
set t_Co=256
colorscheme delek
filetype plugin indent on
syntax on

" Press jk to escape
imap jk <Esc>

" Put all swap files together in one place
set directory^=$home/.vim_swap//   

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

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" set 80 character line limit
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

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
  au BufNewFile,BufRead .nginx.conf*,nginx.conf* setf nginx
augroup END

au FileType nginx setlocal noet ts=4 sw=4 sts=4

" Go settings
au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4
" autocmd BufEnter *.go colorscheme nofrils-dark

" scala settings
autocmd BufNewFile,BufReadPost *.scala setl shiftwidth=2 expandtab

" Markdown Settings
autocmd BufNewFile,BufReadPost *.md setl ts=4 sw=4 sts=4 expandtab

" lua settings
autocmd BufNewFile,BufRead *.lua setlocal noet ts=4 sw=4 sts=4

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

" mips settings
au BufRead,BufNewFile *.mips set ft=mips

" spell check for git commits
autocmd FileType gitcommit setlocal spell

" Wildmenu completion {{{
set wildmenu
" set wildmode=list:longest
set wildmode=list:full

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.aux,*.out,*.toc                " LaTeX intermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " compiled object files
set wildignore+=*.spl                            " compiled spelling word lists
set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.DS_Store                       " OSX bullshit
set wildignore+=*.luac                           " Lua byte code
set wildignore+=migrations                       " Django migrations
set wildignore+=go/pkg                           " Go static files
set wildignore+=go/bin                           " Go bin files
set wildignore+=go/bin-vagrant                   " Go bin-vagrant files
set wildignore+=*.pyc                            " Python byte code
set wildignore+=*.orig                           " Merge resolution files


set shiftwidth=2
set softtabstop=2
set expandtab


"--------------------------------------------------
" Mappings
"

let mapleader = ";"




" System clipboard copy & paste support
" F2 before pasting to preserve indentation
set pastetoggle=<F2> 
