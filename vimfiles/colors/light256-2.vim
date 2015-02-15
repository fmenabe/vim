" Description:	a colour scheme inspired by kellys colorscheme
"  Maintainer:	francois.menabe@gmail.com
"     License:	BSD
"     Version:	0.1 (2013.05.18)

set background=light

if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

let colors_name = "light256"

" tabline
if &t_Co == 256
"	hi Normal 		ctermfg=232	ctermbg=231	cterm=none
	hi Normal 		ctermfg=232	ctermbg=none	cterm=none
    hi NonText                  ctermbg=254
    hi LineNr       ctermfg=236 ctermbg=254 cterm=bold
"	hi Cursor 		ctermfg=231	ctermbg=235	cterm=none
	hi MatchParen	ctermfg=235	ctermbg=184	cterm=bold
	hi Visual		ctermfg=232	ctermbg=147	cterm=none

"	hi PreProc		ctermfg=1	ctermbg=231	cterm=none
	hi PreProc		ctermfg=1	ctermbg=none	cterm=none
    hi link Include    PreProc
    hi link Define     PreProc
    hi link PreConfig  PreProc

"	hi Comment		ctermfg=22	ctermbg=231	cterm=none
"	hi Constant     ctermfg=18	ctermbg=231	cterm=none
	hi Comment		ctermfg=22	ctermbg=none	cterm=none
	hi Constant     ctermfg=18	ctermbg=none	cterm=none
"    hi String       ctermfg=17  ctermbg=231 cterm=none
"    hi Character    ctermfg=19  ctermbg=231 cterm=none
"    hi Number       ctermfg=20  ctermbg=231 cterm=none
"    hi Boolean      ctermfg=21  ctermbg=231 cterm=none
"    hi Float        ctermfg=22  ctermbg=231 cterm=none
    hi! link String     Constant
    hi! link Character  Constant
    hi! link Number     Constant
    hi! link Boolean    Constant
    hi! link Float      Constant

"	hi Statement	ctermfg=52  ctermbg=231	cterm=none
"    hi Function     ctermfg=1  ctermbg=231 cterm=none
"    hi Identifier   ctermfg=58  ctermbg=231 cterm=none
	hi Statement	ctermfg=52  ctermbg=none	cterm=none
    hi Function     ctermfg=1  ctermbg=none cterm=none
    hi Identifier   ctermfg=58  ctermbg=none cterm=none

"    hi Conditional  ctermfg=17  ctermbg=231 cterm=none
"    hi Repeat       ctermfg=20  ctermbg=231 cterm=none
"    hi Label        ctermfg=72  ctermbg=231 cterm=none
"    hi Operator     ctermfg=68  ctermbg=231 cterm=none
"    hi link Keyword Identifier
"    hi Exception    ctermfg=130 ctermbg=231 cterm=none
    hi Conditional  ctermfg=17  ctermbg=none cterm=none
    hi Repeat       ctermfg=20  ctermbg=none cterm=none
    hi Label        ctermfg=72  ctermbg=none cterm=none
    hi Operator     ctermfg=68  ctermbg=none cterm=none
    hi link Keyword Identifier
    hi Exception    ctermfg=130 ctermbg=none cterm=none

"	hi Type 		ctermfg=29	ctermbg=231	cterm=none
	hi Type 		ctermfg=29	ctermbg=none	cterm=none
    hi link StorageClass   Type
    hi link StorageClass   Structure
    hi link StorageClass   Typedef

"	hi Special		ctermfg=29	ctermbg=231	cterm=none
	hi Special		ctermfg=29	ctermbg=none	cterm=none
    hi link SpecialComment Special
    hi link Tag            Special
    hi link Delimiter      Special
    hi link SpecialComment Special
    hi link Debug          Special

    hi Error        ctermfg=232 ctermbg=9
    hi TODO         ctermfg=234 ctermbg=110 cterm=bold

    hi Search       ctermfg=232 ctermbg=180
"	hi Underlined	ctermfg=232	ctermbg=121	cterm=underline

	hi Folded 		ctermfg=235	ctermbg=110	cterm=none

"	hi StatusLine 	ctermfg=81	ctermbg=235	cterm=bold
"	hi StatusLineNC ctermfg=231	ctermbg=235	cterm=none
"	hi DiffAdd		ctermfg=74	ctermbg=235 cterm=none
"	hi DiffChange	ctermfg=144	ctermbg=235	cterm=none
"	hi DiffDelete	ctermfg=235	ctermbg=239	cterm=none
"	hi DiffText		ctermfg=144	ctermbg=124	cterm=none
"	hi ModeMsg		ctermfg=235	ctermbg=231	cterm=bold
"	hi Pmenu		ctermfg=74	ctermbg=235	cterm=none
"	hi PmenuSel		ctermfg=81	ctermbg=235	cterm=bold
"	hi PmenuSbar	ctermfg=235	ctermbg=235	cterm=none
"	hi PmenuThumb	ctermfg=81	ctermbg=235	cterm=none
"	hi Search		ctermfg=231	ctermbg=235	cterm=none
"	hi Todo 		ctermfg=124	ctermbg=231	cterm=bold
"	hi Underlined	ctermfg=234	ctermbg=231	cterm=underline
"	hi Wildmenu		ctermfg=234	ctermbg=81	cterm=bold
endif
hi link pythonBuiltin        Identifier

"hi! link Boolean		Constant
"hi! link Character		Constant
"hi! link Conditional	Statement
"hi! link CursorColumn	CursorLine
"hi! link Debug			Special
"hi! link Define			PreProc
"hi! link Delimiter		Special
"hi! link Directory		Type
"hi! link Error			Todo
"hi! link ErrorMsg		Error
"hi! link Exception		Statement
"hi! link Float			Constant
"hi! link FoldColumn		Folded
"hi! link Function		Normal
"hi! link Identifier		Special
"hi! link Ignore			Comment
"hi! link IncSearch		Search
"hi! link Include		PreProc
"hi! link Keyword		Statement
"hi! link Label			Statement
"hi! link LineNr			Comment
"hi! link Macro			PreProc
"hi! link MoreMsg		ModeMsg
"hi! link NonText		Comment
"hi! link Number			Constant
"hi! link Operator		Special
"hi! link PreCondit		PreProc
"hi! link Question		MoreMsg
"hi! link Repeat			Statement
"hi! link SignColumn		FoldColumn
"hi! link SpecialChar	Special
"hi! link SpecialComment	Special
"hi! link SpecialKey		Special
"hi! link SpellBad		Error
"hi! link SpellCap		Error
"hi! link SpellLocal		Error
"hi! link SpellRare		Error
"hi! link StorageClass	Type
"hi! link String			Constant
"hi! link Structure		Type
"hi! link Tag			Special
"hi! link Title			ModeMsg
"hi! link Typedef		Type
"hi! link VertSplit		StatusLineNC
"hi! link WarningMsg		Error
"
"" ada
"hi! link adaBegin			Type
"hi! link adaEnd				Type
"hi! link adaKeyword			Special
"
"" c++
"hi! link cppAccess			Type
"hi! link cppStatement		Special
"
"" hs
"hi! link ConId				Type
"hi! link hsPragma			PreProc
"hi! link hsConSym			Operator
"
"" html
"hi! link htmlArg			Statement
"hi! link htmlEndTag			Special
"hi! link htmlLink			Underlined
"hi! link htmlSpecialTagName	PreProc
"hi! link htmlTag			Special
"hi! link htmlTagName		Type
"
"" java
hi! link javaTypeDef		Special
hi! link javaScopeDecl		Identifier
"
"" lisp
"hi! link lispAtom			Constant
"hi! link lispAtomMark		Constant
"hi! link lispConcat			Special
"hi! link lispDecl			Type
"hi! link lispFunc			Special
"hi! link lispKey			PreProc
"
"" pas
"hi! link pascalAsmKey		Statement
"hi! link pascalDirective	PreProc
"hi! link pascalModifier		PreProc
"hi! link pascalPredefined	Special
"hi! link pascalStatement	Type
"hi! link pascalStruct		Type
"
"" php
"hi! link phpComparison		Special
"hi! link phpDefine			Normal
"hi! link phpIdentifier		Normal
"hi! link phpMemberSelector	Special
"hi! link phpRegion			Special
"hi! link phpVarSelector		Special
"
"" python
"" default links (/usr/share/vim/vim73/syntax/python.vim):
""   HiLink pythonStatement        Statement
""   HiLink pythonConditional      Conditional
""   HiLink pythonRepeat           Repeat
""   HiLink pythonOperator         Operator
""   HiLink pythonException        Exception
""   HiLink pythonInclude          Include
""   HiLink pythonDecorator        Define
""   HiLink pythonFunction         Function
""   HiLink pythonComment          Comment
""   HiLink pythonTodo             Todo
""   HiLink pythonString           String
""   HiLink pythonRawString        String
""   HiLink pythonEscape           Special
"
"" rb
"hi! link rubyConstant		Special
"hi! link rubyDefine			Type
"hi! link rubyRegexp			Special
"" scm
"hi! link schemeSyntax		Special
"" sh
"hi! link shArithRegion		Normal
"hi! link shDerefSimple		Normal
"hi! link shDerefVar			Normal
"hi! link shFunction			Type
"hi! link shLoop				Statement
"hi! link shStatement		Special
"hi! link shVariable			Normal
"" sql
"hi! link sqlKeyword			Statement
"" vim
"hi! link vimCommand			Statement
"hi! link vimCommentTitle	Normal
"hi! link vimEnvVar			Special
"hi! link vimFuncKey			Type
"hi! link vimGroup			Special
"hi! link vimHiAttrib		Constant
"hi! link vimHiCTerm			Special
"hi! link vimHiCtermFgBg		Special
"hi! link vimHighlight		Special
"hi! link vimHiGui			Special
"hi! link vimHiGuiFgBg		Special
"hi! link vimOption			Special
"hi! link vimSyntax			Special
"hi! link vimSynType			Special
"hi! link vimUserAttrb		Special
"" xml
"hi! link xmlAttrib			Special
"hi! link xmlCdata			Normal
"hi! link xmlCdataCdata		Statement
"hi! link xmlCdataEnd		PreProc
"hi! link xmlCdataStart		PreProc
"hi! link xmlDocType			PreProc
"hi! link xmlDocTypeDecl		PreProc
"hi! link xmlDocTypeKeyword	PreProc
"hi! link xmlEndTag			Statement
"hi! link xmlProcessingDelim	PreProc
"hi! link xmlNamespace		PreProc
"hi! link xmlTagName			Statement
