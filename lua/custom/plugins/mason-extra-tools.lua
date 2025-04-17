print 'mason-extra-tools loaded!'
return {
  'WhoIsSethDaniel/mason-tool-installer.nvim',
  opts = {
    ensure_installed = {
      'flake8',
      -- other linters/formatters
    },
    auto_update = false,
    run_on_start = true,
    start_delay = 3000,
  },
}
