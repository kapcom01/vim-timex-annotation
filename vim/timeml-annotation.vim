set nocompatible 
set linebreak
set display+=lastline
syntax enable

" easier navigation through visual lines
nnoremap k gk
nnoremap j gj

nnoremap 0 g0
nnoremap $ g$
nnoremap ^ g^

autocmd FileType timeml :echo "Note: the last TIMEX tid is saved in register @a and contains the value" @a ". If this value is not correct, you have to fix it before start annotating." 

autocmd FileType timeml imap <silent> <SPACE><SPACE> <ESC>/="<RETURN>lli
autocmd FileType timeml vmap <silent> id x:let @a=@a+1<RETURN>i<TIMEX3 tid="t<C-r>a" type="DATE" value="" temporalFunction="false"><ESC>pa</TIMEX3><ESC>?""<RETURN>a
autocmd FileType timeml vmap <silent> ia x:let @a=@a+1<RETURN>:let @b=@a-1<RETURN>i<TIMEX3 tid="t<C-r>a" type="DATE" value="" temporalFunction="true" anchorTimeID="t<C-r>b"><ESC>pa</TIMEX3><ESC>?""<RETURN>a
autocmd FileType timeml vmap <silent> iu x:let @a=@a+1<RETURN>i<TIMEX3 tid="t<C-r>a" type="DURATION" value="P" temporalFunction="false"><ESC>pa</TIMEX3><ESC>?P"<RETURN>a
autocmd FileType timeml vmap <silent> it x:let @a=@a+1<RETURN>i<TIMEX3 tid="t<C-r>a" type="TIME" value="" temporalFunction="false"><ESC>pa</TIMEX3><ESC>?""<RETURN>a
