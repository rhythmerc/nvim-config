return {
	"ahkohd/buffer-sticks.nvim",
	keys = {
		{ "<leader>bl", function() BufferSticks.list({ action = "open" }) end, desc = "List buffers" },
		{ "<leader>bt", function() BufferSticks.toggle() end, desc = "Toggle buffer sticks" },
		{ "<leader>bc", "<cmd>bd<cr>", desc = "Close buffer" },
	},
	event = "BufEnter",
	config = function() 
		require("buffer-sticks").setup({
			show_by_default = true,
			list = {
				keys = {
					close_buffer = "c",
					move_up = "k",
					move_down = "j"
				}
			}
		})

		BufferSticks.show()
	end	
}
