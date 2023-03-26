local setup, bufferline = pcall(require, "bufferline")
if not setup then return end

bufferline.setup({
  closable = false, -- Enable/disable close button
  clickable = false, -- Enables/disable clickable tabs
  tabpages = true, -- Enable/disable current/total tabpages indicator (top right corner)
  icons = "both", -- Enable/disable icons
})

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<Space>b,', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<Space>b.', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<Space>b<', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<Space>b>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<Space>b1', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<Space>b2', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<Space>b3', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<Space>b4', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<Space>b5', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<Space>b6', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<Space>b7', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<Space>b8', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<Space>b9', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<Space>b0', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<Space>bp', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<Space>bc', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
