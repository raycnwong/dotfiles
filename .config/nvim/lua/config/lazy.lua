local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
    lazypath })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

-- Workaround to disable snacks.nvim
Snacks = {
  profiler = {
    status = function() end,
  },
  toggle = function()
    return {
      map = function() end,
    }
  end,
  keymap = {
    set = function(mode, lhs, rhs, opts)
      if type(mode) == "table" then
        for _, m in ipairs(mode) do
          vim.keymap.set(m, lhs, rhs, opts)
        end
        return
      end

      local valid = {
        buffer = true,
        desc = true,
        callback = true,
        remap = true,
        silent = true,
        expr = true,
        nowait = true,
        unique = true,
        script = true,
        replace_keycodes = true,
        noremap = true,
      }

      local ret = vim.deepcopy(opts)

      for k in pairs(ret) do
        if not valid[k] then
          ret[k] = nil
        end
      end

      vim.keymap.set(mode, lhs, rhs, ret)
    end,
  },
  util = {
    lsp = {
      on = function() end,
    },
  },
}

require("lazy").setup({
  spec = {
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    { import = "plugins" },
  },
  defaults = {
    lazy = false,
    version = false,
  },
  checker = { enabled = false },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
