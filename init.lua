-- vim config
vim.g.mapleader = " "

local vim_opts = {
	termguicolors = true,
	expandtab = true,
	tabstop = 2,
	softtabstop = 2,
	shiftwidth = 2,
  number = true
}

for k, v in pairs(vim_opts) do 
	vim.opt[k] = v
end

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  --core
  { 'nvim-telescope/telescope.nvim', tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim' } },
  -- themes
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "akinsho/horizon.nvim", name = "horizon", version = "*" },
  { "rebelot/kanagawa.nvim", name = "kanagawa" }
}
local opts = {}

require("lazy").setup(plugins, opts)

require("catppuccin").setup()
require("horizon").setup()
require("kanagawa").setup()

vim.cmd.colorscheme "horizon"
