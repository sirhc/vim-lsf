" Vim syntax file
" Language:     lsb.nqsmaps(5) configuration file
" Maintainer:   Christopher Grau <chris@chrisgrau.com>
" Last Change:  2008-03-18
" Version:      0.01

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syn sync minlines=1

syn case match

syn keyword lsbhostsTodo contained TODO FIXME XXX NOTE

syn case ignore

syn match  lsbhostsComment "^\s*#.*" contains=lsbhostsTodo,@Spell
syn match  lsbhostsComment "\s#.*"ms=s+1 contains=lsbhostsTodo,@Spell

syn match  lsbhostsAuto    "!"
syn match  lsbhostsBoolean "\<Y\>\|\<N\>"
syn match  lsbhostsNumber  "[-+]\=\<\d\+\(\.\d*\)\=\>"

syn region lsbhostsGroup   start="(" end=")" contains=lsbhostsGroupIn
syn match  lsbhostsGroupIn contained "[^)]*"ms=s+1

syn case match

syn match lsbhostsSection "^\(Begin\|End\)\s\+\(Hosts\|Users\)\>" contains=lsbhostsComment

" Begin Hosts
syn keyword lsbhostsHostsKeyword HOST_NAME
syn keyword lsbhostsHostsKeyword MID
syn keyword lsbhostsHostsKeyword OS_TYPE

syn keyword lsbhostsHostsOS ULTRIX HPUX AIX SOLARIS SUNOS IRIX OSF1 CONVEX UNICOS

" Begin Users
syn keyword lsbhostsUsersKeyword FROM_NAME
syn keyword lsbhostsUsersKeyword TO_NAME

hi def link lsbhostsTodo    Todo
hi def link lsbhostsComment Comment

hi def link lsbhostsAuto    Keyword
hi def link lsbhostsBoolean Boolean
hi def link lsbhostsNumber  Number
hi def link lsbhostsGroup   Keyword
hi def link lsbhostsGroupIn String

hi def link lsbhostsDefault Identifier

hi def link lsbhostsSection      Statement
hi def link lsbhostsHostsKeyword Keyword
hi def link lsbhostsUsersKeyword Keyword

hi def link lsbhostsHostsOS Constant

let b:current_syntax = "lsbhosts"
