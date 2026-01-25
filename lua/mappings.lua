require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Undo tree 
map("n", "<leader>u", "<cmd>UndotreeToggle<CR>", { desc = "Undo Tree" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
