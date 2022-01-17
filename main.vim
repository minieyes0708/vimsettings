source $VIM/.vimrc.d/optsettings.vim
source $VIM/.vimrc.d/plugins.vim
source $VIM/.vimrc.d/mappings.vim
source $VIM/.vimrc.d/autocmds.vim
source $VIM/.vimrc.d/commands.vim

for filename in split(globpath($VIM . "/.vimrc.d/plugin_settings", "*"), '\n')
    if filename =~# '.*\.vim$'
        exe 'source' filename
    endif
    if filename =~# '.*\.lua$'
        exe 'lua' 'dofile("' . escape(filename, '\') . '")'
    endif
endfor
