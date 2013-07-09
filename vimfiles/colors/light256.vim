" Description:	a colour scheme for light background
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
	hi Normal 		        ctermfg=232	ctermbg=231	cterm=none
    hi NonText                          ctermbg=254
    hi LineNr               ctermfg=236 ctermbg=254 cterm=bold
"	hi Cursor 		        ctermfg=231	ctermbg=235	cterm=none
	hi MatchParen	        ctermfg=235	ctermbg=184	cterm=bold
	hi Visual		        ctermfg=232	ctermbg=147	cterm=none

	hi Comment		        ctermfg=240	ctermbg=231	cterm=none

	hi Constant             ctermfg=60	ctermbg=231	cterm=none
    hi! link String         Constant
    hi! link Character      Constant
    hi! link Number         Constant
    hi! link Boolean        Constant
    hi! link Float          Constant

    hi Identifier           ctermfg=29  ctermbg=231 cterm=none
    hi Function             ctermfg=25  ctermbg=231 cterm=none

	hi Statement	        ctermfg=124 ctermbg=231	cterm=none
    hi Conditional          ctermfg=17  ctermbg=231 cterm=none
    hi Repeat               ctermfg=20  ctermbg=231 cterm=none
    hi Label                ctermfg=72  ctermbg=231 cterm=none
    hi Operator             ctermfg=68  ctermbg=231 cterm=none
    hi link Keyword         Identifier
    hi Exception            ctermfg=130 ctermbg=231 cterm=none

	hi PreProc		        ctermfg=22	ctermbg=231	cterm=none
    hi link Include         PreProc
    hi link Define          PreProc
    hi link PreConfig       PreProc

	hi Type 		        ctermfg=58	ctermbg=231	cterm=none
    hi link StorageClass    Type
    hi link StorageClass    Structure
    hi link StorageClass    Typedef

	hi Special		        ctermfg=29	ctermbg=231	cterm=none
    hi link SpecialComment  Special
    hi link Tag             Special
    hi link Delimiter       Special
    hi link SpecialComment  Special
    hi link Debug           Special

    hi Error                ctermfg=232 ctermbg=9
    hi TODO                 ctermfg=234 ctermbg=110 cterm=bold

    hi Search               ctermfg=232 ctermbg=121
"	hi Underlined	        ctermfg=232	ctermbg=121	cterm=underline

	hi Folded 		        ctermfg=235	ctermbg=110	cterm=none
endif

" Python
hi link pythonBuiltin        Identifier

" java
hi! link javaTypeDef		Special
hi! link javaScopeDecl		Identifier
