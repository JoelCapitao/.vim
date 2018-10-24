" Pathogen runtime injection and help indexing
execute pathogen#infect()
call pathogen#helptags()

" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Disable the key movements
"nnoremap <Up> <Nop>
"vnoremap <Up> <Nop>
"inoremap <Up> <Nop>
"nnoremap <Down> <Nop>
"vnoremap <Down> <Nop>
"inoremap <Down> <Nop>
"nnoremap <Left> <Nop>
"vnoremap <Left> <Nop>
"inoremap <Left> <Nop>
"nnoremap <Right> <Nop>
"vnoremap <Right> <Nop>
"inoremap <Right> <Nop>
"
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

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"--------------------------------------------------
" Indentation options
"

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
