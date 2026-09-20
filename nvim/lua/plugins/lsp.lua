return {
  {
    "williamboman/mason.nvim",
    keys = function()
      return {}
    end,
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    init = function()
      require("lazyvim.plugins.lsp.keymaps").get = function()
        return {
          { "K", vim.lsp.buf.hover, desc = "Hover" },
          { "<leader>e", vim.diagnostic.open_float, desc = "Line Diagnostics" },
          { "[d", vim.diagnostic.goto_prev, desc = "Goto Previous Diagnostics" },
          { "]d", vim.diagnostic.goto_next, desc = "Goto Next Diagnostics" },
          { "gi", "<cmd>Telescope lsp_implementations<cr>", desc = "Goto Implementation" },
          {
            "gd",
            function()
              require("telescope.builtin").lsp_definitions({ reuse_win = true })
            end,
            desc = "Goto Definition",
            has = "definition",
          },
        }
      end
    end,
    opts = {
      inlay_hints = {
        enabled = false,
      },
      diagnostics = {},
      servers = {
        tsserver = {},
        svelte = {},
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
              workspace = {
                checkThirdParty = false,
              },
              completion = {
                callSnippet = "Replace",
              },
            },
          },
        },
      },
      setup = {},
    },
  },
}
