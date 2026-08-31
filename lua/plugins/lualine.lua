return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local custom_theme = require("lualine.themes.onedark")

    -- 1. ONLY make the middle sections (c and x) transparent
    for _, mode in pairs(custom_theme) do
      if mode.c then mode.c.bg = "NONE" end
      if mode.x then mode.x.bg = "NONE" end
    end

    require("lualine").setup({
      options = {
        theme = custom_theme,
        component_separators = '',
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_a = { { 'mode', right_padding = 2 } },
        lualine_b = { 'filename', 'branch' },
        lualine_c = {
          '%=', -- Center components
        },
        lualine_x = {},
        lualine_y = { 'filetype', 'progress' },
        lualine_z = {
          { 'location', left_padding = 2 },
        },
      },
    })

    -- 2. CRITICAL: Clear Neovim's native statusline background!
    -- This prevents the default grey line from showing through.
    vim.api.nvim_set_hl(0, "StatusLine", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "NONE", ctermbg = "NONE" })
  end
}
