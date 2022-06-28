require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
		use_languagetree = true,
	},
	autotag = {
		enable = true,
	},
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil,
	},
	context_commentstring = {
		enable = true,
	},
	matchup = {
		enable = true,
	},
})
