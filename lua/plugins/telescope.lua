return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local builtin = require("telescope.builtin")
      local kbmap = require("dgcat.helpers").kbmap
      kbmap("n", "<C-p>", builtin.find_files, "Find files")
      kbmap("n", "<leader>ff", builtin.find_files, "Find files")
      kbmap("n", "<leader>fg", builtin.live_grep, "File grep")
      kbmap("n", "<leader>fb", builtin.buffers, "Opened buffers")
      kbmap("n", "<leader>de", builtin.diagnostics, "Diagnostics errors")
    end
  },
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}
