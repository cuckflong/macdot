---@diagnostic disable: undefined-global

local window_width_limit = 70

local hide_in_width = function()
	return vim.fn.winwidth(0) > window_width_limit
end

require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "onedark",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = { "packer", "NvimTree" },
		always_divide_middle = true,
		globalstatus = true,
	},
	sections = {
		lualine_a = {
			"mode",
		},
		lualine_b = {
			{
				"branch",
				icon = "",
				color = { gui = "bold" },
				cond = hide_in_width,
			},
			{ "filename" },
		},
		lualine_c = {
			{
				"diff",
				symbols = { added = " ", modified = "柳", removed = " " },
			},
		},
		lualine_x = {
			{
				"diagnostics",
				symbols = {
					error = " ",
					warn = " ",
					info = " ",
					hint = " ",
				},
				cond = hide_in_width,
			},
			{
				function()
					local b = vim.api.nvim_get_current_buf()
					if next(vim.treesitter.highlighter.active[b]) then
						return ""
					end
					return ""
				end,
				color = { fg = "#98be65" },
				cond = hide_in_width,
			},
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
				icon = " :",
				color = { gui = "bold" },
				cond = hide_in_width,
			},
			{
				"filetype",
				cond = hide_in_width,
			},
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
