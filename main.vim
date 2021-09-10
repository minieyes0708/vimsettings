" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
let g:colors_name = 'one-dark'

" {{{ Environment
let mapleader=','
if has("gui_running")
    let &pythonthreedll='C:/Users/'..$USERNAME..'/AppData/Local/Programs/Python/Python36-32/python36.dll'
elseif !has('nvim')
    let &pythonthreedll='/c/Users/'..$USERNAME..'/AppData/Local/Programs/Python/Python36-32/python36.dll'
endif
if has('nvim') && executable('nvr')
  let $GIT_EDITOR = "py -m tools.mynvr -cc split --remote-wait +'set bufhidden=wipe'"
endif
let $TMP='C:/Users/'..$USERNAME..'/AppData/Local/Temp'
set makeprg=g++\ \-Wall\ -Wall\ -Werror\ -Wpedantic\ -std=c++17\ -g\ -o\ build/%<\ %
let $GIT_SSL_NO_VERIFY = 'true'
" }}}

" {{{ Plugins
filetype off                        " required before Vundle
set rtp+=~/.vim/bundle/Vundle.vim   " set runtime path
call vundle#begin()
" (
" Plugin 'codota/tabnine-vim'
" Plugin 'garbas/vim-snipmate'
" Plugin 'mnishz/colorscheme-preview.vim'
" Plugin 'pseewald/vim-anyfold'
" Plugin 'vim-scripts/AutoComplPop'
" Plugin 'vim-scripts/indentpython.vim'
" Plugin 'williamboman/nvim-lsp-installer'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'SirVer/ultisnips'
Plugin 'Yggdroot/indentLine'
Plugin 'alvan/vim-closetag'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dbeecham/ctrlp-commandpalette.vim'
Plugin 'dracula/vim', {'name': 'dracula'}
Plugin 'dstein64/vim-startuptime'
Plugin 'easymotion/vim-easymotion'
Plugin 'embear/vim-localvimrc'
Plugin 'frazrepo/vim-rainbow'
Plugin 'haya14busa/incsearch-easymotion.vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'honza/vim-snippets'
Plugin 'jeetsukumaran/vim-indentwise'
Plugin 'jiangmiao/auto-pairs'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'justinmk/vim-sneak'
Plugin 'kabouzeid/nvim-lspinstall'
Plugin 'kdheepak/lazygit.nvim'
Plugin 'kiteco/vim-plugin'
Plugin 'leafgarland/typescript-vim'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'mattn/emmet-vim'
Plugin 'mg979/vim-visual-multi'
Plugin 'mhinz/vim-grepper'
Plugin 'neovim/nvim-lspconfig'
Plugin 'nvim-lua/completion-nvim'
Plugin 'nvim-lua/plenary.nvim'
Plugin 'nvim-telescope/telescope.nvim'
Plugin 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plugin 'preservim/nerdcommenter'
Plugin 'preservim/nerdtree'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'reedes/vim-thematic'
Plugin 'skywind3000/quickmenu.vim'
Plugin 'skywind3000/vim-quickui'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'wadackel/vim-dogrun'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'xolox/vim-misc'
" )
call vundle#end()
" }}}

" {{{ Settings
syntax on
filetype plugin indent on
set autoindent
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set clipboard=unnamed
set completeopt=menuone,noinsert,noselect shm+=c
set confirm
set cursorline
set encoding=utf8
set expandtab
set exrc
set history=50
set hlsearch
set ignorecase
set ignorecase
set incsearch
set mouse=a
set nobackup
set number
set relativenumber
set ruler
set shiftwidth=4
set showcmd
set smartcase
set smartcase
set splitright
set tabstop=4
set viewdir=~/.vim/viewdir
if has("cscope")
    set cscopequickfix=s-,c-,d-,i-,t-,e-
endif
" }}}

" {{{ Mappings
inoremap <C-B> <ESC>i
inoremap <C-CR> <ESC>o
inoremap <C-F> <ESC>la
inoremap jk <ESC>
inoremap kj <ESC>
nnoremap <C-S-Down> :resize -5<cr>
nnoremap <C-S-Left> :vertical resize -5<cr>
nnoremap <C-S-Right> :vertical resize +5<cr>
nnoremap <C-S-Up> :resize +5<cr>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>cd :execute 'cd ' .. expand('%:p:h')<cr>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gg :LazyGit<CR>
nnoremap <leader>m :edit term://bash -c vifm<CR>:only<CR>
nnoremap <leader>td :60vs ~/OneDrive/文件/todo.md<CR>
nnoremap <leader>w <C-w>
nnoremap <leader>yf :let @* = expand('%:p')<cr>
nnoremap <leader>yp :let @* = expand('%:p:h')<cr>
tnoremap <leader>d <C-\><C-N>:cd <C-R>+<CR>i
tnoremap <leader>e <C-\><C-N>:edit <C-R>+<CR>
" }}}

" {{{ NVIM Specific
if has('nvim')
    function Config()
        exe 'edit ' . stdpath('config') . '\\init.vim'
    endfunction
endif
" }}}

" {{{ Auto Commands
au GUIEnter * source $VIMRUNTIME\delmenu.vim
au GUIEnter * source $VIMRUNTIME\menu.vim
au GUIEnter * simalt ~x " startup maximized window
au GUIEnter * RandomColorScheme

au BufWinEnter,WinEnter term://* startinsert

au Filetype lua set foldmethod=indent
au Filetype cpp set foldmethod=syntax
au Filetype vim set foldmethod=marker
au Filetype python set foldmethod=indent
au Filetype html inoremap <expr> <CR> getline(".")[col(".")-2:col(".")-1]=="><" ? "<cr><esc>O" : "<cr>"
" }}}

" {{{ Sources
" source ~/.vimrc.d/anyfold.vim
" source ~/.vimrc.d/asyncomplete.vim
lua dofile('C:/Users/chenv/.vimrc.d/lsp.lua')
lua dofile('C:/Users/chenv/.vimrc.d/lsp-lua.lua')
source ~/.vimrc.d/AutoComplPop.vim
source ~/.vimrc.d/NERDTree.vim
source ~/.vimrc.d/OmniCpp.vim
source ~/.vimrc.d/YouCompleteMe.vim
source ~/.vimrc.d/airline.vim
source ~/.vimrc.d/auto-pairs.vim
source ~/.vimrc.d/closetag.vim
source ~/.vimrc.d/completion-nvim.vim
source ~/.vimrc.d/ctrlp-commandpalette.vim
source ~/.vimrc.d/ctrlp.vim
source ~/.vimrc.d/emmit.vim
source ~/.vimrc.d/fonts.vim
source ~/.vimrc.d/fzf.vim
source ~/.vimrc.d/grepper.vim
source ~/.vimrc.d/incsearch-easymotion.vim
source ~/.vimrc.d/kite.vim
source ~/.vimrc.d/localvimrc.vim
source ~/.vimrc.d/multiple-cursors.vim
source ~/.vimrc.d/nerdcommenter.vim
source ~/.vimrc.d/quickmenu.vim
source ~/.vimrc.d/quickui.vim
source ~/.vimrc.d/rainbow.vim
source ~/.vimrc.d/sneak.vim
source ~/.vimrc.d/telescope.vim
source ~/.vimrc.d/ultisnips.vim
" }}}
