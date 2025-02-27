-- return {
--   'zbirenbaum/copilot.lua',
--   enabled = true,
--   cmd = 'Copilot',
--   event = 'InsertEnter',
--   config = function()
--     require('copilot').setup {
--       panel = {
--         enabled = false,
--         auto_refresh = true,
--       },
--       suggestion = {
--         enabled = true,
--         auto_trigger = true,
--         keymap = {
--           accept_line = '<C-a>',
--           accept_word = '<C-s>',
--           next = '<C-d>',
--           prev = '<C-f>',
--         },
--       },
--     }
--   end,
-- }

return {
  'github/copilot.vim',
  enabled = true,
}
