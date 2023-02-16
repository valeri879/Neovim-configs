require('gruvbox').setup({
  contrast = "hard",
  transparent_mode = false
})

vim.o.termguicolors = true
vim.g.gruvbox_contrast_dark = "hard"
vim.cmd [[ colorscheme gruvbox]]
