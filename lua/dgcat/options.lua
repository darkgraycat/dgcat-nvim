vim.g.mapleader = " "

-- setup options
local options = {
	background = "dark",
	termguicolors = true,
	swapfile = false,
	updatetime = 50,

	guicursor = "",
	signcolumn = "yes",
	scrolloff = 8,

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
local diagnostic_signs = {
	Error = "",
	Warn = "",
	Hint = "",
	Info = "",
}
for type, icon in pairs(diagnostic_signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end
