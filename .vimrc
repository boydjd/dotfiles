" Use Vim settings, rather than Vi settings
set nocompatible

" Pathogen plugin manager
execute pathogen#infect()
execute pathogen#helptags()

" General config

set number 					" Show line numbers
set showmode					" Show current mode down the bottom
set gcr=a:blinkon0				" Disable cursor blinkd
set visualbell					" No sounds
set hidden					" Buffers can exist in the background without being in a window

" Search settings
set hlsearch					" Highlight searches
set viminfo='100,f1				" Save up to 100 marks, enable capital marks

" Turn off swap files
set noswapfile
set nobackup
set nowb

" Persistent undo
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" Indentation
set smartindent
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" Display tabs and trailing spaces visually
"set list listchars=tab:\ \ ,trail:·

set nowrap 					" Don't wrap lines
set linebreak					" Wrap lines at convenient points

set rtp+=~/.local/lib/python2.7/site-packages/powerline/bindings/vim

" Leave insert mode immediately, not a second from now
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

set noruler
set laststatus=2 " Always display the statusline in all windows
set noshowmode " Hide the default mode text

"set statusline=%{fugitive#statusline()}\ %t\ %y\ format:\ %{&ff};\ [%c,%l]
set t_Co=16

" Setup solarized colorscheme
set background=dark
let g:solarized_termcolors=16
colorscheme solarized

nnoremap <silent> <F8> :TlistToggle<CR>
set ofu=syntaxcomplete#Complete
let g:neocomplcache_enable_at_startup = 1
let g:Powerline_symbols = 'fancy'

let g:syntastic_php_checkers=['php', 'phpcs']
let g:syntastic_check_on_open=1
let g:syntastic_auto_jump=1
"let g:syntastic_auto_loc_list=1
let g:synastic_enable_highlighting=1
let g:syntastic_echo_current_error=1

