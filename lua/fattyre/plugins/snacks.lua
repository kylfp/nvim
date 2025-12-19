return function()
  MiniDeps.add({
    source = 'folke/snacks.nvim',
  })

  require('snacks').setup({
    -- Dashboard
    dashboard = {
      enabled = true,
      preset = {
        keys = {
          { icon = "󰥨 ", key = "ff", desc = "Find File", action = ":lua require('fzf-lua').files()" },
          { icon = " ", key = "fr", desc = "Recent File", action = ":lua require('fzf-lua').oldfiles()", },
          { icon = "󱏒 ", key = "ee", desc = "Explore Files", action = ":NvimTreeToggle" },
          { icon = "󰒲 ", key = "L", desc = "Lazy Plugin Manager", action = ":Lazy" },
          { icon = " ", key = "M", desc = "Mason LSP Manager", action = ":Mason" },
          { icon = "󰥨 ", key = "Q", desc = "Quit", action = ":qa" },
        },
        header = [[
███████╗ █████╗ ████████╗██╗   ██╗██╗███╗   ███╗
██╔════╝██╔══██╗╚══██╔══╝██║   ██║██║████╗ ████║
█████╗  ███████║   ██║   ██║   ██║██║██╔████╔██║
██╔══╝  ██╔══██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║
██║     ██║  ██║   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝     ╚═╝  ╚═╝   ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝]],
      },
    },

    -- Indent Level Indicator
    indent = { enabled = true },

    -- Better Vim Input
    input = { enabled = true },
  })
end
