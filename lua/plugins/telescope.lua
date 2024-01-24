return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local telescope = require("telescope")
			local builtin = require("telescope.builtin")
			telescope.setup({
				defaults = {
					wrap_results = true,
					path_display = { "smart" },
					file_ignore_patterns = { "node_modules/.*", "build/.*", "dist/.*" },
				},
				pickers = {
					["lsp_references"] = { wrap_results = false, path_display = { "short" }, jump_type = "never" },
					["lsp_definitions"] = { wrap_results = false, path_display = { "short" }, jump_type = "never" },
					["diagnostics"] = {
						wrap_results = true,
						path_display = { "hidden" },
						layout_strategy = "horizontal",
					},
					["find_files"] = { wrap_results = true },
					["buffers"] = { sort_mru = true, ignore_current_buffer = true },
				},
			})
			require("dgcat.helpers").keymap(
				{ "n", "<C-p>", builtin.find_files, "Find files" },
				{ "n", "<leader>ff", builtin.find_files, "Find files" },
				{ "n", "<leader>fg", builtin.live_grep, "File grep" },
				{ "n", "<leader>fb", builtin.buffers, "Opened buffers" },
				{ "n", "<leader>de", builtin.diagnostics, "Show diagnostics" },
				{ "n", "<leader>fG", builtin.git_status, "Git status" },
				{ "n", "<leader>fT", builtin.treesitter, "List treesitter" },
				{ "n", "<leader>gd", builtin.lsp_definitions, "Show definitions" },
				{ "n", "<leader>gr", builtin.lsp_references, "Show references" }
			)
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
