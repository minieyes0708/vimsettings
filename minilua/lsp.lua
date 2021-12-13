-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'vimls', 'bashls', 'jdtls' }
-- local servers = { 'pyright', 'vimls', 'bashls', 'jdtls' }
for _, lsp in ipairs(servers) do
    require'lspconfig'[lsp].setup {
        on_attach = require'minilua.lsp-on_attach'.on_attach,
        flags = {
            debounce_text_changes = 150,
        }
    }
end
