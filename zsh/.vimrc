"###########################################"
"sashuu6's .vimrc file"
"Created on: 08/05/2021 07:15:00"
"Modified on: 19/05/2022 22:55:00"
"Revision no: 5"
"Tested Machine: Apple Macbook Pro 15 (2018)"
"GitHub Repository: Github Repository: https://github.com/sashuu6/workspace-environment"
"###########################################"

"Disable compatibility with vi which can cause unexpected issues"
set nocompatible

"Enable type file detection. Vim will be able to try to detect the type of file in use"
filetype on

"Enable plugins and load plugin for the detected file type"
filetype plugin on

"Load an indent file for the detected file type"
filetype indent on

"Turn syntax highlighting on"
syntax enable

"Add numbers to each line on the left-hand side"
set number

"Highlight cursor line underneath the cursor horizontally"
set cursorline

"Highlight cursor line underneath the cursor vertically"
set cursorcolumn

"Set shift width to 4 spaces"
set shiftwidth=4

"Set tab width to 4 columns"
set tabstop=4

"Use space characters instead of tabs"
set expandtab

"Do not save backup files"
set nobackup

"Do not let cursor scroll below or above N number of lines when scrolling"
set scrolloff=10

"Do not wrap lines. Allow long lines to extend as far as the line goes"
set nowrap

"While searching though a file incrementally highlight matching characters as you type"
set incsearch

"Ignore capital letters during search"
set ignorecase

"Override the ignorecase option if searching for capital letters"
"This will allow you to search specifically for capital letters"
set smartcase

"Show partial command you type in the last line of the screen"
set showcmd

"Show the mode you are on the last line"
set showmode

"Show matching words during a search"
set showmatch

"Use highlighting when doing a search"
set hlsearch

"Set the commands to save in history default number is 20"
set history=1000

"Enable auto completion menu after pressing TAB"
set wildmenu

"Make wildmenu behave like similar to Bash completion"
set wildmode=list:longest

"There are certain files that we would never want to edit with Vim"
"Wildmenu will ignore files with these extensions"
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

"Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

":W sudo saves the file
"(useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

"Always show current position
set ruler

"Height of the command bar
set cmdheight=1

"Don't redraw while executing macros (good performance config)
set lazyredraw

"How many tenths of a second to blink when matching brackets
set mat=2

"No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"Properly diable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif

"Add a bit extra margin to the left
set foldcolumn=1

"Enable 256 colours palette in GNOME Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme desert
catch
endtry

set background=dark
highlight Normal ctermfg=grey ctermbg=black
"Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=t
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

"Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

"Use Unix as the standard file type
set ffs=unix,dos,mac

set guifont=Monospace\ 8

"Always show the status line
set laststatus=2

"Format the status line
set statusline=\ %F%m%r%h\ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
