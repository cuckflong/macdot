---@diagnostic disable: undefined-global
local null_ls = require("null-ls")
local null_formatting = null_ls.builtins.formatting
local null_diagnostics =null_ls.builtins.diagnostics
local null_code_actions = null_ls.builtins.code_actions

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local sources = {
  -- formatting
  null_formatting.prettier.with({
    prefer_local = "node_modules/.bin",
  }),
  null_formatting.eslint,
  null_formatting.black,

  -- diagnostics
  null_diagnostics.solhint.with({
    prefer_local = "node_modules/.bin",
  }),
  null_diagnostics.eslint,

  -- code_actions
  null_code_actions.eslint
}

require("null-ls").setup({
  sources = sources,
  update_in_insert = false,
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.formatting_sync()
        end,
      })
    end
  end,
})

