" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
let mapleader=','
if has("gui_running")
	let &pythonthreedll='C:/Users/'..$USERNAME..'/AppData/Local/Programs/Python/Python36-32/python36.dll'
else
	let &pythonthreedll='/c/Users/'..$USERNAME..'/AppData/Local/Programs/Python/Python36-32/python36.dll'
endif
let $TMP='C:/Users/'..$USERNAME..'/AppData/Local/Temp'
set makeprg=g++\ \-Wall\ -Wall\ -Werror\ -Wpedantic\ -std=c++17\ -g\ -o\ build/%<\ %

let $GIT_SSL_NO_VERIFY = 'true'
filetype off 						" required before Vundle
set rtp+=~/.vim/bundle/Vundle.vim	" set runtime path
call vundle#begin()
" Plugin 'codota/tabnine-vim'
" Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'dbeecham/ctrlp-commandpalette.vim'
" Plugin 'garbas/vim-snipmate'
" Plugin 'mnishz/colorscheme-preview.vim'
" Plugin 'pseewald/vim-anyfold'
" Plugin 'tpope/vim-fugitive'
" Plugin 'vim-scripts/indentpython.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'SirVer/ultisnips'
Plugin 'Yggdroot/indentLine'
Plugin 'alvan/vim-closetag'
Plugin 'dracula/vim', {'name': 'dracula'}
Plugin 'easymotion/vim-easymotion'
Plugin 'embear/vim-localvimrc'
Plugin 'haya14busa/incsearch-easymotion.vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'kiteco/vim-plugin'
Plugin 'leafgarland/typescript-vim'
Plugin 'mattn/emmet-vim'
Plugin 'mg979/vim-visual-multi'
Plugin 'mhinz/vim-grepper'
Plugin 'preservim/nerdcommenter'
Plugin 'preservim/nerdtree'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'reedes/vim-thematic'
Plugin 'skywind3000/quickmenu.vim'
Plugin 'skywind3000/vim-quickui'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'wadackel/vim-dogrun'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'xolox/vim-misc'
call vundle#end()

syntax on
filetype plugin indent on
set autoindent
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set clipboard=unnamed
set confirm
set encoding=utf8
set expandtab
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
" set shellslash
set shiftwidth=4
set showcmd
set splitright
set tabstop=4
set viewdir=~/.vim/viewdir
" if has("gui_running")
	" colorscheme angr
" else
	" colorscheme desert
" endif
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-S-Right> :vertical resize +5<cr>
nnoremap <C-S-Left> :vertical resize -5<cr>
nnoremap <C-S-Up> :resize +5<cr>
nnoremap <C-S-Down> :resize -5<cr>
nnoremap <leader>w <C-w>
nnoremap <leader>yf :let @* = expand('%:p')<cr>
nnoremap <leader>yp :let @* = expand('%:p:h')<cr>
inoremap <C-CR> <ESC>o
inoremap <expr> <CR> getline(".")[col(".")-2:col(".")-1]=="{}" ? "<cr><esc>O" : "<cr>"
inoremap <expr> <S-CR> getline(".")[col(".")-2:col(".")-1]=="{}" ? "<cr><esc>O" : "<cr>"

" cscope
if has("cscope")
	set cscopequickfix=s-,c-,d-,i-,t-,e-
endif

au GUIEnter * source $VIMRUNTIME\delmenu.vim
au GUIEnter * source $VIMRUNTIME\menu.vim
au GUIEnter * simalt ~x " startup maximized window
au GUIEnter * RandomColorScheme

au Filetype lua set foldmethod=indent
au Filetype cpp set foldmethod=syntax

" source ~/.vimrc.d/YouCompleteMe.vim
" source ~/.vimrc.d/anyfold.vim
" source ~/.vimrc.d/asyncomplete.vim
" source ~/.vimrc.d/ctrlp-commandpalette.vim
" source ~/.vimrc.d/ctrlp.vim
source ~/.vimrc.d/AutoComplPop.vim
source ~/.vimrc.d/NERDTree.vim
source ~/.vimrc.d/OmniCpp.vim
source ~/.vimrc.d/airline.vim
source ~/.vimrc.d/closetag.vim
source ~/.vimrc.d/emmit.vim
source ~/.vimrc.d/fzf.vim
source ~/.vimrc.d/grepper.vim
source ~/.vimrc.d/incsearch-easymotion.vim
source ~/.vimrc.d/kite.vim
source ~/.vimrc.d/localvimrc.vim
source ~/.vimrc.d/multiple-cursors.vim
source ~/.vimrc.d/nerdcommenter.vim
source ~/.vimrc.d/quickmenu.vim
source ~/.vimrc.d/quickui.vim
