return {
  'nvim-lualine/lualine.nvim',
  opts = {
    options = {
      icons_enabled = false,
      theme = 'auto',
      component_separators = '|',
      section_separators = '',
    },
    sections = {
      lualine_c = { { 'filename', file_status = true, path = 2 } },
    },
    --   tabline = {
    --     lualine_a = {
    --       {
    --         'buffers',
    --         buffers_color = {
    --           active = { fg = '#9de3e3', bg = '#2d7d7d' },
    --           inactive = { fg = '#9de3e3', bg = '#1e5959' },
    --         },
    --         symbols = {
    --           alternate_file = '',
    --         },
    --       },
    --     },
    --     lualine_b = {},
    --     lualine_c = {},
    --     lualine_x = {},
    --     lualine_y = {},
    --     lualine_z = {},
    --   },
  },
}
