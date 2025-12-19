local filenameSettings = {
  'filename',
  symbols = {
    modified = '  ',
    readonly = '󱓷 Only',
    -- NvimTree_1 = '󰙅 NvimTree',
    unnamed = '',
    newfile = ' '
  }
}

local bufferSettings = {
  'buffers',
  filetype_names = {
    TelescopePrompt = '󰭎 Telescope',
    NvimTree =  '󰙅 NvimTree',
  },
  mode = 4,
  symbols = {
    modified = '  '
  }
}

local function neovim()
  return [[ ]]
end

local function sep()
  return [[]]
end

return function()
  MiniDeps.add({
    source = 'nvim-lualine/lualine.nvim',
  })

  require('lualine').setup({
    options = {
      icons_enabled = true,
      theme = 'auto',
      component_separators = { left = '', right = '' },
      section_separators = { left = '', right = '' },
      disabled_filetypes = {
        'NvimTree',
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 50,
        tabline = 100,
        winbar = 100,
      },
    },
    sections = {
      lualine_a = { { neovim }, 'mode' },
      lualine_b = { 'diagnostics', 'branch', 'diff' },
      lualine_c = { filenameSettings },
      lualine_x = { 'filetype' },
      lualine_y = { 'encoding', 'fileformat' },
      lualine_z = { 'progress', 'location' },
    },
    inactive_sections = {
      lualine_a = { },
      lualine_b = { },
      lualine_c = { filenameSettings },
      lualine_x = { 'location' },
      lualine_y = { },
      lualine_z = { },
    },
  })
end
