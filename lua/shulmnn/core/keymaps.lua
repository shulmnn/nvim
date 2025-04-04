vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split"})

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go the previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- Disable arrow keys in normal mode
vim.keymap.set("n", "<Up>", "<Nop>", { desc = "Disable Up arrow in normal mode" })
vim.keymap.set("n", "<Down>", "<Nop>", { desc = "Disable Down arrow in normal mode" })
vim.keymap.set("n", "<Left>", "<Nop>", { desc = "Disable Left arrow in normal mode" })
vim.keymap.set("n", "<Right>", "<Nop>", { desc = "Disable Right arrow in normal mode" })

-- Disable arrow keys in insert mode
vim.keymap.set("i", "<Up>", "<Nop>", { desc = "Disable Up arrow in insert mode" })
vim.keymap.set("i", "<Down>", "<Nop>", { desc = "Disable Down arrow in insert mode" })
vim.keymap.set("i", "<Left>", "<Nop>", { desc = "Disable Left arrow in insert mode" })
vim.keymap.set("i", "<Right>", "<Nop>", { desc = "Disable Right arrow in insert mode" })

-- Disable arrow keys in visual mode
vim.keymap.set("v", "<Up>", "<Nop>", { desc = "Disable Up arrow in visual mode" })
vim.keymap.set("v", "<Down>", "<Nop>", { desc = "Disable Down arrow in visual mode" })
vim.keymap.set("v", "<Left>", "<Nop>", { desc = "Disable Left arrow in visual mode" })
vim.keymap.set("v", "<Right>", "<Nop>", { desc = "Disable Right arrow in visual mode" })

