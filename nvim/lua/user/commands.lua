vim.api.nvim_create_user_command('Filepath', function()
  ---@diagnostic disable-next-line: param-type-mismatch
  vim.notify(vim.fn.expand '%:p', vim.lsp.log_levels.INFO, {
    title = 'Filename',
    timeout = 3000,
  })
end, { nargs = 0 })

vim.api.nvim_create_user_command('YankFilename', function()
  vim.fn.setreg('"', vim.fn.expand '%:t')
end, { nargs = 0 })

vim.api.nvim_create_user_command('YankFilepath', function()
  vim.fn.setreg('"', vim.fn.expand '%:p')
end, { nargs = 0 })

vim.api.nvim_create_user_command('CopyRight', function()
  require('user.utils.comment').copy_right 'author'
end, { nargs = 0 })

vim.api.nvim_create_user_command('CopyRightUpdate', function()
  require('user.utils.comment').copy_right_update()
end, { nargs = 0 })

vim.api.nvim_create_user_command('TrimWhiteSpace', function()
  require('user.utils.util').trim_whitespace()
end, { nargs = 0 })

vim.api.nvim_create_user_command('P', function(obj)
  vim.pretty_print(vim.fn.luaeval(obj.args))
end, { nargs = 1 })