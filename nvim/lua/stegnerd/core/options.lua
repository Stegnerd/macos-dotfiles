vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2       -- 2 spaces for tabs
opt.shiftwidth = 2    -- 2 spaces for indent width
opt.expandtab = true  -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting a new one

-- turn off line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true  -- if you include mixed case in your search, assumes you want case-sensitive

opt.cursorline = true

-- turn on termguicolors for color schemes to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes"  -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allows backspace on indent, eol or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register (so we can paste to other things)

-- split windows
opt.splitright = true -- split vertical windows open to the right
opt.splitbelow = true -- split horizontal windows open on the bottom

-- turn off swapfile
opt.swapfile = false
