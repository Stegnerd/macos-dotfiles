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
      -- full list here https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
      ensure_installed = {
        "angularls",
        -- "csharp_ls", check if we wanna use omnisharp instead
        --"clangd", -- c++
        --"cssls",
        "cssls",
        "emmet_ls",
        "gopls",
        "html",
        "lua_ls",
        "tsserver",
      },
      -- auto-install configured servers (with lspconfig)
      automatic_installation = true, -- not the same as ensure_installed
    })

    mason_tool_installer.setup({
      -- list of formatters & linters for mason to install
      ensure_installed = {
        -- Formatter
        --"eslint", -- ts/js formatter
        "prettier", -- ts/js formatter
        "stylua",   -- lua formatter
        -- Linter
        "eslint_d", -- ts/js linter
        "golangci-lint",
        --"staticcheck" maybe?
        --"luacheck",
        -- DAP
      },
      -- auto-install configured servers (with lspconfig)
      automatic_installation = true,
    })
  end,
}
