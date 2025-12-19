return function()
  require('mini.hipatterns').setup({
    highlighters = {
      hex_color = require('mini.hipatterns').gen_highlighter.hex_color(),
    }
  })
end
