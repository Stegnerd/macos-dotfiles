return {
  "numToStr/Comment.nvim",
  -- only works when opening a buffer or new file
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
   -- "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    -- import comment plugin safely
    local comment = require("Comment")

    -- some of these ts  ones might not be required but copied from source for now
    -- local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

    -- enable comment
    comment.setup({
      -- for commenting tsx and jsx files
      -- pre_hook = ts_context_commentstring.create_pre_hook(),
    })
  end,
}
