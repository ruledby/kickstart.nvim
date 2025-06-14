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

  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = { 'williamboman/mason.nvim' },
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

  {
    'neovim/nvim-lspconfig',
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.servers.cssls = opts.servers.cssls or {}
      opts.servers.eslint = opts.servers.eslint or {}
      opts.servers.html = opts.servers.html or {}
      opts.servers.lua_ls = opts.servers.lua_ls or {}
      opts.servers.pyright = opts.servers.pyright or {}
      opts.servers.tsserver = opts.servers.tsserver or {}
    end,
  },
}
