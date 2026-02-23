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
		{ '<leader>pf', function() require('telescope.builtin').find_files() end, desc = "Find files" },
		{ '<leader>ps', function() require('telescope.builtin').live_grep() end, desc = "Live grep" },
		{ '<C-p>', function() require('telescope.builtin').git_files() end, desc = "Git files" },
	}
}
