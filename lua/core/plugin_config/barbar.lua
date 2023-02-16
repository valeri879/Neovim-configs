local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<Space>nn', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<Space>bb', '<Cmd>BufferNext<CR>', opts)
-- Close buffer
map('n', '<S-w>', '<Cmd>BufferClose<CR>', opts)
