vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeToggle<CR>', {})
require'nvim-tree'.setup({
    respect_buf_cwd = true,
})
