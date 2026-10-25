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


-- register stuff
local map = vim.keymap.set

-- Normal mode: deleting/changing never touches the register
for _, key in ipairs({ "d", "D", "x", "X", "c", "C" }) do
  map("n", key, '"_' .. key, { desc = "No-yank " .. key })
end

-- Visual mode: d/D/c/C discard, x still cuts
for _, key in ipairs({ "d", "D", "c", "C" }) do
  map("x", key, '"_' .. key, { desc = "No-yank " .. key })
end

-- Pasting over a selection keeps your yank
map("x", "p", "P", { desc = "Paste without overwriting register" })

-- Real cut in normal mode: <leader>m{motion}, <leader>M for the line
map("n", "<leader>m", "d", { desc = "Cut" })
map("n", "<leader>M", "dd", { desc = "Cut line" })
