-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Prevent the 'd' key from cutting to clipboard
vim.keymap.set({ "n", "x" }, "d", '"_d', { desc = "Delete", remap = false })
