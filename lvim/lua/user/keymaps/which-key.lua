-- Which-key: AI (Copilot, ...)
lvim.builtin.which_key.mappings["a"] = {
  name = "+A.I. (Copilot)",
  s = { "<cmd>Copilot suggestion<cr>", "Copilot: toggle suggestions " },
  p = { "<cmd>Copilot panel<cr>", "Copilot: toggle panel" },
  c = { "<cmd>Copilot toggle<cr>", "Copilot: toggle" },
  S = { "<cmd>Copilot status<cr>", "Copilot: Status" },
  v = { "<cmd>Copilot version<cr>", "Copilot: version" },
}

-- Which-key: Trouble
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble workspace_diagnostics<cr>", "Workspace Diagnostics" },
  t = { "<cmd>TroubleToggle<cr>", "Trouble Toggle" },
}

lvim.builtin.which_key.mappings["T"] = {
  name = "+Terminal",
  T = { "<cmd>ToggleTerm direction=float<cr>", "Terminal float" },
  h = { "<cmd>ToggleTerm direction=horizontal<cr>", "Terminal horizontal" },
  v = { "<cmd>ToggleTerm direction=vertical<cr>", "Terminal vertical" },
  i = { "<cmd>TSConfigInfo<cr>", "Treesitter info" },
}

-- Which-key: Quickfix
lvim.builtin.which_key.mappings["q"] = {
  name = "+QuickFix",
  o = { "<cmd>copen<cr>", "Open" },
  c = { "<cmd>cclose<cr>", "Close" },
  n = { "<cmd>cnext<cr>", "Next item" },
  p = { "<cmd>cprev<cr>", "Previous item" },
  f = { "<cmd>cfirst<cr>", "First item" },
  l = { "<cmd>clast<cr>", "Last item" },
  i = {
    function()
      local itemNr = vim.fn.input { "QuickFix Item #" }
      vim.cmd("cc" .. itemNr)
    end,
    "Item...",
  },
}

lvim.builtin.which_key.mappings["u"] = {
  name = "UndoTree",
  t = { "<cmd>UndotreeToggle<cr>", "Toggle" },
  o = { "<cmd>UndotreeShow<cr>", "Open" },
  c = { "<cmd>UndotreeClose<cr>", "Close" },
  f = { "<cmd>UndotreeFocus<cr>", "Focus" },
}

-- Which-key: +Search
lvim.builtin.which_key.mappings["sg"] = { "<cmd>Telescope grep_string<cr>", "Grep cursor word" }
lvim.builtin.which_key.mappings["sG"] = { "<cmd>Telescope git_files<cr>", "Git files" }

-- Delta previewer custom Telescope functions
if vim.fn.executable "delta" == 1 then
  lvim.builtin.which_key.mappings["gS"] = {
    "<cmd>lua require('user.plugins.telescope').delta_git_status()<cr>",
    "Git status",
  }
  lvim.builtin.which_key.mappings["gL"] = {
    "<cmd>lua require('user.plugins.telescope').delta_git_commits()<cr>",
    "Git commits",
  }
  lvim.builtin.which_key.mappings["gM"] = {
    "<cmd>lua require('user.plugins.telescope').delta_git_bcommits()<cr>",
    "Git bcommits",
  }
end

local restartActiveLsp = function()
  local clients = vim.lsp.get_active_clients()
  for _, client in pairs(clients) do
    if client.name ~= "copilot" and client.name ~= "null-ls" then
      vim.schedule(function()
        local name = client.name
        local cmd = "LspRestart " .. client.id
        vim.cmd(cmd)
        print(cmd .. " (" .. name .. ") - completed.")
      end)
    end
  end
end

lvim.builtin.which_key.mappings["lR"] = { restartActiveLsp, "Restart LSPs" }