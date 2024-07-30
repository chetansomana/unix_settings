

if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
set fileencodings=utf-8,latin1
endif
"mappings
nnoremap A gT
nnoremap S gt
nnoremap <c-s> :w<CR>
nnoremap <c-q> :q<CR>
"let g:verilog_syntax_fold_lst = "all,block_nested,instance,indent"
set foldmethod=syntax

"nnoremap <C-Left> :tabprevious<CR>
"nnoremap <C-Right> :tabnext<CR>
"filetype plugin on
set nocompatible	" Use Vim defaults (much better!)
set bs=2		" allow backspacing over everything in insert mode
set ai			" always set autoindenting on
"set backup		" keep a backup file
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
" than 50 lines of registers
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time

" Only do this part when compiled with support for autocommands
if has("autocmd")
" In text files, always limit the width of text to 78 characters
autocmd BufRead *.txt set tw=78
" When editing a file, always jump to the last cursor position
filetype plugin indent on
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\   exe "normal g'\"" |
\ endif
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
syntax on
set hlsearch
set lines=999 columns=999
endif

if &term=="xterm"
set t_Co=4
set t_Sb=[4%dm
set t_Sf=[3%dm
endif
set guitablabel=\[%N\]\ %t\ %2M 
set cursorline
set cursorcolumn
set tabstop=4
set history=300
set wildmode=list:longest,full
set shortmess+=r
set showmode
set showcmd
set nomodeline
set shiftwidth=2
set shiftround
set expandtab
set ignorecase
set smartcase
set incsearch
set gdefault
set complete=.,w,k
set whichwrap=h,l,~,[,]
set nu
set foldmethod=syntax
"Plugin '~/.vim/plugin/verilog_systemverilog.vim'
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized 

"gvim -geometry 1336x744

set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
" Enable type file detection. Vim will be able to try to detect the type of file is use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on


" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn


" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
"set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
"set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
au BufNewFile,BufRead *.sv,*.svh,*.vh,*.v,*.svx,*.svix so ~/.vim/syntax/verilog_systemverilog.vim
