local function map(mode, bind, action, desc)
  vim.keymap.set(mode, bind, action, { desc = desc, noremap = true, silent = true })
end

-- General
vim.g.mapleader = ' '
map('i', 'jk',         '<ESC>',    'Exit insert mode with jk')
map('n', '<leader>nh', ':noh<CR>', 'Clear search highlight'  )

-- Splits
map('n', '<leader>sh', '<C-w>v',     'Horizontal split'   )
map('n', '<leader>sv', '<C-w>s',     'Vertical split'     )
map('n', '<leader>se', '<C-w>=',     'Equalize split size')
map('n', '<leader>sx', ':close<CR>', 'Close split'        )

map('n', '<C-h>', '<C-w>h', 'Move to left split' )
map('n', '<C-j>', '<C-w>j', 'Move to down split' )
map('n', '<C-k>', '<C-w>k', 'Move to up split'   )
map('n', '<C-l>', '<C-w>l', 'Move to right split')

map('n', '<C-Up>',    ':resize +2<CR>',          'Increase split size horizontally')
map('n', '<C-Down>',  ':resize -2<CR>',          'Decrease split size horizontally')
map('n', '<C-Left>',  ':vertical resize -2<CR>', 'Increase split size vertically'  )
map('n', '<C-Right>', ':vertical resize +2<CR>', 'Decrease split size vertically'  )

-- Tabs
map('n', '<leader>tx', ':tabclose<CR>', 'Close tab'   )
map('n', '<leader>tn', ':tabn<CR>',     'Next tab'    )
map('n', '<leader>tp', ':tabp<CR>',     'Previous tab')

-- Increment Numbers
map('n', '<leader>=', '<C-a>', 'Increment # under cursor')
map('n', '<leader>-', '<C-x>', 'Decrement # under cursor')

-- Move Text In Visual Mode
map('v', '<',     '<gv',                 'Move text in visual mode')
map('x', 'K',     ":move '<-2<CR>gv-gv", 'Move text in visual mode')
map('v', '>',     '>gv',                 'Move text in visual mode')
map('x', '<A-j>', ":move '>+1<CR>gv-gv", 'Move text in visual mode')
map('v', '<A-j>', ':m .+1<CR>==',        'Move text in visual mode')
map('x', 'J',     ":move '>+1<CR>gv-gv", 'Move text in visual mode')
map('v', '<A-k>', ':m .-2<CR>==',        'Move text in visual mode')
map('x', '<A-k>', ":move '<-2<CR>gv-gv", 'Move text in visual mode')

-- PLUGINS
-- General
map('n', '<leader>e',  ':lua MiniFiles.open()<CR>',   'Open mini files'     )
map('n', '<leader>qb', ':lua MiniBufremove.delete()<CR>', 'Close current buffer') 

-- Fzf Lua
map('n', '<leader>ff', ':lua require("fzf-lua").files()<CR>', 'Fzf search files')
map('n', '<leader>fb', ':lua require("fzf-lua").buffers()<CR>', 'Fzf search buffers')
map('n', '<leader>fp', ':lua require("fzf-lua").grep_project()<CR>', 'Fzf grep project')
map('n', '<leader>fs', ':lua require("fzf-lua").grep_curbuf()<CR>', 'Fzf grep current buffer')

-- Sessions
map('n', '<leader>sm', ':mksession<CR>', 'Create session in current dir')
map('n', '<leader>sw', ':lua MiniSessions.write()<CR>', 'Write session in current dir')
map('n', '<leader>sr', ':lua MiniSessions.read("Sessions.nvim")<CR>', 'Read session in current dir')
