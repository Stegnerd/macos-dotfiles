return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "angularls",
        "clangd",
        "cssls",
        "emmet_ls",
        "gopls",
        "html",
        "jsonls",
        "kotlin_language_server",
        "lua_ls",
        "markdown_oxide",
        "omnisharp", -- c sharp
        "pyright",
        "rust_analyzer",
        "sqlls",
        "svelte",
        "tailwindcss",
        "taplo",
        "ts_ls",
        "vuels",
        "zls"
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "eslint_d",  -- js/ts formatter
        --"golangci_lint", -- go formatter
        "goimports", -- go formatter
        "isort",     -- python formatter
        "ktlint",    -- kotlin formatter
        "prettier",  -- prettier formatter
        -- "ruff_fix",    -- python formatter
        -- "ruff_format", -- python formatter
        "stylua",  -- lua formatter
        -- "sqlformat", -- sql formatter
        "yamlfmt", -- yaml formatter
        -- "zigfmt",  -- zig formatter
      },
    })
  end
}
