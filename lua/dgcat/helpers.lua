local M = {}

M.vimver = function()
	local v = vim.version()
	return ("v%d.%d.%d"):format(v.major, v.minor, v.patch)
end

M.lpad = function(str, length, char)
	return string.rep(char or " ", length - #str) .. str
end

M.rpad = function(str, length, char)
	return str .. string.rep(char or " ", length - #str)
end

return M
