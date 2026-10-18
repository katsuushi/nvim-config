-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.lazyvim_inlay_hints = false
vim.opt.list = false
vim.opt.swapfile = false
vim.g.autoformat = false -- Ensure autoformat is on, but...
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.diagnostic.config({
  virtual_text = false,
})
