return {
	"ahkohd/buffer-sticks.nvim",
	keys = {
		{ "<leader>bl", function() BufferSticks.list({ action = "open" }) end, desc = "List buffers" },
		{ "<leader>bt", function() BufferSticks.toggle() end, desc = "Toggle buffer sticks" } 
	},
	opts = {
		list = {
			keys = {
				move_up = "k",
				move_down = "j"
			}
		}
	}
}
