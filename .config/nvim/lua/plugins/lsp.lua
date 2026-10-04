return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["*"] = {
          keys = {
            { "K", vim.lsp.buf.hover, desc = "Hover" },
            { "<leader>e", vim.diagnostic.open_float, desc = "Line Diagnostics" },
            { "gi", "<cmd>Telescope lsp_implementations<cr>", desc = "Goto Implementation" },
            {
              "gd",
              function()
                require("telescope.builtin").lsp_definitions({ reuse_win = true })
              end,
              desc = "Goto Definition",
              has = "definition",
            },
            { "<leader>cC", false },
            { "<leader>cc", false },
            { "<leader>ca", false },
            { "<leader>cl", false },
            { "<leader>cr", false },
            { "<leader>cA", false },
            { "<leader>cR", false },
            { "<leader>co", false },
          },
        },
        vtsls = {
          keys = {},
        },
        svelte = {
          keys = {},
        },
        -- javascript = {
        --   keys = {},
        -- },
        -- typescript = {
        --   keys = {},
        -- },
        gopls = {
          init_options = {
            semanticTokens = true,
          },
          settings = {
            gopls = {
              gofumpt = true,
              codelenses = {
                gc_details = false,
                generate = true,
                regenerate_cgo = true,
                run_govulncheck = true,
                test = true,
                tidy = true,
                upgrade_dependency = true,
                vendor = true,
              },
              hints = {
                assignVariableTypes = true,
                compositeLiteralFields = true,
                compositeLiteralTypes = true,
                constantValues = true,
                functionTypeParameters = true,
                parameterNames = true,
                rangeVariableTypes = true,
              },
              analyses = {
                ST1000 = false,
                ST1021 = false,
                nilness = true,
                unusedparams = true,
                unusedwrite = true,
                useany = true,
              },
              usePlaceholders = true,
              completeUnimported = true,
              staticcheck = true,
              directoryFilters = { "-.git", "-.vscode", "-.idea", "-.vscode-test", "-node_modules" },
            },
          },
        },
      },
    },
  },

  {
    "mason-org/mason.nvim",
    keys = function()
      return {}
    end,
  },
}
