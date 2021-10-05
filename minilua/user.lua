local this = {}

this.vimwiki_path = '~/OneDrive/文件/vimwiki/vimwiki/'
this.sumneko_root_path = 'D:/minieyes_chen/software/lua-language-server'
this.sumneko_binary_path = 'D:/minieyes_chen/software/lua-language-server/bin/Windows/lua-language-server.exe'

this.open_project = function(name)
    vim.api.nvim_command('cd ' .. name)
    require('telescope.builtin').find_files {
        search_dirs = {'.'},
    }
end
this.peek_project = function(name)
    require('telescope.builtin').find_files {
        cwd = name,
        search_dirs = {name},
    }
end
this.goto_project = function(name)
    vim.api.nvim_command('cd ' .. name)
end

return this
