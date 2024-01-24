return {
	"ray-x/go.nvim",
	dependencies = {
		"ray-x/guihua.lua",
		"neovim/nvim-lspconfig",
		"nvim-treesitter/nvim-treesitter",
		"mfussenegger/nvim-dap",
		"rcarriga/nvim-dap-ui",
		"theHamsta/nvim-dap-virtual-text",
	},
	config = function()
		require("go").setup()
    require("dapui").setup()

		local dap, dapui = require("dap"), require("dapui")

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


		vim.keymap.set("n", "<leader>dt", ":GoBreakToggle<CR>", {})
		vim.keymap.set("n", "<leader>rd", ":GoDebug<CR>", {})
		vim.keymap.set("n", "<leader>rr", ":GoRun<CR>", {})
		vim.keymap.set("n", "<leader>rt", ":GoTest<CR>", {})
		vim.keymap.set("n", "<leader>rf", ":GoTestFile<CR>", {})
		vim.keymap.set("n", "<leader>rtf", ":GoTestFunc<CR>", {})
	end,
	event = { "CmdlineEnter" },
	ft = { "go", "gomod" },
	build = ':lua require("go.install").update_all_sync()',
}
