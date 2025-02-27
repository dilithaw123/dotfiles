return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    animate = {
      enabled = true,
    },
    dashboard = {
      enabled = true,
      preset = {
        keys = {
          { icon = ' ', key = 'f', desc = 'Find File', action = ":lua Snacks.dashboard.pick('files')" },
          { icon = ' ', key = 'n', desc = 'New File', action = ':ene | startinsert' },
          { icon = ' ', key = 'g', desc = 'Lazygit', action = ':LazyGit' },
          { icon = ' ', key = 'r', desc = 'Recent Files', action = ":lua Snacks.dashboard.pick('oldfiles')" },
          { icon = ' ', key = 'c', desc = 'Config', action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = ' ', key = 's', desc = 'Restore Session', section = 'session' },
          { icon = '󰒲 ', key = 'L', desc = 'Lazy', action = ':Lazy', enabled = package.loaded.lazy ~= nil },
          { icon = ' ', key = 'q', desc = 'Quit', action = ':qa' },
        },
        header = [[
██████╗ ██╗██╗     ██╗   ███╗   ██╗██╗   ██╗██╗███╗   ███╗
██╔══██╗██║██║     ██║   ████╗  ██║██║   ██║██║████╗ ████║
██║  ██║██║██║     ██║   ██╔██╗ ██║██║   ██║██║██╔████╔██║
██║  ██║██║██║     ██║   ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
██████╔╝██║███████╗██║██╗██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═════╝ ╚═╝╚══════╝╚═╝╚═╝╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
      ]],
      },
    },
    indent = {
      enabled = true,
    },
  },
}
