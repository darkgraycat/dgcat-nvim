return {
  "romgrk/barbar.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  init = function()
    vim.g.barbar_auto_setup = false
    require("barbar").setup({
      clickable = true,
      no_name_title = "new",
      icons = {
        separator = { left = "", right = "" },
        separator_at_end = false,
        preset = "default",
      },
    })
    require("dgcat.helpers").keymap(
      { "n", "<A-[>", "<Cmd>BufferPrevious<CR>", "Buffer previos" },
      { "n", "<A-]>", "<Cmd>BufferNext<CR>", "Buffer next" },
      { "n", "<A-=>", "<Cmd>BufferPin<CR>", "Buffer pin" },
      { "n", "<A-->", "<Cmd>BufferClose<CR>", "Buffer close" },
      { "n", "<A-p>", "<Cmd>BufferPick<CR>", "Buffer pick" }
    )
  end,
  opts = {},
}
