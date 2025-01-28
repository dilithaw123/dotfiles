return {
  {
    'mcchrish/zenbones.nvim',
    enabled = false,
    dependencies = {
      'rktjmp/lush.nvim',
    },
    config = function()
      vim.cmd [[ let g:zenbones_compat = 1 ]]
      vim.cmd [[ colorscheme zenbones ]]
    end,
  },
  {
    'nyoom-engineering/oxocarbon.nvim',
    enabled = false,
    config = function()
      vim.cmd 'set background=dark'
      vim.cmd [[ colorscheme oxocarbon ]]
    end,
  },
  {
    'rebelot/kanagawa.nvim',
    enabled = false,
    config = function()
      vim.cmd ' colorscheme kanagawa-lotus '
    end,
  },
  {
    'Mofiqul/dracula.nvim',
    enabled = false,
    config = function()
      vim.cmd [[colorscheme dracula]]
    end,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    enabled = false,
    config = function()
      require('rose-pine').setup {
        variant = 'moon',
        disable_italics = true,
      }
      vim.cmd 'colorscheme rose-pine'
    end,
  },
  {
    'EdenEast/nightfox.nvim',
    enabled = false,
    config = function()
      vim.cmd 'colorscheme dawnfox'
    end,
  },
  {
    'arcticicestudio/nord-vim',
    enabled = false,
    config = function()
      vim.cmd 'colorscheme nord'
    end,
  },
  {
    'Verf/deepwhite.nvim',
    enabled = false,
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd [[colorscheme deepwhite]]
    end,
  },
  {
    'sainnhe/everforest',
    enabled = false,
    config = function()
      vim.g.everforest_background = 'hard'
      vim.cmd 'colorscheme everforest'
    end,
  },
  {
    'ab-dx/ares.nvim',
    enabled = false,
    dependencies = {
      'rktjmp/lush.nvim',
    },
    config = function()
      vim.cmd 'colorscheme ares'
    end,
  },
  {
    'scottmckendry/cyberdream.nvim',
    enabled = true,
    lazy = false,
    priority = 1000,
    config = function()
      require('cyberdream').setup {
        transparent = true,
        italic_comments = true,
      }
      vim.cmd 'colorscheme cyberdream'
    end,
  },
}
