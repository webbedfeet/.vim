" General Vim customization
call pathogen#infect()
" Environment {
"   Basics {
        set nocompatible
        colorscheme desert
        "set background=dark
        "colorscheme ir_black
"   }
"
"   Setup Bundle Support {
"   The next lines ensure the ~/.vim/bundle system works
        runtime! autoload/pathogen.vim
        silent! call pathogen#helptags()
        silent! call pathogen#runtime_append_all_bundles()
        "call pathogen#infect()
"   }
" }
" 
" General {
    filetype plugin indent on
    syntax on
    set backup
    set noerrorbells
    "set autochdir

    set ai              "automatic indentation
    set si              "smart indentation
    set nu              "Line numbering
    set backspace=indent,eol,start
    set matchpairs +=<:>
    set incsearch       "incremental search
    set shiftwidth=4  "use indents of 4 spaces
    set expandtab       "tabs are spaces, not tabs
    "set tabstop = 4     "indentation every 4 columns
    set softtabstop=4   "let backspace delete indent
    set comments=sl:/*,mb:*,els:*/  " auto format comment blocks
"   Line wrapping {
        set textwidth=79
        set linebreak
"   }
" }

" Omni completion {
    autocmd FileType html :set omnifunc=htmlcomplete#CompeteTags
    autocmd FileType python set omnifunc=pythoncomplete#Complete
    imap <C-space> <C-X><C-O>
" }

" Windows
"map <F3><F3> <C-W>v
"map <F2><F2> <C-W>s

" Key (re) Mappings {

    "Let ;; work like <ESC>
    imap ;; <Esc>

    "The default leader is '\', but we can change it to ','
    let mapleader = ","

    " Wrapped lines goes down up to next row, not next line
    nnoremap j gj
    nnoremap k gk

    "clearing highlighted search
    nmap <silent> <leader>/ :nohlsearch<CR>

" }

" Shortcuts {
    let @h='yypVr' " Copies previous line to next line
    " type :edit to reload a file you're editting
    " type gq to auto-fill a selected area
" }


" Vim-LaTeX configuration {
" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
" filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
    if has("win32") || has("win64")
        set shellslash
    endif

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a single file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
    set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
" filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
    let g:tex_flavor='latex'

" }


" Vim R plugin customization {
"   let g:vimrplugin_term_cmd = "gnome-terminal -t R -x"
"   let g:vimrplugin_underscore=1
"   Reset the following in ~/vimfiles/r-plugin/common_global.vim
"   let g:vimrplugin_r_path="D:\\ProgramFiles\\R\\R-2.13.0\\bin\\i386"
"   let g:vimrplugin_r_args="--sdi --no-save --quiet"

"   let vimrplugin_i386=1
    set expandtab
    set shiftwidth=4
    set tabstop=4
" }

" Macros for SAS files {
    map <F3> :w<CR> :!SAS % <CR> :sp %<.lst<CR> :sp %<.log<CR>
    map <F4> :close<CR>:close<CR>
    map <F8> : only<CR>
    map <F5> :e %<.sas<CR>
    map <F6> :e %<.log<CR>
    map <F7> :e %<.lst<CR>
" }

" Pandoc configuration {
    let maplocalleader = ","
" }

" SnipMate {
    let g:snips_author = 'Abhijit Dasgupta <adasgupta@araastat.com>' " Author variable
    " Reload all snippets
    nnoremap ,smr <esc>:exec ReloadAllSnippets()<cr> 
" }
