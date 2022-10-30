local options = {
  backup = false,                          -- creates a backup file
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  cursorline = true,                       -- highlight the current line
  conceallevel = 0,                        -- so that `` is visible in markdown files
  expandtab = true,                        -- convert tabs to spaces
  fileencoding = "utf-8",                  -- the encoding written to a file
  ignorecase = true,                       -- ignore case in search patterns
  number = true,                           -- set numbered lines
  pumheight = 10,                          -- pop up menu height
  relativenumber = true,                   -- set relative numbered lines
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  swapfile = false,                        -- creates a swapfile
  tabstop = 2,                             -- insert 2 spaces for a tab
  termguicolors = true,                    -- set term gui colors for custom colour scheme (most terminals support this)
  undofile = true,                         -- enable persistent undo
  updatetime = 300,                       -- faster completion (4000ms default)
  writebackup = false,
}

for k,v in pairs(options) do
  vim.opt[k] = v
end

-- :help options
-- vim.opt.cmdheight = 2                           -- more space in the neovim command line for displaying messages
-- vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
-- vim.opt.cursorline = true                       -- highlight the current line
-- vim.opt.mouse = "a"                             -- allow the mouse to be used in neovim
-- vim.opt.hlsearch = false                         -- highlight all matches on previous search pattern
-- vim.opt.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
-- vim.opt.showtabline = 2                         -- always show tabs
-- vim.opt.smartcase = true                        -- smart case
-- vim.opt.scrolloff = 8                           -- is one of my fav
-- vim.opt.sidescrolloff = 8
-- vim.opt.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
-- vim.opt.numberwidth = 4                         -- set number column width to 2 {default 4}
-- vim.opt.smartindent = true                      -- make indenting smarter again
-- vim.opt.wrap = false                            -- display lines as one long line
-- vim.opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications

-- vim.opt.shortmess:append "c"
-- vim.cmd "set whichwrap+=<,>,[,],h,l"
-- vim.cmd [[set iskeyword+=-]]

