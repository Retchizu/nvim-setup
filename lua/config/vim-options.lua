vim.g.mapleader = " "
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.keymap.set("n", "<C-Up>",    ":resize +2<CR>", { noremap = true, silent = true, desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>",  ":resize -2<CR>", { noremap = true, silent = true, desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>",  ":vertical resize -2<CR>", { noremap = true, silent = true, desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true, silent = true, desc = "Increase window width" })
vim.keymap.set("t", "<C-q>", "<C-\\><C-N>:q!<CR>", { noremap = true, silent = true, desc = "Close terminal" })
vim.keymap.set("n", "<C-q>", ":bd!<CR>", { noremap = true, silent = true, desc = "Close terminal in normal mode" })
vim.keymap.set("n", "<Tab>", ":bnext<CR>")
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>")
vim.keymap.set("n", "<leader>`", ":bd!<cr>", { desc = "Close current buffer (tab)" })
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = 'LSP: Hover Documentation' })
