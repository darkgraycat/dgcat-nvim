return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local telescope = require("telescope")
			local builtin = require("telescope.builtin")
			local kbmap = require("dgcat.helpers").kbmap
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
			kbmap("n", "<C-p>", builtin.find_files, "Find files")
			kbmap("n", "<leader>ff", builtin.find_files, "Find files")
			kbmap("n", "<leader>fg", builtin.live_grep, "File grep")
			kbmap("n", "<leader>fb", builtin.buffers, "Opened buffers")
			kbmap("n", "<leader>de", builtin.diagnostics, "Show diagnostics")
			kbmap("n", "<leader>fG", builtin.git_status, "Git status")
			kbmap("n", "<leader>fT", builtin.treesitter, "List treesitter")
      kbmap("n", "<leader>fd", builtin.lsp_definitions, "Show definitions")
      kbmap("n", "<leader>fr", builtin.lsp_references, "Show references")
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
