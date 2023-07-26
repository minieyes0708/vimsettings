local this = {}
local user = vim.env.COMPUTERNAME .. '-' .. vim.env.USERNAME

if user == 'NVT02863_NB-NVT02863' then
    this.vimwiki_path = 'P:/vimwiki/Notes'
    this.sumneko_root_path = 'D:/minieyes_chen/software/lua-language-server'
    this.sumneko_binary_path = 'D:/minieyes_chen/software/lua-language-server/bin/Windows/lua-language-server.exe'
elseif user == 'MINIEYES-PC2-chenv' then
    this.vimwiki_path = '~/OneDrive/文件/dendron/notes'
    this.sumneko_root_path = 'L:/bin/lua-language-server'
    this.sumneko_binary_path = 'L:/bin/lua-language-server/bin/Windows/lua-language-server.exe'
elseif user == 'MINIEYESNB1-怡哲' then
    this.vimwiki_path = '~/OneDrive/文件/vimwiki/'
    this.sumneko_root_path = 'D:/minieyes/bin/lua-language-server'
    this.sumneko_binary_path = 'D:/minieyes/bin/lua-language-server/bin/Windows/lua-language-server.exe'
elseif user == 'LAPTOP-0U8DPE2D-chenv' then
    this.vimwiki_path = '~/OneDrive/文件/vimwiki/'
    this.sumneko_root_path = 'D:/minieyes/software/lua-language-server'
    this.sumneko_binary_path = 'D:/minieyes/software/lua-language-server/bin/lua-language-server.exe'
end

this.telescope_choose = function(options, callback)
    local pickers = require "telescope.pickers"
    local finders = require "telescope.finders"
    local conf = require("telescope.config").values
    local actions = require "telescope.actions"
    local action_state = require "telescope.actions.state"
    pickers.new({}, {
        prompt_title = "directories",
        finder = finders.new_table {
            results = options
        },
        sorter = conf.generic_sorter({}),
        attach_mappings = function(prompt_bufnr, map)
            actions.select_default:replace(function()
                actions.close(prompt_bufnr)
                local selection = action_state.get_selected_entry()
                callback(selection[1])
            end)
            return true
        end,
    }):find()
end
this.select_directory = function(pathname, callback)
    this.telescope_choose(vim.fn.systemlist('fd --type d --max-depth 1 --absolute-path --base-directory ' ..  pathname), callback)
end
this.select_bookmark = function(callback)
    local bookmarks = vim.fn.systemlist('cat ' .. vim.env.BookMarks)
    for ind, bookmark in pairs(bookmarks) do
        bookmarks[ind] = bookmark:gsub('\\', '/'):gsub('%s+$', '')
    end
    this.telescope_choose(bookmarks, callback)
end
this.esfiles = function()
    local user_input = vim.fn.input('Enter Name: ')
    local files = vim.fn.systemlist('es ' .. user_input)
    for ind, file in pairs(files) do
        files[ind] = file:gsub('\\', '/'):gsub('%s+$', '')
    end
    this.telescope_choose(files, function(selection)
        vim.api.nvim_command('edit ' .. selection)
    end)
end

this.open_project = function(pathname)
    if pathname == 'D:/minieyes_chen/program' then
        this.select_directory(pathname, this.open_project)
    else
        vim.api.nvim_command('tabnew ' .. pathname)
    end
end
this.peek_project = function(pathname)
    if pathname == 'D:/minieyes_chen/program' then
        this.select_directory(pathname, this.peek_project)
    else
        require('telescope.builtin').find_files({search_dirs={pathname}})
    end
end
this.goto_project = function(pathname)
    if pathname == 'D:/minieyes_chen/program' then
        this.select_directory(pathname, this.goto_project)
    else
        vim.api.nvim_command('cd ' .. pathname)
    end
end

return this
