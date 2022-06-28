---@diagnostic disable: undefined-global
require("indent_blankline").setup({
	show_current_context = true,
	show_trailing_blankline_indent = false,
	space_char_blankline = " ",
})
vim.g.indent_blankline_filetype_exclude = { "lsp-installer", "help" }
