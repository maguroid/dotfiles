" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

nmap <silent> <C-u><C-t> :<C-u>Denite filetype<CR>
nmap <silent> <C-u><C-p> :<C-u>Denite file/rec<CR>
nmap <silent> <C-u><C-j> :<C-u>Denite line<CR>
nmap <silent> <C-u><C-g> :<C-u>Denite grep<CR>
nmap <silent> <C-u><C-]> :<C-u>DeniteCursorWord grep<CR>
nmap <silent> <C-u><C-u> :<C-u>Denite file_mru<CR>
nmap <silent> <C-u><C-y> :<C-u>Denite neoyank<CR>
nmap <silent> <C-u><C-r> :<C-u>Denite -resume<CR>
nmap <silent> <C-u>; :<C-u>Denite -resume -immediately -select=+1<CR>
nmap <silent> <C-u>- :<C-u>Denite -resume -immediately -select=-1<CR>
nmap <silent> <C-u><C-d> :<C-u>call denite#start([{'name': 'file/rec', 'args': ['~/dotfiles']}])<CR>
nnoremap ml :<C-u>call denite#start([{'name': 'file/rec', 'args': [g:memolist_path]}])<CR>
nmap <silent> ;f  :<C-u>Denite -start-filter file/rec<CR>
nmap <silent> ;F  :<C-u>DeniteProjectDir -start-filter file/rec<CR>
nmap <silent> ;g  :<C-u>DeniteProjectDir grep:::<C-r><C-w><CR>
nmap <silent> ;G  :<C-u>DeniteProjectDir grep:::<C-r><C-a><CR>
nmap <silent> ;;g :<C-u>Denite grep<CR>
nmap <silent> ;;G :<C-u>DeniteProjectDir grep<CR>

" Change file/rec command 
call denite#custom#var('file/rec', 'command',
\ ['rg', '--files', '--glob', '!.git', '--color', 'never'])

" Ripgrep command on grep source
call denite#custom#var('grep', {
           \ 'command': ['rg'],
           \ 'default_opts': ['-i', '--vimgrep', '--no-heading'],
           \ 'recursive_opts': [],
           \ 'pattern_opt': ['--regexp'],
           \ 'separator': ['--'],
           \ 'final_opts': [],
           \ })

