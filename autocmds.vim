augroup minieyes
    " au VimEnter * RandomColorScheme
    au BufNewFile,BufRead *.lua FoldIndent
    au BufWinEnter,WinEnter term://* startinsert

    " notification after file change
    au FileChangedShellPost * lua vim.notify "File changed. Buffer reloaded."
    " trigger `autoread` when files changes on disk
    au FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
augroup END

" https://codito.in/c-and-vim/
" Folding : http://vim.wikia.com/wiki/Syntax-based_folding, see comment by Ostrygen
au FileType cs set omnifunc=syntaxcomplete#Complete
au FileType cs set foldmethod=marker
au FileType cs set foldmarker={,}
au FileType cs set foldtext=substitute(getline(v:foldstart),'{.*','{...}',)
au FileType cs set foldlevelstart=2
