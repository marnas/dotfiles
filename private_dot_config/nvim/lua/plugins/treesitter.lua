local configs = require("nvim-treesitter.configs")
configs.setup {
	ensure_installed = "all",
	sync_install = false,
	auto_install = true,
	ignore_install = { "" }, -- List of parsers to ignore installing
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = '<c-w>',
			node_incremental = '<c-w>',
			node_decremental = '<c-s>',
		},
	},
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "" }, -- list of language that will be disabled
		additional_vim_regex_highlighting = false
	},
	indent = { enable = true, disable = { "yaml" } },
}

-- vim.wo.foldmethod = 'expr'
-- vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
