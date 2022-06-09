local options = {
  floating_window = true,
  hint_enable = false,
  handler_opts = {
     border = "rounded", -- double, single, shadow, none
  },
}

require "lsp_signature".setup(options)
