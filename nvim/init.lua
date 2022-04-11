require'plugins'
require'config.options'
require'config.mappings'
require'config.language_server'
require'config.completion'
require'config.tabnine'
require'config.firenvim'

vim.cmd[[autocmd BufWritePost plugins.lua PackerCompile]]

