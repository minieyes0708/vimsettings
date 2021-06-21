let $FZF_DEFAULT_OPTS='--bind ctrl-a:select-all --bind ctrl-d:deselect-all'
command! -bang -nargs=* Rg call fzf#vim#grep('rg --column --line-number --no-heading --color=always --smart-case ' . <q-args>, 1, <bang>0)

nnoremap <C-P> :Files<CR>
