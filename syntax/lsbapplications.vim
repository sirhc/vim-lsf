" Vim syntax file
" Language:     lsb.applications(5) configuration file
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

syn keyword lsbappTodo contained TODO FIXME XXX NOTE

syn case ignore

syn match  lsbappComment "^\s*#.*" contains=lsbappTodo,@Spell
syn match  lsbappComment "\s#.*"ms=s+1 contains=lsbappTodo,@Spell

syn match  lsbappBoolean "\<Y\>\|\<N\>"
syn match  lsbappNumber  "[-+]\=\<\d\+\(\.\d*\)\=\>"
syn region lsbappString  start=+"+ skip=+\\"+ end=+"+

syn case match

syn match lsbappSection "^\(Begin\|End\)\s\+\(Application\)\>" contains=lsbappComment

" Begin Application
syn keyword lsbappParam NAME
syn keyword lsbappParam DESCRIPTION
syn keyword lsbappParam CHUNK_JOB_SIZE
syn keyword lsbappParam CORELIMIT CPULIMIT DATALIMIT FILELIMIT MEMLIMIT STACKLIMIT
syn keyword lsbappParam PROCESSLIMIT
syn keyword lsbappParam PROCLIMIT
syn keyword lsbappParam RUNLIMIT
syn keyword lsbappParam RUNTIME
syn keyword lsbappParam SWAPLIMIT
syn keyword lsbappParam THREADLIMIT
syn keyword lsbappParam SUSPEND_CONTROL
syn keyword lsbappParam RESUME_CONTROL
syn keyword lsbappParam TERMINATE_CONTROL
syn keyword lsbappParam JOB_STARTER
syn keyword lsbappParam POST_EXEC
syn keyword lsbappParam JOB_INCLUDE_POSTPROC
syn keyword lsbappParam JOB_POSTPROC_TIMEOUT
syn keyword lsbappParam PRE_EXEC
syn keyword lsbappParam REQUEUE_EXIT_VALUES
syn keyword lsbappParam RERUNNABLE
syn keyword lsbappParam RES_REQ
syn keyword lsbappParam RTASK_GONE_ACTION
syn keyword lsbappParam DJOB_ENV_SCRIPT
syn keyword lsbappParam DJOB_RU_INTERVAL
syn keyword lsbappParam DJOB_HB_INTERVAL
syn keyword lsbappParam DJOB_COMMFAIL_ACTION
syn keyword lsbappParam DJOB_DISABLED

syn keyword lsbappConstant CHKPNT
syn keyword lsbappConstant %USRCMD
syn keyword lsbappConstant EXCLUDE
syn keyword lsbappConstant KILLJOB_TASKEXIT KILLJOB_TASKDONE IGNORE_TASKCRASH
syn keyword lsbappConstant KILL_TASKS IGNORE_COMMFAIL

hi def link lsbappTodo    Todo
hi def link lsbappComment Comment

hi def link lsbappBoolean Boolean
hi def link lsbappNumber  Number
hi def link lsbappString  String

hi def link lsbappSection  Statement
hi def link lsbappParam    Keyword
hi def link lsbappConstant Constant

let b:current_syntax = "lsbapplications"
