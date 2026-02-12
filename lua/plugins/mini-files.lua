return {
	'nvim-mini/mini.files',
	version = '*',
	lazy = false,
	keys = {
		{ "<leader>mf", function() MiniFiles.open() end },
	},
	init = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1
	end,
	config = function()
		require('mini.files').setup()

		vim.api.nvim_create_autocmd('VimEnter', {
			callback = function()
				if vim.fn.argc() == 0 then
					vim.schedule(function()
						MiniFiles.open()
					end)
				elseif vim.fn.isdirectory(vim.fn.argv(0)) == 1 then
					vim.cmd('cd ' .. vim.fn.argv(0))
					vim.schedule(function()
						MiniFiles.open()
					end)
				end
			end
		})
	end
}
