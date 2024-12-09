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
    })
    vim.cmd("colorscheme everforest")
  end,
}
