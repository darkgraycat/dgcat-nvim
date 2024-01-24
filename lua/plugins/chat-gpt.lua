return {
	"jackMort/ChatGPT.nvim",
	lazy = true,
	event = "VeryLazy",
	config = function()
		require("chatgpt").setup({
			-- openai_api_key = os.getenv("NVIM_GPT_API_KEY"),
      api_key_cmd = "echo $NVIM_GPT_API_KEY --no-newline"
		})
	end,
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
}
