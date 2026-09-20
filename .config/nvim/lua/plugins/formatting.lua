return {
  {
    "stevearc/conform.nvim",
    keys = function()
      local Util = require("lazyvim.util")

      vim.api.nvim_create_user_command("ToggleAutoFormat", function(args)
        if args.bang then
          -- ToggleFormat! will disable formatting just for this buffer
          Util.format.toggle(true)
        else
          Util.format.toggle()
        end
      end, {
        desc = "Toggle autoformat-on-save",
        bang = true,
      })

      return {}
    end,
  },
}
