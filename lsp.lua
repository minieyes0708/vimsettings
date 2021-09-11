-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'pyright', 'vimls', 'bashls' }
for _, lsp in ipairs(servers) do
    require'lspconfig'[lsp].setup {
        on_attach = require'lsp-on_attach'.on_attach,
        flags = {
            debounce_text_changes = 150,
        }
    }
end
