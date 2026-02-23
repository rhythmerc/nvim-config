return {
	'https://github.com/neovim/nvim-lspconfig',
	init = function()
		vim.diagnostic.config({ virtual_text = true, underline = true })
	end,
	keys = {
		{ "gd", vim.lsp.buf.definition, desc = "Go to definition" },
		{ "gr", vim.lsp.buf.references, desc = "Go to references" },
		{ "lr", vim.lsp.buf.rename, desc = "LSP rename" },
		{ "la", vim.lsp.buf.code_action, desc = "LSP actions" }, 
		{ "lf", vim.diagnostic.open_float, desc = "LSP diagnostic float" },
	},
	dependencies = {
		"folke/lazydev.nvim"
	},
}
