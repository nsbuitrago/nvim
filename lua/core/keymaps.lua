local set = vim.keymap.set
-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- open oil file editor
set('n', '<leader>fe', '<cmd>Oil<CR>', { desc = 'Open [F]ile [E]ditor' })

-- Diagnostic keymaps
set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
-- set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
-- moving between splits
set('n', '<C-h>', ':SmartCursorMoveLeft<CR>')
set('n', '<C-j>', ':SmartCursorMoveDown<CR>')
set('n', '<C-k>', ':SmartCursorMoveUp<CR>')
set('n', '<C-l>', ':SmartCursorMoveRight<CR>')
-- Move to start and end of lines
set({ 'n', 'v' }, 'gh', '^', { desc = 'Move to first non-whitespace character of the line' })
set({ 'n', 'v' }, 'gl', '$', { desc = 'Move to last non-whitespace char' })

-- Buffer movement
set('n', '<leader>bn', ':bnext<CR>', { desc = 'Move to nth next [B]uffer' })
set('n', '<leader>bp', ':bprev<CR>', { desc = 'Move to nth previous [B]uffer' })
set('n', '<leader>bd', ':bdelete<CR>', { desc = 'Close [B]uffer' })

-- format text to 80 characters per line
set('v', '<leader>ft', '!fmt -w 80<CR>', { desc = 'Format text to 80 characters per line' })
