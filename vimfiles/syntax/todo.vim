" Vim syntax file
" Language: todo
" Maintainer: François Ménabé

if exists("b:current_syntax")
  finish
endif

set textwidth=999

syn match todoResume '===== .* ====='
syn match todoProject '([A-Z/]*)'
syn match todoPeople /@[a-zA-Z]*/
syn match todoDate /\d\{2\}\/\d\{2\}\/\d\{4\}/
syn match todoProject '([A-Z/]*)'
syn match todoSection /\[.*\]/
syn match todoRt /\[rt=[0-9]*\]/
syn match todoList '^\s*\*\s'
syn match todoDone '^\s*-\s.*$' contains=todoProject,todoPeople,todoDate,todoRt
syn match todoMaybe '^\s*?\s.*$'
syn match todoImportant '^\s*!\s.*$' contains=todoProject,todoPeople,todoDate,todoRt

hi todoDone         term=bold   ctermfg=72          guifg=DarkGreen     gui=bold
hi todoDate         term=bold   ctermfg=DarkCyan    guifg=DarkCyan      gui=bold
hi todoRt           term=bold   ctermfg=69          guifg=DarkMagenta   gui=bold
hi todoPeople                   ctermfg=100         guifg=DarkGreen
hi todoMaybe        term=bold   ctermfg=DarkBlue    guifg=DarkYellow    gui=bold
hi todoProject      term=bold   ctermfg=3           guifg=Red           gui=bold
hi todoImportant    term=bold   ctermfg=Red         guifg=Red           gui=bold
hi todoList                     ctermfg=111         guifg=DarkMagenta
hi todoResume       term=bold   ctermfg=DarkBlue    guifg=DarkYellow    gui=bold
hi todoSection      term=bold   ctermfg=Red         guifg=DarkYellow    gui=bold

let b:current_syntax = "todo"
