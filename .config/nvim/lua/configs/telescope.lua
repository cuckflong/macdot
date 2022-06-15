---@diagnostic disable: lowercase-global, undefined-global
function telescope_buffer_dir()
	return vim.fn.expand("%:p:h")
end

local telescope = require("telescope")
local actions = require("telescope.actions")

telescope.setup({
	defaults = {
		mappings = {
			i = {
				["<ESC>"] = actions.close,
			},
		},
	},
})

require("telescope").load_extension("fzf")
