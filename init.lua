require("config.lazy")
require("config.options")

vim.keymap.set({ "i" }, "<C-s>", "<Esc>:w<ENTER>")
vim.keymap.set({ "n" }, "<C-s>", ":w<ENTER>")
vim.keymap.set("n", "<LEADER>e", ":Neotree toggle <CR>")
