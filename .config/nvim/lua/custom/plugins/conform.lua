return {
  'stevearc/conform.nvim',
  opts = {},
  event = 'BufReadPre',
  config = function()
    local conform = require 'conform'
    conform.setup {
      format_on_save = {
        lsp_format = 'fallback',
        timeout_ms = 1000,
      },
      formatters_by_ft = {
        lua = { 'stylua' },
        javascript = { 'prettierd' },
        typescript = { 'prettierd' },
        go = { 'gofumpt', 'goimports' },
        -- yaml = { 'yamlfmt' },
        python = { 'black' },
        markdown = { 'prettierd' },
        json = { 'jq' },
      },
    }
  end,
}
