return {
  cmd = { 'terraform-ls', 'serve' },
  filetypes = { 'terraform', 'terraform-vars' },
  capabilities = require('blink.cmp').get_lsp_capabilities(),
  root_markers = { '.terraform', '.git' },
}
