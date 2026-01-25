require "nvchad.options"

-- add yours here!
vim.opt.shell = "fish"
local o = vim.o

-- Scroll offset - always keep lines visible above/below cursor
o.scrolloff = 999
o.sidescrolloff = 8

--Relative line numbers
o.relativenumber = true
o.number = true
-- o.cursorlineopt ='both' -- to enable cursorline!
