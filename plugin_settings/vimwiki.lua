vim.api.nvim_set_var('vimwiki_conceallevel', 0)
vim.api.nvim_set_var('vimwiki_list',
    {
        {
            path = require'minilua.user'.vimwiki_path,
            syntax = 'markdown',
            ext = '.md',
        }
    }
)
