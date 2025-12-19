return function()
  MiniDeps.add({
    source = 'neovim/nvim-lspconfig',
    depends = { 'saghen/blink.cmp' },
  })

  local capabilities = require('blink.cmp').get_lsp_capabilities()
  local lspconfig = vim.lsp.config

  lspconfig('lua_ls', {
    capabilities = capabilities,
    settings = {
      Lua = {
        diagnostics = {
          globals = { 'vim' },
        },
        completion = {
          callSnippet = 'Replace',
        },
      },
    },
  })

  lspconfig('rust_analyzer', {
    capabilities = capabilities,
  })

  lspconfig('pyright', {
    capabilities = capabilities,
  })

end
