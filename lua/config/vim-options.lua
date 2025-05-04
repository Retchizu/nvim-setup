vim.g.mapleader = " "
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.keymap.set("v", "<Tab>", ">gv", { desc = "Indent selection" })
vim.keymap.set("v", "<S-Tab>", "<gv", { desc = "Dedent selection" })
vim.keymap.set("n", "<leader>t", ":belowright sp | terminal<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Up>",    ":resize +2<CR>", { noremap = true, silent = true, desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>",  ":resize -2<CR>", { noremap = true, silent = true, desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>",  ":vertical resize -2<CR>", { noremap = true, silent = true, desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true, silent = true, desc = "Increase window width" })
vim.keymap.set("t", "<C-q>", "<C-\\><C-N>:q!<CR>", { noremap = true, silent = true, desc = "Close terminal" })
vim.keymap.set("n", "<C-q>", ":bd!<CR>", { noremap = true, silent = true, desc = "Close terminal in normal mode" })
