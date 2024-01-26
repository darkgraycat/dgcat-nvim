return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "auto",
        icons_enabled = true,
        component_separators = { left = "󰇝", right = "󰇝" },
        section_separators = { left = "", right = "" },
        padding = 2,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { { "filename", path = 1 } },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      tabline = {
        --lualine_a = { "buffers" },
        --lualine_b = { "selectioncount" },
        --lualine_z = { "tabs" },
        --lualine_y = { "datetime" },
      },
    })
  end,
}
