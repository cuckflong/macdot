require("lsp-format").setup({
	sync = true,
	javascript = {
		exclude = { "tsserver" },
	},
	typescript = {
		exclude = { "tsserver" },
	},
	lua = {
		exclude = { "sumneko_lua" },
	},
})

---@diagnostic disable-next-line: undefined-global
vim.cmd([[cabbrev wq execute "Format sync" <bar> wq]])
