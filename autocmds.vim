au BufWinEnter,WinEnter term://* startinsert

au Filetype c set foldmethod=syntax
au Filetype lua set foldmethod=indent
au Filetype cpp set foldmethod=syntax
au Filetype vim set foldmethod=marker
au Filetype python set foldmethod=indent
au Filetype html inoremap <expr> <CR> getline(".")[col(".")-2:col(".")-1]=="><" ? "<cr><esc>O" : "<cr>"

" notification after file change
au FileChangedShellPost * lua vim.notify "File changed. Buffer reloaded."
" trigger `autoread` when files changes on disk
au FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
