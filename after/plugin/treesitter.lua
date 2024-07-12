require('nvim-treesitter.configs').setup {
  -- A list of parser names, or "all"
  autotag = {
    enable = true,
  },
  ensure_installed = { "markdown", "vimdoc", "javascript", "typescript", "c", "lua", "rust" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    enable = true,

    additional_vim_regex_highlighting = { "markdown" },
  },
}
