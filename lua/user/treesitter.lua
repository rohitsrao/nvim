local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  ensure_installed = {
    "bash",
    "css",
    "dart",
    "dockerfile",
    "haskell",
    "html",
    "http",
    "javascript",
    "json",
    "json5",
    "lua",
    "python",
    "regex",
    "rust",
    "typescript",
    "yaml"
  },
  sync_install = false,
  ignore_install = { "" }, -- List of parsers to ignore installing
  autpairs = {
    enable = true,
  },
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, disable = { "yaml" } },
  rainbow = {
    enable = true,
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}
