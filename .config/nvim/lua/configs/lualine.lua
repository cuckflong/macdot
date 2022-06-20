---@diagnostic disable: undefined-global
require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "onedark",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = { "packer" },
		always_divide_middle = true,
		globalstatus = false,
	},
	sections = {
		lualine_a = {
			"mode",
		},
		lualine_b = {
			{
				"branch",
				icon = "",
			},
			{
				"diff",
				symbols = { added = " ", modified = "柳 ", removed = " " },
			},
			{
				"diagnostics",
				symbols = {
					error = " ",
					warn = " ",
					info = " ",
				},
			},
		},
		lualine_c = { "filename" },
		lualine_x = {
			{
				function()
					local clients = vim.lsp.buf_get_clients()
					local null_ls = require("null-ls")
					if next(clients) == nil then
						return "No Active Lsp"
					end
					local msg = {}
					local ft = vim.bo.filetype
					local sources
					for _, client in pairs(clients) do
						if client.name == "null-ls" then
							sources = null_ls.get_sources()
							for _, source in pairs(sources) do
								if source.filetypes[ft] then
									table.insert(msg, source.name)
								end
							end
						else
							table.insert(msg, client.name)
						end
					end
					return table.concat(msg, ", ")
				end,
				icon = " LSP:",
			},
			-- "encoding",
			-- "fileformat",
			"filetype",
		},
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = {
		"fugitive",
		"nvim-tree",
		"toggleterm",
	},
})
