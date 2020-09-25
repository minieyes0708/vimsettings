" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

filetype off 						" required before Vundle
set rtp+=~/.vim/bundle/Vundle.vim	" set runtime path
call vundle#begin()
Plugin 'jreybert/vimagit'
Plugin 'ervandew/supertab'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'alvan/vim-closetag'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'wadackel/vim-dogrun'
" Plugin 'Townk/vim-autoclose'
Plugin 'embear/vim-localvimrc'
Plugin 'OmniSharp/omnisharp-vim'
" Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'prabirshrestha/asyncomplete.vim'
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
nmap <M-1> :b1<CR>
nmap <M-2> :b2<CR>
nmap <M-3> :b3<CR>
nmap <M-4> :b4<CR>
nmap <M-5> :b5<CR>
nmap <M-6> :b6<CR>
nmap <M-7> :b7<CR>
nmap <M-8> :b8<CR>
nmap <M-9> :b9<CR>

" cscope
if has("cscope")
	set cscopequickfix=s-,c-,d-,i-,t-,e-
endif

au GUIEnter * simalt ~x " startup maximized window

source ~/.vimrc.d/ctrlp.vim
source ~/.vimrc.d/closetag.vim
source ~/.vimrc.d/NERDTree.vim
source ~/.vimrc.d/airline.vim
source ~/.vimrc.d/OmniCpp.vim
source ~/.vimrc.d/OmniSharp.vim
source ~/.vimrc.d/localvimrc.vim
source ~/.vimrc.d/asyncomplete.vim
source ~/.vimrc.d/multiple-cursors.vim

