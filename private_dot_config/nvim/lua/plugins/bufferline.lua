vim.opt.termguicolors = true
vim.api.nvim_set_keymap("n", "<leader>bd", ":bp <cr>:bd# <cr>", {})

require("bufferline").setup{
  options = {
    offsets = {{filetype = "neo-tree", text = "File Explorer", text_align = "center"}},
    show_buffer_close_icons = false,
  }
}
