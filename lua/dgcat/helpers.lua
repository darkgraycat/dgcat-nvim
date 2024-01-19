local M = {}

-- Retrieve the Vim version as a formatted string.
---@return string The Vim version string in the format "vX.Y.Z".
M.vimver = function()
	local v = vim.version()
	return ("v%d.%d.%d"):format(v.major, v.minor, v.patch)
end

-- Left-pad a string with a specified character to achieve a desired length.
---@param str string The original string.
---@param length number The desired length of the padded string.
---@param char string (Optional) The character used for padding. Defaults to a space.
---@return string The left-padded string.
M.lpad = function(str, length, char)
	return string.rep(char or " ", length - #str) .. str
end

-- Right-pad a string with a specified character to achieve a desired length.
---@param str string The original string.
---@param length number The desired length of the padded string.
---@param char string (Optional) The character used for padding. Defaults to a space.
---@return string The right-padded string.
M.rpad = function(str, length, char)
	return str .. string.rep(char or " ", length - #str)
end

local cache = {}
-- Read JSON data from a file and decode it into a Lua table.
---@param file string The name of the JSON file (excluding the ".json" extension).
---@return table The Lua table representing the decoded JSON data.
M.read_json = function (file)
  local path = vim.fn.stdpath('config') .. '/' .. file .. '.json'
  if not cache[path] then
    cache[path] = vim.json.decode(table.concat(vim.fn.readfile(path), '\n'))
  end
  return cache[path]
end

-- Write Lua table data to a JSON file.
---@param file string The name of the JSON file (excluding the ".json" extension).
---@param data table The Lua table containing data to be written to the JSON file.
M.write_json = function (file, data)
  local path = vim.fn.stdpath('config') .. '/' .. file .. '.json'
  vim.fn.writefile({ vim.json.encode(data) }, path)
  cache[path] = nil
end

return M
