o = vim.o
cmd = vim.cmd

-- Tab {{
o.expandtab = true
o.tabstop = 2
o.shiftwidth = 2
-- }}


-- Theme {{
cmd 'syntax enable'
cmd 'colorscheme tender'
-- }}

-- Yank {{
o.clipboard= 'unnamed' -- save on clipboard
-- }}
