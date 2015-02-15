set nu
set autoindent
set scrolloff=999 " cursor always in the middle of the screen


" Tabs and spaces parameters
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
autocmd BufWritePre * :%s/\s\+$//e " Remove trim traling whitespace


" Folding
set foldmethod=syntax
set foldlevel=999
let perl_fold=1
"set foldnestmax=2


" Search parameters
set hlsearch
set incsearch


" Colors and cursor lines
set t_Co=256
syntax on
colorscheme light256-2

set textwidth=80
"let &colorcolumn=join(range(&textwidth+1,999),",")
highlight colorcolumn cterm=none ctermbg=254

set cursorline
highlight CursorLine cterm=none ctermbg=255
set cursorcolumn
highlight CursorColumn cterm=none ctermbg=255


" Functions
let g:colorColumnSize=999
fu! ToggleColorColumn()
    if g:colorColumnSize == "999"
        let g:colorColumnSize=81
    else
        let g:colorColumnSize=999
    endif
    let &colorcolumn=join(range(g:colorColumnSize,999),",")
endfunction
call ToggleColorColumn()


" Keys mapping
map <F1> :set nu!<CR>
map <F2> :set paste! <bar> :set paste?<CR>
map <F3> :set list!<CR>
map <F4> :set ignorecase! <bar> :set ignorecase?<CR>
"map <F5> :set hlsearch!<CR> :set hlsearch?<CR>
map <F5> :let @/=""<CR>
map <F6> :call ToggleColorColumn()<CR>


" Settings by filetype
filetype plugin on
" Python file
au FileType python set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
au FileType python set backspace=indent,eol,start
"au FileType python set foldlevel=0
"au Filetype python set omnifunc=pythoncomplete#Complete
"autocmd FileType python set dictionary+=/usr/share/vim/dictionary/python

" HTML file
au FileType html set expandtab
au FileType html set tabstop=2
au FileType html set softtabstop=2
au FileType html set shiftwidth=2


" Plugins
"set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/ " needed on ubuntu when powerline is installed for a user
set laststatus=2 " Always show status line (needed for powerline).
execute pathogen#infect()


" TODO file
autocmd BufNewFile,BufRead *.todo setf todo
