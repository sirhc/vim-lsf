" Vim syntax file
" Language:     lsb.queues(5) configuration file
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

syn keyword lsbqueuesTodo contained TODO FIXME XXX NOTE

syn case ignore

syn match lsbqueuesComment "^\s*#.*" contains=lsbqueuesTodo,@Spell
syn match lsbqueuesComment "\s#.*"ms=s+1 contains=lsbqueuesTodo,@Spell

syn match  lsbqueuesAuto    "!"
syn match  lsbqueuesBoolean "\<Y\>\|\<N\>"
syn match  lsbqueuesNumber  "[-+]\=\<\d\+\(\.\d*\)\=\>"
syn region lsbappString     start=+"+ skip=+\\"+ end=+"+

syn case match

syn match lsbqueuesSection "^\(Begin\|End\)\s\+\(Queue\)" contains=lsbqueuesComment

syn keyword lsbqueuesParam
    \ ADMINISTRATORS APS_PRIORITY BACKFILL CHKPNT CHUNK_JOB_SIZE CORELIMIT
    \ CPULIMIT DATALIMIT DEFAULT_EXTSCHED DEFAULT_HOST_SPEC DESCRIPTION
    \ DISPATCH_ORDER DISPATCH_WINDOW EXCLUSIVE FAIRSHARE FAIRSHARE_QUEUES
    \ FILELIMIT HJOB_LIMIT HOSTS IGNORE_DEADLINE IMPT_JOBBKLG INTERACTIVE
    \ INTERRRUPTIBLE_BACKFILL JOB_ACCEPT_INTERVAL JOB_ACTION_WARNING_TIME
    \ JOB_CONTROLS JOB_IDLE JOB_OVERRUN JOB_STARTER JOB_UNDERRUN
    \ JOB_WARNING_ACTION load_index MANDATORY_EXTSCHED MAX_RSCHED_TIME
    \ MEMLIMIT MIG NEW_JOB_SCHED_DELAY NICE NQS_QUEUES PJOB_LIMIT POST_EXEC
    \ PRE_EXEC PREEMPTION PRIORITY PROCESSLIMIT PROCLIMIT QJOB_LIMIT
    \ QUEUE_GROUP QUEUE_NAME RCVJOBS_FROM REQUEUE_EXIT_VALUES RERUNNABLE
    \ RESOURCE_RESERVE RES_REQ RESUME_COND RUN_WINDOW RUNLIMIT SLOT_POOL
    \ SLOT_RESERVE SLOT_SHARE SNDJOBS_TO STACKLIMIT STOP_COND SWAPLIMIT
    \ THREADLIMIT UJOB_LIMIT USERS

syn keyword lsbqueuesKeyword USER_SHARES

" TODO: Figure out why this doesn't work.
syn match lsbqueuesConstant "\<%USRCMD\>"

syn keyword lsbqueuesIdent default

" Flag unknown keys as errors
syn match lsbqueuesParamError "\<[A-Z_]*\>\(\s*=\)\@="

hi def link lsbqueuesTodo    Todo
hi def link lsbqueuesComment Comment

hi def link lsbqueuesAuto    Keyword
hi def link lsbqueuesBoolean Boolean
hi def link lsbqueuesNumber  Number
hi def link lsbqueuesString  String

hi def link lsbqueuesSection    Keyword
hi def link lsbqueuesParam      Keyword
hi def link lsbqueuesParamError Error
hi def link lsbqueuesKeyword    Keyword
hi def link lsbqueuesConstant   Constant
hi def link lsbqueuesIdent      Identifier

let b:current_syntax = "lsbqueues"
