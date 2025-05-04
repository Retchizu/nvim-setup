return {
	{
		"williamboman/mason.nvim",
		opts = {}, -- mason itself usually no opts needed
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"ts_ls", -- Use ts_ls instead of tsserver
				"eslint",
				"lua_ls",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			-- Setup for ts_ls (TypeScript/JavaScript)
			lspconfig.ts_ls.setup({
				capabilities = capabilities,
			})

			-- Setup for lua_ls
			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})

			-- Other LSP setups as needed...

			-- Key mappings for LSP
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
