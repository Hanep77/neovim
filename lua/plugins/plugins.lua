return {
  {
    "navarasu/onedark.nvim",
    lazy = false,
    priority = 1000,
    config = function()
    require("onedark").setup({
    style = "warmer",
    transparent_background = true,
    })
    require("onedark").load()
    end,
  },
}

