return function()
  MiniDeps.add({
    source = 'catppuccin/nvim',
  })

  require('catppuccin').setup({
    flavour = "macchiato",
    transparent_background = true,
  })

  -- vim.cmd('colorscheme catppuccin')
end
