-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches

local capabilities = require'cmp_nvim_lsp'.update_capabilities(
    vim.lsp.protocol.make_client_capabilities()
)
local servers = { 'pyright', 'vimls', 'bashls', 'jdtls','cssls' }
for _, lsp in ipairs(servers) do
    require'lspconfig'[lsp].setup {
        on_attach = require'minilua.lsp-on_attach'.on_attach,
        flags = {
            debounce_text_changes = 150,
        },
        capabilities = capabilities,
    }
end
