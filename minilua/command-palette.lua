require'minilua.string'

local this = {}

function this.update()
    local commands = {}
    for line in io.lines(os.getenv('USERPROFILE') .. '/.config/nvim/command-palette.txt') do
        local i, j = line:find(':')
        local name = line:sub(1, i - 1)
        local command = line:sub(j + 1)
        commands[name:trim()] = command:trim()
    end
    vim.api.nvim_set_var('commandPalette', commands)
end

return this
