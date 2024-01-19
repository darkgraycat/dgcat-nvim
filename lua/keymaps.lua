local remap = function(mode, key, func, desc)
  vim.keymap.set(mode, key, func, { noremap = true, silent = true, desc = desc })
end

-- yank to global
remap("v", "<leader>y", [["+y]])
-- return to normal mode
remap("i", "jk", "<ESC>")
remap("c", "jk", "<CR>:nohl<CR>")
-- buffer navigation
remap({"n", "v"}, "<C-j>", "10j")
remap({"n", "v"}, "<C-k>", "10k")
-- list navigation
-- remap("n", "<C-j>", "<cmd>cnext<CR>zz")
-- remap("n", "<C-k>", "<cmd>cnext<CR>zz")
-- move and reindent the line
remap("v", "J", ":m '>+1<CR>gv=gv")
remap("v", "K", ":m '<-2<CR>gv=gv")
-- remap some common stuff
remap("i", "<C-c>", "<Esc>")
remap("n", "Q", "<nop>")
remap("n", "<C-S-Z>", "<nop>")

