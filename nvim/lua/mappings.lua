local m = require'mapx'.setup{}

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
