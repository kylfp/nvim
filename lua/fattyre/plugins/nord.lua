return {
  "AlexvZyl/nordic.nvim",
  lazy = false,
  priority = 100,
  config = function ()
    require("nordic").setup({})
    -- vim.cmd("colorscheme nordic")
  end
}
