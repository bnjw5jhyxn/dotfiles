if exists("did_load_filetypes")
	finish
endif
augroup filetypedetect
	autocmd! BufRead,BufNewFile *.ts	setfiletype javascript
	autocmd! BufRead,BufNewFile *.sml,*.sig,*.fun,*.mlb	setfiletype ocaml
augroup END
