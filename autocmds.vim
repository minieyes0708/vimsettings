augroup minieyes
    au BufNew,BufRead * RltvNmbr
    au BufWinEnter,WinEnter term://* startinsert
    au VimEnter * RandomColorScheme

    " notification after file change
    au FileChangedShellPost * lua vim.notify "File changed. Buffer reloaded."
    " trigger `autoread` when files changes on disk
    au FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
augroup END
