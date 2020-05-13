" Vim syntax file
" Language:     TimeML
" Maintainer:   Manolis Kapernaros <mkapernaros@pm.me>
" Last Change:  2020 Apr 25
" Filenames:	*.tml
" REFERENCES:
"   [1] http://timeml.org

" Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

set concealcursor=n
set conceallevel=3
set synmaxcol=0

"source $VIMRUNTIME/syntax/xml.vim
syntax case ignore

syntax region timemlTimexTag start=/<TIMEX3[^>]*>/ end=/<\/TIMEX3>/ conceal
highlight link timemlTimexTag CursorLineNr

syntax region timemlTemporalExpression start=/<TIMEX3[^>]*>/ms=e+1 end=/<\/TIMEX3>/me=s-1 containedin=timemlTimexTag
highlight link timemlTemporalExpression Todo

