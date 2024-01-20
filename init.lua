require("dgcat.options")
require("dgcat.keymaps")
require("dgcat.lazy")

-- setup colors
local colors = {
  "horizon",
  "kanagawa-wave",
  "kanagawa-dragon",
  "kanagawa-lotus",
  "rose-pine-main",
  "rose-pine-moon",
  "rose-pine-dawn",
  "catppuccin-mocha",
  "catppuccin-macchiato",
  "catppuccin-frappe",
  "catppuccin-latte",
}
vim.cmd.colorscheme(colors[1])
