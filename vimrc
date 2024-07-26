set nu
set autoindent
set scrolloff=999 " cursor always in the middle of the screen

set modeline

set listchars=trail:◃,nbsp:•

" Set leader
let mapleader=','

" Tabs and spaces parameters
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Automatically remove trim traling whitespace.
" Prevent git add -p to crash on invalid patch ...
let blacklist = ['diff']
autocmd BufWritePre * if index(blacklist, &ft) < 0 | :%s/\s\+$//e
"autocmd BufWritePre * :%s/\s\+$//e " Remove trim traling whitespace

" Persistent undo
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000


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
"set background=dark
set background=light
"colorscheme base16-solarized-light
colorscheme solarized
""colorscheme light256-2
"""colorscheme light256

set textwidth=90
"let &colorcolumn=join(range(&textwidth+1,999),",")
"highlight colorcolumn cterm=none ctermbg=254
"highlight colorcolumn cterm=none ctermbg=239
highlight colorcolumn cterm=none

set cursorline
"highlight CursorLine cterm=none ctermbg=255
"highlight CursorLine cterm=none ctermbg=239
highlight CursorLine cterm=none
set cursorcolumn
"highlight CursorColumn cterm=none ctermbg=255
"highlight CursorColumn cterm=none ctermbg=239
highlight CursorColumn cterm=none


" Functions
let g:colorColumnSize=999
fu! ToggleColorColumn()
    if g:colorColumnSize == "999"
        let g:colorColumnSize=91
    else
        let g:colorColumnSize=999
    endif
    let &colorcolumn=join(range(g:colorColumnSize,999),",")
endfunction
call ToggleColorColumn()



"highlight OverLength ctermbg=254
highlight OverLength cterm=underline
" ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

""" Keys mapping
map <F1> :set nu!<CR>
map <F2> :set paste! <bar> :set paste?<CR>
map <F3> :set list!<CR>
map <F4> :set ignorecase! <bar> :set ignorecase?<CR>
"map <F5> :set hlsearch!<CR> :set hlsearch?<CR>
map <F5> :let @/=""<CR>
map <F6> m<Space><CR>
"map <F6> m<Space><CR>
map <F7> :call ToggleColorColumn()<CR>

fu! Hd4fun()
    %s/^onclick.*\n//g
    %s/^target.*\n//g
    %s/^.*href="\(.*\)"/\1/g
    g/^$/d
"    substitute('%', "", '')
    ":%s///g"
"    execute ":%s/^target.*\n//g"
"    execute ':%s/^.*href="\(.*\)"/\1/g'
endfunction
command! Hd4fun :execute Hd4fun()

"map <leader>& :b1<CR>
"map <leader>é :b2<CR>
"map <leader>" :b3<CR>
"map <leader>' :b4<CR>
"map <leader>) :b5<CR>
"map <leader>- :b6<CR>
"map <leader>è :b7<CR>
"map <leader>_ :b8<CR>
"map <leader>ç :b9<CR>
"map <leader>&à :b10<CR>
"map <leader>&& :b11<CR>
"map <leader>&é :b12<CR>
"map <leader>&"" :b13<CR>
"map <leader>&'' :b14<CR>
"map <leader>&() :b15<CR>
map <TAB> :bn<CR>
map <Backspace> :bp<CR>

map <leader>à :normal i⁰<ESC>
map <leader>& :normal i¹<ESC>
map <leader>é :normal i²<ESC>
map <leader>" :normal i³<ESC>
map <leader>' :normal i⁴<ESC>
map <leader>( :normal i⁵<ESC>
map <leader>- :normal i⁶<ESC>
map <leader>è :normal i⁷<ESC>
map <leader>_ :normal i⁸<ESC>
map <leader>ç :normal i⁹<ESC>

"" Execute current line
" and replace it by the result
nnoremap <leader>!r :.!bash<cr>
" and run it in the terminal
nnoremap <leader>!e "9yy :!<c-R>9<bs><cr>

" Settings by filetype
filetype plugin on
" Python file
au FileType python set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
au FileType python set backspace=indent,eol,start
"au FileType python set foldlevel=0
"au Filetype python set omnifunc=pythoncomplete#Complete
"autocmd FileType python set dictionary+=/usr/share/vim/dictionary/python

" HTML files
au FileType html set expandtab
au FileType html set tabstop=2
au FileType html set softtabstop=2
au FileType html set shiftwidth=2

" JS/livescript files
au FileType ruby set expandtab
au FileType ruby set tabstop=2
au FileType ruby set softtabstop=2
au FileType ruby set shiftwidth=2
au FileType javascript set expandtab
au FileType javascript set tabstop=2
au FileType javascript set softtabstop=2
au FileType javascript set shiftwidth=2
au FileType svelte set expandtab
au FileType svelte set tabstop=2
au FileType svelte set softtabstop=2
au FileType svelte set shiftwidth=2
au FileType json set expandtab
au FileType json set tabstop=2
au FileType json set softtabstop=2
au FileType json set shiftwidth=2
au FileType ls set expandtab
au FileType ls set tabstop=2
au FileType ls set softtabstop=2
au FileType ls set shiftwidth=2
au FileType yaml set expandtab
au FileType yaml set tabstop=2
au FileType yaml set softtabstop=2
au FileType yaml set shiftwidth=2
au FileType markdown set expandtab
au FileType markdown set tabstop=2
au FileType markdown set softtabstop=2
au FileType markdown set shiftwidth=2
au FileType todo set expandtab
au FileType todo set tabstop=2
au FileType todo set softtabstop=2
au FileType todo set shiftwidth=2
au FileType go set expandtab
au FileType go set tabstop=2
au FileType go set softtabstop=2
au FileType go set shiftwidth=2
au FileType terraform set expandtab
au FileType terraform set tabstop=2
au FileType terraform set softtabstop=2
au FileType terraform set shiftwidth=2
au FileType ps1 set expandtab
au FileType ps1 set tabstop=2
au FileType ps1 set softtabstop=2
au FileType ps1 set shiftwidth=2

" Golang
let g:go_def_mapping_enabled = 0
"let g:go_highlight_fields = 1
"let g:go_highlight_functions = 1
"let g:go_highlight_function_calls = 1
"let g:go_highlight_extra_types = 1
"let g:go_highlight_operators = 1
"
let g:go_fmt_autosave = 1
"let g:go_fmt_command = "goimports"
"
"let g:go_auto_type_info = 1

" Plugins
let $PYTHONPATH='/usr/lib/python3.5/site-packages'
set rtp+=/usr/lib/python3.4/site-packages/powerline/bindings/vim/
set laststatus=2 " Always show status line (needed for powerline).
"let g:Powerline_colorscheme='solarized256'
let g:Powerline_colorscheme='solarized'
"let g:Powerline_symbols = 'fancy'
execute pathogen#infect()

" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" TODO file
autocmd BufNewFile,BufRead *.todo setf todo

"set showtabline=2

"" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_powerline_fonts = 1

"" nerdtree
set splitright
set splitbelow

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Use ctrl-[hjkl] to select the active split!
execute "set <M-R>=\e[1;3C"
nmap <silent> <M-R> :wincmd l<CR>
execute "set <M-L>=\e[1;3D"
nmap <silent> <M-L> :wincmd h<CR>
execute "set <M-U>=\e[1;3A"
nmap <M-U> <c-w>k
tmap <M-U> <c-w>k
execute "set <M-D>=\e[1;3B"
nmap <silent> <M-D> :wincmd j<CR>
execute "set <M-r>=\e[1;7C"
nmap <silent> <M-r> :vertical resize +2<CR>
execute "set <M-l>=\e[1;7D"
nmap <silent> <M-l> :vertical resize -2<CR>
execute "set <M-u>=\e[1;7A"
nmap <silent> <M-u> :horizontal resize -2<CR>
execute "set <M-d>=\e[1;7B"
nmap <silent> <M-d> :horizontal resize +2<CR>
"autocmd VimEnter * NERDTree

" Exit Vim if NERDTree is the only window remaining in the only tab.
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && bufnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if winnr() == winnr('h') && bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" show lines of files?
let g:NERDTreeFileLines = 1

let s:term_buf_nr = -1
let s:term_win_nr = -1
function! s:ToggleTerminal()
    if s:term_buf_nr == -1
        execute "terminal tmux"
        silent execute "setl nobuflisted"
        "silent execute "vert res"
        let s:term_buf_nr = bufnr("$")
        let s:term_win_nr = winnr("$")
    endif

    "silent execute s:term_win_nr . "wincmd :hide"
    "    try
    "        execute "bdelete! " . s:term_buf_nr
    "    catch
    "        let s:term_buf_nr = -1
    "        call <SID>ToggleTerminal()
    "        return
    "    endtry
    "    let s:term_buf_nr = -1
    "endif
endfunction

nnoremap <silent> <F11> :call <SID>ToggleTerminal()<CR>
tnoremap <silent> <F11> <C-w>:call <SID>ToggleTerminal()<CR>

"" YCM
let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']

"" floaterm
"let g:floaterm_keymap_new    = '<F7>'
"let g:floaterm_keymap_prev   = '<F8>'
"let g:floaterm_keymap_next   = '<F9>'
"let g:floaterm_keymap_toggle = '<F11>'
