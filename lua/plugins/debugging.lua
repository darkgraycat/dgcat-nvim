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
		dap.adapters["pwa-node"] = {
			type = "server",
			host = "localhost",
			port = "${port}",
			executable = {
				command = "node",
				--args = { "/path/to/js-debug/src/dapDebugServer.js", "${port}" },
			},
		}
		for _, lang in pairs({ "typescript", "javascript" }) do
			dap.configurations[lang] = {
				{
					type = "pwa-node",
					request = "launch",
					name = "Launch file",
					program = "${file}",
					cwd = "${workspaceFolder}",
				},
			}
		end

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

		require("dgcat.helpers").keymap(
			{ "n", "<Leader>dt", dap.toggle_breakpoint, "Debug: toggle breakpoint" },
			{ "n", "<Leader>dc", dap.continue, "Debug: continue" }
		)
	end,
}
