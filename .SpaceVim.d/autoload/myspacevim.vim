function! myspacevim#before() abort
   let g:tex_flavor='latex'
   let g:vimtex_view_method='zathura'
   let g:vimtex_quickfix_mode=0
   set conceallevel=0
   let g:tex_conceal='abdmg'
 endfunction
function! myspacevim#after() abort
  colorscheme onedark
  set shiftwidth=2
  set tabstop=2
  set softtabstop=2 
  let g:neoformat_python_autopep8 = {
            \ 'exe': 'pep8',
            \ 'args': ['--indent-size=2'],
            \ }
  let g:neoformat_python_yapf = {
            \ 'exe': 'yapf',
            \ 'args': ["--style=\"{indent_width: 2}\""],
            \ }
  let g:neoformat_enabled_python = ['yapf']
  :command! OpenInVSCode exe "silent !code --goto '" . expand("%") . ":" . line(".") . ":" . col(".") . "'" | redraw!
endfunction   



