return {
  {
    "windwp/nvim-autopairs",
    opts = {
      disable_filetype = { "TelescopePrompt", "vim" },
    },
  },

  {
    "nvim-cmp",
    keys = function()
      return {}
    end,
  },

  {
    "github/copilot.vim",
  },
}
