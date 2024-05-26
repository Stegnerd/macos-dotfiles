return {
  "neanias/everforest-nvim",
  priority = 1000,
  lazy = false,
  config = function()
    require("everforest").setup({
      ---Controls the "hardness" of the background. Options are "soft", "medium" or "hard".
      ---Default is "medium".
      background = "hard",
      ---How much of the background should be transparent. 2 will have more UI
      ---components be transparent (e.g. status line background)
      transparent_background_level = 1,
      ---Whether italics should be used for keywords and more.
      italics = false,
      ---Disable italic fonts for comments. Comments are in italics by default, set
      ---this to `true` to make them _not_ italic!
      disable_italic_comments = true,
      -- colours_override = function(palette)
      --   palette.fg = "#d3c6aa"
      --   palette.red = "#e67e80"
      --   palette.orange = "#e69875"
      --   palette.yellow = "#dbbc7f"
      --   palette.green = "#a7c080"
      --   palette.aqua = "#83c092"
      --   palette.blue = "#7fbbb3"
      --   palette.purple = "#d699b6"
      --   palette.grey0 = "#7a8478"
      --   palette.grey1 = "#859289"
      --   palette.grey2 = "#9da9a0"
      --   palette.statusline1 = "#a7c080"
      --   palette.statusline2 = "#d3c6aa"
      --   palette.statusline3 = "#e67e80"
      --   palette.none = "NONE"
      -- end
    })

    vim.cmd("colorscheme everforest")
  end,
}
