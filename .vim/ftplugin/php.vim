set keywordprg=pman
let php_sql_query = 1
let php_htmlInStrings = 1
let php_smart_members = 1
let php_alt_properties = 1
source ~/.vim/plugins/php-doc.vim 
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR>
let g:pdv_cfg_Author = "Josh Boyd <joshua.boyd@endeavorsystems.com>" 
let g:pdv_cfg_Copyright = "(c) Endeavor Systems, Inc. 2011 {@link http://www.endeavorsystems.com}"
let g:pdv_cfg_License = "http://www.openfisma.org/content/license GPLv3"
map <F10> :w<CR>:!phpcs -v --standard=/home/josh/src/openfisma-extras/php_codesniffer/OpenFisma/ %<CR>
map <F12> :1r /home/josh/src/header.php<CR>
compiler php
set errorformat=%m\ in\ %f\ on\ line\ %l
