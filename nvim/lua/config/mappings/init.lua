local m = require'mapx'.setup{}

vim.g.mapleader = ";"

-- Split window {{
m.nmap([[ss]], [[:split<Return><C-w>w]])
m.nmap([[sv]], [[:vsplit<Return><C-w>w]])
-- }}

-- Move Window {{
m.map([[sh]], [[<C-w>h]])
m.map([[sj]], [[<C-w>j]])
m.map([[sk]], [[<C-w>k]])
m.map([[sl]], [[<C-w>l]])
-- }}

-- Switch tab {{
m.nmap([[<S-Tab>]], [[:tabprev<Return>]])
m.nmap([[<Tab>]], [[:tabnext<Return>]])
-- }}

-- Open NERDTree {{
m.map([[<C-n>]], [[:NERDTreeToggle<CR>]])
-- }}

-- Git {{
m.nnoremap([[gs]], [[:Git<CR><C-w>T]], m.silent)
m.nnoremap([[gps]], [[:Git push<CR>]], m.silent)
m.nnoremap([[gpl]], [[:Git pull<CR>]], m.silent)
-- }}

-- Trouble {{
m.nnoremap([[<Leader>xx]], [[:TroubleToggle<CR>]])
m.nnoremap([[<Leader>xw]], [[:TroubleToggle workspace_diagnostics<CR>]])
m.nnoremap([[<Leader>xd]], [[:TroubleToggle document_diagnostics<CR>]])
m.nnoremap([[<Leader>xq]], [[:TroubleToggle quickfix<CR>]])
m.nnoremap([[<Leader>xl]], [[:TroubleToggle loclist<CR>]])
m.nnoremap([[gR]], [[:TroubleToggle<CR>]])
-- }}

-- Packer {{
m.noremap([[<Leader>pi]], [[:PackerInstall<CR>]])
m.noremap([[<Leader>ps]], [[:PackerSync<CR>]])
-- }}
