return {
	{
		"Saghen/blink.cmp",
		dependencies = { "rafamadriz/friendly-snippets" },
		version = "1.*",
		opts = {
			keymap = {
				preset = "default",
				["<CR>"] = { "accept", "fallback" },
				["<C><leader>"] = { "show" },
			},

			appearance = {
				nerd_font_variant = "mono",
			},

			completion = {
				trigger = {
					prefetch_on_insert = false,

					-- When false, will not show the completion window automatically when in a snippet
					show_in_snippet = false,

					-- When true, will show the completion window after typing any of alphanumerics, `-` or `_`
					show_on_keyword = true,

					-- When true, will show the completion window after typing a trigger character
					show_on_trigger_character = false,

					-- LSPs can indicate when to show the completion window via trigger characters
					-- however, some LSPs (i.e. tsserver) return characters that would essentially
					-- always show the window. We block these by default.
					show_on_blocked_trigger_characters = { " ", "\n", "\t" },
					-- You can also block per filetype with a function:
					-- show_on_blocked_trigger_characters = function(ctx)
					--   if vim.bo.filetype == 'markdown' then return { ' ', '\n', '\t', '.', '/', '(', '[' } end
					--   return { ' ', '\n', '\t' }
					-- end,

					-- When both this and show_on_trigger_character are true, will show the completion window
					-- when the cursor comes after a trigger character after accepting an item
					show_on_accept_on_trigger_character = false,

					-- When both this and show_on_trigger_character are true, will show the completion window
					-- when the cursor comes after a trigger character when entering insert mode
					show_on_insert_on_trigger_character = false,

					-- List of trigger characters (on top of `show_on_blocked_trigger_characters`) that won't trigger
					-- the completion window when the cursor comes after a trigger character when
					-- entering insert mode/accepting an item
					show_on_x_blocked_trigger_characters = { "'", '"', "(" },
				},
				documentation = { auto_show = true },
			},
			sources = {
				default = {
					"lsp",
					"path",
					"snippets",
					"buffer",
				},
			},
			fuzzy = { implementation = "prefer_rust_with_warning" },
		},
		opts_extend = { "sources.default" },
	},
}
