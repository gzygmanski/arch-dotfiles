-- basic settings
require('settings')
require('keybindings')

-- packer
require('plugins')

-- lsp
require('plugins/codeformatter')
require('plugins/completion')
require('plugins/lsp')

-- plugins
require('plugins/treesitter')
require('plugins/galaxyline')
require('plugins/telescope')
require('plugins/barbar')
require('plugins/nvimTree')

-- terminal
vim.api.nvim_exec([[
  autocmd TermOpen * setlocal signcolumn=no nonu nornu
  autocmd FileType NvimTree setlocal signcolumn=no nonu rnu
]], true)

-- emmet
vim.g.user_emmet_leader_key = '<leader>'
vim.g.user_emmet_mode = 'in'
vim.g.user_emmet_install_global = 0
vim.g.jsx_ext_required = 0
vim.g.user_emmet_settings = {
  javascriptreact = {
    extends = 'jsx',
  },
  typescriptreact = {
    extends = 'jsx',
  },
}

vim.api.nvim_exec([[
  autocmd FileType html,css,javascriptreact,typescriptreact EmmetInstall
]], true)

-- auto-format
vim.api.nvim_exec([[
  augroup Format
    autocmd!
    autocmd BufEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
    autocmd BufWritePost *.js,*.jsx,*.ts,*.tsx FormatWrite
  augroup END
]], true)
