vim.g.mapleader = " "

-- setup options
local options = {
	background = "dark",
	termguicolors = true,
	swapfile = false,
	updatetime = 50,
	showmode = false,
	showcmd = false,

	guicursor = "",
	signcolumn = "yes",
	scrolloff = 12,
	sidescrolloff = 8,

	tabstop = 2,
	softtabstop = 2,
	shiftwidth = 2,
	shiftround = true,
	expandtab = true,

	number = true,
	relativenumber = true,

	wrap = false,
	autoindent = true,
	smartindent = true,

	hlsearch = false,
	incsearch = true,

	foldenable = true,
	foldcolumn = "1",
	foldlevel = 99,
	foldlevelstart = 99,
	foldmethod = "expr",
	fillchars = { eob = " ", fold = " ", foldopen = "", foldclose = "", foldsep = "│" },
}
for option, value in pairs(options) do
	local exists = vim.fn.exists("+" .. option) == 1
	if exists then
		vim.opt[option] = value
	else
		vim.notify("Option " .. option .. " is not exist", vim.log.levels.WARN)
	end
end

-- setup diagnostic signs
vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })
