return {
  {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      local treesitter = require('nvim-treesitter.configs')
      treesitter.setup({
        sync_install = false,
        ensure_installed = { 'lua', 'javascript', 'typescript', 'rust' },
        highlight = { enable = true },
        autopairs = { enable = true },
        autotag = { enable = true },
        indent = { enable = true }
      })
    end
  }
}
