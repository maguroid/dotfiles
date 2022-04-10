require'plugins'
require'options'
require'mappings'
require'lsp_config'
require'cmp_config'

vim.cmd[[autocmd BufWritePost plugins.lua PackerCompile]]

