"###########JOE'S VIMRC###########

"###########MY MAPPINGS###########
nmap <F2> :set number!<CR>
imap <F2> <ESC>:set number!<CR>i
nmap <F3> :set relativenumber!<CR>
imap <F3> <ESC>:set relativenumber!<CR>i
" Default leader is \ (backslash)
vmap <leader>y :w! ~/.vimclipboard<CR>
nmap <leader>p :r! cat ~/.vimclipboard<CR>

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

"#############GENERAL#############
set nocompatible                "Disable Vi settings
set hidden                      "Keep buffer in background
set nomodeline                  "Turn off modelines for security reasons
set encoding=utf-8

"##########LOOK AND FEEL##########
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set noshowcmd                   "Don't show incomplete cmds down the bottom
set noshowmode                  "Don't show current mode down the bottom
set noruler                     "Don't show ruler
let s:hidden_all = 1            "Hide all
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
syntax on                       "Syntax highlighting
set nowrap                      "Wraps line at end of screen"
set termguicolors               "True color support
set t_ut=
set background=dark             "For syntax highlighting when background is dark
colorscheme hybrid
set ttyfast                     "Faster scrolling

"#########PERSISTENT UNDO#########
" Keep undo history across sessions, by storing in file.
if has('persistent_undo') && isdirectory(expand('~').'/.vim/backups')
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

"###########INDENTATIONS##########
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

"##############SEARCH#############
set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

"############SCROLLING############
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15    "Same as above, but line wrap is active, so not in use
set sidescroll=1

"############STATUS BAR###########
set laststatus=2
set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=\ %n\           " buffer number
set statusline+=%#Visual#       " colour
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorIM#     " colour
set statusline+=%R                        " readonly flag
set statusline+=%M                        " modified [+] flag
set statusline+=%#Cursor#               " colour
set statusline+=%#CursorLine#     " colour
set statusline+=\ %t\                   " short file name
set statusline+=%=                          " right align
set statusline+=%#CursorLine#   " colour
set statusline+=\ %Y\                   " file type
set statusline+=%#CursorIM#     " colour
set statusline+=\ %3l:%-2c\         " line + column
set statusline+=%#Cursor#       " colour
set statusline+=\ %3p%%\                " percentage
