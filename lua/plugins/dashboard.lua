return {
  "goolord/alpha-nvim",
  config = function()
    local dashboard = require("alpha.themes.dashboard")
    dashboard.section.header.val = {
      [[         ░░░ ░░░       ]],
      [[        ░▒█░░▒█░       ]],
      [[       ░▒▓█░░░░░░      ]],
      [[       ░▒░░▓▓██▓▓░     ]],
      [[       ░▒▒▓▓▓▓██▓▓░    ]],
      [[      ░░▒▓▓▓░▓▓▓░▓░    ]],
      [[     ░▓░▒▒▓▓░▓▓▓░▓░    ]],
      [[    ░▒░░▒▓▓▓▓██░█▓░    ]],
      [[    ░▓░░▒▒▓▓▓████▓░    ]],
      [[     ░▒░░▒▒▒▒▒▒▒▒░     ]],
      [[     ░▓░░░░░░░░░░      ]],
      [[      ░▓▓▓▓▓███░       ]],
      [[      ░▓▓▓▓▓███░       ]],
      [[      ░▒▓▓▒▒▓█▓░       ]],
      [[      ░▒▒░░▒▒░▒░       ]],
    }
    dashboard.section.buttons.val = {
      dashboard.button("f", "󰱼  Find file", ":Telescope find_files <CR>"),
      dashboard.button("e", "󰝒  New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("r", "󱋡  Recently used files", ":Telescope oldfiles <CR>"),
      dashboard.button("t", "󰷊  Find text", ":Telescope live_grep <CR>"),
      dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua<CR>"),
      dashboard.button("q", "󰗼  Quit Neovim", ":qa<CR>"),
    }
    dashboard.section.footer.val = "Don't Stop Until You are Proud..."

    dashboard.section.footer.opts.hl = "Include"
    dashboard.section.header.opts.hl = "Type"
    dashboard.section.buttons.opts.hl = "Keyword"

    dashboard.opts.opts.noautocmd = true
    require("alpha").setup(dashboard.opts)

    vim.keymap.set("n", "<leader>A", ":Alpha<CR>")
  end,
}
