o = vim.o
cmd = vim.cmd

o.number = true

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

-- Spell check {{
o.spelllang = 'en_us'
-- }}
