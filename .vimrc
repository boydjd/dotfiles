set backspace=2
set ruler
set guioptions=em
set showtabline=2
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set autoindent
let Tlist_Sort_Type = "name"
let Tlist_Auto_Open = 1
let Tlist_Auto_Update = 1
let Tlist_Compact_Format = 1
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1
set nobackup
set number
set nuw=6
nnoremap <silent> <F8> :TlistToggle<CR>
set wrap!
set incsearch
set ignorecase
set smartcase
augroup mkd
autocmd BufRead *.md set ai formatoptions=tcroqn2 comments=n:&gt;
augroup END
set t_Co=256
colorscheme jellybeans 
map <F9> :w<CR>:make %<CR>
filetype plugin on
let NERDTreeShowFiles = 1
syntax on
ca w!! w !sudo tee "%" > /dev/null
let g:SuperTabDefaultCompleteType = "context"
set statusline=%{fugitive#statusline()}\ %t\ %y\ format:\ %{&ff};\ [%c,%l]
"set statusline=%{fugitive#statusline()}
