local options = { noremap = true, silent = true }
local term_options = { silent = true }

-- shorten keymap function name
local keymap = vim.api.nvim_set_keymap

-- remap space as leader key
keymap("", "<Space>", "<Nop>", options)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- normal mode mappings --

-- buffer navigation
keymap("n", "<S-l>", ":bnext<CR>", options)
keymap("n", "<S-h>", ":bprevious<CR>", options)

-- resize with arrows
keymap("n", "<C-Up>", ":resize +1<CR>", options)
keymap("n", "<C-Down>", ":resize -1<CR>", options)
keymap("n", "<C-Left>", ":vertical resize -1<CR>", options)
keymap("n", "<C-Right>", ":vertical resize +1<CR>", options)

-- window navigation
keymap("n", "<C-h>", "<C-w>h", options)
keymap("n", "<C-j>", "<C-w>j", options)
keymap("n", "<C-k>", "<C-w>k", options)
keymap("n", "<C-l>", "<C-w>l", options)

-- visual mode mappings --
keymap("v", "p", '"_dP', options) -- pasting over selection does not yank

-- terminal mappings--
-- better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_options)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_options)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_options)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_options)

-- telescope mappings
keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", options)
keymap("n", "<leader>g", "<cmd>Telescope live_grep<cr>", options)

-- nvim tree mappings
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", options)

--fluttertools mappings
keymap("n", "<leader>Fr", ":FlutterRun<cr>", options)
keymap("n", "<leader>FR", ":FlutterRestart<cr>", options)
keymap("n", "<leader>Fq", ":FlutterQuit<cr>", options)
keymap("n", "<leader>Fc", ":FlutterLogClear<cr>", options)

-- neotest mappings
keymap("n", "<leader>tn", ":lua require('neotest').run.run()<cr>", options)
