return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        css = { "eslint_d" },
        go = { "goimports", "gofmt" },
        html = { "eslint_d" },
        javascript = { "eslint_d" },
        json = { "prettier" },
        kotlin = { "ktlint" },
        lua = { "stylua" },
        markdown = { "prettier" },
        -- python = { "isort", "ruff_fix", "ruff_format" },
        rust = { "rustfmt" },
        sql = { "sqlformat" },
        svelte = { "eslint_d" },
        typescript = { "eslint_d" },
        yaml = { "yamlfmt" },
        zig = { "zigfmt" },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      },
    })

    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
