" General Vim customization
set nocompatible
" Colorscheme ***********************************************
"set background=dark
"colorscheme ir_black
colorscheme desert
set guifont=Inconsolata:h18
" Indenting *************************************************
set ai "automatic indentation
set si "smart indent

" Numbering *************************************************
set nu "Line numbering
set backspace=indent,eol,start
set matchpairs+=<:>

" Highlighting **********************************************
set hlsearch " highlight search
set incsearch " incremental search

" Status line ***********************************************
set showcmd
set ruler
set ch=2

" Line wrapping
set textwidth=79
set linebreak
" MiniBufExplorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMaWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Ctags
let Tlist_Ctags_Cmd="/usr/local/bin/ctags"

" File stuff
filetype on
filetype plugin on
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()
syntax on
"filetype plugin indent on
" set autochdir
set backup
set noerrorbells

" Omni completion
autocmd FileType html :set omnifunc=htmlcomplete#CompeteTags
autocmd FileType python set omnifunc=pythoncomplete#Complete
"imap <C-space> <C-X><C-O>

" Windows
map <F3><F3> <C-W>v
map <F2><F2> <C-W>s
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Misc Mappings
imap ;; <Esc>


" Vim-LaTeX configuration
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'


syntax on

" Vim R plugin customization
"let g:vimrplugin_term = "xterm"
let g:vimrplugin_hstart = 1
"let g:vimrplugin_term_cmd = "gnome-terminal -t R -x"
"let g:vimrplugin_underscore=1
"let vimrplugin_applescript=1
"let vimrplugin_screenplugin=1
let vimrplugin_conqueplugin=0
"let vimrplugin_conquevsplit=1
set expandtab
set textwidth=79
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent

let @h='yypVr'

