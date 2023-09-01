return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
      "windwp/nvim-ts-autotag",
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
        autotag = { enable = true },
        -- ensure these language parsers are installed
        ensure_installed = {
          "bash",
          "c",
          "cpp",
          "css",
          "dart",
          "dockerfile",
          "gitignore",
          "go",
          "gomod",
          "gosum",
          "html",
          "json",
          "java",
          "javascript",
          "kotlin",
          "lua",
          "markdown",
          "markdown_inline",
          "nix",
          "ocaml",
          "python",
          "rust",
          "sql",
          "svelte",
          "swift",
          "toml",
          "typescript",
          "tsx",
          "vim",
          "vue",
          "xml",
          "yaml",
          "zig"
        },
        -- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
        context_commentstring = {
          enable = true,
          enable_autocmd = false,
        },
        -- auto install above language parsers
        auto_install = true,
      })
    end,
  },
}