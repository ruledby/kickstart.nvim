-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  import = 'custom.plugins',
  {
    'williamboman/mason.nvim',
    priority = 1000, -- Make sure it's loaded first
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

  {
    'williamboman/mason-lspconfig.nvim',
    priority = 1000,
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        'cssls',
        'eslint',
        'html',
        'lua_ls',
        'pyright',
        'tsserver',
      })
    end,
  },
}
