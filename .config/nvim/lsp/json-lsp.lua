return {
  cmd = { 'vscode-json-language-server', '--stdio' },
  filetypes = { 'json', 'jsonc' },
  capabilities = require('blink.cmp').get_lsp_capabilities(),
  single_file_support = true,
  root_markers = {},
}
