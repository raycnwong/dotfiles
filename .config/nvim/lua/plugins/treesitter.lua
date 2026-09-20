return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
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
    sync_install = false,
    auto_install = true,

    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
  },
  config = function(_, opts)
    require("nvim-treesitter.configs").setup(opts)
  end,
}
