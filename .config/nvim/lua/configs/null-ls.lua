---@diagnostic disable: undefined-global, unused-local
local null_ls = require("null-ls")
local null_formatting = null_ls.builtins.formatting
local null_diagnostics = null_ls.builtins.diagnostics
local null_code_actions = null_ls.builtins.code_actions

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local sources = {
	-- formatting
	-- python
	null_formatting.black,
	null_formatting.isort,
	-- go
	null_formatting.gofmt,
	null_formatting.goimports,
	null_formatting.golines,
	-- lua
	null_formatting.stylua,
	-- general
	null_formatting.prettier.with({
		prefer_local = "node_modules/.bin",
		extra_filetypes = { "solidity" },
	}),

	-- diagnostics
	null_diagnostics.solhint.with({
		prefer_local = "node_modules/.bin",
	}),
	null_diagnostics.flake8,

	-- code_actions
}

require("null-ls").setup({
	sources = sources,
	update_in_insert = false,
	on_attach = require("lsp-format").on_attach,
})
