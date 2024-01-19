return {
	"goolord/alpha-nvim",
	config = function()
		-- local dashboard = require("alpha.themes.dashboard")
		local dashboard = require("alpha.themes.startify")
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
		require("alpha").setup(dashboard.opts)
	end,
}
