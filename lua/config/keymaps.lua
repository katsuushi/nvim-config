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

local map = vim.keymap.set

-- Deletes/changes no longer touch the yank register
map({ "n", "x" }, "d", '"_d', { desc = "Delete (no yank)" })
map({ "n", "x" }, "D", '"_D', { desc = "Delete to EOL (no yank)" })
map({ "n", "x" }, "x", '"_x', { desc = "Delete char (no yank)" })
map({ "n", "x" }, "X", '"_X', { desc = "Delete char back (no yank)" })
map({ "n", "x" }, "c", '"_c', { desc = "Change (no yank)" })
map({ "n", "x" }, "C", '"_C', { desc = "Change to EOL (no yank)" })

-- Visual paste keeps your register instead of replacing it with the overwritten text
map("x", "p", "P", { desc = "Paste without overwriting register" })

-- Real "cut" when you actually want it (uses the original d, since keymap is non-recursive)
map({ "n", "x" }, "<leader>m", "d", { desc = "Cut (delete + yank)" })
map("n", "<leader>mm", "dd", { desc = "Cut line" })

vim.keymap.set("n", "<leader>ct", function()
  vim.cmd("0r " .. vim.fn.expand("~/.config/nvim/templates/cpp.cpp"))
end, { desc = "Insert C++ template" })
