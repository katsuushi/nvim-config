-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("t", "<C-Up>", "<C-\\><C-n><cmd>resize +2<cr>i", { desc = "Increase window height" })
vim.keymap.set("t", "<C-Down>", "<C-\\><C-n><cmd>resize -2<cr>i", { desc = "Decrease window height" })
vim.keymap.set("t", "<C-Left>", "<C-\\><C-n><cmd>vertical resize -2<cr>i", { desc = "Decrease window width" })
vim.keymap.set("t", "<C-Right>", "<C-\\><C-n><cmd>vertical resize +2<cr>i", { desc = "Increase window width" })
vim.keymap.set("n", "<leader>cc", "<cmd>CodeCompanionChat Toggle<cr>")
vim.keymap.set("v", "<leader>cc", "<cmd>CodeCompanion<cr>")
vim.keymap.set("x", "<leader>cc", "<cmd>CodeCompanionActions<cr>")

vim.keymap.set("n", "<leader>ct", function()
  vim.cmd("0r " .. vim.fn.expand("~/.config/nvim/templates/cpp.cpp"))
end, { desc = "Insert C++ template" })
