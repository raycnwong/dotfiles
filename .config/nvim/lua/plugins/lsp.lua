return {
  {
    "mason-org/mason.nvim",
    version = "^1.0.0",
    keys = function()
      return {}
    end,
  },

  {
    "mason-org/mason-lspconfig.nvim",
    version = "^1.0.0",
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "mason-org/mason.nvim",
      "mason-org/mason-lspconfig.nvim",
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
        ts_ls = {},
        svelte = {
          capabilities = {
            workspace = {
              didChangeWatchedFiles = vim.fn.has("nvim-0.10") == 0 and { dynamicRegistration = true },
            },
          },
        },
        tailwindcss = {},
        astro = {},
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
