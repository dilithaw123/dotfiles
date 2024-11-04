return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('nvim-tree').setup {
      filters = {
        dotfiles = false,
      },
    }
    vim.api.nvim_set_keymap('n', '<Leader>ff', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
  end,
}
