---@diagnostic disable: undefined-global

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local lspconfig = require('lspconfig')

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = { 'bashls', 'vimls', 'pyright', 'tsserver', 'rnix', 'solidity_ls', 'eslint', 'gopls', 'diagnosticls', 'dotls', 'html', 'zk', 'dockerls', 'rust_analyzer', 'yamlls', 'awk_ls', 'jsonls', 'sumneko_lua', 'solc' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
  -- on_attach = my_custom_on_attach,
  capabilities = capabilities,
}
end

-- vim.cmd [[autocmd! CursorHold * Lspsaga show_cursor_diagnostics ]]
--
-- function PrintDiagnostics(opts, bufnr, line_nr, client_id)
--   bufnr = bufnr or 0
--   line_nr = line_nr or (vim.api.nvim_win_get_cursor(0)[1] - 1)
--   opts = opts or {['lnum'] = line_nr}
--
--   local line_diagnostics = vim.diagnostic.get(bufnr, opts)
--   if vim.tbl_isempty(line_diagnostics) then return end
--
--   local diagnostic_message = ""
--   for i, diagnostic in ipairs(line_diagnostics) do
--     diagnostic_message = diagnostic_message .. string.format("%d: %s", i, diagnostic.message or "")
--     print(diagnostic_message)
--     if i ~= #line_diagnostics then
--       diagnostic_message = diagnostic_message .. "\n"
--     end
--   end
--   vim.api.nvim_echo({{diagnostic_message, "Normal"}}, false, {})
-- end

-- vim.cmd [[ autocmd! CursorHoldI * lua PrintDiagnostics() ]]
