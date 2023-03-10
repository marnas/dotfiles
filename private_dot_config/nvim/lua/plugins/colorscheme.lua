require("monokai-pro").setup({
	transparent_background = false,
	terminal_colors = true,
	devicons = true,        -- highlight the icons of `nvim-web-devicons`
	italic_comments = true,
	filter = "pro",         -- classic | octagon | pro | machine | ristretto | spectrum
	inc_search = "background", -- underline | background
	background_clear = {
		-- "float_win",
		"toggleterm",
		"telescope",
		"which-key",
		"renamer"
	}, -- "float_win", "toggleterm", "telescope", "which-key", "renamer", "neo-tree"
})

vim.cmd([[colorscheme monokai-pro]])
