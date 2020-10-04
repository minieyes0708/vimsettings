" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
let &pythonthreedll='C:/Users/minieyes/AppData/Local/Programs/Python/Python36-32/python36.dll'

filetype off 						" required before Vundle
set rtp+=~/.vim/bundle/Vundle.vim	" set runtime path
call vundle#begin()
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'alvan/vim-closetag'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dbeecham/ctrlp-commandpalette.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'embear/vim-localvimrc'
Plugin 'ervandew/supertab'
Plugin 'garbas/vim-snipmate'
Plugin 'haya14busa/incsearch-easymotion.vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'jreybert/vimagit'
Plugin 'mg979/vim-visual-multi'
Plugin 'preservim/nerdtree'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'wadackel/vim-dogrun'
Plugin 'ycm-core/YouCompleteMe'
call vundle#end()

syntax on
filetype plugin indent on
set hlsearch
set nobackup		" do not keep a backup file, use versions instead
set history=50		" keep 50 lines of command line history
set ruler			" show the cursor position all the time
set showcmd			" display incomplete commands
set incsearch		" do incremental searching
set mouse=a
set tabstop=4
set shiftwidth=4
set number
set relativenumber
set nobackup
set confirm
set exrc
set encoding=utf8
set clipboard=unnamed
set guifont=Fira_Mono_for_Powerline:h14:cANSI:qDRAFT
if has("gui_running")
	colorscheme dogrun
else
	colorscheme desert
endif
" colorscheme torte
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <C-k> <C-w>k
nmap <C-j> <C-w>j

" cscope
if has("cscope")
	set cscopequickfix=s-,c-,d-,i-,t-,e-
endif

au GUIEnter * simalt ~x " startup maximized window

source ~/.vimrc.d/NERDTree.vim
source ~/.vimrc.d/OmniCpp.vim
source ~/.vimrc.d/OmniSharp.vim
source ~/.vimrc.d/YouCompleteMe.vim
source ~/.vimrc.d/airline.vim
source ~/.vimrc.d/asyncomplete.vim
source ~/.vimrc.d/closetag.vim
source ~/.vimrc.d/ctrlp-commandpalette.vim
source ~/.vimrc.d/ctrlp.vim
source ~/.vimrc.d/incsearch-easymotion.vim
source ~/.vimrc.d/localvimrc.vim
source ~/.vimrc.d/multiple-cursors.vim
