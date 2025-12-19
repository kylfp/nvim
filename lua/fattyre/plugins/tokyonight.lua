return function()
  MiniDeps.add({
    source = 'folke/tokyonight.nvim'
  })

  require('tokyonight').setup({
    transparent = true,
  })

  vim.cmd('colorscheme tokyonight')
end
