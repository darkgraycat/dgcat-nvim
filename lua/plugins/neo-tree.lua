return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      enable_git_status = true,
      enable_diagnostics = true,
      sort_case_insensitive = true,
      sources = { "filesystem", "buffers", "git_status" },
      source_selector = {
        winbar = true,
        statusline = false,
        content_layout = "center",
        tabs_layout = "equal",
      },
      window = { position = "right" }
    })

    local kbmap = require("dgcat.helpers").kbmap
    kbmap("n", "<C-n>",":Neotree toggle<CR>" , "Toggle NeoTree")
  end
}
