return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function()
      local p = require("everblush.palette")

      -- https://github.com/Everblush/nvim/blob/main/lua/lualine/themes/everblush.lua
      local modified_everblush_theme = {
        normal = {
          a = { bg = p.color2, fg = p.background },
          b = { bg = p.background, fg = p.color7 },
          c = { bg = p.background, fg = p.foreground },
        },
        insert = {
          a = { bg = p.color6, fg = p.background },
          b = { bg = p.background, fg = p.color7 },
        },
        command = {
          a = { bg = p.color1, fg = p.background },
          b = { bg = p.background, fg = p.color7 },
        },
        visual = {
          a = { bg = p.color3, fg = p.background },
          b = { bg = p.background, fg = p.color7 },
        },
        replace = {
          a = { bg = p.color1, fg = p.background },
          b = { bg = p.background, fg = p.color7 },
        },
        inactive = {
          a = { bg = p.background, fg = p.color7 },
          b = { bg = p.background, fg = p.foreground, gui = "bold" },
          c = { bg = p.background, fg = p.foreground },
        },
      }

      return {
        options = {
          icons_enabled = true,
          theme = modified_everblush_theme,
          component_separators = " ",
          section_separators = " ",
          disabled_filetypes = {
            statusline = {},
            winbar = {},
          },
          ignore_focus = {},
          always_divide_middle = true,
          globalstatus = false,
          refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
          },
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch" },
          lualine_c = { "filename", "diff", "diagnostics" },
          lualine_x = {},
          lualine_y = {},
          lualine_z = {},
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { "filename" },
          lualine_x = {},
          lualine_y = {},
          lualine_z = {},
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {},
      }
    end,
  },
}
