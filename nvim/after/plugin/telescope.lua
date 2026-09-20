local status, telescope = pcall(require, "telescope")
if (not status) then return end

local actions = require('telescope.actions')
local builtin = require('telescope.builtin')
local fb_actions = telescope.extensions.file_browser.actions

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

telescope.setup {
  pickers = {
    buffers = {
      initial_mode = "normal",
      mappings = {
        n = {
          ["X"] = actions.delete_buffer,
        }
      }
    }
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

telescope.load_extension "file_browser"


vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

vim.keymap.set(
  "n",
  "<leader>fs",
  ":Telescope file_browser<CR>",
  { noremap = true }
)
