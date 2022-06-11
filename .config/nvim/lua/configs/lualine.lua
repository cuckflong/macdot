---@diagnostic disable: undefined-global
local gps = require("nvim-gps")

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'onedark',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = {
      'mode'
    },
    lualine_b = {
      {
        'branch',
        icon = '',
      },
      {
        'diff',
        symbols = { added = ' ', modified = '柳 ', removed = ' ' },
      },
      {
        'diagnostics',
        symbols = {
          error = ' ',
          warn = ' ',
          info = ' '
        },
      }
    },
    lualine_c = {'filename', { gps.get_location, cond = gps.is_available } },
    lualine_x = {
      {
        function()
          -- local clients = vim.lsp.get_active_clients()
          local clients = vim.lsp.buf_get_clients()
          if next(clients) == nil then
            return 'No Active Lsp'
          end
          local msg = ''
          for _, client in pairs(clients) do
            if msg == '' then
              msg = client.name
            else
              msg = msg .. ", " .. client.name
            end
          end
          return msg
        end,
        icon = ' LSP:',
      },
      'encoding',
      'fileformat',
      'filetype'
    },
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {
    "fugitive",
    "nvim-tree",
  }
}
