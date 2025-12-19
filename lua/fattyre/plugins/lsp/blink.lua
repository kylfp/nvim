return function()
  MiniDeps.add({
    source = 'saghen/blink.cmp',
    depends = {
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets',
    },
    -- checkout = 'some.version',
  })

  require('luasnip.loaders.from_vscode').lazy_load()

  require('blink.cmp').setup({
    completion = {
      menu = {
        border = 'single',
        draw = {
          columns = {
            { 'kind_icon', 'kind', gap = 1 },
            { 'label', 'label_description', gap = 1 },
            { 'source_name' },
          },
        },
      },
      documentation = {
        window = {
          border = 'single',
        },
      },
    },
    fuzzy = {
      implementation = 'lua',
    },
    keymap = {
      ['<C-x>'] = { 'hide' },
      ['<CR>'] = { 'accept', 'fallback' },
      ['<C-k>'] = { 'select_prev', 'fallback' },
      ['<C-j>'] = { 'select_next', 'fallback' },
      ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
      ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
      ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
      ['<Tab>'] = { 'snippet_forward', 'fallback' },
      ['<S-Tab>'] = { 'snippet_backward', 'fallback' },
    },
    appearance = {
      use_nvim_cmp_as_default = true, -- check for updates in future releases
      nerd_font_variant = "mono", -- mono or normal
      kind_icons = {
        Text = '󰊄',
        Method = '',
        Function = '󰡱',
        Constructor = '󰖵',
        Field = '󱪲',
        -- Variable
        -- Class
        -- Interface
        -- Module
        -- Property
        -- Unit
        -- Value
        -- Enum
        Keyword = '',
        Snippet = '',
        Color = '',
        File = '󰈔',
        -- Reference
        Folder = '󰉋',
        -- EnumMember
        -- Constant
        -- Struct
        -- Event
        -- Operator
        -- TypeParameter
      },
    },
    snippets = {
      preset = 'luasnip',
    },
    sources = {
      default = { "lsp", "snippets", "path", "buffer", },
    },
  })
end
