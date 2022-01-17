filetype off                              " required before Vundle
set rtp+=$VIMRUNTIME/bundle/Vundle.vim    " set runtime path
call vundle#begin($VIMRUNTIME .. "/bundle")
" (
" Plugin 'codota/tabnine-vim'
" Plugin 'garbas/vim-snipmate'
" Plugin 'kiteco/vim-plugin'
" Plugin 'mnishz/colorscheme-preview.vim'
" Plugin 'preservim/nerdcommenter'
" Plugin 'preservim/nerdtree'
" Plugin 'pseewald/vim-anyfold'
" Plugin 'vim-scripts/AutoComplPop'
" Plugin 'vim-scripts/indentpython.vim'
" Plugin 'williamboman/nvim-lsp-installer'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'Shatur/neovim-ayu'
Plugin 'SirVer/ultisnips'
Plugin 'Yggdroot/indentLine'
Plugin 'akinsho/bufferline.nvim'
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
Plugin 'haringsrob/nvim_context_vt'
Plugin 'haya14busa/incsearch-easymotion.vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'honza/vim-snippets'
Plugin 'hrsh7th/cmp-buffer'
Plugin 'hrsh7th/cmp-cmdline'
Plugin 'hrsh7th/cmp-nvim-lsp'
Plugin 'hrsh7th/cmp-path'
Plugin 'hrsh7th/nvim-cmp'
Plugin 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plugin 'jeetsukumaran/vim-indentwise'
Plugin 'jiangmiao/auto-pairs'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'justinmk/vim-sneak'
Plugin 'kabouzeid/nvim-lspinstall'
Plugin 'kazhala/close-buffers.nvim'
Plugin 'kdheepak/lazygit.nvim'
Plugin 'kyazdani42/nvim-tree.lua'
Plugin 'kyazdani42/nvim-web-devicons'
Plugin 'leafgarland/typescript-vim'
Plugin 'lewis6991/gitsigns.nvim'
Plugin 'liuchengxu/vim-which-key'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'matbme/JABS.nvim'
Plugin 'mattn/emmet-vim'
Plugin 'mg979/vim-visual-multi'
Plugin 'mhinz/vim-grepper'
Plugin 'neovim/nvim-lspconfig'
Plugin 'numToStr/Comment.nvim'
Plugin 'nvim-lua/completion-nvim'
Plugin 'nvim-lua/plenary.nvim'
Plugin 'nvim-telescope/telescope.nvim'
Plugin 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plugin 'preservim/tagbar'
Plugin 'quangnguyen30192/cmp-nvim-ultisnips'
Plugin 'rafi/awesome-vim-colorschemes'
Plugin 'rcarriga/nvim-notify'
Plugin 'reedes/vim-thematic'
Plugin 'skywind3000/vim-quickui'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vimwiki/vimwiki'
Plugin 'windwp/nvim-spectre'
Plugin 'xiyaowong/nvim-cursorword'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'xolox/vim-misc'
" )
call vundle#end()
filetype plugin indent on
