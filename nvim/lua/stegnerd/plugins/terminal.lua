return {

  -- TERMINAL
  "akinsho/toggleterm.nvim",
  version = "v2.*",
  -- config = true
  config = function()
  --   require("toggleterm").setup()

  --   local Terminal = require("toggleterm.terminal").Terminal
  --   local htop = Terminal:new({
  --     cmd = "htop",
  --     hidden = true,
  --     direction = "float",
  --   })

  --   -- NOTE: This is a global function so it can be called from the below mapping.
  --   function Htop_toggle()
  --     htop:toggle()
  --   end

  --   vim.api.nvim_set_keymap("n", "<leader><leader>th", "<cmd>lua Htop_toggle()<CR>", {
  --     noremap = true,
  --     silent = true,
  --     desc = "toggle htop",
  --   })
     require("toggleterm").setup{}

    vim.keymap.set(
      "n",
      "<leader>th",
      "<Cmd>ToggleTerm direction=horizontal<CR>",
      { desc = "toggle horizontal terminal" }
    )
    vim.keymap.set(
      "n",
      "<leader>tv",
      "<Cmd>ToggleTerm direction=vertical<CR>",
      { desc = "toggle vertical terminal" }
    )

   -- mappings to make moving in and out of a terminal easier once toggled,
   -- whilst still keeping it open.
    function _G.set_terminal_keymaps()
      local opts = {buffer = 0}
      vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
      vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
      vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
      vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
      vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
      vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
      vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
    end

    -- if you only want these mappings for toggle term use term://*toggleterm#* instead
    vim.cmd('autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()')

   end,
}
