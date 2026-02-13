return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		preset = "modern",
		spec = {
			{ "<leader>b", group = "Buffer management" },
			{ "<leader>p", group = "Project navigation" },
			{ "<leader>m", group = "Markdown preview management" },
		}
	}
}
