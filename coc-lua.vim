let lua_lsp = glob('~/.vscode/extensions/sumneko.lua*', 0, 1)
if len(lua_lsp)
    let lua_lsp = lua_lsp[-1] . '\server'
    call coc#config('languageserver', {
        \ 'lua-language-server': {
        \     'cwd': lua_lsp,
        \     'command': lua_lsp . '\bin\Windows\lua-language-server.exe',
        \     'args': ['-E', '-e', 'LANG="zh-cn"', lua_lsp . '\main.lua'],
        \     'filetypes': ['lua'],
        \ }
    \ })
endif
