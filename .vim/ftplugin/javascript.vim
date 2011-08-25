set makeprg=jsl\ -nologo\ -nofilelisting\ -nosummary\ -nocontext\ -conf\ '/home/josh/etc/jslint.conf'\ -process\ %
set errorformat=%f(%l):\ %m
"make F10 call make for linting etc.
inoremap <silent> <F10> <C-O>:make<CR>
map <silent> <F10> :make<CR>
map <F2> :cnext<CR>
map <S-F2> :cprev<CR>
