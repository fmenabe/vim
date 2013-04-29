set nu
set autoindent
set scrolloff=999

" Tabs and spaces parameters
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
autocmd BufWritePre * :%s/\s\+$//e " Remove trim traling whitespace

:syntax sync linebreaks=1
" Search parameters
set hlsearch
set incsearch


" Colors and cursor lines
set t_Co=256
syntax on
colorscheme wombat256

"set textwidth=80
"let &colorcolumn=join(range(&textwidth+1,999),",")
highlight colorcolumn cterm=none ctermbg=238 ctermfg=88

set cursorline
highlight CursorLine cterm=none ctermbg=238
set cursorcolumn
highlight CursorColumn cterm=none ctermbg=238

" Keys mapping
map <F1> :set nu!<CR>
map <F2> :set paste!<CR> :set paste?<CR>
map <F3> :set list!<CR>
map <F4> :set ignorecase!<CR> :set ignorecase?<CR>
let g:colorColumnSize=999
fu! ToggleColorColumn()
    if g:colorColumnSize == "999"
        let g:colorColumnSize=81
    else
        let g:colorColumnSize=999
    endif
    let &colorcolumn=join(range(g:colorColumnSize,999),",")
endfunction
map <F5> :call ToggleColorColumn()<CR>


filetype plugin on

" Python file
au FileType python set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
au FileType python set backspace=indent,eol,start
au FileType python set textwidth=80

" HTML file
au FileType html set expandtab
au FileType html set tabstop=2
au FileType html set softtabstop=2
au FileType html set shiftwidth=2

execute pathogen#infect()
" Needed for powerline!
set laststatus=2

" TODO file
autocmd BufNewFile,BufRead *.todo setf todo
