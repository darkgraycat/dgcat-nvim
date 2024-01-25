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
      popup_border_style = "rounded",
      enable_git_status = true,
      enable_diagnostics = true,
      sort_case_insensitive = true,
      open_files_do_not_replace_types = { "terminal", "telescope", "trouble", "qf" },
      sources = { "filesystem", "buffers", "git_status", "document_symbols" },
      source_selector = {
        winbar = true,
        statusline = true,
        content_layout = "center",
        tabs_layout = "equal",
      },
      window = {
        mappings = {
          ["<space>"] = { "toggle_node", nowait = true }
        }
      }
    })

    require("dgcat.helpers").keymap(
      { "n", "<C-n>",":Neotree position=left action=focus toggle reveal_force_cwd filesystem<CR>" , "Toggle NeoTree" },
      { "n", "<C-m>",":Neotree position=right action=show toggle reveal_force_cwd selector=false document_symbols<CR>" , "Toggle NeoTree" }
    )
  end
}
