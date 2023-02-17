vim.g.maploader = ' '
vim.g.malocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- hides default status line (insert, visual modes)
vim.opt.showmode = false

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
