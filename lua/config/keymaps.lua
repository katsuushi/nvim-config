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

-- Normal mode: deletes/changes don't overwrite the yank register
map("n", "d", '"_d', { desc = "Delete (no yank)" })
map("n", "D", '"_D', { desc = "Delete to EOL (no yank)" })
map("n", "x", '"_x', { desc = "Delete char (no yank)" })
map("n", "X", '"_X', { desc = "Delete char back (no yank)" })
map("n", "c", '"_c', { desc = "Change (no yank)" })
map("n", "C", '"_C', { desc = "Change to EOL (no yank)" })

-- Visual mode: d and c discard, but x is left alone, so it still cuts
map("x", "d", '"_d', { desc = "Delete selection (no yank)" })
map("x", "c", '"_c', { desc = "Change selection (no yank)" })

-- Visual paste doesn't replace your register with the overwritten text
map("x", "p", "P", { desc = "Paste without overwriting register" })

-- Normal-mode cut when you want it, used like an operator: <leader>m + motion
map("n", "<leader>m", "d", { desc = "Cut (delete + yank)" })
map("n", "<leader>M", "dd", { desc = "Cut line" })

vim.keymap.set("n", "<leader>ct", function()
  vim.cmd("0r " .. vim.fn.expand("~/.config/nvim/templates/cpp.cpp"))
end, { desc = "Insert C++ template" })
