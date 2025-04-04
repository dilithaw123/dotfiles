return {
  cmd = { 'vscode-html-language-server', '--stdio' },
  filetypes = { 'html' },
  single_file_support = true,
  capabilities = require('blink.cmp').get_lsp_capabilities(),
  settings = {},
  init_options = {
    provideFormatter = true,
    embeddedLanguages = { css = true, javascript = true },
    configurationSection = { 'html', 'css', 'javascript' },
  },
}
