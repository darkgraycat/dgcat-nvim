local kbmap = require("dgcat.helpers").kbmap

-- yank to global
kbmap("v", "<leader>y", [["+y]])
-- return to normal mode
kbmap({ "i", "c" }, "jk", "<ESC>")
-- buffer navigation
kbmap({ "n", "v" }, "<C-j>", "10j")
kbmap({ "n", "v" }, "<C-k>", "10k")
-- list navigation
-- kbmap("n", "<C-j>", "<cmd>cnext<CR>zz")
-- kbmap("n", "<C-k>", "<cmd>cnext<CR>zz")
-- move and reindent the line
kbmap("v", "J", ":m '>+1<CR>gv=gv")
kbmap("v", "K", ":m '<-2<CR>gv=gv")
-- kbmap some common stuff
kbmap("i", "<C-c>", "<Esc>")
kbmap("n", "Q", "<nop>")
kbmap("n", "<C-S-Z>", "<nop>")
