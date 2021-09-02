" lua require'lspconfig'.vimls.setup{}

" :lua << EOF
    " local nvim_lsp = require('lspconfig')
    " local on_attach = function(_, bufnr)
        " require('completion').on_attach()
    " end
    " local servers = {'vimls'}
    " for _, lsp in ipairs(servers) do
        " nvim_lsp[lsp].setup {
            " on_attach = on_attach,
        " }
    " end
" EOF
