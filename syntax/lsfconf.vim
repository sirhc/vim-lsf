" Vim syntax file
" Language:     lsf.conf(5) configuration file
" Maintainer:   Christopher Grau <chris@chrisgrau.com>
" Last Change:  2007-12-14
" Version:      0.01

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syn case match
syn sync minlines=1

syn keyword lsfconfTodo    contained TODO FIXME XXX NOTE
syn region  lsfconfComment display oneline start='^\s*#' end='$'
    \                      contains=lsfconfTodo,
    \                               @Spell

syn region  lsfconfString start=+"+ skip=+\\\\\|\\"+ end=+"+ oneline
syn region  lsfconfString start=+'+ skip=+\\\\\|\\'+ end=+'+ oneline
syn match   lsfconfString "\<\(Y\|y\|N\|n\)\>"
syn match   lsfconfNumber "\<\d\+\>"

" Keys from lsf.conf(5)
syn keyword lsfconfKey LSB_API_CONNTIMEOUT
syn keyword lsfconfKey LSB_API_RECVTIMEOUT
syn keyword lsfconfKey LSB_API_VERBOSE
syn keyword lsfconfKey LSB_BJOBS_CONSISTENT_EXIT_CODE
syn keyword lsfconfKey LSB_BLOCK_JOBINFO_TIMEOUT
syn keyword lsfconfKey LSB_BPEEK_METHOD
syn keyword lsfconfKey LSB_BPEEK_WAIT_TIME
syn keyword lsfconfKey LSB_CHUNK_RUSAGE
syn keyword lsfconfKey LSB_CMD_LOG_MASK
syn keyword lsfconfKey LSB_CMD_LOGDIR
syn keyword lsfconfKey LSB_CPUSET_BESTCPUS
syn keyword lsfconfKey LSB_CONFDIR
syn keyword lsfconfKey LSB_CRDIR
syn keyword lsfconfKey LSB_DEBUG
syn keyword lsfconfKey LSB_DEBUG_CMD
syn keyword lsfconfKey LSB_DEBUG_MBD
syn keyword lsfconfKey LSB_DEBUG_NQS
syn keyword lsfconfKey LSB_DEBUG_SBD
syn keyword lsfconfKey LSB_DEBUG_SCH
syn keyword lsfconfKey LSB_DISABLE_RERUN_POST_EXEC
syn keyword lsfconfKey LSB_ECHKPNT_KEEP_OUTPUT
syn keyword lsfconfKey LSB_ECHKPNT_METHOD
syn keyword lsfconfKey LSB_ECHKPNT_METHOD_DIR
syn keyword lsfconfKey LSB_ESUB_METHOD
syn keyword lsfconfKey LSB_INTERACT_MSG_ENH
syn keyword lsfconfKey LSB_INTERACT_MSG_INTVAL
syn keyword lsfconfKey LSB_JOBID_DISP_LENGTH
syn keyword lsfconfKey LSB_JOB_CPULIMIT
syn keyword lsfconfKey LSB_JOB_MEMLIMIT
syn keyword lsfconfKey LSB_KEEP_SYSDEF_RLIMIT
syn keyword lsfconfKey LSB_DISABLE_LIMLOCK_EXCL
syn keyword lsfconfKey LSB_LOAD_TO_SERVER_HOSTS
syn keyword lsfconfKey LSB_LOCALDIR
syn keyword lsfconfKey LSB_MAILPROG
syn keyword lsfconfKey LSB_MAILSERVER
syn keyword lsfconfKey LSB_MAILSIZE_LIMIT
syn keyword lsfconfKey LSB_MAILTO
syn keyword lsfconfKey LSB_MAX_JOB_DISPATCH_PER_SESSION
syn keyword lsfconfKey LSB_MAX_PROBE_SBD
syn keyword lsfconfKey LSB_MAX_NQS_QUEUES
syn keyword lsfconfKey LSB_MBD_BUSY_MSG
syn keyword lsfconfKey LSB_MBD_CONNECT_FAIL_MSG
syn keyword lsfconfKey LSB_MBD_DOWN_MSG
syn keyword lsfconfKey LSB_MBD_PORT
syn keyword lsfconfKey LSB_MC_CHKPNT_RERUN
syn keyword lsfconfKey LSB_MC_INITFAIL_MAIL
syn keyword lsfconfKey LSB_MC_INITFAIL_RETRY
syn keyword lsfconfKey LSB_MEMLIMIT_ENFORCE
syn keyword lsfconfKey LSB_MIG2PEND
syn keyword lsfconfKey LSB_MOD_ALL_JOBS
syn keyword lsfconfKey LSB_NCPU_ENFORCE
syn keyword lsfconfKey LSB_NQS_PORT
syn keyword lsfconfKey LSB_NUM_NIOS_CALLBACK_THREADS
syn keyword lsfconfKey LSB_PSET_BIND_DEFAULT
syn keyword lsfconfKey LSB_QUERY_PORT
syn keyword lsfconfKey LSB_REQUEUE_TO_BOTTOM
syn keyword lsfconfKey LSB_RLA_HOST_LIST
syn keyword lsfconfKey LSB_RLA_PORT
syn keyword lsfconfKey LSB_RLA_UPDATE
syn keyword lsfconfKey LSB_RLA_WORKDIR
syn keyword lsfconfKey LSB_RMSACCT_DELAY
syn keyword lsfconfKey LSB_RMS_MAXNUMNODES
syn keyword lsfconfKey LSB_RMS_MAXNUMRAILS
syn keyword lsfconfKey LSB_RMS_MAXPTILE
syn keyword lsfconfKey LSB_SLURM_BESTFIT
syn keyword lsfconfKey LSB_SBD_PORT
syn keyword lsfconfKey LSB_SET_TMPDIR
syn keyword lsfconfKey LSB_SHAREDIR
syn keyword lsfconfKey LSB_SHORT_HOSTLIST
syn keyword lsfconfKey LSB_SIGSTOP
syn keyword lsfconfKey LSB_STDOUT_DIRECT
syn keyword lsfconfKey LSB_STOP_IGNORE_IT
syn keyword lsfconfKey LSB_SUB_COMMANDNAME
syn keyword lsfconfKey LSB_TIME_CMD
syn keyword lsfconfKey LSB_TIME_MBD
syn keyword lsfconfKey LSB_TIME_RESERVE_NUMJOBS
syn keyword lsfconfKey LSB_TIME_SBD
syn keyword lsfconfKey LSB_TIME_SCH
syn keyword lsfconfKey LSB_UTMP
syn keyword lsfconfKey LSF_AFS_CELLNAME
syn keyword lsfconfKey LSF_AM_OPTIONS
syn keyword lsfconfKey LSF_API_CONNTIMEOUT
syn keyword lsfconfKey LSF_API_RECVTIMEOUT
syn keyword lsfconfKey LSF_AUTH
syn keyword lsfconfKey LSF_AUTH_DAEMONS
syn keyword lsfconfKey LSF_BINDIR
syn keyword lsfconfKey LSF_BIND_JOB
syn keyword lsfconfKey LSF_CMD_LOGDIR
syn keyword lsfconfKey LSF_CMD_LOG_MASK
syn keyword lsfconfKey LSF_CONF_RETRY_INT
syn keyword lsfconfKey LSF_CONF_RETRY_MAX
syn keyword lsfconfKey LSF_CONFDIR
syn keyword lsfconfKey LSF_DAEMONS_CPUS
syn keyword lsfconfKey LSF_DAEMON_WRAP
syn keyword lsfconfKey LSF_DEBUG_CMD
syn keyword lsfconfKey LSF_DEBUG_LIM
syn keyword lsfconfKey LSF_DEBUG_RES
syn keyword lsfconfKey LSF_DHCP_ENV
syn keyword lsfconfKey LSF_DISABLE_LSRUN
syn keyword lsfconfKey LSF_DISPATCHER_LOGDIR
syn keyword lsfconfKey LSF_DUALSTACK_PREFER_IPV6
syn keyword lsfconfKey LSF_DYNAMIC_HOST_TIMEOUT
syn keyword lsfconfKey LSF_DYNAMIC_HOST_WAIT_TIME
syn keyword lsfconfKey LSF_EGO_DAEMON_CONTROL
syn keyword lsfconfKey LSF_EGO_ENVDIR
syn keyword lsfconfKey LSF_ENABLE_CSA
syn keyword lsfconfKey LSF_ENABLE_DUALCORE
syn keyword lsfconfKey LSF_ENABLE_EGO
syn keyword lsfconfKey LSF_ENABLE_EXTSCHEDULER
syn keyword lsfconfKey LSF_ENABLE_SUPPORT_IPV6
syn keyword lsfconfKey LSF_ENVDIR
syn keyword lsfconfKey LSF_EVENT_PROGRAM
syn keyword lsfconfKey LSF_EVENT_RECEIVER
syn keyword lsfconfKey LSF_HOST_CACHE_NTTL
syn keyword lsfconfKey LSF_HOST_CACHE_PTTL
syn keyword lsfconfKey LSF_HPC_EXTENSIONS
syn keyword lsfconfKey LSF_HPC_NCPU_COND
syn keyword lsfconfKey LSF_HPC_NCPU_INCR_CYCLES
syn keyword lsfconfKey LSF_HPC_NCPU_INCREMENT
syn keyword lsfconfKey LSF_HPC_NCPU_THRESHOLD
syn keyword lsfconfKey LSF_HPC_PJL_LOADENV_TIMEOUT
syn keyword lsfconfKey LSF_ID_PORT
syn keyword lsfconfKey LSF_INCLUDEDIR
syn keyword lsfconfKey LSF_INDEP
syn keyword lsfconfKey LSF_INTERACTIVE_STDERR
syn keyword lsfconfKey LSF_LD_SECURITY
syn keyword lsfconfKey LSF_LIBDIR
syn keyword lsfconfKey LSF_LIC_SCHED_HOSTS
syn keyword lsfconfKey LSF_LIC_SCHED_PREEMPT_REQUEUE
syn keyword lsfconfKey LSF_LIC_SCHED_PREEMPT_SLOT_RELEASE
syn keyword lsfconfKey LSF_LIC_SCHED_PREEMPT_STOP
syn keyword lsfconfKey LSF_LICENSE_ACCT_PATH
syn keyword lsfconfKey LSF_LICENSE_FILE
syn keyword lsfconfKey LSF_LICENSE_NOTIFICATION_INTERVAL
syn keyword lsfconfKey LSF_LIM_API_NTRIES
syn keyword lsfconfKey LSF_LIM_DEBUG
syn keyword lsfconfKey LSF_LIM_IGNORE_CHECKSUM
syn keyword lsfconfKey LSF_LIM_PORT
syn keyword lsfconfKey LSF_RES_PORT
syn keyword lsfconfKey LSB_MBD_PORT
syn keyword lsfconfKey LSB_SBD_PORT
syn keyword lsfconfKey LSF_LOCAL_RESOURCES
syn keyword lsfconfKey LSF_LOG_MASK
syn keyword lsfconfKey LSF_LOG_MASK_WIN
syn keyword lsfconfKey LSF_LOGDIR
syn keyword lsfconfKey LSF_LOGDIR_USE_WIN_REG
syn keyword lsfconfKey LSF_MACHDEP
syn keyword lsfconfKey LSF_MANDIR
syn keyword lsfconfKey LSF_MASTER_LIST
syn keyword lsfconfKey LSF_MASTER_NSLOOKUP_TIMEOUT
syn keyword lsfconfKey LSF_MAX_TRY_ADD_HOST
syn keyword lsfconfKey LSF_MC_NON_PRIVILEGED_PORTS
syn keyword lsfconfKey LSF_MISC
syn keyword lsfconfKey LSF_NON_PRIVILEGED_PORTS
syn keyword lsfconfKey LSF_NIOS_DEBUG
syn keyword lsfconfKey LSF_NIOS_JOBSTATUS_INTERVAL
syn keyword lsfconfKey LSF_NIOS_MAX_TASKS
syn keyword lsfconfKey LSF_NIOS_RES_HEARTBEAT
syn keyword lsfconfKey LSF_PAM_HOSTLIST_USE
syn keyword lsfconfKey LSF_PAM_PLUGINDIR
syn keyword lsfconfKey LSF_PAM_USE_ASH
syn keyword lsfconfKey LSF_PIM_INFODIR
syn keyword lsfconfKey LSF_PIM_SLEEPTIME
syn keyword lsfconfKey LSF_PIM_SLEEPTIME_UPDATE
syn keyword lsfconfKey LSF_POE_TIMEOUT_BIND
syn keyword lsfconfKey LSF_POE_TIMEOUT_SELECT
syn keyword lsfconfKey LSF_RES_ACCT
syn keyword lsfconfKey LSF_RES_ACCTDIR
syn keyword lsfconfKey LSF_RES_ACTIVE_TIME
syn keyword lsfconfKey LSF_RES_CONNECT_RETRY
syn keyword lsfconfKey LSF_RES_DEBUG
syn keyword lsfconfKey LSF_RES_PORT
syn keyword lsfconfKey LSF_RES_RLIMIT_UNLIM
syn keyword lsfconfKey LSF_RES_TIMEOUT
syn keyword lsfconfKey LSF_ROOT_REX
syn keyword lsfconfKey LSF_RSH
syn keyword lsfconfKey LSF_SECUREDIR
syn keyword lsfconfKey LSF_SERVER_HOSTS
syn keyword lsfconfKey LSF_SERVERDIR
syn keyword lsfconfKey LSF_SHELL_AT_USERS
syn keyword lsfconfKey LSF_SHIFT_JIS_INPUT
syn keyword lsfconfKey LSF_SLURM_DISABLE_CLEANUP
syn keyword lsfconfKey LSF_SLURM_TMPDIR
syn keyword lsfconfKey LSF_STRICT_CHECKING
syn keyword lsfconfKey LSF_STRIP_DOMAIN
syn keyword lsfconfKey LSF_TIME_CMD
syn keyword lsfconfKey LSF_TIME_LIM
syn keyword lsfconfKey LSF_TIME_RES
syn keyword lsfconfKey LSF_TMPDIR
syn keyword lsfconfKey LSF_ULDB_DOMAIN
syn keyword lsfconfKey LSF_UNIT_FOR_LIMITS
syn keyword lsfconfKey LSF_USE_HOSTEQUIV
syn keyword lsfconfKey LSF_USER_DOMAIN
syn keyword lsfconfKey LSF_VPLUGIN
syn keyword lsfconfKey MC_PLUGIN_REMOTE_RESOURCE
syn keyword lsfconfKey XLSF_APPDIR
syn keyword lsfconfKey XLSF_UIDDIR

" Keys from ego.conf(5) allowed in lsf.conf(5).
syn keyword lsfconfEgoKey EGO_DISABLE_UNRESOLVABLE_HOSTS
syn keyword lsfconfEgoKey EGO_PREDEFINED_RESOURCES
syn keyword lsfconfEgoKey EGO_DAEMONS_CPUS
syn keyword lsfconfEgoKey EGO_DEFINE_NCPUS
syn keyword lsfconfEgoKey EGO_SLAVE_CTRL_REMOTE_HOST
syn keyword lsfconfEgoKey EGO_WORKDIR
syn keyword lsfconfEgoKey EGO_PIM_SWAP_REPORT

" Flag unknown keys as errors.
syn match lsfconfErrorKey "\<[A-Z_]*\>\(\s*=\)\@="

hi def link lsfconfTodo     Todo
hi def link lsfconfComment  Comment
hi def link lsfconfString   String
hi def link lsfconfNumber   Number
hi def link lsfconfEgoKey   Keyword
hi def link lsfconfKey      Keyword
hi def link lsfconfErrorKey Error

let b:current_syntax = "lsfconf"
