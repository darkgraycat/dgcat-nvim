local dashboard_headers = {
  dgcat = {
    [[                       ░░░ ░░░                    ]],
    [[                      ░▒█░░▒█░                    ]],
    [[                     ░▒▓█░░░░░░                   ]],
    [[                     ░▒░░▓▓██▓▓░                  ]],
    [[                     ░▒▒▓▓▓▓██▓▓░                 ]],
    [[                    ░░▒▓▓▓░▓▓▓░▓░                 ]],
    [[                   ░▓░▒▒▓▓░▓▓▓░▓░                 ]],
    [[                  ░▒░░▒▓▓▓▓██░█▓░                 ]],
    [[                  ░▓░░▒▒▓▓▓████▓░                 ]],
    [[                   ░▒░░▒▒▒▒▒▒▒▒░                  ]],
    [[──╖                ░▓░░░░░░░░░░                ╓──]],
    [[□ ║──╖              ░▓▓▓▓▓███░              ╓──║ □]],
    [[◫ ║□ ║              ░▓▓▓▓▓███░              ║ □║ ◫]],
    [[□ ║◫ ║──╖           ░▒▓▓▒▒▓█▓░           ╓──║ □║ ◫]],
    [[◫ ║◫ ║□ ║           ░▒▒░░▒▒░▒░           ║ ◫║ ◫║ □]],
  },
  neovim_shaded_blocky = {
    [[░   ░░░  ░        ░░      ░░  ░░░░  ░        ░  ░░░░  ░]],
    [[▒    ▒▒  ▒  ▒▒▒▒▒▒▒  ▒▒▒▒  ▒  ▒▒▒▒  ▒▒▒▒  ▒▒▒▒   ▒▒   ▒]],
    [[▓  ▓  ▓  ▓      ▓▓▓  ▓▓▓▓  ▓▓  ▓▓  ▓▓▓▓▓  ▓▓▓▓        ▓]],
    [[█  ██    █  ███████  ████  ███    ██████  ████  █  █  █]],
    [[█  ███   █        ██      █████  ████        █  ████  █]],
  },
  neovim_bloody = {
    [[ ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓]],
    [[ ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒]],
    [[▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░]],
    [[▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ ]],
    [[▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒]],
    [[░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░]],
    [[░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░]],
    [[   ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   ]],
    [[         ░    ░  ░    ░ ░        ░   ░         ░   ]],
  },
  neovim_ansi_shadow = {
    [[███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
    [[████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
    [[██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
    [[██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
    [[██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
    [[╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
  },
  neovim_ansi_regular = {
    [[███    ██ ███████  ██████  ██    ██ ██ ███    ███]],
    [[████   ██ ██      ██    ██ ██    ██ ██ ████  ████]],
    [[██ ██  ██ █████   ██    ██ ██    ██ ██ ██ ████ ██]],
    [[██  ██ ██ ██      ██    ██  ██  ██  ██ ██  ██  ██]],
    [[██   ████ ███████  ██████    ████   ██ ██      ██]],
  },
  neovim_tmplr = {
    [[┳┓┏┓┏┓┓┏┳┳┳┓]],
    [[┃┃┣ ┃┃┃┃┃┃┃┃]],
    [[┛┗┗┛┗┛┗┛┻┛ ┗]],
  },
}

return {
  "goolord/alpha-nvim",
  config = function()
    local h = require("dgcat.helpers")
    local dashboard = require("alpha.themes.dashboard")

    -- keymap
    h.kbmap("n", "<leader>A", ":Alpha<CR>", "Open welcome menu")

    -- highlights
    dashboard.section.footer.opts.hl = "Error"
    dashboard.section.header.opts.hl = "Type"
    dashboard.section.buttons.opts.hl = "Keyword"

    -- header
    dashboard.section.header.val = dashboard_headers.dgcat

    -- buttons
    dashboard.section.buttons.val = {
      dashboard.button("n", "󰝒   New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("r", "󱋡   Recent files", ":Telescope oldfiles <CR>"),
      dashboard.button("f", "󰱼   Find file", ":Telescope find_files <CR>"),
      dashboard.button("t", "󰷊   Find text", ":Telescope live_grep <CR>"),
      dashboard.button("e", "   Explorer", ":Neotree position=float reveal<CR>"),
      dashboard.button("s", "   Settings", ":e ~/.config/nvim/init.lua<CR>"),
      dashboard.button("q", "   Quit", ":qa<CR>"),
    }

    -- footer
    vim.api.nvim_create_autocmd("User", {
      callback = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime * 100) / 100
        local time = tostring(os.date("%A 󱑁 %I:%M %p"))
        local plugins = "󰚥 " .. stats.loaded .. "/" .. stats.count .. " in " .. ms .. " ms"
        dashboard.section.footer.val = h.rpad(plugins, 28) .. h.lpad(time, 28)
        pcall(vim.cmd.AlphaRedraw)
      end,
    })

    dashboard.opts.opts.noautocmd = true
    require("alpha").setup(dashboard.opts)
  end,
}
