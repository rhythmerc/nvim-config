return {
	"nvim-mini/mini.completion",
	version = "*",
	init = function()
		vim.keymap.set('i', '<C-j>', function()
		  if vim.fn.pumvisible() == 1 then
		    return '<C-n>'
		  else
		    return '<C-j>'
		  end
		end, { expr = true })

		vim.keymap.set('i', '<C-k>', function()
		  if vim.fn.pumvisible() == 1 then
		    return '<C-p>'
		  else
		    return '<C-k>'
		  end
		end, { expr = true })
	end,
	opts = {
		auto_hide = false,
		window = {
			info = { border = "rounded" },
			signature = { border = "rounded" },
		},
		mappings = {
			info
		}
	}	
}
