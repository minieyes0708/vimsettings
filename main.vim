" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible
let g:colors_name = 'one-dark'
lua package.path = package.path .. vim.env.VIM .. '/.vimrc.d/?.lua;'

" {{{ Environment
let mapleader=','
if has("gui_running")
    let &pythonthreedll='C:/Users/'..$USERNAME..'/AppData/Local/Programs/Python/Python36-32/python36.dll'
elseif !has('nvim')
    let &pythonthreedll='/c/Users/'..$USERNAME..'/AppData/Local/Programs/Python/Python36-32/python36.dll'
endif
if has('nvim') && executable('nvr')
  let $GIT_EDITOR = "nvr -l -cc split --remote-wait +'set bufhidden=wipe'"
endif
let $TMP=$VIM .. '\\temp'
let $TEMP=$VIM .. '\\temp'
set makeprg=g++\ \-Wall\ -Wall\ -Werror\ -Wpedantic\ -std=c++17\ -g\ -o\ build/%<\ %
let $GIT_SSL_NO_VERIFY = 'true'
" }}}

" {{{ Plugins
filetype off                        " required before Vundle
set rtp+=$VIMRUNTIME/bundle/Vundle.vim    " set runtime path
call vundle#begin($VIMRUNTIME .. "/bundle")
" (
" Plugin 'codota/tabnine-vim'
" Plugin 'garbas/vim-snipmate'
" Plugin 'kiteco/vim-plugin'
" Plugin 'mnishz/colorscheme-preview.vim'
" Plugin 'pseewald/vim-anyfold'
" Plugin 'vim-scripts/AutoComplPop'
" Plugin 'vim-scripts/indentpython.vim'
" Plugin 'williamboman/nvim-lsp-installer'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'Shatur/neovim-ayu'
Plugin 'SirVer/ultisnips'
Plugin 'Yggdroot/indentLine'
Plugin 'akinsho/toggleterm.nvim'
Plugin 'alvan/vim-closetag'
Plugin 'beauwilliams/focus.nvim'
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
Plugin 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plugin 'jeetsukumaran/vim-indentwise'
Plugin 'jiangmiao/auto-pairs'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'justinmk/vim-sneak'
Plugin 'kabouzeid/nvim-lspinstall'
Plugin 'kdheepak/lazygit.nvim'
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
Plugin 'skywind3000/vim-quickui'
Plugin 'tanvirtin/monokai.nvim'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vimwiki/vimwiki'
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
set diffopt+=iwhite
set encoding=utf8
set expandtab
set exrc
set hidden
set history=50
set hlsearch
set ignorecase
set incsearch
set mouse=a
set nobackup
set number
set path=./**,,~/.bashrc.d/**,~/.vifm/**,$VIM/.vimrc.d/**
set relativenumber
set ruler
set shiftwidth=4
set showcmd
set smartcase
set splitright
set tabstop=4
set viewdir=$VIMRUNTIME/viewdir
if has("cscope")
    set cscopequickfix=s-,c-,d-,i-,t-,e-
endif
" }}}

" {{{ Mappings
inoremap <C-B> <C-O>h
inoremap <C-CR> <C-O>o
inoremap <C-F> <C-O>a
inoremap jk <ESC>
inoremap kj <ESC>
nnoremap <C-PageDown> :execute 'GuiFont!' .. substitute(&guifont, ':h\zs\d\+', '\=eval(submatch(0)-1)', '')<CR>
nnoremap <C-PageUp> :execute 'GuiFont!' .. substitute(&guifont, ':h\zs\d\+', '\=eval(submatch(0)+1)', '')<CR>
nnoremap <C-S-Down> :resize -5<CR>
nnoremap <C-S-Left> :vertical resize -5<CR>
nnoremap <C-S-Right> :vertical resize +5<CR>
nnoremap <C-S-Up> :resize +5<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>bg :highlight Normal guibg='#000000'<CR>
nnoremap <leader>cd :execute 'cd ' .. expand('%:p:h')<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gg :LazyGit<CR>
nnoremap <leader>pg :belowright 10sp ~/.bashrc.d/user/programs.txt<CR>
nnoremap <leader>td :execute '50vs ' .. luaeval('require"minilua.user".vimwiki_path .. "TODO/index.md"')<CR>
nnoremap <leader>yf :let @* = expand('%:p')<CR>
nnoremap <leader>yp :let @* = expand('%:p:h')<CR>
" }}}

" {{{ NVIM Specific
if has('nvim')
    function! Config()
        exe 'edit ' . stdpath('config') . '\\init.vim'
    endfunction
endif
" }}}

" {{{ Auto Commands
" au GUIEnter * source $VIMRUNTIME\delmenu.vim
" au GUIEnter * source $VIMRUNTIME\menu.vim
au GUIEnter * simalt ~x " startup maximized window
au GUIEnter * RandomColorScheme

au BufWinEnter,WinEnter term://* startinsert

au Filetype c set foldmethod=syntax
au Filetype lua set foldmethod=indent
au Filetype cpp set foldmethod=syntax
au Filetype vim set foldmethod=marker
au Filetype python set foldmethod=indent
au Filetype html inoremap <expr> <CR> getline(".")[col(".")-2:col(".")-1]=="><" ? "<cr><esc>O" : "<cr>"

function! LuaFunc(funcname, ...)
    call call(luaeval(a:funcname), a:000)
endfunction
command! -nargs=* LuaFuncCommand call LuaFunc(<f-args>)
" }}}

" {{{ Sources
" source $VIM/.vimrc.d/anyfold.vim
" source $VIM/.vimrc.d/asyncomplete.vim
" source $VIM/.vimrc.d/toggle-terminal.vim
lua require('focus').setup({cursorline = false})
lua require('minilua.lsp')
lua require('minilua.lsp-lua')
lua require('minilua.toggleterm')
lua require('minilua.vimwiki')
source $VIM/.vimrc.d/AutoComplPop.vim
source $VIM/.vimrc.d/NERDTree.vim
source $VIM/.vimrc.d/YouCompleteMe.vim
source $VIM/.vimrc.d/airline.vim
source $VIM/.vimrc.d/auto-pairs.vim
source $VIM/.vimrc.d/closetag.vim
source $VIM/.vimrc.d/completion-nvim.vim
source $VIM/.vimrc.d/ctrlp-commandpalette.vim
source $VIM/.vimrc.d/ctrlp.vim
source $VIM/.vimrc.d/emmet.vim
source $VIM/.vimrc.d/fonts.vim
source $VIM/.vimrc.d/fzf.vim
source $VIM/.vimrc.d/grepper.vim
source $VIM/.vimrc.d/incsearch-easymotion.vim
source $VIM/.vimrc.d/indentLine.vim
source $VIM/.vimrc.d/kite.vim
source $VIM/.vimrc.d/localvimrc.vim
source $VIM/.vimrc.d/multiple-cursors.vim
source $VIM/.vimrc.d/nerdcommenter.vim
source $VIM/.vimrc.d/quickui.vim
source $VIM/.vimrc.d/rainbow.vim
source $VIM/.vimrc.d/sneak.vim
source $VIM/.vimrc.d/telescope.vim
source $VIM/.vimrc.d/ultisnips.vim
" }}}

" vim: foldmethod=marker
