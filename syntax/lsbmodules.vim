" Vim syntax file
" Language:     lsb.modules(5) configuration file
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

syn keyword lsbmodulesTodo contained TODO FIXME XXX NOTE

syn case ignore

syn match  lsbmodulesComment "^\s*#.*" contains=lsbmodulesTodo,@Spell
syn match  lsbmodulesComment "\s#.*"ms=s+1 contains=lsbmodulesTodo,@Spell

syn match  lsbmodulesAuto    "!"
syn match  lsbmodulesBoolean "\<Y\>\|\<N\>"
syn match  lsbmodulesNumber  "[-+]\=\<\d\+\(\.\d*\)\=\>"

syn region lsbmodulesGroup   start="(" end=")" contains=lsbmodulesGroupIn
syn match  lsbmodulesGroupIn contained "[^)]*"ms=s+1

syn case match

syn match lsbmodulesSection "^\(Begin\|End\)\s\+\(PluginModule\)\>" contains=lsbmodulesComment

" Begin PluginModule
syn keyword lsbmodulesKeyword SCH_PLUGIN
syn keyword lsbmodulesKeyword RB_PLUGIN
syn keyword lsbmodulesKeyword SCH_DISABLE_PHASES

syn keyword lsbmodulesPlugin schmod_default
syn keyword lsbmodulesPlugin schmod_fcfs
syn keyword lsbmodulesPlugin schmod_fairshare
syn keyword lsbmodulesPlugin schmod_limit
syn keyword lsbmodulesPlugin schmod_parallel
syn keyword lsbmodulesPlugin schmod_reserve
syn keyword lsbmodulesPlugin schmod_mc
syn keyword lsbmodulesPlugin schmod_preemption
syn keyword lsbmodulesPlugin schmod_advrsv
syn keyword lsbmodulesPlugin schmod_ps

hi def link lsbmodulesTodo    Todo
hi def link lsbmodulesComment Comment

hi def link lsbmodulesAuto    Keyword
hi def link lsbmodulesBoolean Boolean
hi def link lsbmodulesNumber  Number
hi def link lsbmodulesGroup   Keyword
hi def link lsbmodulesGroupIn String

hi def link lsbmodulesSection Statement
hi def link lsbmodulesKeyword Keyword
hi def link lsbmodulesPlugin  Identifier

let b:current_syntax = "lsbmodules"
