return {
  cmd = { 'rust-analyzer' },
  root_markers = { 'Cargo.toml' },
  filetypes = { 'rust' },
  capabilities = require('blink.cmp').get_lsp_capabilities(),
  settings = {},
  single_file_support = true,
}
