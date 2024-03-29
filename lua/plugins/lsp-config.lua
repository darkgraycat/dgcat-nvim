local servers = { "lua_ls", "tsserver", "rust_analyzer" }

return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    confing = function()
      require("mason-lspconfig").setup({
        ensure_installed = servers,
      })
    end,
  },
  {
    lazy = false,
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      local lspconfig = require("lspconfig")
      for _, server in ipairs(servers) do
        lspconfig[server].setup({
          capabilities = capabilities,
        })
      end

      require("dgcat.helpers").keymap(
        { "n", "K", vim.lsp.buf.hover, "Hover doc" },
        { "n", "<leader>gd", vim.lsp.buf.definition, "Go to definition" },
        { "n", "<leader>gr", vim.lsp.buf.references, "Go to references" },
        { { "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "Code action" }
      )
    end,
  },
}
