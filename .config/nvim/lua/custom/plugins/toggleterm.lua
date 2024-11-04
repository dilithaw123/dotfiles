return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require("toggleterm").setup(
      {
        direction = "float",
        close_on_exit = true,
      }
    )
    vim.keymap.set("n", "<leader>ft", "<cmd>ToggleTerm<cr>",
      { noremap = true, silent = true, desc = "Toggle [T]erminal" })
  end,
}
