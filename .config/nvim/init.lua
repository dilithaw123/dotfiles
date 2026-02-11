vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.path:append '**'
vim.opt.wildignorecase = true
vim.opt.winborder = 'rounded'
vim.opt.swapfile = false

vim.pack.add {
  { src = 'https://github.com/tpope/vim-fugitive' },
  { src = 'https://github.com/tpope/vim-rhubarb' },
  { src = 'https://github.com/tpope/vim-sleuth' },
  { src = 'https://github.com/stevearc/oil.nvim' },
  { src = 'https://github.com/mason-org/mason.nvim' },
  { src = 'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim' },
  { src = 'https://github.com/mason-org/mason-lspconfig.nvim' },
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
  { src = 'https://github.com/ibhagwan/fzf-lua' },
  { src = 'https://github.com/saghen/blink.cmp', version = vim.version.range '1.9.0' },
  { src = 'https://github.com/folke/which-key.nvim' },
  { src = 'https://github.com/EdenEast/nightfox.nvim' },
  { src = 'https://github.com/lewis6991/gitsigns.nvim' },
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter' },
  { src = 'https://github.com/akinsho/bufferline.nvim' },
  { src = 'https://github.com/nvim-lualine/lualine.nvim' },
  { src = 'https://github.com/stevearc/conform.nvim' },
  { src = 'https://github.com/github/copilot.vim' },
  { src = 'https://github.com/mfussenegger/nvim-lint' },
  { src = 'https://github.com/akinsho/toggleterm.nvim' },
  { src = 'https://github.com/folke/trouble.nvim' },
  { src = 'https://github.com/kdheepak/lazygit.nvim' },
  { src = 'https://github.com/nvim-mini/mini.nvim' },
}

-- Colorscheme
vim.cmd 'colorscheme nightfox'

-- Oil
require('oil').setup {
  default_file_explorer = true,
  delete_to_trash = true,
  view_options = {
    show_hidden = true,
  },
}

vim.keymap.set('n', '<leader>o', ':Oil<CR>', { desc = 'Open parent directory' })

-- blink.cmp
require('blink.cmp').setup {
  keymap = { preset = 'default' },
  appearance = {
    use_nvim_cmp_as_default = true,
    nerd_font_variant = 'mono',
  },
  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
  },
  fuzzy = {
    implementation = 'prefer_rust_with_warning',
    prebuilt_binaries = {
      download = true,
      ignore_version_mismatch = true,
      force_version = 'v1.9.0',
    },
  },
  completion = {
    menu = {
      draw = {
        columns = {
          { 'label', 'label_description', gap = 1 },
          { 'kind_icon', 'kind', gap = 1 },
        },
      },
    },
  },
}

-- Bufferline
require('bufferline').setup {}

-- Gitsigns
require('gitsigns').setup {
  signs = {
    add = { text = '+' },
    change = { text = '~' },
    delete = { text = '_' },
    topdelete = { text = '‾' },
    changedelete = { text = '~' },
  },
}

-- Lualine
require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'auto',
    component_separators = '|',
    section_separators = '',
  },
  sections = {
    lualine_c = { { 'filename', file_status = true, path = 2 } },
  },
}

-- Conform
require('conform').setup {
  format_on_save = {
    lsp_format = 'fallback',
    timeout_ms = 3000,
  },
  formatters_by_ft = {
    lua = { 'stylua' },
    javascript = { 'prettierd' },
    typescript = { 'prettierd' },
    go = { 'gofumpt', 'goimports' },
    -- yaml = { 'yamlfmt' },
    python = { 'black' },
    markdown = { 'prettierd' },
    json = { 'jq' },
  },
}

-- Mini.nvim
require('mini.files').setup {
  options = {
    permanent_delete = false,
  },
}
vim.keymap.set('n', '<leader>ff', function()
  require('mini.files').open()
end, { noremap = true, silent = true, desc = 'Open [F]iles' })

-- Toggleterm
require('toggleterm').setup {
  direction = 'float',
  close_on_exit = true,
}
vim.keymap.set('n', '<leader>ft', '<cmd>ToggleTerm<cr>', { noremap = true, silent = true, desc = 'Toggle [T]erminal' })

-- Trouble
require('trouble').setup {}
vim.keymap.set('n', '<leader>xx', '<cmd>Trouble diagnostics toggle<cr>', { desc = 'Diagnostics (Trouble)' })


-- local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
-- if not vim.loop.fs_stat(lazypath) then
--   vim.fn.system {
--     'git',
--     'clone',
--     '--filter=blob:none',
--     'https://github.com/folke/lazy.nvim.git',
--     '--branch=stable', -- latest stable release
--     lazypath,
--   }
-- end
-- vim.opt.rtp:prepend(lazypath)

-- stylua: ignore start
-- Set highlight on search
vim.o.hlsearch = false
-- Hybrid line numbers
vim.wo.relativenumber = true
vim.wo.number = true
vim.opt.cursorline = true
-- Enable mouse mode
vim.o.mouse = 'a'
-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'
-- Enable break indent
vim.o.breakindent = true
-- Save undo history
vim.o.undofile = true
-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true
-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'
-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300
-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- [[ Basic Keymaps ]]
-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
vim.keymap.set('n', '<C-h>', '<C-w>h', { silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { silent = true })
-- Remap for faster buffer manipulation
vim.keymap.set('n', '<leader>bd', '<cmd>bd<bar>bp<CR>', { silent = true, desc = '[B]uffer [D]elete' })
vim.keymap.set('n', '<leader>bD', '<cmd>bd!<bar>bp<CR>', { silent = true, desc = '[B]uffer [D]elete!' })
vim.keymap.set('n', '<leader>bn', '<cmd>bn<CR>', { silent = true, desc = '[B]uffer [N]ext' })
vim.keymap.set('n', '<leader>bp', '<cmd>bp<CR>', { silent = true, desc = '[B]uffer [P]revious' })
vim.keymap.set('n', '<leader>.', '<cmd>bn<CR>', { silent = true, desc = '[B]uffer [N]ext', noremap = true })
vim.keymap.set('n', '<leader>,', '<cmd>bp<CR>', { silent = true, desc = '[B]uffer [P]revious', noremap = true })
vim.keymap.set('n', '<C-;>', '<cmd>bd!<bar>bp<CR>', { silent = true, desc = '[B]uffer [P]revious', noremap = true })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { silent = true, noremap = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { silent = true, noremap = true })
vim.keymap.set({ 'n', 'v', 'i' }, '<C-c>', '<Esc>', { silent = true, noremap = true })
vim.keymap.set('t', '<S-BS>', '<C-\\><C-n>', { silent = true, noremap = true })
-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

vim.keymap.set('n', '<leader>?', require('fzf-lua').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('fzf-lua').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', require('fzf-lua').blines, { desc = '[/] Fuzzily search in current buffer' })
vim.keymap.set('n', '<leader>gf', require('fzf-lua').git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', require('fzf-lua').files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sw', require('fzf-lua').grep_cword, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('fzf-lua').live_grep, { desc = '[S]earch by [G]rep' })
-- Snacks
vim.keymap.set('n', '<leader>gg', '<cmd>LazyGit<CR>', { desc = 'Launch [L]azy[G]it' })

-- stylua: ignore end

-- Treesitter
require('nvim-treesitter').setup()
require('nvim-treesitter').install {
  'c',
  'cpp',
  'go',
  'lua',
  'python',
  'rust',
  'tsx',
  'javascript',
  'typescript',
  'vimdoc',
  'vim',
  'bash',
  'zig',
  'sql',
  'terraform',
  'html',
  'c_sharp',
  'markdown',
  'php',
  'razor',
}

vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('tree-sitter-enable', { clear = true }),
  callback = function(args)
    local lang = vim.treesitter.language.get_lang(args.match)
    if not lang then
      return
    end

    if vim.treesitter.query.get(lang, 'highlights') then
      vim.treesitter.start(args.buf)
    end
  end,
})

require('which-key').add {
  { '<leader>c', group = '[C]ode' },
  { '<leader>c_', hidden = true },
  { '<leader>d', group = '[D]ocument' },
  { '<leader>d_', hidden = true },
  { '<leader>g', group = '[G]it' },
  { '<leader>g_', hidden = true },
  { '<leader>h', group = 'Git [H]unk' },
  { '<leader>h_', hidden = true },
  { '<leader>r', group = '[R]ename' },
  { '<leader>r_', hidden = true },
  { '<leader>s', group = '[S]earch' },
  { '<leader>s_', hidden = true },
  { '<leader>t', group = '[T]oggle' },
  { '<leader>t_', hidden = true },
  { '<leader>w', group = '[W]orkspace' },
  { '<leader>w_', hidden = true },
}

require('which-key').add {
  { '<leader>', group = 'VISUAL <leader>', mode = 'v' },
  { '<leader>h', desc = 'Git [H]unk', mode = 'v' },
}

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local bufnr = vim.api.nvim_get_current_buf()
    local nmap = function(keys, func, desc)
      if desc then
        desc = 'LSP: ' .. desc
      end

      vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
    end

    nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
    nmap('<leader>ca', function()
      vim.lsp.buf.code_action { context = { only = { 'quickfix', 'refactor', 'source' } } }
    end, '[C]ode [A]ction')

    nmap('gd', require('fzf-lua').lsp_definitions, '[G]oto [D]efinition')
    nmap('gr', require('fzf-lua').lsp_references, '[G]oto [R]eferences')
    nmap('gI', require('fzf-lua').lsp_implementations, '[G]oto [I]mplementation')
    nmap('<leader>D', require('fzf-lua').lsp_typedefs, 'Type [D]efinition')
    nmap('<leader>ds', require('fzf-lua').lsp_document_symbols, '[D]ocument [S]ymbols')
    nmap('<leader>ws', require('fzf-lua').lsp_live_workspace_symbols, '[W]orkspace [S]ymbols')

    -- See `:help K` for why this keymap
    nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
    vim.keymap.set('i', '<C-k>', vim.lsp.buf.signature_help, { buffer = bufnr, desc = 'Signature Documentation' })

    -- Lesser used LSP functionality
    nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
    nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
    nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
    nmap('<leader>wl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, '[W]orkspace [L]ist Folders')

    -- Create a command `:Format` local to the LSP buffer
    vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
      vim.lsp.buf.format()
    end, { desc = 'Format current buffer with LSP' })
  end,
})

local mason_packages = {
  lsps = {
    'gopls',
    'rust_analyzer',
    'ts_ls',
    'html',
    'lua_ls',
    'ols',
    'clangd',
    'jsonls',
    'astro',
    'phpactor',
    'svelte',
    'omnisharp',
    'terraformls',
    'pyright',
    'sqlls',
  },
  formatters = {
    'gofumpt',
    'golines',
    'goimports',
    'prettierd',
    'stylua',
    'yamlfmt',
  },
  linters = {
    'golangci-lint',
    'eslint_d',
    'sqlfluff',
  },
}

-- Mason and Mason adjacent plugins
require('mason').setup()
require('mason-tool-installer').setup {
  ensure_installed = vim
    .iter({
      mason_packages.lsps,
      mason_packages.formatters,
      mason_packages.linters,
    })
    :flatten()
    :totable(),
}
require('mason-lspconfig').setup {}

-- Razor files
vim.filetype.add {
  extension = {
    razor = 'razor',
    cshtml = 'razor',
  },
}

-- Nvim lint
require('lint').linters_by_ft = {
  go = { 'golangcilint' },
  typescript = { 'eslint_d' },
  typescriptreact = { 'eslint_d' },
  javascript = { 'eslint_d' },
  javascriptreact = { 'eslint_d' },
  sql = { 'sqlfluff' },
}
vim.keymap.set('n', '<leader>ll', function()
  require('lint').try_lint()
end, { noremap = true, silent = true, desc = '[l]int this file' })

vim.api.nvim_create_autocmd({ 'BufWritePost' }, {
  callback = function()
    require('lint').try_lint()
  end,
})

vim.api.nvim_create_user_command('Update', function()
  vim.pack.update()
end, { desc = 'Update plugins' })
