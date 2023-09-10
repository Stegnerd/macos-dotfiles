-- general
vim.opt.relativenumber = true
vim.go.termguicolors = true

-- lvim.format_on_save = {
--   enabled = true,
--   pattern = "*",
--   timeout = 1500,
--   filter = require("lvim.lsp.utils").formatting_filter,
-- }

-- theme
lvim.colorscheme = "everforest"

lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- Treesitter parsers
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "c_sharp",
  "cpp",
  "comment",
  "css",
  "dockerfile",
  "go",
  "gomod",
  "html",
  "java",
  "javascript",
  "jsdoc",
  "json",
  "jsonc",
  "kotlin",
  "lua",
  "markdown",
  "python",
  "rust",
  "scss",
  "sql",
  "svelte",
  "toml",
  "tsx",
  "typescript",
  "vue",
  "yaml",
  "zig"
}

lvim.builtin.treesitter.ignore_install = { "haskell", "java" }
lvim.builtin.treesitter.highlight.enable = true
