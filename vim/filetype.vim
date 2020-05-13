if exists("did_load_filetypes")
  finish
endif

" TimeML
augroup filetypedetect
  au! BufRead,BufNewFile *.tml          setfiletype timeml
augroup END

