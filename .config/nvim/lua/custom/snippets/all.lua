local ls = require 'luasnip'
local s = ls.snippet
local f = ls.function_node

ls.add_snippets('all', {
  s({ trig = 'utc', desc = 'utc time' }, {
    f(function()
      return os.date '!%Y-%m-%dT%H:%M:%SZ'
    end, {}),
  }),
  s({ trig = 'unixSeconds', desc = 'utc time in seconds' }, {
    f(function()
      return '' .. os.time(os.date '*t') .. ''
    end, {}),
  }),
})
