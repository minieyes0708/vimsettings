require'minilua.string'

local this = {}

function this.update()
    local commands = {}
    local filename = os.getenv('USERPROFILE') .. '/.config/nvim/command-palette.txt'
    local file = io.open(filename, 'r')
    if file then
        file:close()
        for line in io.lines(filename) do
            local i, j = line:find(':')
            if i then
                local name = line:sub(1, i - 1)
                local command = line:sub(j + 1)
                commands[name:trim()] = command:trim()
            end
        end
    end
    vim.api.nvim_set_var('commandPalette', commands)
end

return this
