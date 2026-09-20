local augroup = vim.api.nvim_create_augroup('highlight_cmds', { clear = true })

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "everblush",
  group = augroup,
  desc = "Override everblush colors",
  callback = function()
    vim.cmd([[hi LineNr guifg=#5d6568 guibg=NONE gui=NONE cterm=NONE]])
    vim.cmd([[hi DiffAdd guifg=NONE ctermfg=NONE guibg=#464632 ctermbg=238 gui=NONE cterm=NONE]])
    vim.cmd([[hi DiffChange guifg=NONE ctermfg=NONE guibg=#335261 ctermbg=239 gui=NONE cterm=NONE]])
    vim.cmd([[hi DiffDelete guifg=#f43753 ctermfg=203 guibg=#79313c ctermbg=237 gui=NONE cterm=NONE]])
    vim.cmd([[hi DiffText guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=reverse cterm=reverse]])
    vim.cmd([[hi @exception guifg=#67b0e8]])
  end,
})

vim.cmd.colorscheme('everblush')
