return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "mxsdev/nvim-dap-vscode-js",
  },
  config = function()
    local dap, dapui = require("dap"), require("dapui")

    dapui.setup()

    -- javascript
    require("dap-vscode-js").setup({
      debugger_path = vim.fn.stdpath("data") .. "/vscode-js-debug",
      adapters = {
        "pwa-node",
        "pwa-chrome",
        "pwa-msedge",
        "node-terminal",
        "pwa-extensionHost",
      },
    })

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    local kbmap = require("dgcat.helpers").kbmap
    kbmap("n", "<Leader>dt", dap.toggle_breakpoint, "Debug: toggle breakpoint")
    kbmap("n", "<Leader>dc", dap.continue, "Debug: continue")
  end,
}
