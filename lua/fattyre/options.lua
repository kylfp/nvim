local opt = vim.opt

-- netrw
vim.g.netrw_liststyle = 3 -- tree style

-- Gutter Info
opt.signcolumn = 'yes'
opt.relativenumber = true
opt.number = true

-- Tabbing/Indents
opt.tabstop = 2        -- Size of tab character
opt.softtabstop = 2    -- # of spaces on tab key
opt.shiftwidth = 2     -- Auto indent size
opt.expandtab = true   -- Space > Tab
opt.autoindent = true  -- copy indent from previous line

-- Search
opt.ignorecase = true
opt.smartcase = true

-- Style
opt.termguicolors = true
opt.cursorline = true
opt.cursorcolumn = true
opt.colorcolumn = "100"
opt.wrap = false


-- Navigation/Editing
opt.backspace = 'indent,eol,start'
opt.clipboard = 'unnamedplus'

-- Window Splits
opt.splitright = true
opt.splitbelow = true

-- Scrolling
opt.scrolloff = 15
opt.sidescrolloff = 15
