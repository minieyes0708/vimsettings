local omnisharp_bin = nil
local pid = vim.fn.getpid()
local user = vim.env.COMPUTERNAME .. '-' .. vim.env.USERNAME

if user == 'MINIEYESNB1-怡哲' then
    omnisharp_bin = "D:\\minieyes\\software\\omnisharp-win-x64\\OmniSharp.exe"
elseif user == 'MINIEYES-PC2-chenv' then
    omnisharp_bin = "L:\\omnisharp-win-x64\\OmniSharp.exe"
end

require'lspconfig'.omnisharp.setup {
    cmd = { omnisharp_bin, "--languageserver" , "--hostPID", tostring(pid) },
}
