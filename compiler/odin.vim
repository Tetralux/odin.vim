if exists("b:did_compiler")
  finish
endif
let b:did_compiler = 1

setlocal errorformat=%f(%l:%c)\ %m
