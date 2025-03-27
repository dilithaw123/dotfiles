return {
  cmd = { 'omnisharp', '--languageserver' },
  filetypes = { 'cs', 'vb' },
  root_markers = { '*.csproj', '*.sln' },
  capabilities = require('blink.cmp').get_lsp_capabilities(),
  settings = {
    FormattingOptions = {
      EnableEditorConfigSupport = true,
      OrganizeImports = nil,
    },
  },
}
