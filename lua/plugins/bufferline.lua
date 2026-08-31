return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup({
      highlights = {
        -- 1. The empty space on the bar, to the right of your tabs
        fill = {
          bg = "NONE",
        },
        -- 2. The background of inactive tabs
        background = {
          bg = "NONE",
        },
        -- 3. Visible but not currently selected tabs (when using splits)
        buffer_visible = {
          bg = "NONE",
        },
        -- 4. The separators between inactive tabs
        separator = {
          bg = "NONE",
        },
        separator_visible = {
          bg = "NONE",
        },

        -- Optional: The ACTIVE tab.
        -- (Most people prefer to leave this commented out so the active tab
        -- keeps a slight background color to help it stand out. If you want
        -- it 100% transparent too, just uncomment the lines below).
        -- buffer_selected = {
        --   bg = "NONE",
        --   bold = true,
        --   italic = true,
        -- },
      }
    })

    -- Critical: Clear Neovim's native tabline background underneath it
    vim.api.nvim_set_hl(0, "TabLineFill", { bg = "NONE", ctermbg = "NONE" })
  end,
}
