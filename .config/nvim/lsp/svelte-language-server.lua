return {
  cmd = { 'svelteserver', '--stdio' },
  capabilities = require('blink.cmp').get_lsp_capabilities(),
  filetypes = { 'svelte' },
  root_markers = { 'package.json', 'svelte.config.js', 'svelte.config.ts', 'svelte.config.mjs' },
}
