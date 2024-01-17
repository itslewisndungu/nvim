vim.g.mapleader = " "

-- Toggle netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move line up or down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Buffer commands
-- Go to next buffer
vim.keymap.set("n", "<leader>bn", vim.cmd.bn)
-- go to previous buffer
vim.keymap.set("n", "<leader>bp", vim.cmd.bp)
-- close buffer
vim.keymap.set("n", "<leader>bd", vim.cmd.bd)
-- kill buffer
vim.keymap.set("n", "<leader>bk", function() vim.cmd("bd!") end)
-- kill all buffer
vim.keymap.set("n", "<leader>bka", function() vim.cmd("%bd|e#<cr>") end)
-- horizontal split with new buffer
vim.keymap.set("n", "<leader>bh", vim.cmd.new)
-- vertical split with new buffer
vim.keymap.set("n", "<leader>bv", vim.cmd.vnew)
-- Switch between two buffers
vim.keymap.set("n", "<leader>bb", "<C-^>")
-- list 
vim.keymap.set("n", "<leader>bl", vim.cmd.ls)

-- Scroll to top or bottom
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Repeat last visual mode command in visual and normal modes
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste without renaming the buffer
vim.keymap.set("x", "p", [["_dP]])

-- Yank into clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Delete without yanking
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Word substitution
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>ae', vim.diagnostic.setloclist)

-- Code actions
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc="[C]ode [A]ctions" })
