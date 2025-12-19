return function()
  MiniDeps.add({
    source = 'ibhagwan/fzf-lua',
  })

  require('fzf-lua').setup({ 'fzf-native' })
end
