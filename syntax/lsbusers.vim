" Vim syntax file
" Language:     lsb.users(5) configuration file
" Maintainer:   Christopher Grau <chris@chrisgrau.com>
" Last Change:  2009-07-01
" Version:      0.01

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syn sync minlines=1

syn case match

syn keyword lsbusersTodo contained TODO FIXME XXX NOTE

syn case ignore

syn match  lsbusersComment "^\s*#.*" contains=lsbusersTodo,@Spell
syn match  lsbusersComment "\s#.*"ms=s+1 contains=lsbusersTodo,@Spell

syn match  lsbusersAuto    "!"
syn match  lsbusersBoolean "\<Y\>\|\<N\>"
syn match  lsbusersNumber  "[-+]\=\<\d\+\(\.\d*\)\=\>"

syn match lsbusersOperator "[~]"

syn case match

syn keyword lsbusersConstant all

syn region lsbusersGroup   start="(" end=")"
    \ contains=lsbusersGroupIn,lsbusersOperator
syn match  lsbusersGroupIn contained "[^)]*"ms=s+1

"syn match lsbusersSection "^\(Begin\|End\)\s\+\(UserGroup\|User\|UserMap\)\>" contains=lsbusersComment

syn region lsbusersSectionUserGroup
    \ start="^\s*Begin\s\+UserGroup" 
    \ end="^\s*End\s\+UserGroup\>"
    \ contains=lsbusersComment,lsbusersGroup,lsbusersUserGroupKeyword

" Begin UserGroup
syn keyword lsbusersUserGroupKeyword
    \ GROUP_NAME GROUP_MEMBER USER_SHARES

" Begin HostExport
"syn keyword lsbusersHostGroupKeyword GROUP_NAME

" Begin SharedResourceExport
"syn keyword lsbusersHostPartitionKeyword HPART_NAME

" Begin ResourceReservation
"syn keyword lsbusersHostPartitionKeyword HPART_NAME

" Begin ReservationUsage
"syn keyword lsbusersHostPartitionKeyword HPART_NAME

hi def link lsbusersTodo    Todo
hi def link lsbusersComment Comment

hi def link lsbusersAuto    Keyword
hi def link lsbusersBoolean Boolean
hi def link lsbusersNumber  Number
hi def link lsbusersGroup   Keyword
hi def link lsbusersGroupIn String

"hi def link lsbusersDefault Identifier

hi def link lsbusersSectionUserGroup          Statement
hi def link lsbusersUserGroupKeyword Boolean
hi def link lsbusersOperator         Keyword
hi def link lsbusersConstant         Constant

let b:current_syntax = "lsbusers"
