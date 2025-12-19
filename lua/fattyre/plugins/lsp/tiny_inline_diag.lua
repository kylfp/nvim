return function()
  MiniDeps.add({
    source = 'rachartier/tiny-inline-diagnostic.nvim',
  })

  require('tiny-inline-diagnostic').setup({
    preset = 'powerline'
  })
  vim.diagnostic.config({
    virtual_text = false,
  })
end
