set keywordprg=pman
let php_sql_query = 1
let php_htmlInStrings = 1
let php_smart_members = 1
let php_alt_properties = 1
source ~/.vim/plugins/php-doc.vim 
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR>
let g:pdv_cfg_Author = "Josh Boyd <joshuab@joinvip.com>" 
let g:pdv_cfg_Copyright = "(c) VIP Communications 2012"
map <F12> :w<CR>:!phpcs -v --standard=/home/jboyd/src/devtools/codesniffer/VIPStandard %<CR>
compiler php
set errorformat=%m\ in\ %f\ on\ line\ %l
