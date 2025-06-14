return {
  {
    'williamboman/mason.nvim',
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        'css-lsp',
        'eslint-lsp',
        'flake8',
        'html-lsp',
        'lua-language-server',
        'pyright',
        'stylua',
        'typescript-language-server',
      })
    end,
  },
}
