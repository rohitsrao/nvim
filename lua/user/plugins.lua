local fn = vim.fn

-- automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- install your plugins here
return packer.startup(function(use)

  use 'lewis6991/impatient.nvim'            -- Speed load Lua modules through caching
  use 'nvim-lualine/lualine.nvim'           -- Status Line
  use "windwp/nvim-autopairs"               -- Autopairs, integrates with both cmp and treesitter
  use "wbthomason/packer.nvim"              -- Have packer manage itself
  use "nvim-lua/plenary.nvim"               -- Useful lua functions used ny lots of plugins. many plugins depend on this.
  use "nvim-lua/popup.nvim"                 -- An implementation of the Popup API from vim in Neovim. many plugins depend on this.
  use "lukas-reineke/indent-blankline.nvim" -- Indent Guides

  --Flutter
  use "akinsho/flutter-tools.nvim"          -- Flutter Tools

  -- nvim-tree
  use 'kyazdani42/nvim-tree.lua'            -- Tree File Explorer written in lua

  -- colorschemes
  use "LunarVim/onedarker.nvim"

  -- completion plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "hrsh7th/cmp-nvim-lsp" -- include lsp suggestions in cmp
  use "saadparwaiz1/cmp_luasnip" -- snippet completions

  -- github copilot
  use "zbirenbaum/copilot.lua"

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine

  -- lsp
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer

  -- treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "p00f/nvim-ts-rainbow" -- rainbow paranthesis
  use 'JoosepAlviste/nvim-ts-context-commentstring' -- context aware commenting especially for jsx

  -- telescope
  use "nvim-telescope/telescope.nvim"

  -- gitsigns
  use 'lewis6991/gitsigns.nvim'

  -- neotest
  use 'nvim-neotest/neotest'
  use 'nvim-neotest/neotest-python'
  use 'sidlatau/neotest-dart'
  use 'antoinemadec/FixCursorHold.nvim'

  -- automatically set up your configuration after cloning packer.nvim
  -- put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end

end)
