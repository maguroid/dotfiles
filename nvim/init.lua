require'plugins'
require'options'
require'plugins'
require'lsp_config'

vim.cmd[[autocmd BufWritePost plugins.lua PackerCompile]]

