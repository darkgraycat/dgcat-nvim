return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      size = 20,
      direction = "float",
      open_mapping = [[<c-\>]],
      winblend = 3,
    })
  end
}
