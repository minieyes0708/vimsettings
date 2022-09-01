vnoremap <C-R><C-R> y:Grepper -tool rg -noprompt -query <C-R>"<CR>

" fix quifix window height
let g:grepper = { 'open': 0 }
autocmd User Grepper copen
