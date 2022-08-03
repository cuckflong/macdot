---@diagnostic disable: undefined-global

-- Setup lspconfig.
-- Add additional capabilities supported by nvim-cmp
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
local lspconfig = require("lspconfig")

capabilities.textDocument.foldingRange = {
	dynamicRegistration = false,
	lineFoldingOnly = true,
}

local on_attach = function(client)
	require("lsp-format").on_attach(client)
end

-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
local servers = {
	"bashls",
	"vimls",
	"pyright",
	"tsserver",
	"rnix",
	"solidity_ls",
	"eslint",
	"gopls",
	"diagnosticls",
	"dotls",
	"html",
	"zk",
	"dockerls",
	"rust_analyzer",
	"yamlls",
	"awk_ls",
	"jsonls",
	"sumneko_lua",
	"solc",
	"ocamllsp",
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

require("ufo").setup({})
