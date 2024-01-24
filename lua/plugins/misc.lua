return {
	{ "folke/which-key.nvim" },
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup()
		end,
	},
	{
		"kevinhwang91/nvim-ufo",
		dependencies = { "kevinhwang91/promise-async" },
		config = function()
			require("ufo").setup({
				provider_selector = function(bufnr, filetype, buftype)
					return { "treesitter", "indent" }
				end,
			})
			require("dgcat.helpers").keymap(
				{ "n", "zR", require("ufo").openAllFolds },
				{ "n", "zM", require("ufo").closeAllFolds }
			)
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		config = function()
			require("ibl").setup({
				debounce = 100,
				indent = {
          char = "."
        },
				scope = {
					enabled = true,
					highlight = { "Function", "Label" },
					show_start = true,
					show_exact_scope = true,
					char = "▏",
				},
			})
		end,
	},
}
