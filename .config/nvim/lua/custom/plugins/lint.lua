return {
  'mfussenegger/nvim-lint',
  events = { 'BufReadPre' },
  config = function()
    local lint = require 'lint'
    lint.linters_by_ft = {
      go = { 'golangcilint' },
      typescript = { 'eslint_d' },
      javascript = { 'eslint_d' },
    }
    local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
    vim.api.nvim_create_autocmd({ 'BufWritePost', 'BufReadPost', 'InsertLeave' }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })
    vim.keymap.set('n', '<leader>ll', function()
      lint.try_lint()
    end, { noremap = true, silent = true, desc = '[l]int this file' })
  end,
}
