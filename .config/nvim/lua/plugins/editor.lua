return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-file-browser.nvim",
    },
    keys = function()
      return {
        { "<leader>ff", "<cmd>Telescope find_files<cr>" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>" },
        { "<leader>fb", "<cmd>Telescope buffers<cr>" },
        { "<leader>fs", "<cmd>Telescope file_browser<cr>" },
      }
    end,
    opts = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")
      local fb_actions = telescope.extensions.file_browser.actions

      local function telescope_buffer_dir()
        return vim.fn.expand("%:p:h")
      end

      return {
        pickers = {
          find_files = {
            -- `hidden = true` will still show the inside of `.git/` as it's not `.gitignore`d.
            find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
          },
          buffers = {
            initial_mode = "normal",
            mappings = {
              n = {
                ["X"] = actions.delete_buffer,
              },
            },
          },
        },
        extensions = {
          file_browser = {
            theme = "dropdown",
            path = "%:p:h",
            cwd = telescope_buffer_dir(),
            respect_gitignore = false,
            select_buffer = true,
            hidden = true,
            grouped = true,
            previewer = false,
            initial_mode = "normal",
            layout_config = { height = 40 },
            hijack_netrw = false,
            mappings = {
              ["n"] = {
                ["h"] = fb_actions.goto_parent_dir,
                ["<C-p>"] = actions.move_selection_previous,
                ["<C-n>"] = actions.move_selection_next,
              },
            },
          },
        },
      }
    end,
    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
      telescope.load_extension("file_browser")
    end,
  },

  {
    "tpope/vim-fugitive",
  },

  {
    "lewis6991/gitsigns.nvim",
    opts = {
      on_attach = function(buffer)
        local gs = package.loaded.gitsigns

        local function map(mode, l, r, desc)
          vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
        end

        map("n", "]c", gs.next_hunk, "Next Hunk")
        map("n", "[c", gs.prev_hunk, "Prev Hunk")
        map("n", "<leader>c", gs.preview_hunk_inline, "Preview Hunk")
        map("n", "<leader>b", function()
          gs.blame_line({ full = true })
        end, "Blame Line")
      end,
    },
  },
}
