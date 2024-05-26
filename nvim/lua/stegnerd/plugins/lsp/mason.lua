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

    --   mason_lspconfig.setup({
    --     -- list of servers for mason to install
    --     ensure_installed = {
    --       "angularls",
    --       "clangd",
    --       "cssls",
    --       "emmet_ls",
    --       "gopls",
    --       "html",
    --       "jsonls",
    --       "kotlin_language_server",
    --       "lua_ls",
    --       "markdown_oxide",
    --       "omnisharp", -- c sharp
    --       "pyright",
    --       "rust_analyzer",
    --       "sqlls",
    --       "svelte",
    --       "tailwindcss",
    --       "taplo",
    --       "tsserver",
    --       "vuels",
    --       "zls"
    --     },
    --   })
  end
}
