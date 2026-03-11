-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

map("n", "<leader>r", vim.lsp.buf.rename, { desc = "Rename Symbol" })
-- not using map to overwrite existing mapping
vim.keymap.set("", "<leader><space>", "gc", { remap = true })
vim.keymap.set("n", "<leader>g=", "<leader>ca", { remap = true })
vim.keymap.set("n", "<leader>e", ":terminal '%:p'<CR>", { remap = true })

-- delete keymaps included in lazyvim I don't like
vim.keymap.del("n", "<leader>qq") -- I don't know where this comes from and I don't want it
vim.keymap.del("n", "<leader>wm") -- "Something with snacks" Whatever, I don't want it
vim.keymap.del("n", "<leader>wd") -- "Delete window" I don't want it
