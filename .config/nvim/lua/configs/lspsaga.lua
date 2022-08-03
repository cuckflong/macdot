---@diagnostic disable: undefined-global
local lspsaga = require("lspsaga")
lspsaga.init_lsp_saga({
	border_style = "rounded",
	diagnostic_header = { "", "", "", "" },
	finder_action_keys = {
		quit = {
			"q",
			"<ESC>",
		},
	},
	code_action_keys = {
		quit = {
			"q",
			"<ESC>",
		},
	},
	rename_action_quit = "<ESC>",
})

vim.diagnostic.config({
	virtual_text = {
		prefix = "●",
	},
})
