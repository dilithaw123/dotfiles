return {
  cmd = { 'phpactor', 'language-server' },
  filetypes = { 'php' },
  capabilities = require('blink.cmp').get_lsp_capabilities(),
  root_markers = { 'composer.json', '.git', '.phpactor.json', '.phpactor.yml' },
}
