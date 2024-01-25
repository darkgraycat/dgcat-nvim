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
					wrap_results = false,
					path_display = { "smart" },
					file_ignore_patterns = { "node_modules/.*", "build/.*", "dist/.*" },
				},
				pickers = {
					diagnostics = { wrap_results = true, path_display = { "hidden" }, layout_strategy = "horizontal" },
					buffers = { sort_mru = true, ignore_current_buffer = true },
          -- LSP
					lsp_references = { path_display = { "short" }, jump_type = "never", theme = "cursor" },
					lsp_definitions = {  path_display = { "short" }, jump_type = "never", theme = "cursor" },
          lsp_document_symbols = { path_display = { "short" }, theme = "dropdown" }
				},
			})
			require("dgcat.helpers").keymap(
				{ "n", "<C-p>", builtin.find_files, "Find files" },
				{ "n", "<leader>ff", builtin.find_files, "Find files" },
				{ "n", "<leader>fg", builtin.live_grep, "File grep" },
				{ "n", "<leader>fb", builtin.buffers, "Opened buffers" },
				{ "n", "<leader>de", builtin.diagnostics, "Show diagnostics" },

				{ "n", "<leader>fGs", builtin.git_status, "Git status" },
				{ "n", "<leader>fGc", builtin.git_stash, "Git stash" },
				{ "n", "<leader>fGc", builtin.git_commits, "Git commits" },
				{ "n", "<leader>fGd", builtin.git_bcommits, "Git current diff" },
				{ "n", "<leader>fGb", builtin.git_branches, "Git branches" },

				{ "n", "<leader>fd", builtin.lsp_definitions, "LSP definitions" },
				{ "n", "<leader>fr", builtin.lsp_references, "LSP references" },
				{ "n", "<leader>fs", builtin.lsp_document_symbols, "LSP symbols" }

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
