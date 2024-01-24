return {
	"ThePrimeagen/harpoon",
	event = "VeryLazy",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local ui, mark = require("harpoon.ui"), require("harpoon.mark")
		require("dgcat.helpers").keymap(
			{ { "n", "v" }, "<leader>hh", ui.toggle_quick_menu, "Harpoon: toggle menu" },
			{ { "n", "v" }, "<leader>ha", mark.add_file, "Harpoon: add file" },
			{ { "n", "v" }, "<leader>hn", ui.nav_next, "Harpoon: navigate next" },
			{ { "n", "v" }, "<leader>hp", ui.nav_prev, "Harpoon: navigate prev" }
		)
	end,
}
