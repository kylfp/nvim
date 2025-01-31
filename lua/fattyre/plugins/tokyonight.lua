return {
  "folke/tokyonight.nvim",
  priority = 1000,

  config = function ()
    local tokyonight = require("tokyonight")
    tokyonight.setup({
      style = "night",
    })
    -- vim.cmd("colorscheme tokyonight")
  end
}
