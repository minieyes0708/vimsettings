" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
let g:colors_name = 'default'
lua package.path = package.path .. vim.env.VIM .. '/.vimrc.d/?.lua;'

let $GIT_EDITOR = "nvr -l -cc split --remote-wait +'set bufhidden=wipe'"
let $GIT_SSL_NO_VERIFY = 'true'
let $TEMP=$VIM .. '\\temp'
let $TMP=$VIM .. '\\temp'
let mapleader=','

syntax on
set autoindent
set autoread
set background=dark
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set clipboard=unnamed
set completeopt=menuone,noinsert,noselect shm+=c
set confirm
set cursorline
set diffopt+=iwhite
set encoding=utf8
set expandtab
set exrc
set foldcolumn=2
set formatoptions-=cro
set hidden
set history=50
set hlsearch
set ignorecase
set incsearch
set makeprg=g++\ \-Wall\ -Wall\ -Werror\ -Wpedantic\ -std=c++17\ -g\ -o\ build/%<\ %
set mouse=a
set nobackup
set number
set path=.\**,,~\.bashrc.d\**,~\.vifm\**,$VIM\.vimrc.d\**
set relativenumber
set ruler
set runtimepath^=$VIM/.vimrc.d
set shiftwidth=4
set showcmd
set smartcase
set splitright
set tabstop=4
set termguicolors
set viewdir=$VIMRUNTIME/viewdir
if has("cscope")
    set cscopequickfix=s-,c-,d-,i-,t-,e-
endif
