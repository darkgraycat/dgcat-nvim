local opts = {
	termguicolors = true,
	tabstop = 2,
	shiftwidth = 2
}

for k, v in pairs(opts) do 
	vim.opt[k] = v
end
