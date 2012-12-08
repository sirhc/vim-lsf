" Vim syntax file
" Language:     lsf.cluster(5) configuration file
" Maintainer:   Christopher Grau <chris@chrisgrau.com>
" Last Change:  2007-12-14
" Version:      0.01

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syn sync minlines=1

syn case match

syn keyword lsfclusterTodo    contained TODO FIXME XXX NOTE

syn case ignore

syn match   lsfclusterComment "^\s*#.*" contains=lsfclusterTodo,@Spell
syn match   lsfclusterComment "\s#.*"ms=s+1 contains=lsfclusterTodo,@Spell

syn match   lsfclusterAuto    "!"
syn match   lsfclusterNumber  "[-+]\=\<\d\+\(\.\d*\)\=\>"

syn match   lsfclusterIp      "\<\(\d\{1,3}\|\*\)\.\(\d\{1,3}\|\*\)\.\(\d\{1,3}\|\*\)\.\(\d\{1,3}\|\*\)\>"


syn region  lsfclusterGroup   start="(" end=")" contains=lsfclusterGroupIn
syn match   lsfclusterGroupIn contained "[^)]*"ms=s+1

syn match   lsfclusterSection "^\(Begin\|End\)\s\+\(Parameters\|ClusterAdmins\|Host\|ResourceMap\|RemoteClusters\)" contains=lsfclusterComment

syn case match

syn keyword lsfclusterKeyword HOSTNAME
syn keyword lsfclusterKeyword RESOURCES
syn keyword lsfclusterKeyword RESOURCENAME
syn keyword lsfclusterKeyword LOCATION
syn keyword lsfclusterKeyword model
syn keyword lsfclusterKeyword type
syn keyword lsfclusterKeyword server
syn keyword lsfclusterKeyword r1m
syn keyword lsfclusterKeyword mem
syn keyword lsfclusterKeyword swp

syn keyword lsfclusterKeyword Administrators

syn keyword lsfclusterParam ADJUST_DURATION
syn keyword lsfclusterParam ELIM_POLL_INTERVAL
syn keyword lsfclusterParam ELIMARGS
syn keyword lsfclusterParam EXINTERVAL
syn keyword lsfclusterParam FLOAT_CLIENTS
syn keyword lsfclusterParam FLOAT_CLIENTS_ADDR_RANGE
syn keyword lsfclusterParam HOST_INACTIVITY_LIMIT
syn keyword lsfclusterParam LSF_ELIM_BLOCKTIME
syn keyword lsfclusterParam LSF_ELIM_DEBUG
syn keyword lsfclusterParam LSF_ELIM_RESTARTS
syn keyword lsfclusterParam LSF_HOST_ADDR_RANGE
syn keyword lsfclusterParam MASTER_INACTIVITY_LIMIT
syn keyword lsfclusterParam PROBE_TIMEOUT
syn keyword lsfclusterParam PRODUCTS
syn keyword lsfclusterParam RETRY_LIMIT

syn keyword lsfclusterProduct LSF_Base
syn keyword lsfclusterProduct LSF_Make
syn keyword lsfclusterProduct LSF_Manager
syn keyword lsfclusterProduct LSF_MultiCluster
syn keyword lsfclusterProduct LSF_Sched_Advance_Reservation
syn keyword lsfclusterProduct LSF_Sched_Fairshare
syn keyword lsfclusterProduct LSF_Sched_Parallel
syn keyword lsfclusterProduct LSF_Sched_Preemption
syn keyword lsfclusterProduct LSF_Sched_Resource_Reservation

"syn keyword lsfclusterKey     contained Administrators
"syn region  lsfclusterAdmins  start='^Begin\s\+ClusterAdmins'
"    \                         end='^End\s\+ClusterAdmins'
"    \                         contains=lsfclusterComment,lsfclusterKey

hi def link lsfclusterTodo     Todo
hi def link lsfclusterComment  Comment
hi def link lsfclusterAuto     Keyword
hi def link lsfclusterNumber   Number
hi def link lsfclusterIp       Number
hi def link lsfclusterGroup    Keyword
hi def link lsfclusterGroupIn  String

hi def link lsfclusterSection  Keyword
hi def link lsfclusterKeyword  Label

hi def link lsfclusterProduct  Number

let b:current_syntax = "lsfcluster"
