local this = {}

this.vimwiki_path = 'P:/vimwiki/'
this.sumneko_root_path = 'D:/minieyes_chen/software/lua-language-server'
this.sumneko_binary_path = 'D:/minieyes_chen/software/lua-language-server/bin/Windows/lua-language-server.exe'

this.fzf_with_cb = function(pathname, callback)
    vim.fn['fzf#run'](
        vim.fn['fzf#wrap'](
            {
                center = 10,
                sink = callback,
                source = 'fd --type d --max-depth 1 --absolute-path --base-directory ' .. pathname,
            }
        )
    )
end
this.open_project = function(pathname)
    if pathname == 'D:/minieyes_chen/program' then
        this.fzf_with_cb(pathname, 'LuaFuncCommand require"minilua.user".open_project ')
    else
        vim.api.nvim_command('cd ' .. pathname)
        vim.api.nvim_command('Files')
    end
end
this.peek_project = function(pathname)
    if pathname == 'D:/minieyes_chen/program' then
        this.fzf_with_cb(pathname, 'LuaFuncCommand require"minilua.user".peek_project ')
    else
        vim.api.nvim_command('Files ' .. pathname)
    end
end
this.goto_project = function(pathname)
    if pathname == 'D:/minieyes_chen/program' then
        this.fzf_with_cb(pathname, 'LuaFuncCommand require"minilua.user".goto_project ')
    else
        vim.api.nvim_command('cd ' .. pathname)
    end
end

return this
