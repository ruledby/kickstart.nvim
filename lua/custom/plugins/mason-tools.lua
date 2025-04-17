print '✅ mason-tools.lua loaded'

return {
  'williamboman/mason-lspconfig.nvim',
  opts = {
    ensure_installed = {
      'pyright',
      'ruff',
      'lua_ls',
      'bashls',
      'jsonls',
    },
  },
}
