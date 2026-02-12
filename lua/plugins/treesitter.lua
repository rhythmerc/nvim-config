return {
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		build = ':TSUpdate',

		config = function() 
			require'nvim-treesitter'.setup {
				install_dir = vim.fn.stdpath('data') .. '/site'
			}

			vim.api.nvim_create_autocmd('FileType', {
				pattern = { '<filetype>' },
				callback = function() 
					vim.treesitter.start() 
					vim.wo[0][0].foldexpr = 'v:lua.vim.treesitter.foldexpr()'
					vim.wo[0][0].foldmethod = 'expr'
				end
			})
		end
	},
	{
		'nvim-treesitter/nvim-treesitter-context'
	}
}
