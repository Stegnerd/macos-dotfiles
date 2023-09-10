--
-- Lualine configuration
--
require "user.plugins.lualine"


lvim.plugins = {
  --
  -- Diagnostics
  --
  {
    "folke/trouble.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      require("user.plugins.trouble").config()
    end,
    event = "BufWinEnter",
    cmd = "TroubleToggle",
  },
  -- ever forest theme
{
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  -- Optional; default configuration will be used if setup isn't called.
  config = function()
     require("user.themes.everforest").config()
  end,
  conditions = function()
    return lvim.colorscheme == "everforest"
  end,
},
  --
  -- Dressing.nvim
  -- https://github.com/stevearc/dressing.nvim
  {
    "stevearc/dressing.nvim",
    opts = {},
  },
}