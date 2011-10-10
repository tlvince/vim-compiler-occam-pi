" Vim compiler file
" Compiler:     occam-pi     
" Maintainer:   Tom Vincent <http://tlvince.com/contact/>

if exists("current_compiler")
  finish
endif
let current_compiler = "occam-pi"

let s:cpo_save = &cpo
set cpo-=C

if exists(":CompilerSet") != 2          " older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet makeprg=kroc

CompilerSet errorformat=Error-occ21-%f(%l)-\ %m

let &cpo = s:cpo_save
unlet s:cpo_save

