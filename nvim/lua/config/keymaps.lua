-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

map("n", "<leader>r", vim.lsp.buf.rename)
-- not using map to overwrite existing mapping
vim.keymap.set("", "<leader><space>", "gc", { remap = true })
vim.keymap.set("n", "<leader>g=", "<leader>ca", { remap = true })
vim.keymap.del("n", "<leader>qq") -- I don't know where this comes from and I don't want it
