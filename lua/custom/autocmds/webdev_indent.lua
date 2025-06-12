vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'html', 'javascript', 'typescript', 'css', 'json' },
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
  end,
})
