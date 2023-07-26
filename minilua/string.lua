-- string related lua extensions

function string:split(sep)
    -- description:
    --   split string into tables
    -- arguments:
    --   sep: separator, defaults to spaces
    -- usage:
    --   local str = 'a,b,c'
    --   local items = str:split(',')
    sep = sep or '%s'
    local result = {}
    local i, j = self:find(sep)
    while i ~= nil do
        table.insert(result, self:sub(1, i - 1))
        self = self:sub(j + 1)
        i, j = self:find(sep)
    end
    table.insert(result, self)
    return result
end

function string:trim(char)
    -- description:
    --   trim leading/training sep characters
    -- arguments:
    --   char: character to trim, defaults to %s
    -- usage:
    --   local str = '  a  '
    --   local trimmed_a = a:trim() -- trimmed_a == 'a'
    char = char or '%s'
    return self:gsub("^" .. char .. "*(.-)" .. char .."*$", "%1")
end
