return {
  {
    "Everblush/nvim",
    name = "everblush",
    opts = function()
      -- Copied from onedark
      -- https://github.com/navarasu/onedark.nvim/blob/master/lua/onedark/palette.lua
      local onedark_c = {
        black = "#181a1f",
        bg0 = "#282c34",
        bg1 = "#31353f",
        bg2 = "#393f4a",
        bg3 = "#3b3f4c",
        bg_d = "#21252b",
        bg_blue = "#73b8f1",
        bg_yellow = "#ebd09c",
        fg = "#abb2bf",
        purple = "#c678dd",
        green = "#98c379",
        orange = "#d19a66",
        blue = "#61afef",
        yellow = "#e5c07b",
        cyan = "#56b6c2",
        red = "#e86671",
        grey = "#5c6370",
        light_grey = "#848b98",
        dark_cyan = "#2b6f77",
        dark_red = "#993939",
        dark_yellow = "#93691d",
        dark_purple = "#8a3fa0",
        diff_add = "#31392b",
        diff_delete = "#382b2c",
        diff_change = "#1c3448",
        diff_text = "#2c5372",
      }

      return {
        override = {
          LineNr = { fg = "#5d6568", bg = "NONE" },
          ["@exception"] = { fg = "#67b0e8" },
          DiffAdd = { fg = onedark_c.none, bg = onedark_c.diff_add },
          DiffChange = { fg = onedark_c.none, bg = onedark_c.diff_change },
          DiffDelete = { fg = onedark_c.none, bg = onedark_c.diff_delete },
          DiffText = { fg = onedark_c.none, bg = onedark_c.diff_text },
          DiffAdded = { fg = onedark_c.green },
          DiffRemoved = { fg = onedark_c.red },
          DiffFile = { fg = onedark_c.cyan },
          DiffIndexLine = { fg = onedark_c.grey },
          CursorColumn = { bg = onedark_c.bg1 },
          CursorLine = { bg = onedark_c.bg1 },
          ColorColumn = { bg = onedark_c.bg1 },
          CursorLineNr = { fg = onedark_c.fg },
          GitSignsAdd = { fg = onedark_c.green },
          GitSignsAddLn = { fg = onedark_c.green },
          GitSignsAddNr = { fg = onedark_c.green },
          GitSignsChange = { fg = onedark_c.blue },
          GitSignsChangeLn = { fg = onedark_c.blue },
          GitSignsChangeNr = { fg = onedark_c.blue },
          GitSignsDelete = { fg = onedark_c.red },
          GitSignsDeleteLn = { fg = onedark_c.red },
          GitSignsDeleteNr = { fg = onedark_c.red },
          TermCursor = {},
          TermCursorNC = {},
        },
        transparent_background = false,
        nvim_tree = {
          contrast = false,
        },
      }
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everblush",
    },
  },
}
