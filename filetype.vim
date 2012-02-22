augroup filetypedetect
    au! BufRead,BufNewFile *.r  setfiletype r
    au! BufRead,BufNewFile *.R  setfiletype r
    au! BufRead,BufNewFile *.Rnw setfiletype noweb
    au! BufRead,BufNewFile *.sas setfiletype sas
augroup END

