" Vim syntax file
" Language:     lsb.resources(5) configuration file
" Maintainer:   Christopher Grau <chris@chrisgrau.com>
" Last Change:  2008-03-19
" Version:      0.01

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syn sync minlines=1

syn case match

syn keyword lsbresourcesTodo contained TODO FIXME XXX NOTE

syn case ignore

syn match  lsbresourcesComment "^\s*#.*" contains=lsbresourcesTodo,@Spell
syn match  lsbresourcesComment "\s#.*"ms=s+1 contains=lsbresourcesTodo,@Spell

syn match  lsbresourcesAuto    "!"
syn match  lsbresourcesBoolean "\<Y\>\|\<N\>"
syn match  lsbresourcesNumber  "[-+]\=\<\d\+\(\.\d*\)\=\>"

syn match lsbresourcesOperator "[~]"

syn case match

syn keyword lsbresourcesConstant all

syn region lsbresourcesGroup   start="(" end=")"
    \ contains=lsbresourcesGroupIn,lsbresourcesOperator
syn match  lsbresourcesGroupIn contained "[^)]*"ms=s+1

syn match lsbresourcesSection "^\(Begin\|End\)\s\+\(Limit\|HostExport\|SharedResourceExport\|ResourceReservation\|ReservationUsage\)\>" contains=lsbresourcesComment

" Begin Limit
syn keyword lsbresourcesLimitKeyword
    \ NAME SLOTS SLOTS_PER_PROCESSOR MEM SWP TMP LICENSE JOBS RESOURCE USERS
    \ PER_USER QUEUES PER_QUEUE HOSTS PER_HOST PROJECTS PER_PROJECT

" Begin HostExport
"syn keyword lsbresourcesHostGroupKeyword GROUP_NAME

" Begin SharedResourceExport
"syn keyword lsbresourcesHostPartitionKeyword HPART_NAME

" Begin ResourceReservation
"syn keyword lsbresourcesHostPartitionKeyword HPART_NAME

" Begin ReservationUsage
"syn keyword lsbresourcesHostPartitionKeyword HPART_NAME

hi def link lsbresourcesTodo    Todo
hi def link lsbresourcesComment Comment

hi def link lsbresourcesAuto    Keyword
hi def link lsbresourcesBoolean Boolean
hi def link lsbresourcesNumber  Number
hi def link lsbresourcesGroup   Keyword
hi def link lsbresourcesGroupIn String

"hi def link lsbresourcesDefault Identifier

hi def link lsbresourcesSection              Statement
hi def link lsbresourcesLimitKeyword          Keyword
hi def link lsbresourcesOperator          Keyword
hi def link lsbresourcesConstant          Constant

let b:current_syntax = "lsbresources"
