return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local telescope = require("telescope")
			local builtin = require("telescope.builtin")
			local picker_setup_cursor = { path_display = { "short" }, theme = "cursor", jump_type = "never" }
      local picker_setup_dropdown = { path_display = { "short"}, theme = "dropdown" }
      local picker_setup_wrap_hor = { wrap_results = true, path_display = { "hidden" }, layout_strategy = "horizontal" }
      local picker_setup_vert = { layout_strategy = "vertical" }
      -- TODO: use vertical layout for diagnostics
      -- TODO: try different ways
      -- TODO: try to use ivy to make a sidebar
      --local picker_setup_ivy = { layout_strategy = "vertical", theme = "ivy" }
			telescope.setup({
				defaults = {
					wrap_results = false,
					path_display = { "smart" },
					file_ignore_patterns = { "node_modules/.*", "build/.*", "dist/.*" },
				},
				pickers = {
          -- files
          --live_grep = ,
					-- lsp
					lsp_references = picker_setup_cursor,
					lsp_definitions = picker_setup_cursor,
					lsp_document_symbols = picker_setup_dropdown,
          -- git
				  git_status = picker_setup_vert,
				  git_stash = picker_setup_vert,
				  git_commits = picker_setup_vert,
				  git_bcommits = picker_setup_vert,
				  git_branches = picker_setup_vert,
          -- other
					diagnostics = picker_setup_wrap_hor,
          buffers = { sort_mru = true, ignore_current_buffer = true },
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
