local opt = vim.opt

opt.background = "dark"
opt.termguicolors = true
opt.updatetime = 50

opt.guicursor = ""
opt.signcolumn = "yes"
opt.scrolloff = 8

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.shiftround = true
opt.expandtab = true

opt.number = true
opt.relativenumber = true

opt.autoindent = true
opt.smartindent = true

opt.wrap = false
opt.swapfile = false
opt.hlsearch = false
opt.incsearch = true

opt.foldenable = true
opt.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]

vim.g.mapleader = " "
