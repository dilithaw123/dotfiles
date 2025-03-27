return {
  cmd = { 'gopls' },
  root_markers = { 'go.mod', 'go.sum' },
  filetypes = { 'go', 'gomod', 'gowork' },
  capabilities = require('blink.cmp').get_lsp_capabilities(),
  settings = {
    gopls = {
      completeUnimported = true,
    },
  },
}
