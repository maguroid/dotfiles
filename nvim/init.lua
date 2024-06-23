require'plugins'
require'config.options'
require'config.mappings'
require'config.language_server'
require'config.completion'
require'config.firenvim'
require'config.delimitMate'

vim.cmd[[autocmd BufWritePost plugins.lua PackerCompile]]

