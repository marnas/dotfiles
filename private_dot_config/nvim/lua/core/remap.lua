local opts = { noremap = true, silent = true }

-- Shorten function name
local remap = vim.api.nvim_set_keymap

--Remap space as leader key
remap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Better window navigation
remap("n", "<C-h>", "<C-w>h", opts)
remap("n", "<C-j>", "<C-w>j", opts)
remap("n", "<C-k>", "<C-w>k", opts)
remap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
remap("n", "<C-Up>", ":resize +2<CR>", opts)
remap("n", "<C-Down>", ":resize -2<CR>", opts)
remap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
remap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
remap("n", "<S-l>", ":bnext<CR>", opts)
remap("n", "<S-h>", ":bprevious<CR>", opts)

-- Go to first character
remap("n", "0", "^", opts)

-- Clear search highlights
remap("n", "\\\\", ":nohlsearch<CR>", opts)

-- Visual --
-- Stay in indent mode
remap("v", "<S-h>", "<gv", opts)
remap("v", "<S-l>", ">gv", opts)

-- Don't yank after pasting
remap("v", "p", '"_dP', opts)

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set('n', '<leader>f', vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = "Open diagnostics list" })
