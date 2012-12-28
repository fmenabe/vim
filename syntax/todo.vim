" Vim syntax file
" Language: todo
" Maintainer: François Ménabé

if exists("b:current_syntax")
  finish
endif

syn match todoPeople '@\S\+'
syn match todoPeople '@\S\+\s\u\S*'
syn match todoMaybe '^\s*(.*)$' 
syn match todoImportant '^\s*!\s.*$' contains=todoProject,todoPeople,todoDate
syn match todoDone '^\s*-\s.*$' contains=todoProject,todoPeople,todoDate
syn match todoList '^\s*\*\s'
syn match todoProject '^\s*\*\s([A-Z/]*)\s'
syn match todoRt /\[rt=[0-9]*\]/
syn match todoDate /\d\{4\}\/\d\{2\}\/\d\{2\}/

hi todoRt term=bold ctermfg=DarkCyan guifg=DarkCyan gui=bold
hi todoPeople ctermfg=DarkGreen guifg=DarkGreen
hi todoMaybe term=bold ctermfg=DarkBlue guifg=DarkYellow gui=bold
hi todoProject term=bold ctermfg=DarkYellow guifg=DarkYellow gui=bold
hi todoImportant term=bold ctermfg=Red guifg=Red gui=bold
hi todoDone term=bold ctermfg=DarkGreen guifg=DarkGreen gui=bold
hi todoList ctermfg=DarkMagenta guifg=DarkMagenta
hi todoDate term=underline gui=underline

let b:current_syntax = "todo"
