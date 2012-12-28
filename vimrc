syntax on
set ts=4
set nu
set ai
set scrolloff=5
set so=999
colorscheme default
filetype plugin on
set wildmenu
"let Tlist_Use_Right_Window=1
"let Tlist_GainFocus_On_ToggleOpen=0
"let Tlist_Exit_OnlyWindow=1

" Add cursor line
set cursorline
highlight CursorLine ctermbg=white ctermfg=black
set cursorcolumn
highlight CursorColumn ctermbg=white ctermfg=black

" navigate in long line
map <DOWN> gj
map <UP> gk
imap <A-DOWN> <esc>gji
imap <A-UP> <esc>gki

" Remove trim traling whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Python file
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python set expandtab
autocmd FileType python set tabstop=4
autocmd FileType python set softtabstop=4
autocmd FileType python set shiftwidth=4
autocmd FileType python set autoindent
autocmd FileType python set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python set backspace=indent,eol,start
autocmd FileType python set dictionary+=/usr/share/vim/dictionary/python
"autocmd FileType python TlistToggle

" XML file
autocmd FileType xml set expandtab
autocmd FileType xml set tabstop=2
autocmd FileType xml set softtabstop=2
autocmd FileType xml set shiftwidth=2
autocmd FileType xml set autoindent
autocmd FileType xml set backspace=indent,eol,start

autocmd FileType txt set expandtab
autocmd FileType txt set tabstop=4
autocmd FileType txt set softtabstop=4
autocmd FileType txt set shiftwidth=4
autocmd FileType txt set autoindent
autocmd FileType txt set backspace=indent,eol,start

" HTML file
autocmd FileType html set expandtab
autocmd FileType html set tabstop=2
autocmd FileType html set softtabstop=2
autocmd FileType html set shiftwidth=2
autocmd FileType html set autoindent
autocmd FileType html set backspace=indent,eol,start
autocmd FileType html set dictionary+=/usr/share/vim/dictionary/html
"autocmd FileType html set smartindent cinwords=html,head,body,div

map <C-n> <C-x><C-k>

autocmd BufNewFile,BufRead *.todo setf todo
