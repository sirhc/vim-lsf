" Vim syntax file
" Language:     lsb.params(5) configuration file
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

syn keyword lsbparamsTodo contained TODO FIXME XXX NOTE

syn case ignore

syn match lsbparamsComment "^\s*#.*" contains=lsbparamsTodo,@Spell
syn match lsbparamsComment "\s#.*"ms=s+1 contains=lsbparamsTodo,@Spell

syn match lsbparamsAuto   "!"
syn match lsbparamsBoolean "\<Y\>\|\<N\>"
syn match lsbparamsNumber "[-+]\=\<\d\+\(\.\d*\)\=\>"

syn case match

syn match lsbparamsSection "^\(Begin\|End\)\s\+\(Parameters\)" contains=lsbparamsComment

syn keyword lsbparamsParam
    \ ABS_RUNLIMIT ACCT_ARCHIVE_AGE ACCT_ARCHIVE_SIZE ACCT_ARCHIVE_TIME
    \ CHUNK_JOB_DURATION CLEAN_PERIOD COMMITTED_RUN_TIME_FACTOR
    \ CONDENSE_PENDING_REASONS CPU_TIME_FACTOR DEFAULT_APPLICATION
    \ DEFAULT_HOST_SPEC DEFAULT_JOBGROUP DEFAULT_PROJECT DEFAULT_QUEUE
    \ DEFAULT_SLA_VELOCITY DETECT_IDLE_JOB_AFTER DISABLE_UACCT_MAP
    \ EADMIN_TRIGGER_DURATION ENABLE_DEFAULT_EGO_SLA ENABLE_EVENT_STREAM
    \ ENABLE_EXIT_RATE_PER_SLOT ENABLE_HIST_RUN_TIME ENABLE_USER_RESUME
    \ EVENT_STREAM_FILE EVENT_UPDATE_INTERVAL EXIT_RATE_TYPE GLOBAL_EXIT_RATE
    \ HIST_HOURS JOB_ACCEPT_INTERVAL JOB_ATTA_DIR JOB_DEP_LAST_SUB
    \ JOB_EXIT_RATE_DURATION JOB_INCLUDE_POSTPROC JOB_POSITION_CONTROL_BY_ADMIN
    \ JOB_POSTPROC_TIMEOUT JOB_PRIORITY_OVER_TIME JOB_RUNLIMIT_RATIO
    \ JOB_SCHEDULING_INTERVAL JOB_SPOOL_DIR JOB_TERMINATE_INTERVAL
    \ LSB_STOP_ASKING_LICENSES_TO_LS LSB_SYNC_HOST_STAT_LIM
    \ MAX_ACCT_ARCHIVE_FILE MAX_CONCURRENT_JOB_QUERY MAX_EVENT_STREAM_SIZE
    \ MAX_INFO_DIRS MAX_JOB_ARRAY_SIZE MAX_JOB_ATTA_SIZE MAX_JOB_MSG_NUM
    \ MAX_JOB_NUM MAX_JOBID MAX_JOBINFO_QUERY_PERIOD MAX_PEND_JOBS
    \ MAX_PREEXEC_RETRY MAX_SBD_CONNS MAX_SBD_FAIL MAX_USER_PRIORITY
    \ MBD_EGO_CONNECT_TIMEOUT MBD_EGO_READ_TIMEOUT MBD_EGO_TIME2LIVE
    \ MBD_QUERY_CPUS MBD_REFRESH_TIME MBD_SLEEP_TIME MBD_USE_EGO_MXJ
    \ MC_PENDING_REASON_PKG_SIZE MC_PENDING_REASON_UPDATE_INTERVAL
    \ MC_RECLAIM_DELAY MC_RUSAGE_UPDATE_INTERVAL MIN_SWITCH_PERIOD
    \ MIN_SWITCH_PERIOD NEWJOB_REFRESH NO_PREEMPT_FINISH_TIME
    \ NO_PREEMPT_RUN_TIME NQS_QUEUES_FLAGS NQS_REQUESTS_FLAGS
    \ PARALLEL_SCHED_BY_SLOT PEND_REASON_MAX_JOBS PEND_REASON_UPDATE_INTERVAL
    \ PG_SUSP_IT PREEMPT_FOR PREEMPT_JOBTYPE PREEMPTABLE_RESOURCES
    \ PREEMPTION_WAIT_TIME RESOURCE_RESERVE_PER_SLOT RUN_JOB_FACTOR
    \ RUN_TIME_FACTOR SBD_SLEEP_TIME SCHED_METRIC_ENABLE
    \ SCHED_METRIC_SAMPLE_PERIOD SLA_TIMER SUB_TRY_INTERVAL
    \ SYSTEM_MAPPING_ACCOUNT

" Flag unknown keys as errors
syn match lsbparamsParamError "\<[A-Z_]*\>\(\s*=\)\@="

hi def link lsbparamsTodo    Todo
hi def link lsbparamsComment Comment

hi def link lsbparamsAuto    Keyword
hi def link lsbparamsBoolean Boolean
hi def link lsbparamsNumber  Number

hi def link lsbparamsSection    Keyword
hi def link lsbparamsParam      Keyword
hi def link lsbparamsParamError Error

let b:current_syntax = "lsbparams"
