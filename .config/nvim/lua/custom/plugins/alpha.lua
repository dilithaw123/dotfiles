return {

  'goolord/alpha-nvim',
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    vim.api.nvim_set_hl(0, 'HeaderGreen', { fg = '#5ea689' })
    vim.api.nvim_set_hl(0, 'HeaderBlue', { fg = '#094e94' })

    dashboard.section.header.val = {
      '██████╗ ██╗██╗     ██╗   ███╗   ██╗██╗   ██╗██╗███╗   ███╗',
      '██╔══██╗██║██║     ██║   ████╗  ██║██║   ██║██║████╗ ████║',
      '██║  ██║██║██║     ██║   ██╔██╗ ██║██║   ██║██║██╔████╔██║',
      '██║  ██║██║██║     ██║   ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║',
      '██████╔╝██║███████╗██║██╗██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║',
      '╚═════╝ ╚═╝╚══════╝╚═╝╚═╝╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝',
    }

    dashboard.section.header.opts.hl = 'HeaderGreen'
    dashboard.section.buttons.opts.hl = 'HeaderBlue'

    dashboard.section.buttons.val = {
      dashboard.button('n', '  New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('f', '  Find file', ':Telescope find_files<CR>'),
      dashboard.button('l', '󰒲  Lazy', ':Lazy<CR>'),
      dashboard.button('g', '󰊢  Git', ':LazyGit<CR>'),
      dashboard.button('m', '  Mason', ':Mason<CR>'),
      dashboard.button('c', '  Close', ':Alpha<CR>'),
      dashboard.button('q', '󰅚  Quit NVIM', ':qa!<CR>'),
    }

    alpha.setup(dashboard.config)
    -- vim.keymap.set('n', '<leader>a', '<Cmd>enew<CR><BAR><Cmd>Alpha<CR>', { noremap = true, silent = true, desc = '[A]lpha' })
    vim.keymap.set('n', '<leader>a', '<Cmd>Alpha<CR>', { noremap = true, silent = true, desc = '[A]lpha' })
  end,
}
