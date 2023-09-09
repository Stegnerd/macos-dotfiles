--
-- Lualine configuration
--
require "user.plugins.lualine"

lvim.plugins = {
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
}
}