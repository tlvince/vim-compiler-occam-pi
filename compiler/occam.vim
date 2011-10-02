" Vim compiler file
" Compiler:		occam-pi     
" Maintainer:   Tom Vincent <http://tlvince.com/contact/>

if exists("current_compiler")
  finish
endif
let current_compiler = "occam"

let s:cpo_save = &cpo
set cpo-=C

setlocal makeprg=skroc\ --occ21-opts\ "-etc -w -y -znd -znec -udo -zncc -init -xin -mobiles -V -zep -msf -b"

setlocal errorformat=Error-occ21-%f(%l)-\ %m

let &cpo = s:cpo_save
unlet s:cpo_save

