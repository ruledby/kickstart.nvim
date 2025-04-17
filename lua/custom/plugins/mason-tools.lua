return {
  'williamboman/mason-lspconfig.nvim',
  opts = {
    ensure_installed = {
      'pyright',
      'lua_ls',
      'bashls',
      'jsonls',
    },
  },
}
