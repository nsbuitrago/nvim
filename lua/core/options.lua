local g = vim.g
local o = vim.opt

-- Set <space> as the leader key
-- See `:help mapleader`
g.mapleader = ' '
g.maplocalleader = ' '

-- [[ Setting options ]]
-- See `:help vim.opt`

-- use relative line numbers
o.number = true
o.relativenumber = true

-- Enable mouse mode
o.mouse = 'a'

-- Don't show the mode, since it's already in the status line
o.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
o.clipboard = 'unnamedplus'

-- Enable break indent
o.breakindent = true

-- Save undo history
o.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
o.ignorecase = true
o.smartcase = true

-- Use popup menu for one or more autocomplete matches and do not select
-- from menu
o.completeopt = 'menuone,noselect'

-- Keep signcolumn on by default
o.signcolumn = 'yes'

-- use visual color column
o.colorcolumn = '80'

-- Decrease update time
o.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
o.timeoutlen = 300

-- Configure how new splits should be opened
o.splitright = true
o.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
o.list = true
o.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
o.inccommand = 'split'

-- Show which line your cursor is on
o.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
o.scrolloff = 10
