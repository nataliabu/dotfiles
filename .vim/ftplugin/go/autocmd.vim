fun! CompileGoFile()
	let l:current_file=expand('%')
	if l:current_file =~ '_test.go'
		silent GoTestCompile
	else
		silent GoBuild
	endif
endfun

augroup GoBuild
	autocmd!
	" When saving go file, automatically fix the imports and compile the file
	autocmd BufWritePre *.go :GoImports
	autocmd BufWritePost *.go call CompileGoFile()
augroup END
