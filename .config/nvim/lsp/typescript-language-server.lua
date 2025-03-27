return {
  cmd = { 'typescript-language-server', '--stdio' },
  root_markers = { 'package.json', 'tsconfig.json' },
  filetypes = { 'javascript', 'javascriptreact', 'javascript.jsx', 'typescript', 'typescriptreact', 'typescript.tsx' },
  capabilities = require('blink.cmp').get_lsp_capabilities(),
  settings = {},
  single_file_support = true,
}
