---@diagnostic disable: unused-local
require("bufferline").setup{
  options = {
    offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
    numbers = "ordinal",
    modified_icon = "",
    show_tab_indicators = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    always_show_bufferline = true,
    diagnostics = "nvim_lsp",
    diagnostics_update_in_insert = true,
    diagnostics_indicator = function(count, level, diagnostics_dict, context)
      local icon = level:match("error") and " " or " "
      return " " .. icon .. count
    end,
    separator_style = "thin",
    enforce_regular_tabs = true
  }
}

