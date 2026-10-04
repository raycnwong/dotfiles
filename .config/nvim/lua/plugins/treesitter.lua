return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    folds = { enable = false },
    ensure_installed = {
      "markdown",
      "markdown_inline",
      "javascript",
      "typescript",
      "lua",
      "svelte",
      "css",
      "go",
      "gomod",
      "gowork",
      "gosum",
    },
  },
}
