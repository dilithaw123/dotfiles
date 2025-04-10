return {
  cmd = { 'astro-ls', '--stdio' },
  filetypes = { 'astro' },
  root_markers = { 'package.json', 'tsconfig.json', 'jsconfig.json' },
  capabilities = require('blink.cmp').get_lsp_capabilities(),
  init_options = {
    typescript = {},
  },
  on_new_config = function(new_config, new_root_dir)
    if vim.tbl_get(new_config.init_options, 'typescript') and not new_config.init_options.typescript.tsdk then
      new_config.init_options.typescript.tsdk = get_typescript_server_path(new_root_dir)
    end
  end,
}
