return {
	"kdheepak/lazygit.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function() 
      local lazygit = require("lazygit")

      -- set keymaps
      local keymap = vim.keymap -- for conciseness
       -- { "nnoremap <silent> <leader>gg", ":LazyGit<CR>", { desc = "Maximize/minimize a split" } },
      
       keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>", { desc = "Toggle lazygit" }) -- toggle lazygit
    end,
}
