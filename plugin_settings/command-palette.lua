vim.api.nvim_set_keymap('n', '<C-S-P>', '<Cmd>CtrlPCommandPalette<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<space><space>', '<Cmd>CtrlPCommandPalette<CR>', {noremap = true})

vim.api.nvim_set_var('ctrlp_commandpalette_autoload_commands', 0)
require'minilua.command-palette'.update()
