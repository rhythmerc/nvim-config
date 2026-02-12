return {
	'nvim-telescope/telescope.nvim', 
	version = '*',
	dependencies = {
		'nvim-lua/plenary.nvim',
		-- optional but recommended
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	},
	opts = {},
	keys = {
		{ '<leader>pf', require('telescope.builtin').find_files, desc = "Find files" },
		{ '<leader>ps', require('telescope.builtin').grep_string, desc = "Grep string" },
		{ '<C-p>', require('telescope.builtin').git_files, desc = "Git files" }
	}
}
