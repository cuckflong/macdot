---@diagnostic disable: undefined-global

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local lspconfig = require('lspconfig')

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = { 'bashls', 'vimls', 'pyright', 'tsserver', 'rnix', 'solidity_ls', 'eslint', 'gopls', 'diagnosticls', 'dotls', 'html', 'zk', 'dockerls', 'rust_analyzer', 'yamlls', 'awk_ls', 'jsonls', 'sumneko_lua', 'solc' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
  -- on_attach = your_function,
  capabilities = capabilities,
}
end

