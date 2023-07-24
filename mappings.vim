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
nnoremap <C-S> :w<CR>
nnoremap <C-S-S> :mksession!<CR>
nnoremap <leader>   :<c-u>WhichKey ','<CR>
nnoremap <leader>bg :highlight Normal ctermbg=NONE<CR>
nnoremap <leader>cd :execute 'cd ' .. expand('%:p:h')<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gg :LazyGit<CR>
nnoremap <leader>j  :JABSOpen<CR>
nnoremap <leader>t1 :1ToggleTerm<CR>
nnoremap <leader>t2 :2ToggleTerm direction=float<CR>
nnoremap <leader>tb :TagbarOpenAutoClose<CR>
nnoremap <leader>td :execute 'edit' luaeval('require"minilua.user".vimwiki_path .. "/TODO.md"')<CR>
nnoremap <leader>yf :let @* = expand('%:p')<CR>
nnoremap <leader>yp :let @* = expand('%:p:h')<CR>
tnoremap <leader>tt <C-\><C-N>:ToggleTermCloseAll<CR>
