-- Path for nvim packages + Path for mini.nvim
local path_package = vim.fn.stdpath('data') .. '/site/'
local mini_path = path_package .. 'pack/deps/start/mini.nvim'

-- Check if mini.nvim installed then install
if not vim.loop.fs_stat(mini_path) then
  vim.cmd('echo "Installing `mini.nvim`" | redraw')
  local clone_cmd = {
    'git', 'clone', '--filter=blob:none', 'https://github.com/nvim-mini/mini.nvim', mini_path
  }
  vim.fn.system(clone_cmd)
  vim.cmd('packadd mini.nvim | helptags ALL')
  vim.cmd('echo "Installed `mini.nvim`" | redraw')
end

-- mini.deps setup
require('mini.deps').setup({ path = { package = path_package } })

-- create names for mini.deps functions
local add, now, later = MiniDeps.add, MiniDeps.now, MiniDeps.later

add({
  source = 'nvim-lualine/lualine.nvim',
  -- depends = { 'nvim-tree/nvim-web-devicons' }

})

-- NORMAL
now(function() require('mini.icons').setup() end)
now(function() require('mini.tabline').setup() end)
now(require('fattyre.plugins.catppuccin'))
now(require('fattyre.plugins.tokyonight'))
now(require('fattyre.plugins.lualine'))
now(require('fattyre.plugins.treesitter'))
now(require('fattyre.plugins.indent_blankline'))
now(require('fattyre.plugins.mini_sessions'))
now(require('fattyre.plugins.lsp.mason'))
now(require('fattyre.plugins.lsp.nvim_lspconfig'))
add({source = 'rafamadriz/friendly-snippets'})
add({source = 'L3MON4D3/LuaSnip'})
now(require('fattyre.plugins.lsp.blink'))
now(require('fattyre.plugins.lsp.tiny_inline_diag'))

-- LAZY
later(function() require('mini.move').setup() end)
later(function() require('mini.cursorword').setup() end)
later(function() require('mini.files').setup() end)
later(function() require('mini.tabline').setup() end)
later(function() require('mini.bufremove').setup() end)
later(function() require('mini.pairs').setup() end)
later(function() require('mini.surround').setup() end)
later(require('fattyre.plugins.fzflua'))
later(require('fattyre.plugins.mini_hipatterns'))
