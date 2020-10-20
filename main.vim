" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

let mapleader=','
let &pythonthreedll='C:/Users/nvt02863/AppData/Local/Programs/Python/Python36-32/python36.dll'

let $GIT_SSL_NO_VERIFY = 'true'
filetype off 						" required before Vundle
set rtp+=~/.vim/bundle/Vundle.vim	" set runtime path
call vundle#begin()
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'alvan/vim-closetag'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dbeecham/ctrlp-commandpalette.vim'
Plugin 'dracula/vim', {'name': 'dracula'}
Plugin 'easymotion/vim-easymotion'
Plugin 'embear/vim-localvimrc'
Plugin 'ervandew/supertab'
Plugin 'garbas/vim-snipmate'
Plugin 'haya14busa/incsearch-easymotion.vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'mg979/vim-visual-multi'
Plugin 'preservim/nerdcommenter'
Plugin 'preservim/nerdtree'
Plugin 'pseewald/vim-anyfold'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-syntastic/syntastic'
Plugin 'wadackel/vim-dogrun'
" Plugin 'ycm-core/YouCompleteMe'
call vundle#end()

syntax on
filetype plugin indent on
set autoindent		" always set autoindenting on
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set clipboard=unnamed
set confirm
set encoding=utf8
set exrc
set guifont=Fira_Mono_for_Powerline:h14:cANSI:qDRAFT
set history=50
set hlsearch
set incsearch
set mouse=a
set nobackup
set number
set relativenumber
set ruler
set shellslash
set shiftwidth=4
set showcmd
set splitright
set tabstop=4
if has("gui_running")
	colorscheme dracula
else
	colorscheme desert
endif
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-k> <C-w>k
nmap <C-j> <C-w>j
nnoremap <leader>w <C-w>

" cscope
if has("cscope")
	set cscopequickfix=s-,c-,d-,i-,t-,e-
endif

au GUIEnter * source $VIMRUNTIME\delmenu.vim
au GUIEnter * source $VIMRUNTIME\menu.vim
au GUIEnter * simalt ~x " startup maximized window

source ~/.vimrc.d/NERDTree.vim
source ~/.vimrc.d/OmniCpp.vim
source ~/.vimrc.d/YouCompleteMe.vim
source ~/.vimrc.d/airline.vim
source ~/.vimrc.d/anyfold.vim
source ~/.vimrc.d/asyncomplete.vim
source ~/.vimrc.d/closetag.vim
source ~/.vimrc.d/ctrlp-commandpalette.vim
source ~/.vimrc.d/ctrlp.vim
source ~/.vimrc.d/incsearch-easymotion.vim
source ~/.vimrc.d/localvimrc.vim
source ~/.vimrc.d/multiple-cursors.vim
source ~/.vimrc.d/syntastic.vim
