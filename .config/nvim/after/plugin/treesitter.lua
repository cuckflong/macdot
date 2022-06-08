require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    use_languagetree = true,
  },
  autotag = {
    enable = true,
  },
  -- incremental_selection = {
  --   enable = true,
  --   keymaps = {
  --     init_selection = "<leader>gi",
  --     node_incremental = "+",
  --     scope_incremental = "<leader>gs",
  --     node_decremental = "-",
  --   },
  -- },
  -- indent = {
  --   enable = true,
  -- }
}
