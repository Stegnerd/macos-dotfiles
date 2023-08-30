-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps --

-- use jk to exit insert mode
keymap.set("i", "<leader>jk", "<ESC>", { desc = "Exit insert mode with <leader>jk" })

-- use pv to go to project view from normal mode
keymap.set("n", "<leader>pv", vim.cmd.Ex)
