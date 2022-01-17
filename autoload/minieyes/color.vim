function! minieyes#color#backup(clrname)
    let color_paths = [
        \ $VIMRUNTIME . '\colors',
        \ $VIMRUNTIME . '\bundle\awesome-vim-colorschemes\colors',
        \]
    for path in color_paths
        let from_file = path . '\' . a:clrname . '.vim'
        let to_file = path . '_backup\' . a:clrname . '.vim'
        if filereadable(from_file)
            execute '!move ' . from_file . ' ' . to_file
            return
        endif
    endfor
    exe 'lua' 'vim.notify' . "('Color Not Found: " . a:clrname . "', 'error')"
endfunction
function! minieyes#color#restore(clrname)
    let color_paths = [
        \ $VIMRUNTIME . '\colors',
        \ $VIMRUNTIME . '\bundle\awesome-vim-colorschemes\colors',
        \]
    for path in color_paths
        let from_file = path . '_backup\' . a:clrname . '.vim'
        let to_file = path . '\' . a:clrname . '.vim'
        if filereadable(from_file)
            execute '!move ' . from_file . ' ' . to_file
            return
        endif
    endfor
    exe 'lua' 'vim.notify' . "('Color Not Found: " . a:clrname . "', 'error')"
endfunction
