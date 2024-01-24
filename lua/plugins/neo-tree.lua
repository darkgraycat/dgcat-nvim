return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    local default_component_configs = {
    }
    require("neo-tree").setup({
      close_if_last_window = true,
      enable_git_status = true,
      enable_diagnostics = true,
      sort_case_insensitive = true,
      sources = { "filesystem", "buffers", "git_status", "document_symbols" },
      source_selector = {
        winbar = true,
        statusline = true,
        content_layout = "center",
        tabs_layout = "equal",
      },
      popup_border_style = "single",
      default_component_configs,
    })

    local kbmap = require("dgcat.helpers").kbmap
    kbmap("n", "<C-n>",":Neotree position=left action=focus toggle reveal_force_cwd filesystem<CR>" , "Toggle NeoTree")
    kbmap("n", "<C-m>",":Neotree position=right action=show toggle reveal_force_cwd selector=false document_symbols<CR>" , "Toggle NeoTree")
  end
}
