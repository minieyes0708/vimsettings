" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
let g:colors_name = 'challenger_deep'

" {{{ Environment
let mapleader=','
if has("gui_running")
    let &pythonthreedll='C:/Users/'..$USERNAME..'/AppData/Local/Programs/Python/Python36-32/python36.dll'
elseif !has('nvim')
    let &pythonthreedll='/c/Users/'..$USERNAME..'/AppData/Local/Programs/Python/Python36-32/python36.dll'
endif
if has('nvim') && executable('nvr')
  let $GIT_EDITOR = "py -m miniLibrary.mynvr -cc split --remote-wait +'set bufhidden=wipe'"
endif
let $TMP='C:/Users/'..$USERNAME..'/AppData/Local/Temp'
let $GIT_SSL_NO_VERIFY = 'true'
" }}}

" {{{ Plugins
filetype off                        " required before Vundle
set rtp+=~/.vim/bundle/Vundle.vim   " set runtime path
call vundle#begin()
" (
" Plugin 'codota/tabnine-vim'
" Plugin 'garbas/vim-snipmate'
" Plugin 'kiteco/vim-plugin'
" Plugin 'mnishz/colorscheme-preview.vim'
" Plugin 'skywind3000/quickmenu.vim'
" Plugin 'vim-scripts/indentpython.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'SirVer/ultisnips'
Plugin 'Yggdroot/indentLine'
Plugin 'alvan/vim-closetag'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dbeecham/ctrlp-commandpalette.vim'
Plugin 'dracula/vim', {'name': 'dracula'}
Plugin 'easymotion/vim-easymotion'
Plugin 'embear/vim-localvimrc'
Plugin 'ervandew/supertab'
Plugin 'frazrepo/vim-rainbow'
Plugin 'haya14busa/incsearch-easymotion.vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'justinmk/vim-sneak'
Plugin 'kdheepak/lazygit.nvim'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'mattn/emmet-vim'
Plugin 'mg979/vim-visual-multi'
Plugin 'mhinz/vim-grepper'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'nvim-lua/plenary.nvim'
Plugin 'nvim-telescope/telescope.nvim'
Plugin 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plugin 'preservim/nerdcommenter'
Plugin 'preservim/nerdtree'
Plugin 'pseewald/vim-anyfold'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'reedes/vim-thematic'
Plugin 'skywind3000/vim-quickui'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'wadackel/vim-dogrun'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'xolox/vim-misc'
Plugin 'zacanger/angr.vim'
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
set incsearch
set mouse=a
set nobackup
set number
set relativenumber
set ruler
set shiftwidth=4
set showcmd
set smartcase
set splitright
set tabstop=4
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
nnoremap <leader>m :Telescope<CR>
nnoremap <leader>td :50vs P:\todo.md<CR>
nnoremap <leader>w <C-w>
nnoremap <leader>yf :let @* = expand('%:p')<cr>
nnoremap <leader>yp :let @* = expand('%:p:h')<cr>
nnoremap <silent> <leader>gg :LazyGit<CR>
tnoremap <C-H> <C-\><C-N><C-W>h
" }}}

" {{{ Auto Commands
" au GUIEnter * source $VIMRUNTIME\delmenu.vim
" au GUIEnter * source $VIMRUNTIME\menu.vim
au GUIEnter * simalt ~x " startup maximized window
au GUIEnter * RandomColorScheme

au BufWinEnter,WinEnter term://* startinsert

au Filetype lua set foldmethod=indent
au Filetype cpp set foldmethod=syntax
" }}}

" {{{ Sources
" source ~/.vimrc.d/OmniCpp.vim
" source ~/.vimrc.d/anyfold.vim
" source ~/.vimrc.d/asyncomplete.vim
" source ~/.vimrc.d/quickmenu.vim
source ~/.vimrc.d/AutoComplPop.vim
source ~/.vimrc.d/NERDTree.vim
source ~/.vimrc.d/YouCompleteMe.vim
source ~/.vimrc.d/airline.vim
source ~/.vimrc.d/closetag.vim
source ~/.vimrc.d/coc-lua.vim
source ~/.vimrc.d/ctrlp-commandpalette.vim
source ~/.vimrc.d/ctrlp.vim
source ~/.vimrc.d/emmet.vim
source ~/.vimrc.d/fonts.vim
source ~/.vimrc.d/fzf.vim
source ~/.vimrc.d/grepper.vim
source ~/.vimrc.d/incsearch-easymotion.vim
source ~/.vimrc.d/indentLine.vim
source ~/.vimrc.d/localvimrc.vim
source ~/.vimrc.d/multiple-cursors.vim
source ~/.vimrc.d/nerdcommenter.vim
source ~/.vimrc.d/quickui.vim
source ~/.vimrc.d/rainbow.vim
source ~/.vimrc.d/sneak.vim
source ~/.vimrc.d/telescope.vim
source ~/.vimrc.d/ultisnips.vim
" }}}

" vim: foldmethod=marker
