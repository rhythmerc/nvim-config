return {
	'nvim-mini/mini.files',
	version = '*',
	lazy = false,
	keys = {
		{ "<leader>pv", function() if not MiniFiles.close() then MiniFiles.open() end end, desc = "Toggle file explorer" },
	},
	init = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
	end,
	opts = {},
}
