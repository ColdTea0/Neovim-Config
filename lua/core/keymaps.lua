-- Set keymap options
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader key configuration
vim.g.mapleader = " "        -- Space as the leader key
vim.g.maplocalleader = " "   -- Local leader key (optional)

-- Clear the default Space key mapping (commonly used for leader)
keymap("n", "<Space>", "", opts)

-- Common Keymaps
keymap("n", "<C-i>", "<C-i>", opts)  -- Map <C-i> to itself (if needed)

-- Insert Mode: "jk" to exit insert mode
keymap("i", "jk", "<Esc>", opts)

-- Window navigation with Alt + h/j/k/l
keymap("n", "<m-h>", "<C-w>h", opts)  -- Move to the left window
keymap("n", "<m-j>", "<C-w>j", opts)  -- Move to the bottom window
keymap("n", "<m-k>", "<C-w>k", opts)  -- Move to the top window
keymap("n", "<m-l>", "<C-w>l", opts)  -- Move to the right window
keymap("n", "<m-tab>", "<C-6>", opts) -- Switch between last two windows

-- Center search results with 'n', 'N', '*', '#', 'g*', 'g#'
keymap("n", "n", "nzz", opts)
keymap("n", "N", "Nzz", opts)
keymap("n", "*", "*zz", opts)
keymap("n", "#", "#zz", opts)
keymap("n", "g*", "g*zz", opts)
keymap("n", "g#", "g#zz", opts)

-- Stay in visual mode after indenting
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Don't overwrite the clipboard when pasting in visual mode
keymap("x", "p", [["_dP]], opts)

-- Hop keymaps
keymap("n", "<leader>hw", "<cmd>:HopWord<cr>", opts)
keymap("n", "<leader>hc", "<cmd>HopChar1<cr>", opts)
keymap("n", "<leader>hh", "<cmd>HopChar2<cr>", opts)
keymap("n", "<leader>hl","<cmd>HopLine<cr>", opts)
keymap("n", "<leader>h/","<cmd>HopPattern<cr>", opts)
