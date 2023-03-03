vim.api.nvim_set_keymap("n", "<leader>e", ":NeoTreeRevealToggle<cr>", {})

require("neo-tree").setup({
  close_if_last_window = true -- Close Neo-tree if it is the last window left in the tab
})
