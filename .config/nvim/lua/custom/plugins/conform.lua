return {
  'stevearc/conform.nvim',
  opts = {},
  event = 'BufReadPre',
  config = function()
    local conform = require 'conform'
    conform.setup {
      formatters_by_ft = {
        lua = { 'stylua' },
        javascript = { 'prettierd' },
        typescript = { 'prettierd' },
        go = { 'goimports', 'gofumpt', 'golines' },
        yaml = { 'yamlfmt' },
        python = { 'black' },
        markdown = { 'prettierd' },
        json = { 'jq' },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    }
  end,
}
