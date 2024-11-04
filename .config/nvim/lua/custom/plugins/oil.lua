return {
  'stevearc/oil.nvim',
  opts = {},
  events = "UIEnter",
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require('oil').setup({
      default_file_explorer = true,
      delete_to_trash = true,
      view_options = {
        show_hidden = true,
      },
    })
    vim.keymap.set('n', "<leader>o", "<CMD>Oil<CR>", { desc = "Open parent directory" })
  end,
}
