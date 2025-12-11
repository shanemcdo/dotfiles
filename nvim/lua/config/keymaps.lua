-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

map("n", "<leader>r", vim.lsp.buf.rename)
-- not using map to overwrite existing mapping of <leader>space>
vim.keymap.set("", "<leader><space>", "gc", { remap = true })
