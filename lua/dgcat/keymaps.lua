require("dgcat.helpers").keymap(
	-- yank to global
	{ "v", "<leader>y", [["+y]] },
	-- return to normal mode
	{ { "i", "c" }, "jk", "<Esc>" },
	-- insert mode navigation
	{ "i", "<M-j>", "<Left>" },
	{ "i", "<M-k>", "<Right>" },
	-- buffer navigation
	{ { "n", "v" }, "<C-j>", "10jzz" },
	{ { "n", "v" }, "<C-k>", "10kzz" },
	-- move and reindent the line
	{ "v", "J", ":m '>+1<CR>gv=gv" },
	{ "v", "K", ":m '<-2<CR>gv=gv" },
	-- remap some common stuff
	{ "i", "<C-c>", "<Esc>" },
	{ "n", "Q", "<nop>" },
	{ { "n", "v", "i" }, "<C-S-Z>", "<Esc>" },
	{ { "n", "v", "i" }, "<C-Z>", "<Esc>" },
	{ { "n", "v", "i" }, "<C-z>", "<Esc>" }
)

local prt = function()
  local mode = vim.api.nvim_get_mode()
  for _, m in ipairs(mode) do
    print("mode" .. m)
  end
end

require("dgcat.helpers").keymap({
  {"n", "v", "x", "c" }, "<A-a>", prt
})
