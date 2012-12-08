" Vim syntax file
" Language:     lsf.shared(5) configuration file
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

syn keyword lsfsharedTodo    contained TODO FIXME XXX NOTE

syn case ignore

syn match  lsfsharedComment "^\s*#.*" contains=lsfsharedTodo,@Spell
syn match  lsfsharedComment "\s#.*"ms=s+1 contains=lsfsharedTodo,@Spell

syn match  lsfsharedAuto    "!"
syn match  lsfsharedBoolean "\<Y\>\|\<N\>"
syn match  lsfsharedNumber  "[-+]\=\<\d\+\(\.\d*\)\=\>"

syn region lsfsharedGroup   start="(" end=")" contains=lsfsharedGroupIn
syn match  lsfsharedGroupIn contained "[^)]*"ms=s+1

syn case match

syn match lsfsharedSection "^\(Begin\|End\)\s\+\(Cluster\|HostType\|HostModel\|Resource\)\>" contains=lsfsharedComment

" Begin Cluster
syn keyword lsfsharedClusterKeyword ClusterName
syn keyword lsfsharedClusterKeyword Servers

" Begin HostType
syn keyword lsfsharedHostTypeKeyword TYPENAME

" Begin HostModel
syn keyword lsfsharedHostModelKeyword MODELNAME
syn keyword lsfsharedHostModelKeyword CPUFACTOR
syn keyword lsfsharedHostModelKeyword ARCHITECTURE

" Begin Resource
syn keyword lsfsharedResourceKeyword RESOURCENAME
syn keyword lsfsharedResourceKeyword DESCRIPTION
syn keyword lsfsharedResourceKeyword TYPE
syn keyword lsfsharedResourceKeyword INTERVAL
syn keyword lsfsharedResourceKeyword INCREASING
syn keyword lsfsharedResourceKeyword RELEASE

syn keyword lsfsharedType Boolean
syn keyword lsfsharedType Numeric
syn keyword lsfsharedType String

hi def link lsfsharedTodo    Todo
hi def link lsfsharedComment Comment

hi def link lsfsharedAuto    Keyword
hi def link lsfsharedBoolean String
hi def link lsfsharedNumber  Number
hi def link lsfsharedGroup   Keyword
hi def link lsfsharedGroupIn String

hi def link lsfsharedSection          Statement
hi def link lsfsharedClusterKeyword   Keyword
hi def link lsfsharedHostTypeKeyword  Keyword
hi def link lsfsharedHostModelKeyword Keyword
hi def link lsfsharedResourceKeyword  Keyword
hi def link lsfsharedType             Type

let b:current_syntax = "lsfshared"
