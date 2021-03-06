let $FZF_DEFAULT_OPTS='--bind ctrl-a:select-all --bind ctrl-d:deselect-all'
let $FZF_DEFAULT_COMMAND='fd --hidden --follow --exclude ".git" --exclude ".svn" --exclude "__history" --exclude ".vscode" --exclude ".vs" --exclude "packages" --exclude "__pycache__"'

nnoremap <C-P> :Files<CR>
command! -bang -nargs=* Rg call fzf#vim#grep('rg --column --line-number --no-heading --color=always --smart-case ' . <q-args>, 1, <bang>0)
