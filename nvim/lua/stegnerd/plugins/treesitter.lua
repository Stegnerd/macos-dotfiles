return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",        -- update all language servers when this plugin updates
  dependencies = {
    "windwp/nvim-ts-autotag", -- auto close tags
  },
  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    -- configure treesitter
    treesitter.setup({ -- enable syntax highlighting
      highlight = {
        enable = true,
      },
      -- enable indentation
      indent = { enable = true },
      -- enable autotagging (w/ nvim-ts-autotag plugin)
      autotag = {
        enable = true,
      },
      -- ensure these language parsers are installed
      ensure_installed = {
        "angular",
        "bash",
        "c",
        "cpp",
        "c_sharp",
        "css",
        "dockerfile",
        "go",
        "gomod",
        "gitignore",
        "html",
        "java",
        "javascript",
        "json",
        "kotlin",
        "lua",
        "markdown",
        "markdown_inline",
        "query",
        "rust",
        "sql",
        "svelte",
        "swift",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "vue",
        "yaml",
        "zig"
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
