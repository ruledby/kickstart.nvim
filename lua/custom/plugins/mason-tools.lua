-- ~/.config/nvim/lua/custom/plugins/mason-tools.lua
return {
  'williamboman/mason-lspconfig.nvim',
  opts = {
    ensure_installed = {
      'pyright',
      'ruff',
      'bashls',
      'jsonls',
      -- Add any other tools you want Mason to always install
    },
  },
}
