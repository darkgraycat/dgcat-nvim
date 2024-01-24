return {
  "romgrk/barbar.nvim",
  dependencies = {
    "lewis6991/gitsigns.nvim",   -- OPTIONAL: for git status
    "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false
    require("dgcat.helpers").keymap(
      { 'n', '<A-[>', '<Cmd>BufferPrevious<CR>', "Buffer previos" },
      { 'n', '<A-]>', '<Cmd>BufferNext<CR>', "Buffer next" },
      { 'n', '<A-=>', '<Cmd>BufferPin<CR>', "Buffer pin" },
      { 'n', '<A-->', '<Cmd>BufferClose<CR>', "Buffer close" },
      { 'n', '<A-p>', '<Cmd>BufferPick<CR>', "Buffer pick" }
    )
  end,
  opts = {},
}
