" 行番号を表示
set number
" backspaceを有効化
set backspace=indent,eol,start
" 表示色変更
syntax on
colorscheme iceberg

" 画面分割
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
" 画面移動
nmap <Space> <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
" 画面のリサイズ
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <C-w><down> <C-w>=

" VimFiler 
nmap sf :VimFilerBufferDir<Return>
nmap sF :VimFilerExplorer -find<Return>
nmap sb :Unite buffer<Return>
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 0
let g:vimfiler_enable_auto_cd = 0
let g:vimfiler_tree_leaf_icon = ''
let g:vimfiler_tree_opened_icon = '▼'
let g:vimfiler_tree_closed_icon = '▶︎'
let g:vimfiler_marked_file_icon = '✔︎'

" 現在のdirectoryを開く
nmap te :tabedit

" tabの一覧を表示
nmap tl :Unite tab

" Pathogen
execute pathogen#infect()
