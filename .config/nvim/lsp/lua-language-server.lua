return {
  cmd = { 'lua-language-server' },
  root_markers = { '.luarc.json' },
  filetypes = { 'lua' },
  capabilities = require('blink.cmp').get_lsp_capabilities(),
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
    },
  },
}
