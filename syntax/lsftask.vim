" Vim syntax file
" Language:     lsf.task(5) configuration file
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

syn keyword lsftaskTodo    contained TODO FIXME XXX NOTE

syn case ignore

syn match   lsftaskComment "^\s*#.*" contains=lsftaskTodo,@Spell
syn match   lsftaskComment "\s#.*"ms=s+1 contains=lsftaskTodo,@Spell

syn match   lsftaskSection "^\(Begin\|End\)\s\+\(RemoteTasks\)" contains=lsftaskComment

hi def link lsftaskTodo     Todo
hi def link lsftaskComment  Comment
hi def link lsftaskSection  Label

let b:current_syntax = "lsftask"
