return {
  "robitx/gp.nvim",
  event = "VeryLazy",
	config = function()
		require("gp").setup({
      openai_api_key = os.getenv("NVIM_GPT_API_KEY")
    })
	end,
}