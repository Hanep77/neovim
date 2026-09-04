return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",

	config = function()
		require("nvim-treesitter").setup()

		require("nvim-treesitter").install({
			"html",
			"javascript",
			"typescript",
			"lua",
		})

		vim.api.nvim_create_autocmd("FileType", {
			pattern = {
				"html",
				"javascript",
				"typescript",
				"lua",
			},
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}
