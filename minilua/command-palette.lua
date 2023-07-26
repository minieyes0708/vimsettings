require'minilua.string'

local this = {}

function this.update()
    local commands = {}
    for line in io.lines(os.getenv('HOME') .. '/.config/nvim/command-palette.txt') do
        local items = line:split(':')
        commands[items[1]:trim()] = items[2]:trim()
    end
    vim.api.nvim_set_var('commandPalette', commands)
end

return this
