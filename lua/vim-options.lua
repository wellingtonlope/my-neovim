vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"

-- Windows WSL
-- vim.g.clipboard = {
--   name = "win32yank-wsl",
--   copy = {
--     ["+"] = "win32yank.exe -i --crlf",
--     ["*"] = "win32yank.exe -i --crlf",
--   },
--   paste = {
--     ["+"] = "win32yank.exe -o --crlf",
--     ["*"] = "win32yank.exe -o --crlf",
--   },
--   cache_enable = 0,
-- }

vim.keymap.set("n", "<leader>\\", ":nohlsearch<CR>", {})
vim.keymap.set("n", "<leader>s", ":w<CR>", {})
vim.keymap.set("n", "<leader>qq", ":bd<CR>", {})
vim.keymap.set("n", "<C-h>", "<C-w>h", {})
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
vim.keymap.set("n", "<C-k>", "<C-w>k", {})
vim.keymap.set("n", "<C-l>", "<C-w>l", {})
vim.keymap.set("n", "<C-n>", ":bnext<CR>", {})
vim.keymap.set("n", "<C-p>", ":bprevious<CR>", {})
vim.keymap.set("n", "<leader>wl", ":vsplit<CR>", {})
vim.keymap.set("n", "<leader>wj", ":split<CR>", {})
vim.keymap.set("n", "<leader>wc", ":close<CR>", {})
vim.keymap.set({ "n" }, "[c", vim.diagnostic.goto_prev, {})
vim.keymap.set({ "n" }, "]c", vim.diagnostic.goto_next, {})
