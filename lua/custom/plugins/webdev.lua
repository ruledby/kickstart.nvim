return {
  -- Ensure Mason installs all the required LSP servers
  {
    'williamboman/mason-lspconfig.nvim',
    opts = {
      ensure_installed = {
        'html',
        'cssls',
        'jsonls',
        'tsserver',
        'eslint',
      },
    },
  },

  -- Install Prettierd and Eslint via Mason
  {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    opts = {
      ensure_installed = {
        'prettierd',
        'eslint_d',
      },
    },
  },

  -- Add formatters for conform.nvim
  {
    'stevearc/conform.nvim',
    opts = function(_, opts)
      opts.formatters_by_ft = vim.tbl_extend('force', opts.formatters_by_ft or {}, {
        javascript = { 'prettierd' },
        typescript = { 'prettierd' },
        html = { 'prettierd' },
        css = { 'prettierd' },
        json = { 'prettierd' },
      })
    end,
  },

  -- Add Treesitter parsers
  {
    'nvim-treesitter/nvim-treesitter',
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { 'html', 'javascript', 'typescript', 'css', 'json' })
    end,
  },
}
