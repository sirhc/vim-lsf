" Vim syntax file
" Language:     lsb.hosts(5) configuration file
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

syn match lsbhostsSection "^\(Begin\|End\)\s\+\(Host\|HostGroup\|HostPartition\)\>" contains=lsbhostsComment

syn keyword lsbhostsDefault default

" Begin Host
syn keyword lsbhostsHostKeyword HOST_NAME
syn keyword lsbhostsHostKeyword CHKPNT
syn keyword lsbhostsHostKeyword DISPATCH_WINDOW
syn keyword lsbhostsHostKeyword EXIT_RATE
syn keyword lsbhostsHostKeyword JL/U
syn keyword lsbhostsHostKeyword MIG
syn keyword lsbhostsHostKeyword MXJ

syn keyword lsbhostsHostKeyword io it ls mem pg r15s r1m r15m swp tmp ut

" Begin HostGroup
syn keyword lsbhostsHostGroupKeyword GROUP_NAME
syn keyword lsbhostsHostGroupKeyword GROUP_MEMBER
syn keyword lsbhostsHostGroupKeyword CONDENSE

" TODO: Other syntaxes inside section

" Begin HostPartition
syn keyword lsbhostsHostPartitionKeyword HPART_NAME
syn keyword lsbhostsHostPartitionKeyword HOSTS
syn keyword lsbhostsHostPartitionKeyword USER_SHARES

" TODO: Other syntaxes inside section

hi def link lsbhostsTodo    Todo
hi def link lsbhostsComment Comment

hi def link lsbhostsAuto    Keyword
hi def link lsbhostsBoolean Boolean
hi def link lsbhostsNumber  Number
hi def link lsbhostsGroup   Keyword
hi def link lsbhostsGroupIn String

hi def link lsbhostsDefault Identifier

hi def link lsbhostsSection              Statement
hi def link lsbhostsHostKeyword          Keyword
hi def link lsbhostsHostGroupKeyword     Keyword
hi def link lsbhostsHostPartitionKeyword Keyword

let b:current_syntax = "lsbhosts"
