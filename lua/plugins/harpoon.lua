return {
  "ThePrimeagen/harpoon",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local ui, mark = require("harpoon.ui"), require("harpoon.mark")
    local kbmap = require("dgcat.helpers").kbmap

    kbmap({ "n", "v" }, "<leader>hh", ui.toggle_quick_menu, "Harpoon: toggle menu")
    kbmap({ "n", "v" }, "<leader>ha", mark.add_file, "Harpoon: add file")
    kbmap({ "n", "v" }, "<leader>hn", ui.nav_next, "Harpoon: navigate next")
    kbmap({ "n", "v" }, "<leader>hp", ui.nav_prev, "Harpoon: navigate prev")
  end,
}
