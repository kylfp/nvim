return function()
  MiniDeps.add({
    source = 'nvim-treesitter/nvim-treesitter',
    depends = { 'windwp/nvim-ts-autotag' },
  })

  require('nvim-treesitter.configs').setup({
    highlight = {
      enable = true,
    },
    indent = {
      { enable = true },
    },
    autotag = {
      enable = true,
    },
    ensure_installed = {
      "bash",
      "cpp",
      "css",
      "csv",
      "html",
      "java",
      "javascript",
      "json",
      "lua",
      "luadoc",
      "make",
      "markdown",
      "markdown_inline",
      "python",
      "regex",
      "rust",
      "sql",
      "sway",
      "toml",
      "typescript",
      "vim",
      "vimdoc",
      "yaml",
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-space>",
        node_incremental = "<C-space>",
        scope_incremental = false,
        node_decremental = "<bs>",
      },
    },
  })
end
