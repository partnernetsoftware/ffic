# 1 "ffic.c"
# 1 "<command line>" 1
# 2 "ffic.c" 2




# 1 "../tinycc/tcc.h" 1
# 26 "../tinycc/tcc.h"
# 1 "./config.h" 1
# 27 "../tinycc/tcc.h" 2

# 1 "./stdarg.h" 1



typedef __builtin_va_list va_list;






typedef va_list __gnuc_va_list;
# 29 "../tinycc/tcc.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h" 1
# 61 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h" 1
# 259 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h" 1
# 260 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h" 2
# 62 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h" 1
# 630 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h" 1
# 631 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h" 2
# 696 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h" 1
# 697 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h" 2
# 63 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h" 2

# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h" 1
# 27 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h" 1
# 33 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h" 1
# 32 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_types.h" 1
# 37 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_types.h"
typedef signed char           __int8_t;



typedef unsigned char           __uint8_t;
typedef short                   __int16_t;
typedef unsigned short          __uint16_t;
typedef int                     __int32_t;
typedef unsigned int            __uint32_t;
typedef long long               __int64_t;
typedef unsigned long long      __uint64_t;

typedef long                    __darwin_intptr_t;
typedef unsigned int            __darwin_natural_t;
# 70 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_types.h"
typedef int                     __darwin_ct_rune_t;





typedef union {
	char            __mbstate8[128];
	long long       _mbstateL;
} __mbstate_t;

typedef __mbstate_t             __darwin_mbstate_t;


typedef long        __darwin_ptrdiff_t;







typedef unsigned long           __darwin_size_t;





typedef __builtin_va_list       __darwin_va_list;





typedef int          __darwin_wchar_t;




typedef __darwin_wchar_t        __darwin_rune_t;


typedef unsigned int           __darwin_wint_t;




typedef unsigned long           __darwin_clock_t;
typedef __uint32_t              __darwin_socklen_t;
typedef long                    __darwin_ssize_t;
typedef long                    __darwin_time_t;
# 33 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h" 2
# 34 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h" 2
# 55 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h"
typedef __int64_t       __darwin_blkcnt_t;
typedef __int32_t       __darwin_blksize_t;
typedef __int32_t       __darwin_dev_t;
typedef unsigned int    __darwin_fsblkcnt_t;
typedef unsigned int    __darwin_fsfilcnt_t;
typedef __uint32_t      __darwin_gid_t;
typedef __uint32_t      __darwin_id_t;
typedef __uint64_t      __darwin_ino64_t;

typedef __darwin_ino64_t __darwin_ino_t;



typedef __darwin_natural_t __darwin_mach_port_name_t;
typedef __darwin_mach_port_name_t __darwin_mach_port_t;
typedef __uint16_t      __darwin_mode_t;
typedef __int64_t       __darwin_off_t;
typedef __int32_t       __darwin_pid_t;
typedef __uint32_t      __darwin_sigset_t;
typedef __int32_t       __darwin_suseconds_t;
typedef __uint32_t      __darwin_uid_t;
typedef __uint32_t      __darwin_useconds_t;
typedef unsigned char   __darwin_uuid_t[16];
typedef char    __darwin_uuid_string_t[37];

# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h" 1
# 57 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h"
struct __darwin_pthread_handler_rec {
	void (*__routine)(void *);
	void *__arg;
	struct __darwin_pthread_handler_rec *__next;
};

struct _opaque_pthread_attr_t {
	long __sig;
	char __opaque[56];
};

struct _opaque_pthread_cond_t {
	long __sig;
	char __opaque[40];
};

struct _opaque_pthread_condattr_t {
	long __sig;
	char __opaque[8];
};

struct _opaque_pthread_mutex_t {
	long __sig;
	char __opaque[56];
};

struct _opaque_pthread_mutexattr_t {
	long __sig;
	char __opaque[8];
};

struct _opaque_pthread_once_t {
	long __sig;
	char __opaque[8];
};

struct _opaque_pthread_rwlock_t {
	long __sig;
	char __opaque[192];
};

struct _opaque_pthread_rwlockattr_t {
	long __sig;
	char __opaque[16];
};

struct _opaque_pthread_t {
	long __sig;
	struct __darwin_pthread_handler_rec  *__cleanup_stack;
	char __opaque[8176];
};

typedef struct _opaque_pthread_attr_t __darwin_pthread_attr_t;
typedef struct _opaque_pthread_cond_t __darwin_pthread_cond_t;
typedef struct _opaque_pthread_condattr_t __darwin_pthread_condattr_t;
typedef unsigned long __darwin_pthread_key_t;
typedef struct _opaque_pthread_mutex_t __darwin_pthread_mutex_t;
typedef struct _opaque_pthread_mutexattr_t __darwin_pthread_mutexattr_t;
typedef struct _opaque_pthread_once_t __darwin_pthread_once_t;
typedef struct _opaque_pthread_rwlock_t __darwin_pthread_rwlock_t;
typedef struct _opaque_pthread_rwlockattr_t __darwin_pthread_rwlockattr_t;
typedef struct _opaque_pthread_t *__darwin_pthread_t;
# 81 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h" 2
# 28 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h" 2
# 40 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h"
typedef	int		__darwin_nl_item;
typedef	int		__darwin_wctrans_t;

typedef	__uint32_t	__darwin_wctype_t;
# 65 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h" 2

# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/wait.h" 1
# 79 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/wait.h"
typedef enum {
	P_ALL,
	P_PID,
	P_PGID
} idtype_t;





# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_pid_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_pid_t.h"
typedef __darwin_pid_t        pid_t;
# 90 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/wait.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_id_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_id_t.h"
typedef __darwin_id_t   id_t;
# 91 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/wait.h" 2
# 109 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/wait.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h" 1
# 73 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/appleapiopts.h" 1
# 74 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h" 2
# 82 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/signal.h" 1
# 32 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/signal.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/signal.h" 1
# 39 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/signal.h"
typedef int sig_atomic_t;
# 33 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/signal.h" 2
# 82 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h" 2
# 146 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_mcontext.h" 1
# 29 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_mcontext.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_mcontext.h" 1
# 34 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_mcontext.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/machine/_structs.h" 1
# 33 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/machine/_structs.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h" 1
# 36 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/types.h" 1
# 35 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/types.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/types.h" 1
# 76 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/types.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h" 1
# 30 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h"
typedef signed char           int8_t;
# 77 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/types.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h" 1
# 30 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h"
typedef short                   int16_t;
# 78 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/types.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h" 1
# 30 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h"
typedef int                     int32_t;
# 79 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/types.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h" 1
# 30 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h"
typedef long long               int64_t;
# 80 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/types.h" 2

# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int8_t.h" 1
# 30 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int8_t.h"
typedef unsigned char           u_int8_t;
# 82 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/types.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int16_t.h" 1
# 30 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int16_t.h"
typedef unsigned short                  u_int16_t;
# 83 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/types.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int32_t.h" 1
# 30 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int32_t.h"
typedef unsigned int            u_int32_t;
# 84 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/types.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int64_t.h" 1
# 30 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int64_t.h"
typedef unsigned long long      u_int64_t;
# 85 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/types.h" 2


typedef int64_t                 register_t;




# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h" 1
# 30 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/types.h" 1
# 30 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h" 2


typedef __darwin_intptr_t       intptr_t;
# 93 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/types.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h" 1
# 30 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h"
typedef unsigned long           uintptr_t;
# 94 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/types.h" 2



typedef u_int64_t               user_addr_t;
typedef u_int64_t               user_size_t;
typedef int64_t                 user_ssize_t;
typedef int64_t                 user_long_t;
typedef u_int64_t               user_ulong_t;
typedef int64_t                 user_time_t;
typedef int64_t                 user_off_t;







typedef u_int64_t               syscall_arg_t;
# 36 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/types.h" 2
# 36 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h" 2
# 46 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h"
struct __darwin_i386_thread_state
{
    unsigned int	__eax;
    unsigned int	__ebx;
    unsigned int	__ecx;
    unsigned int	__edx;
    unsigned int	__edi;
    unsigned int	__esi;
    unsigned int	__ebp;
    unsigned int	__esp;
    unsigned int	__ss;
    unsigned int	__eflags;
    unsigned int	__eip;
    unsigned int	__cs;
    unsigned int	__ds;
    unsigned int	__es;
    unsigned int	__fs;
    unsigned int	__gs;
};
# 92 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h"
struct __darwin_fp_control
{
    unsigned short		__invalid	:1,
    				__denorm	:1,
				__zdiv		:1,
				__ovrfl		:1,
				__undfl		:1,
				__precis	:1,
						:2,
				__pc		:2,





				__rc		:2,






					 	:1,
						:3;
};
typedef struct __darwin_fp_control	__darwin_fp_control_t;
# 150 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h"
struct __darwin_fp_status
{
    unsigned short		__invalid	:1,
    				__denorm	:1,
				__zdiv		:1,
				__ovrfl		:1,
				__undfl		:1,
				__precis	:1,
				__stkflt	:1,
				__errsumm	:1,
				__c0		:1,
				__c1		:1,
				__c2		:1,
				__tos		:3,
				__c3		:1,
				__busy		:1;
};
typedef struct __darwin_fp_status	__darwin_fp_status_t;
# 194 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h"
struct __darwin_mmst_reg
{
	char	__mmst_reg[10];
	char	__mmst_rsrv[6];
};
# 213 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h"
struct __darwin_xmm_reg
{
	char		__xmm_reg[16];
};
# 229 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h"
struct __darwin_ymm_reg
{
	char		__ymm_reg[32];
};
# 245 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h"
struct __darwin_zmm_reg
{
	char		__zmm_reg[64];
};
# 259 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h"
struct __darwin_opmask_reg
{
	char		__opmask_reg[8];
};
# 281 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h"
struct __darwin_i386_float_state
{
	int 			__fpu_reserved[2];
	struct __darwin_fp_control	__fpu_fcw;
	struct __darwin_fp_status	__fpu_fsw;
	__uint8_t		__fpu_ftw;
	__uint8_t		__fpu_rsrv1;
	__uint16_t		__fpu_fop;
	__uint32_t		__fpu_ip;
	__uint16_t		__fpu_cs;
	__uint16_t		__fpu_rsrv2;
	__uint32_t		__fpu_dp;
	__uint16_t		__fpu_ds;
	__uint16_t		__fpu_rsrv3;
	__uint32_t		__fpu_mxcsr;
	__uint32_t		__fpu_mxcsrmask;
	struct __darwin_mmst_reg	__fpu_stmm0;
	struct __darwin_mmst_reg	__fpu_stmm1;
	struct __darwin_mmst_reg	__fpu_stmm2;
	struct __darwin_mmst_reg	__fpu_stmm3;
	struct __darwin_mmst_reg	__fpu_stmm4;
	struct __darwin_mmst_reg	__fpu_stmm5;
	struct __darwin_mmst_reg	__fpu_stmm6;
	struct __darwin_mmst_reg	__fpu_stmm7;
	struct __darwin_xmm_reg		__fpu_xmm0;
	struct __darwin_xmm_reg		__fpu_xmm1;
	struct __darwin_xmm_reg		__fpu_xmm2;
	struct __darwin_xmm_reg		__fpu_xmm3;
	struct __darwin_xmm_reg		__fpu_xmm4;
	struct __darwin_xmm_reg		__fpu_xmm5;
	struct __darwin_xmm_reg		__fpu_xmm6;
	struct __darwin_xmm_reg		__fpu_xmm7;
	char			__fpu_rsrv4[14*16];
	int 			__fpu_reserved1;
};


struct __darwin_i386_avx_state
{
	int 			__fpu_reserved[2];
	struct __darwin_fp_control	__fpu_fcw;
	struct __darwin_fp_status	__fpu_fsw;
	__uint8_t		__fpu_ftw;
	__uint8_t		__fpu_rsrv1;
	__uint16_t		__fpu_fop;
	__uint32_t		__fpu_ip;
	__uint16_t		__fpu_cs;
	__uint16_t		__fpu_rsrv2;
	__uint32_t		__fpu_dp;
	__uint16_t		__fpu_ds;
	__uint16_t		__fpu_rsrv3;
	__uint32_t		__fpu_mxcsr;
	__uint32_t		__fpu_mxcsrmask;
	struct __darwin_mmst_reg	__fpu_stmm0;
	struct __darwin_mmst_reg	__fpu_stmm1;
	struct __darwin_mmst_reg	__fpu_stmm2;
	struct __darwin_mmst_reg	__fpu_stmm3;
	struct __darwin_mmst_reg	__fpu_stmm4;
	struct __darwin_mmst_reg	__fpu_stmm5;
	struct __darwin_mmst_reg	__fpu_stmm6;
	struct __darwin_mmst_reg	__fpu_stmm7;
	struct __darwin_xmm_reg		__fpu_xmm0;
	struct __darwin_xmm_reg		__fpu_xmm1;
	struct __darwin_xmm_reg		__fpu_xmm2;
	struct __darwin_xmm_reg		__fpu_xmm3;
	struct __darwin_xmm_reg		__fpu_xmm4;
	struct __darwin_xmm_reg		__fpu_xmm5;
	struct __darwin_xmm_reg		__fpu_xmm6;
	struct __darwin_xmm_reg		__fpu_xmm7;
	char			__fpu_rsrv4[14*16];
	int 			__fpu_reserved1;
	char			__avx_reserved1[64];
	struct __darwin_xmm_reg		__fpu_ymmh0;
	struct __darwin_xmm_reg		__fpu_ymmh1;
	struct __darwin_xmm_reg		__fpu_ymmh2;
	struct __darwin_xmm_reg		__fpu_ymmh3;
	struct __darwin_xmm_reg		__fpu_ymmh4;
	struct __darwin_xmm_reg		__fpu_ymmh5;
	struct __darwin_xmm_reg		__fpu_ymmh6;
	struct __darwin_xmm_reg		__fpu_ymmh7;
};


struct __darwin_i386_avx512_state
{
	int 			__fpu_reserved[2];
	struct __darwin_fp_control	__fpu_fcw;
	struct __darwin_fp_status	__fpu_fsw;
	__uint8_t		__fpu_ftw;
	__uint8_t		__fpu_rsrv1;
	__uint16_t		__fpu_fop;
	__uint32_t		__fpu_ip;
	__uint16_t		__fpu_cs;
	__uint16_t		__fpu_rsrv2;
	__uint32_t		__fpu_dp;
	__uint16_t		__fpu_ds;
	__uint16_t		__fpu_rsrv3;
	__uint32_t		__fpu_mxcsr;
	__uint32_t		__fpu_mxcsrmask;
	struct __darwin_mmst_reg	__fpu_stmm0;
	struct __darwin_mmst_reg	__fpu_stmm1;
	struct __darwin_mmst_reg	__fpu_stmm2;
	struct __darwin_mmst_reg	__fpu_stmm3;
	struct __darwin_mmst_reg	__fpu_stmm4;
	struct __darwin_mmst_reg	__fpu_stmm5;
	struct __darwin_mmst_reg	__fpu_stmm6;
	struct __darwin_mmst_reg	__fpu_stmm7;
	struct __darwin_xmm_reg		__fpu_xmm0;
	struct __darwin_xmm_reg		__fpu_xmm1;
	struct __darwin_xmm_reg		__fpu_xmm2;
	struct __darwin_xmm_reg		__fpu_xmm3;
	struct __darwin_xmm_reg		__fpu_xmm4;
	struct __darwin_xmm_reg		__fpu_xmm5;
	struct __darwin_xmm_reg		__fpu_xmm6;
	struct __darwin_xmm_reg		__fpu_xmm7;
	char			__fpu_rsrv4[14*16];
	int 			__fpu_reserved1;
	char			__avx_reserved1[64];
	struct __darwin_xmm_reg		__fpu_ymmh0;
	struct __darwin_xmm_reg		__fpu_ymmh1;
	struct __darwin_xmm_reg		__fpu_ymmh2;
	struct __darwin_xmm_reg		__fpu_ymmh3;
	struct __darwin_xmm_reg		__fpu_ymmh4;
	struct __darwin_xmm_reg		__fpu_ymmh5;
	struct __darwin_xmm_reg		__fpu_ymmh6;
	struct __darwin_xmm_reg		__fpu_ymmh7;
	struct __darwin_opmask_reg	__fpu_k0;
	struct __darwin_opmask_reg	__fpu_k1;
	struct __darwin_opmask_reg	__fpu_k2;
	struct __darwin_opmask_reg	__fpu_k3;
	struct __darwin_opmask_reg	__fpu_k4;
	struct __darwin_opmask_reg	__fpu_k5;
	struct __darwin_opmask_reg	__fpu_k6;
	struct __darwin_opmask_reg	__fpu_k7;
	struct __darwin_ymm_reg		__fpu_zmmh0;
	struct __darwin_ymm_reg		__fpu_zmmh1;
	struct __darwin_ymm_reg		__fpu_zmmh2;
	struct __darwin_ymm_reg		__fpu_zmmh3;
	struct __darwin_ymm_reg		__fpu_zmmh4;
	struct __darwin_ymm_reg		__fpu_zmmh5;
	struct __darwin_ymm_reg		__fpu_zmmh6;
	struct __darwin_ymm_reg		__fpu_zmmh7;
};
# 575 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h"
struct __darwin_i386_exception_state
{
	__uint16_t	__trapno;
	__uint16_t	__cpu;
	__uint32_t	__err;
	__uint32_t	__faultvaddr;
};
# 595 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h"
struct __darwin_x86_debug_state32
{
	unsigned int	__dr0;
	unsigned int	__dr1;
	unsigned int	__dr2;
	unsigned int	__dr3;
	unsigned int	__dr4;
	unsigned int	__dr5;
	unsigned int	__dr6;
	unsigned int	__dr7;
};
# 622 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h"
struct __x86_pagein_state
{
	int __pagein_error;
};







struct __darwin_x86_thread_state64
{
	__uint64_t	__rax;
	__uint64_t	__rbx;
	__uint64_t	__rcx;
	__uint64_t	__rdx;
	__uint64_t	__rdi;
	__uint64_t	__rsi;
	__uint64_t	__rbp;
	__uint64_t	__rsp;
	__uint64_t	__r8;
	__uint64_t	__r9;
	__uint64_t	__r10;
	__uint64_t	__r11;
	__uint64_t	__r12;
	__uint64_t	__r13;
	__uint64_t	__r14;
	__uint64_t	__r15;
	__uint64_t	__rip;
	__uint64_t	__rflags;
	__uint64_t	__cs;
	__uint64_t	__fs;
	__uint64_t	__gs;
};
# 691 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h"
struct __darwin_x86_thread_full_state64
{
	struct __darwin_x86_thread_state64	__ss64;
	__uint64_t			__ds;
	__uint64_t			__es;
	__uint64_t			__ss;
	__uint64_t			__gsbase;
};
# 714 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h"
struct __darwin_x86_float_state64
{
	int 			__fpu_reserved[2];
	struct __darwin_fp_control	__fpu_fcw;
	struct __darwin_fp_status	__fpu_fsw;
	__uint8_t		__fpu_ftw;
	__uint8_t		__fpu_rsrv1;
	__uint16_t		__fpu_fop;


	__uint32_t		__fpu_ip;
	__uint16_t		__fpu_cs;

	__uint16_t		__fpu_rsrv2;


	__uint32_t		__fpu_dp;
	__uint16_t		__fpu_ds;

	__uint16_t		__fpu_rsrv3;
	__uint32_t		__fpu_mxcsr;
	__uint32_t		__fpu_mxcsrmask;
	struct __darwin_mmst_reg	__fpu_stmm0;
	struct __darwin_mmst_reg	__fpu_stmm1;
	struct __darwin_mmst_reg	__fpu_stmm2;
	struct __darwin_mmst_reg	__fpu_stmm3;
	struct __darwin_mmst_reg	__fpu_stmm4;
	struct __darwin_mmst_reg	__fpu_stmm5;
	struct __darwin_mmst_reg	__fpu_stmm6;
	struct __darwin_mmst_reg	__fpu_stmm7;
	struct __darwin_xmm_reg		__fpu_xmm0;
	struct __darwin_xmm_reg		__fpu_xmm1;
	struct __darwin_xmm_reg		__fpu_xmm2;
	struct __darwin_xmm_reg		__fpu_xmm3;
	struct __darwin_xmm_reg		__fpu_xmm4;
	struct __darwin_xmm_reg		__fpu_xmm5;
	struct __darwin_xmm_reg		__fpu_xmm6;
	struct __darwin_xmm_reg		__fpu_xmm7;
	struct __darwin_xmm_reg		__fpu_xmm8;
	struct __darwin_xmm_reg		__fpu_xmm9;
	struct __darwin_xmm_reg		__fpu_xmm10;
	struct __darwin_xmm_reg		__fpu_xmm11;
	struct __darwin_xmm_reg		__fpu_xmm12;
	struct __darwin_xmm_reg		__fpu_xmm13;
	struct __darwin_xmm_reg		__fpu_xmm14;
	struct __darwin_xmm_reg		__fpu_xmm15;
	char			__fpu_rsrv4[6*16];
	int 			__fpu_reserved1;
};


struct __darwin_x86_avx_state64
{
	int 			__fpu_reserved[2];
	struct __darwin_fp_control	__fpu_fcw;
	struct __darwin_fp_status	__fpu_fsw;
	__uint8_t		__fpu_ftw;
	__uint8_t		__fpu_rsrv1;
	__uint16_t		__fpu_fop;


	__uint32_t		__fpu_ip;
	__uint16_t		__fpu_cs;

	__uint16_t		__fpu_rsrv2;


	__uint32_t		__fpu_dp;
	__uint16_t		__fpu_ds;

	__uint16_t		__fpu_rsrv3;
	__uint32_t		__fpu_mxcsr;
	__uint32_t		__fpu_mxcsrmask;
	struct __darwin_mmst_reg	__fpu_stmm0;
	struct __darwin_mmst_reg	__fpu_stmm1;
	struct __darwin_mmst_reg	__fpu_stmm2;
	struct __darwin_mmst_reg	__fpu_stmm3;
	struct __darwin_mmst_reg	__fpu_stmm4;
	struct __darwin_mmst_reg	__fpu_stmm5;
	struct __darwin_mmst_reg	__fpu_stmm6;
	struct __darwin_mmst_reg	__fpu_stmm7;
	struct __darwin_xmm_reg		__fpu_xmm0;
	struct __darwin_xmm_reg		__fpu_xmm1;
	struct __darwin_xmm_reg		__fpu_xmm2;
	struct __darwin_xmm_reg		__fpu_xmm3;
	struct __darwin_xmm_reg		__fpu_xmm4;
	struct __darwin_xmm_reg		__fpu_xmm5;
	struct __darwin_xmm_reg		__fpu_xmm6;
	struct __darwin_xmm_reg		__fpu_xmm7;
	struct __darwin_xmm_reg		__fpu_xmm8;
	struct __darwin_xmm_reg		__fpu_xmm9;
	struct __darwin_xmm_reg		__fpu_xmm10;
	struct __darwin_xmm_reg		__fpu_xmm11;
	struct __darwin_xmm_reg		__fpu_xmm12;
	struct __darwin_xmm_reg		__fpu_xmm13;
	struct __darwin_xmm_reg		__fpu_xmm14;
	struct __darwin_xmm_reg		__fpu_xmm15;
	char			__fpu_rsrv4[6*16];
	int 			__fpu_reserved1;
	char			__avx_reserved1[64];
	struct __darwin_xmm_reg		__fpu_ymmh0;
	struct __darwin_xmm_reg		__fpu_ymmh1;
	struct __darwin_xmm_reg		__fpu_ymmh2;
	struct __darwin_xmm_reg		__fpu_ymmh3;
	struct __darwin_xmm_reg		__fpu_ymmh4;
	struct __darwin_xmm_reg		__fpu_ymmh5;
	struct __darwin_xmm_reg		__fpu_ymmh6;
	struct __darwin_xmm_reg		__fpu_ymmh7;
	struct __darwin_xmm_reg		__fpu_ymmh8;
	struct __darwin_xmm_reg		__fpu_ymmh9;
	struct __darwin_xmm_reg		__fpu_ymmh10;
	struct __darwin_xmm_reg		__fpu_ymmh11;
	struct __darwin_xmm_reg		__fpu_ymmh12;
	struct __darwin_xmm_reg		__fpu_ymmh13;
	struct __darwin_xmm_reg		__fpu_ymmh14;
	struct __darwin_xmm_reg		__fpu_ymmh15;
};


struct __darwin_x86_avx512_state64
{
	int 			__fpu_reserved[2];
	struct __darwin_fp_control	__fpu_fcw;
	struct __darwin_fp_status	__fpu_fsw;
	__uint8_t		__fpu_ftw;
	__uint8_t		__fpu_rsrv1;
	__uint16_t		__fpu_fop;


	__uint32_t		__fpu_ip;
	__uint16_t		__fpu_cs;

	__uint16_t		__fpu_rsrv2;


	__uint32_t		__fpu_dp;
	__uint16_t		__fpu_ds;

	__uint16_t		__fpu_rsrv3;
	__uint32_t		__fpu_mxcsr;
	__uint32_t		__fpu_mxcsrmask;
	struct __darwin_mmst_reg	__fpu_stmm0;
	struct __darwin_mmst_reg	__fpu_stmm1;
	struct __darwin_mmst_reg	__fpu_stmm2;
	struct __darwin_mmst_reg	__fpu_stmm3;
	struct __darwin_mmst_reg	__fpu_stmm4;
	struct __darwin_mmst_reg	__fpu_stmm5;
	struct __darwin_mmst_reg	__fpu_stmm6;
	struct __darwin_mmst_reg	__fpu_stmm7;
	struct __darwin_xmm_reg		__fpu_xmm0;
	struct __darwin_xmm_reg		__fpu_xmm1;
	struct __darwin_xmm_reg		__fpu_xmm2;
	struct __darwin_xmm_reg		__fpu_xmm3;
	struct __darwin_xmm_reg		__fpu_xmm4;
	struct __darwin_xmm_reg		__fpu_xmm5;
	struct __darwin_xmm_reg		__fpu_xmm6;
	struct __darwin_xmm_reg		__fpu_xmm7;
	struct __darwin_xmm_reg		__fpu_xmm8;
	struct __darwin_xmm_reg		__fpu_xmm9;
	struct __darwin_xmm_reg		__fpu_xmm10;
	struct __darwin_xmm_reg		__fpu_xmm11;
	struct __darwin_xmm_reg		__fpu_xmm12;
	struct __darwin_xmm_reg		__fpu_xmm13;
	struct __darwin_xmm_reg		__fpu_xmm14;
	struct __darwin_xmm_reg		__fpu_xmm15;
	char			__fpu_rsrv4[6*16];
	int 			__fpu_reserved1;
	char			__avx_reserved1[64];
	struct __darwin_xmm_reg		__fpu_ymmh0;
	struct __darwin_xmm_reg		__fpu_ymmh1;
	struct __darwin_xmm_reg		__fpu_ymmh2;
	struct __darwin_xmm_reg		__fpu_ymmh3;
	struct __darwin_xmm_reg		__fpu_ymmh4;
	struct __darwin_xmm_reg		__fpu_ymmh5;
	struct __darwin_xmm_reg		__fpu_ymmh6;
	struct __darwin_xmm_reg		__fpu_ymmh7;
	struct __darwin_xmm_reg		__fpu_ymmh8;
	struct __darwin_xmm_reg		__fpu_ymmh9;
	struct __darwin_xmm_reg		__fpu_ymmh10;
	struct __darwin_xmm_reg		__fpu_ymmh11;
	struct __darwin_xmm_reg		__fpu_ymmh12;
	struct __darwin_xmm_reg		__fpu_ymmh13;
	struct __darwin_xmm_reg		__fpu_ymmh14;
	struct __darwin_xmm_reg		__fpu_ymmh15;
	struct __darwin_opmask_reg	__fpu_k0;
	struct __darwin_opmask_reg	__fpu_k1;
	struct __darwin_opmask_reg	__fpu_k2;
	struct __darwin_opmask_reg	__fpu_k3;
	struct __darwin_opmask_reg	__fpu_k4;
	struct __darwin_opmask_reg	__fpu_k5;
	struct __darwin_opmask_reg	__fpu_k6;
	struct __darwin_opmask_reg	__fpu_k7;
	struct __darwin_ymm_reg		__fpu_zmmh0;
	struct __darwin_ymm_reg		__fpu_zmmh1;
	struct __darwin_ymm_reg		__fpu_zmmh2;
	struct __darwin_ymm_reg		__fpu_zmmh3;
	struct __darwin_ymm_reg		__fpu_zmmh4;
	struct __darwin_ymm_reg		__fpu_zmmh5;
	struct __darwin_ymm_reg		__fpu_zmmh6;
	struct __darwin_ymm_reg		__fpu_zmmh7;
	struct __darwin_ymm_reg		__fpu_zmmh8;
	struct __darwin_ymm_reg		__fpu_zmmh9;
	struct __darwin_ymm_reg		__fpu_zmmh10;
	struct __darwin_ymm_reg		__fpu_zmmh11;
	struct __darwin_ymm_reg		__fpu_zmmh12;
	struct __darwin_ymm_reg		__fpu_zmmh13;
	struct __darwin_ymm_reg		__fpu_zmmh14;
	struct __darwin_ymm_reg		__fpu_zmmh15;
	struct __darwin_zmm_reg		__fpu_zmm16;
	struct __darwin_zmm_reg		__fpu_zmm17;
	struct __darwin_zmm_reg		__fpu_zmm18;
	struct __darwin_zmm_reg		__fpu_zmm19;
	struct __darwin_zmm_reg		__fpu_zmm20;
	struct __darwin_zmm_reg		__fpu_zmm21;
	struct __darwin_zmm_reg		__fpu_zmm22;
	struct __darwin_zmm_reg		__fpu_zmm23;
	struct __darwin_zmm_reg		__fpu_zmm24;
	struct __darwin_zmm_reg		__fpu_zmm25;
	struct __darwin_zmm_reg		__fpu_zmm26;
	struct __darwin_zmm_reg		__fpu_zmm27;
	struct __darwin_zmm_reg		__fpu_zmm28;
	struct __darwin_zmm_reg		__fpu_zmm29;
	struct __darwin_zmm_reg		__fpu_zmm30;
	struct __darwin_zmm_reg		__fpu_zmm31;
};
# 1172 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h"
struct __darwin_x86_exception_state64
{
    __uint16_t	__trapno;
    __uint16_t	__cpu;
    __uint32_t	__err;
    __uint64_t	__faultvaddr;
};
# 1192 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h"
struct __darwin_x86_debug_state64
{
	__uint64_t	__dr0;
	__uint64_t	__dr1;
	__uint64_t	__dr2;
	__uint64_t	__dr3;
	__uint64_t	__dr4;
	__uint64_t	__dr5;
	__uint64_t	__dr6;
	__uint64_t	__dr7;
};
# 1220 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/_structs.h"
struct __darwin_x86_cpmu_state64
{
	__uint64_t __ctrs[16];
};
# 34 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/machine/_structs.h" 2
# 35 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_mcontext.h" 2




struct __darwin_mcontext32
{
	struct __darwin_i386_exception_state   __es;
	struct __darwin_i386_thread_state      __ss;
	struct __darwin_i386_float_state       __fs;
};


struct __darwin_mcontext_avx32
{
	struct __darwin_i386_exception_state   __es;
	struct __darwin_i386_thread_state      __ss;
	struct __darwin_i386_avx_state         __fs;
};



struct __darwin_mcontext_avx512_32
{
	struct __darwin_i386_exception_state   __es;
	struct __darwin_i386_thread_state      __ss;
	struct __darwin_i386_avx512_state      __fs;
};
# 97 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_mcontext.h"
struct __darwin_mcontext64
{
	struct __darwin_x86_exception_state64   __es;
	struct __darwin_x86_thread_state64      __ss;
	struct __darwin_x86_float_state64       __fs;
};


struct __darwin_mcontext64_full
{
	struct __darwin_x86_exception_state64   __es;
	struct __darwin_x86_thread_full_state64 __ss;
	struct __darwin_x86_float_state64       __fs;
};


struct __darwin_mcontext_avx64
{
	struct __darwin_x86_exception_state64   __es;
	struct __darwin_x86_thread_state64      __ss;
	struct __darwin_x86_avx_state64         __fs;
};


struct __darwin_mcontext_avx64_full
{
	struct __darwin_x86_exception_state64   __es;
	struct __darwin_x86_thread_full_state64 __ss;
	struct __darwin_x86_avx_state64         __fs;
};



struct __darwin_mcontext_avx512_64
{
	struct __darwin_x86_exception_state64   __es;
	struct __darwin_x86_thread_state64      __ss;
	struct __darwin_x86_avx512_state64      __fs;
};


struct __darwin_mcontext_avx512_64_full
{
	struct __darwin_x86_exception_state64   __es;
	struct __darwin_x86_thread_full_state64 __ss;
	struct __darwin_x86_avx512_state64      __fs;
};
# 204 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_mcontext.h"
typedef struct __darwin_mcontext64      *mcontext_t;
# 30 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_mcontext.h" 2
# 147 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h" 2

# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_attr_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_attr_t.h"
typedef __darwin_pthread_attr_t pthread_attr_t;
# 149 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h" 2

# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_sigaltstack.h" 1
# 42 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_sigaltstack.h"
struct __darwin_sigaltstack
{
	void            *ss_sp;
	__darwin_size_t ss_size;
	int             ss_flags;
};
typedef struct __darwin_sigaltstack     stack_t;
# 151 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ucontext.h" 1
# 39 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ucontext.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_mcontext.h" 1
# 39 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ucontext.h" 2



struct __darwin_ucontext
{
	int                     uc_onstack;
	__darwin_sigset_t       uc_sigmask;
	struct __darwin_sigaltstack     uc_stack;
	struct __darwin_ucontext        *uc_link;
	__darwin_size_t         uc_mcsize;
	struct __darwin_mcontext64        *uc_mcontext;



};


typedef struct __darwin_ucontext        ucontext_t;
# 152 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h" 2


# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_sigset_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_sigset_t.h"
typedef __darwin_sigset_t               sigset_t;
# 155 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h"
typedef __darwin_size_t        size_t;
# 156 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uid_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uid_t.h"
typedef __darwin_uid_t        uid_t;
# 157 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h" 2

union sigval {

	int     sival_int;
	void    *sival_ptr;
};





struct sigevent {
	int                             sigev_notify;
	int                             sigev_signo;
	union sigval    sigev_value;
	void                    (*sigev_notify_function)(union sigval);
	pthread_attr_t  *sigev_notify_attributes;
};


typedef struct __siginfo {
	int     si_signo;
	int     si_errno;
	int     si_code;
	pid_t   si_pid;
	uid_t   si_uid;
	int     si_status;
	void    *si_addr;
	union sigval si_value;
	long    si_band;
	unsigned long   __pad[7];
} siginfo_t;
# 269 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h"
union __sigaction_u {
	void    (*__sa_handler)(int);
	void    (*__sa_sigaction)(int, struct __siginfo *,
	    void *);
};


struct  __sigaction {
	union __sigaction_u __sigaction_u;
	void    (*sa_tramp)(void *, int, int, siginfo_t *, void *);
	sigset_t sa_mask;
	int     sa_flags;
};




struct  sigaction {
	union __sigaction_u __sigaction_u;
	sigset_t sa_mask;
	int     sa_flags;
};
# 331 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h"
typedef void (*sig_t)(int);
# 348 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h"
struct  sigvec {
	void    (*sv_handler)(int);
	int     sv_mask;
	int     sv_flags;
};
# 367 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h"
struct  sigstack {
	char    *ss_sp;
	int     ss_onstack;
};
# 390 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/signal.h"
    void(*signal(int, void (*)(int)))(int);
# 109 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/wait.h" 2

# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/resource.h" 1
# 72 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/resource.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h" 1
# 23 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint8_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint8_t.h"
typedef unsigned char uint8_t;
# 24 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint16_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint16_t.h"
typedef unsigned short uint16_t;
# 25 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint32_t.h"
typedef unsigned int uint32_t;
# 26 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h"
typedef unsigned long long uint64_t;
# 27 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h" 2


typedef int8_t           int_least8_t;
typedef int16_t         int_least16_t;
typedef int32_t         int_least32_t;
typedef int64_t         int_least64_t;
typedef uint8_t         uint_least8_t;
typedef uint16_t       uint_least16_t;
typedef uint32_t       uint_least32_t;
typedef uint64_t       uint_least64_t;



typedef int8_t            int_fast8_t;
typedef int16_t          int_fast16_t;
typedef int32_t          int_fast32_t;
typedef int64_t          int_fast64_t;
typedef uint8_t          uint_fast8_t;
typedef uint16_t        uint_fast16_t;
typedef uint32_t        uint_fast32_t;
typedef uint64_t        uint_fast64_t;
# 58 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_intmax_t.h" 1
# 35 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_intmax_t.h"
typedef long int intmax_t;
# 59 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uintmax_t.h" 1
# 35 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uintmax_t.h"
typedef long unsigned int uintmax_t;
# 60 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdint.h" 2
# 73 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/resource.h" 2







# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timeval.h" 1
# 34 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timeval.h"
struct timeval
{
	__darwin_time_t         tv_sec;
	__darwin_suseconds_t    tv_usec;
};
# 81 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/resource.h" 2
# 89 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/resource.h"
typedef __uint64_t      rlim_t;
# 152 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/resource.h"
struct  rusage {
	struct timeval ru_utime;
	struct timeval ru_stime;
# 163 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/resource.h"
	long    ru_maxrss;

	long    ru_ixrss;
	long    ru_idrss;
	long    ru_isrss;
	long    ru_minflt;
	long    ru_majflt;
	long    ru_nswap;
	long    ru_inblock;
	long    ru_oublock;
	long    ru_msgsnd;
	long    ru_msgrcv;
	long    ru_nsignals;
	long    ru_nvcsw;
	long    ru_nivcsw;


};
# 193 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/resource.h"
typedef void *rusage_info_t;

struct rusage_info_v0 {
	uint8_t  ri_uuid[16];
	uint64_t ri_user_time;
	uint64_t ri_system_time;
	uint64_t ri_pkg_idle_wkups;
	uint64_t ri_interrupt_wkups;
	uint64_t ri_pageins;
	uint64_t ri_wired_size;
	uint64_t ri_resident_size;
	uint64_t ri_phys_footprint;
	uint64_t ri_proc_start_abstime;
	uint64_t ri_proc_exit_abstime;
};

struct rusage_info_v1 {
	uint8_t  ri_uuid[16];
	uint64_t ri_user_time;
	uint64_t ri_system_time;
	uint64_t ri_pkg_idle_wkups;
	uint64_t ri_interrupt_wkups;
	uint64_t ri_pageins;
	uint64_t ri_wired_size;
	uint64_t ri_resident_size;
	uint64_t ri_phys_footprint;
	uint64_t ri_proc_start_abstime;
	uint64_t ri_proc_exit_abstime;
	uint64_t ri_child_user_time;
	uint64_t ri_child_system_time;
	uint64_t ri_child_pkg_idle_wkups;
	uint64_t ri_child_interrupt_wkups;
	uint64_t ri_child_pageins;
	uint64_t ri_child_elapsed_abstime;
};

struct rusage_info_v2 {
	uint8_t  ri_uuid[16];
	uint64_t ri_user_time;
	uint64_t ri_system_time;
	uint64_t ri_pkg_idle_wkups;
	uint64_t ri_interrupt_wkups;
	uint64_t ri_pageins;
	uint64_t ri_wired_size;
	uint64_t ri_resident_size;
	uint64_t ri_phys_footprint;
	uint64_t ri_proc_start_abstime;
	uint64_t ri_proc_exit_abstime;
	uint64_t ri_child_user_time;
	uint64_t ri_child_system_time;
	uint64_t ri_child_pkg_idle_wkups;
	uint64_t ri_child_interrupt_wkups;
	uint64_t ri_child_pageins;
	uint64_t ri_child_elapsed_abstime;
	uint64_t ri_diskio_bytesread;
	uint64_t ri_diskio_byteswritten;
};

struct rusage_info_v3 {
	uint8_t  ri_uuid[16];
	uint64_t ri_user_time;
	uint64_t ri_system_time;
	uint64_t ri_pkg_idle_wkups;
	uint64_t ri_interrupt_wkups;
	uint64_t ri_pageins;
	uint64_t ri_wired_size;
	uint64_t ri_resident_size;
	uint64_t ri_phys_footprint;
	uint64_t ri_proc_start_abstime;
	uint64_t ri_proc_exit_abstime;
	uint64_t ri_child_user_time;
	uint64_t ri_child_system_time;
	uint64_t ri_child_pkg_idle_wkups;
	uint64_t ri_child_interrupt_wkups;
	uint64_t ri_child_pageins;
	uint64_t ri_child_elapsed_abstime;
	uint64_t ri_diskio_bytesread;
	uint64_t ri_diskio_byteswritten;
	uint64_t ri_cpu_time_qos_default;
	uint64_t ri_cpu_time_qos_maintenance;
	uint64_t ri_cpu_time_qos_background;
	uint64_t ri_cpu_time_qos_utility;
	uint64_t ri_cpu_time_qos_legacy;
	uint64_t ri_cpu_time_qos_user_initiated;
	uint64_t ri_cpu_time_qos_user_interactive;
	uint64_t ri_billed_system_time;
	uint64_t ri_serviced_system_time;
};

struct rusage_info_v4 {
	uint8_t  ri_uuid[16];
	uint64_t ri_user_time;
	uint64_t ri_system_time;
	uint64_t ri_pkg_idle_wkups;
	uint64_t ri_interrupt_wkups;
	uint64_t ri_pageins;
	uint64_t ri_wired_size;
	uint64_t ri_resident_size;
	uint64_t ri_phys_footprint;
	uint64_t ri_proc_start_abstime;
	uint64_t ri_proc_exit_abstime;
	uint64_t ri_child_user_time;
	uint64_t ri_child_system_time;
	uint64_t ri_child_pkg_idle_wkups;
	uint64_t ri_child_interrupt_wkups;
	uint64_t ri_child_pageins;
	uint64_t ri_child_elapsed_abstime;
	uint64_t ri_diskio_bytesread;
	uint64_t ri_diskio_byteswritten;
	uint64_t ri_cpu_time_qos_default;
	uint64_t ri_cpu_time_qos_maintenance;
	uint64_t ri_cpu_time_qos_background;
	uint64_t ri_cpu_time_qos_utility;
	uint64_t ri_cpu_time_qos_legacy;
	uint64_t ri_cpu_time_qos_user_initiated;
	uint64_t ri_cpu_time_qos_user_interactive;
	uint64_t ri_billed_system_time;
	uint64_t ri_serviced_system_time;
	uint64_t ri_logical_writes;
	uint64_t ri_lifetime_max_phys_footprint;
	uint64_t ri_instructions;
	uint64_t ri_cycles;
	uint64_t ri_billed_energy;
	uint64_t ri_serviced_energy;
	uint64_t ri_interval_max_phys_footprint;
	uint64_t ri_runnable_time;
};

typedef struct rusage_info_v4 rusage_info_current;
# 365 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/resource.h"
struct rlimit {
	rlim_t  rlim_cur;
	rlim_t  rlim_max;
};
# 400 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/resource.h"
struct proc_rlimit_control_wakeupmon {
	uint32_t wm_flags;
	int32_t wm_rate;
};
# 445 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/resource.h"
int     getpriority(int, id_t);

int     getiopolicy_np(int, int) ;

int     getrlimit(int, struct rlimit *) __asm("_" "getrlimit" );
int     getrusage(int, struct rusage *);
int     setpriority(int, id_t, int);

int     setiopolicy_np(int, int, int) ;

int     setrlimit(int, const struct rlimit *) __asm("_" "setrlimit" );
# 110 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/wait.h" 2
# 186 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/wait.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/endian.h" 1
# 35 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/endian.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/endian.h" 1
# 99 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/endian.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_endian.h" 1
# 130 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_endian.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/libkern/_OSByteOrder.h" 1
# 66 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/libkern/_OSByteOrder.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/libkern/i386/_OSByteOrder.h" 1
# 44 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/libkern/i386/_OSByteOrder.h"
static inline
__uint16_t
_OSSwapInt16(
	__uint16_t        _data
	)
{
	return (__uint16_t)((_data << 8) | (_data >> 8));
}

static inline
__uint32_t
_OSSwapInt32(
	__uint32_t        _data
	)
{



	__asm__ ("bswap   %0" : "+r" (_data));
	return _data;

}
# 91 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/libkern/i386/_OSByteOrder.h"
static inline
__uint64_t
_OSSwapInt64(
	__uint64_t        _data
	)
{
	__asm__ ("bswap   %0" : "+r" (_data));
	return _data;
}
# 67 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/libkern/_OSByteOrder.h" 2
# 131 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_endian.h" 2
# 100 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/endian.h" 2
# 36 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/endian.h" 2
# 187 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/wait.h" 2







union wait {
	int     w_status;



	struct {

		unsigned int    w_Termsig:7,
		    w_Coredump:1,
		    w_Retcode:8,
		    w_Filler:16;







	} w_T;





	struct {

		unsigned int    w_Stopval:8,
		    w_Stopsig:8,
		    w_Filler:16;






	} w_S;
};
# 248 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/wait.h"
pid_t   wait(int *) __asm("_" "wait" );
pid_t   waitpid(pid_t, int *, int) __asm("_" "waitpid" );

int     waitid(idtype_t, id_t, siginfo_t *, int) __asm("_" "waitid" );


pid_t   wait3(int *, int, struct rusage *);
pid_t   wait4(pid_t, int *, int, struct rusage *);
# 67 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h" 2

# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/alloca.h" 1
# 32 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/alloca.h"
void	*alloca(size_t);
# 69 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h" 2
# 77 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ct_rune_t.h" 1
# 32 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ct_rune_t.h"
typedef __darwin_ct_rune_t ct_rune_t;
# 78 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_rune_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_rune_t.h"
typedef __darwin_rune_t rune_t;
# 79 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h" 2


# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wchar_t.h" 1
# 34 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wchar_t.h"
typedef __darwin_wchar_t wchar_t;
# 82 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h" 2

typedef struct {
	int quot;
	int rem;
} div_t;

typedef struct {
	long quot;
	long rem;
} ldiv_t;


typedef struct {
	long long quot;
	long long rem;
} lldiv_t;


# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_null.h" 1
# 101 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h" 2
# 118 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h"
extern int __mb_cur_max;
# 128 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/malloc/_malloc.h" 1
# 40 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/malloc/_malloc.h"
void	*malloc(size_t __size)  ;
void	*calloc(size_t __count, size_t __size)  ;
void	 free(void *);
void	*realloc(void *__ptr, size_t __size)  ;

void	*valloc(size_t) ;






int 	 posix_memalign(void **__memptr, size_t __alignment, size_t __size) ;
# 129 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h" 2


void	 abort(void)  __attribute__((__noreturn__));
int	 abs(int) __attribute__((__const__));
int	 atexit(void (* )(void));
double	 atof(const char *);
int	 atoi(const char *);
long	 atol(const char *);

long long
	 atoll(const char *);

void	*bsearch(const void *__key, const void *__base, size_t __nel,
	    size_t __width, int (*  __compar)(const void *, const void *));

div_t	 div(int, int) __attribute__((__const__));
void	 exit(int) __attribute__((__noreturn__));

char	*getenv(const char *);
long	 labs(long) __attribute__((__const__));
ldiv_t	 ldiv(long, long) __attribute__((__const__));

long long
	 llabs(long long);
lldiv_t	 lldiv(long long, long long);


int	 mblen(const char *__s, size_t __n);
size_t	 mbstowcs(wchar_t * restrict , const char * restrict, size_t);
int	 mbtowc(wchar_t * restrict, const char * restrict, size_t);

void	 qsort(void *__base, size_t __nel, size_t __width,
	    int (*  __compar)(const void *, const void *));
int	 rand(void) ;

void	 srand(unsigned) ;
double	 strtod(const char *, char **) __asm("_" "strtod" );
float	 strtof(const char *, char **) __asm("_" "strtof" );
long	 strtol(const char *__str, char **__endptr, int __base);
long double
	 strtold(const char *, char **);

long long
	 strtoll(const char *__str, char **__endptr, int __base);

unsigned long
	 strtoul(const char *__str, char **__endptr, int __base);

unsigned long long
	 strtoull(const char *__str, char **__endptr, int __base);
# 190 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h"
int	 system(const char *) __asm("_" "system" );



size_t	 wcstombs(char * restrict, const wchar_t * restrict, size_t);
int	 wctomb(char *, wchar_t);


void	_Exit(int) __attribute__((__noreturn__));
long	 a64l(const char *);
double	 drand48(void);
char	*ecvt(double, int, int *restrict, int *restrict);
double	 erand48(unsigned short[3]);
char	*fcvt(double, int, int *restrict, int *restrict);
char	*gcvt(double, int, char *);
int	 getsubopt(char **, char * const *, char **);
int	 grantpt(int);

char	*initstate(unsigned, char *, size_t);



long	 jrand48(unsigned short[3]) ;
char	*l64a(long);
void	 lcong48(unsigned short[7]);
long	 lrand48(void) ;
char	*mktemp(char *);
int	 mkstemp(char *);
long	 mrand48(void) ;
long	 nrand48(unsigned short[3]) ;
int	 posix_openpt(int);
char	*ptsname(int);


int ptsname_r(int fildes, char *buffer, size_t buflen) ;


int	 putenv(char *) __asm("_" "putenv" );
long	 random(void) ;
int	 rand_r(unsigned *) ;

char	*realpath(const char * restrict, char * restrict) __asm("_" "realpath" "$DARWIN_EXTSN");



unsigned short
	*seed48(unsigned short[3]);
int	 setenv(const char * __name, const char * __value, int __overwrite) __asm("_" "setenv" );

void	 setkey(const char *) __asm("_" "setkey" );



char	*setstate(const char *);
void	 srand48(long);

void	 srandom(unsigned);



int	 unlockpt(int);

int	 unsetenv(const char *) __asm("_" "unsetenv" );







# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_dev_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_dev_t.h"
typedef __darwin_dev_t        dev_t;
# 261 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h"
typedef __darwin_mode_t         mode_t;
# 262 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h" 2


uint32_t arc4random(void);
void	 arc4random_addrandom(unsigned char *  , int  )



    ;
void	 arc4random_buf(void * __buf, size_t __nbytes) ;
void	 arc4random_stir(void);
uint32_t
	 arc4random_uniform(uint32_t __upper_bound) ;







char	*cgetcap(char *, const char *, int);
int	 cgetclose(void);
int	 cgetent(char **, char **, const char *);
int	 cgetfirst(char **, char **);
int	 cgetmatch(const char *, const char *);
int	 cgetnext(char **, char **);
int	 cgetnum(char *, const char *, long *);
int	 cgetset(const char *);
int	 cgetstr(char *, const char *, char **);
int	 cgetustr(char *, const char *, char **);

int	 daemon(int, int) __asm("_" "daemon" "$1050")   ;
char	*devname(dev_t, mode_t);
char	*devname_r(dev_t, mode_t, char *buf, int len);
char	*getbsize(int *, long *);
int	 getloadavg(double [], int);
const char
	*getprogname(void);
void	 setprogname(const char *);
# 309 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h"
int	 heapsort(void *__base, size_t __nel, size_t __width,
	    int (*  __compar)(const void *, const void *));





int	 mergesort(void *__base, size_t __nel, size_t __width,
	    int (*  __compar)(const void *, const void *));





void	 psort(void *__base, size_t __nel, size_t __width,
	    int (*  __compar)(const void *, const void *))
	    ;





void	 psort_r(void *__base, size_t __nel, size_t __width, void *,
	    int (*  __compar)(void *, const void *, const void *))
	    ;





void	 qsort_r(void *__base, size_t __nel, size_t __width, void *,
	    int (*  __compar)(void *, const void *, const void *));
int	 radixsort(const unsigned char **__base, int __nel, const unsigned char *__table,
	    unsigned __endbyte);
int	rpmatch(const char *)
	;
int	 sradixsort(const unsigned char **__base, int __nel, const unsigned char *__table,
	    unsigned __endbyte);
void	 sranddev(void);
void	 srandomdev(void);
void	*reallocf(void *__ptr, size_t __size) ;

long long
	 strtoq(const char *__str, char **__endptr, int __base);
unsigned long long
	 strtouq(const char *__str, char **__endptr, int __base);

extern char *suboptarg;
# 30 "../tinycc/tcc.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h" 1
# 64 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_stdio.h" 1
# 75 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_stdio.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_va_list.h" 1
# 32 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_va_list.h"
typedef __darwin_va_list va_list;
# 76 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_stdio.h" 2



# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/stdio.h" 1
# 39 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/stdio.h"
int     renameat(int, const char *, int, const char *) ;






int renamex_np(const char *, const char *, unsigned int)    ;
int renameatx_np(int, const char *, int, const char *, unsigned int)    ;
# 80 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_stdio.h" 2

typedef __darwin_off_t		fpos_t;
# 92 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_stdio.h"
struct __sbuf {
	unsigned char	*_base;
	int		_size;
};


struct __sFILEX;
# 126 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_stdio.h"
typedef	struct __sFILE {
	unsigned char *_p;
	int	_r;
	int	_w;
	short	_flags;
	short	_file;
	struct	__sbuf _bf;
	int	_lbfsize;


	void	*_cookie;
	int	(*  _close)(void *);
	int	(*  _read) (void *, char *, int);
	fpos_t	(*  _seek) (void *, fpos_t, int);
	int	(*  _write)(void *, const char *, int);


	struct	__sbuf _ub;
	struct __sFILEX *_extra;
	int	_ur;


	unsigned char _ubuf[3];
	unsigned char _nbuf[1];


	struct	__sbuf _lb;


	int	_blksize;
	fpos_t	_offset;
} FILE;
# 65 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h" 2


extern FILE *__stdinp;
extern FILE *__stdoutp;
extern FILE *__stderrp;
# 142 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h"
void	 clearerr(FILE *);
int	 fclose(FILE *);
int	 feof(FILE *);
int	 ferror(FILE *);
int	 fflush(FILE *);
int	 fgetc(FILE *);
int	 fgetpos(FILE * restrict, fpos_t *);
char	*fgets(char * restrict, int, FILE *);

FILE	*fopen(const char * restrict __filename, const char * restrict __mode) __asm("_" "fopen" "$DARWIN_EXTSN");



int	 fprintf(FILE * restrict, const char * restrict, ...) __attribute__((__format__ (__printf__, 2, 3)));
int	 fputc(int, FILE *);
int	 fputs(const char * restrict, FILE * restrict) __asm("_" "fputs" );
size_t	 fread(void * restrict __ptr, size_t __size, size_t __nitems, FILE * restrict __stream);
FILE	*freopen(const char * restrict, const char * restrict,
                 FILE * restrict) __asm("_" "freopen" );
int	 fscanf(FILE * restrict, const char * restrict, ...) __attribute__((__format__ (__scanf__, 2, 3)));
int	 fseek(FILE *, long, int);
int	 fsetpos(FILE *, const fpos_t *);
long	 ftell(FILE *);
size_t	 fwrite(const void * restrict __ptr, size_t __size, size_t __nitems, FILE * restrict __stream) __asm("_" "fwrite" );
int	 getc(FILE *);
int	 getchar(void);
char	*gets(char *);
void	 perror(const char *) ;
int	 printf(const char * restrict, ...) __attribute__((__format__ (__printf__, 1, 2)));
int	 putc(int, FILE *);
int	 putchar(int);
int	 puts(const char *);
int	 remove(const char *);
int	 rename (const char *__old, const char *__new);
void	 rewind(FILE *);
int	 scanf(const char * restrict, ...) __attribute__((__format__ (__scanf__, 1, 2)));
void	 setbuf(FILE * restrict, char * restrict);
int	 setvbuf(FILE * restrict, char * restrict, int, size_t);
int	 sprintf(char * restrict, const char * restrict, ...) __attribute__((__format__ (__printf__, 2, 3))) ;
int	 sscanf(const char * restrict, const char * restrict, ...) __attribute__((__format__ (__scanf__, 2, 3)));
FILE	*tmpfile(void);



__attribute__((__deprecated__))

char	*tmpnam(char *);
int	 ungetc(int, FILE *);
int	 vfprintf(FILE * restrict, const char * restrict, va_list) __attribute__((__format__ (__printf__, 2, 0)));
int	 vprintf(const char * restrict, va_list) __attribute__((__format__ (__printf__, 1, 0)));
int	 vsprintf(char * restrict, const char * restrict, va_list) __attribute__((__format__ (__printf__, 2, 0))) ;
# 205 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_ctermid.h" 1
# 26 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_ctermid.h"
char    *ctermid(char *);
# 206 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h" 2


FILE	*fdopen(int, const char *) __asm("_" "fdopen" "$DARWIN_EXTSN");



int	 fileno(FILE *);
# 228 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h"
int	 pclose(FILE *) ;

FILE	*popen(const char *, const char *) __asm("_" "popen" "$DARWIN_EXTSN") ;
# 249 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h"
int	__srget(FILE *);
int	__svfscanf(FILE *, const char *, va_list) __attribute__((__format__ (__scanf__, 2, 0)));
int	__swbuf(int, FILE *);
# 260 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h"
extern __inline __attribute__ ((__always_inline__)) int __sputc(int _c, FILE *_p) {
	if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
		return (*_p->_p++ = _c);
	else
		return (__swbuf(_c, _p));
}
# 286 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h"
void	 flockfile(FILE *);
int	 ftrylockfile(FILE *);
void	 funlockfile(FILE *);
int	 getc_unlocked(FILE *);
int	 getchar_unlocked(void);
int	 putc_unlocked(int, FILE *);
int	 putchar_unlocked(int);



int	 getw(FILE *);
int	 putw(int, FILE *);




__attribute__((__deprecated__))

char	*tempnam(const char *__dir, const char *__prefix) __asm("_" "tempnam" );
# 324 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_off_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_off_t.h"
typedef __darwin_off_t          off_t;
# 325 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h" 2


int	 fseeko(FILE * __stream, off_t __offset, int __whence);
off_t	 ftello(FILE * __stream);





int	 snprintf(char * restrict __str, size_t __size, const char * restrict __format, ...) __attribute__((__format__ (__printf__, 3, 4)));
int	 vfscanf(FILE * restrict __stream, const char * restrict __format, va_list) __attribute__((__format__ (__scanf__, 2, 0)));
int	 vscanf(const char * restrict __format, va_list) __attribute__((__format__ (__scanf__, 1, 0)));
int	 vsnprintf(char * restrict __str, size_t __size, const char * restrict __format, va_list) __attribute__((__format__ (__printf__, 3, 0)));
int	 vsscanf(const char * restrict __str, const char * restrict __format, va_list) __attribute__((__format__ (__scanf__, 2, 0)));
# 349 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ssize_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ssize_t.h"
typedef __darwin_ssize_t        ssize_t;
# 350 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h" 2


int	dprintf(int, const char * restrict, ...) __attribute__((__format__ (__printf__, 2, 3))) ;
int	vdprintf(int, const char * restrict, va_list) __attribute__((__format__ (__printf__, 2, 0))) ;
ssize_t getdelim(char ** restrict __linep, size_t * restrict __linecapp, int __delimiter, FILE * restrict __stream) ;
ssize_t getline(char ** restrict __linep, size_t * restrict __linecapp, FILE * restrict __stream) ;
FILE *fmemopen(void * restrict __buf, size_t __size, const char * restrict __mode) ;
FILE *open_memstream(char **__bufp, size_t *__sizep) ;
# 367 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h"
extern const int sys_nerr;
extern const char *const sys_errlist[];

int	 asprintf(char ** restrict, const char * restrict, ...) __attribute__((__format__ (__printf__, 2, 3)));
char	*ctermid_r(char *);
char	*fgetln(FILE *, size_t *);
const char *fmtcheck(const char *, const char *);
int	 fpurge(FILE *);
void	 setbuffer(FILE *, char *, int);
int	 setlinebuf(FILE *);
int	 vasprintf(char ** restrict, const char * restrict, va_list) __attribute__((__format__ (__printf__, 2, 0)));
FILE	*zopen(const char *, const char *, int);





FILE	*funopen(const void *,
                 int (* )(void *, char *, int),
                 int (* )(void *, const char *, int),
                 fpos_t (* )(void *, fpos_t, int),
                 int (* )(void *));
# 31 "../tinycc/tcc.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/string.h" 1
# 70 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/string.h"
void	*memchr(const void *__s, int __c, size_t __n);
int	 memcmp(const void *__s1, const void *__s2, size_t __n);
void	*memcpy(void *__dst, const void *__src, size_t __n);
void	*memmove(void *__dst, const void *__src, size_t __len);
void	*memset(void *__b, int __c, size_t __len);
char	*strcat(char *__s1, const char *__s2);
char	*strchr(const char *__s, int __c);
int	 strcmp(const char *__s1, const char *__s2);
int	 strcoll(const char *__s1, const char *__s2);
char	*strcpy(char *__dst, const char *__src);
size_t	 strcspn(const char *__s, const char *__charset);
char	*strerror(int __errnum) __asm("_" "strerror" );
size_t	 strlen(const char *__s);
char	*strncat(char *__s1, const char *__s2, size_t __n);
int	 strncmp(const char *__s1, const char *__s2, size_t __n);
char	*strncpy(char *__dst, const char *__src, size_t __n);
char	*strpbrk(const char *__s, const char *__charset);
char	*strrchr(const char *__s, int __c);
size_t	 strspn(const char *__s, const char *__charset);
char	*strstr(const char *__big, const char *__little);
char	*strtok(char *__str, const char *__sep);
size_t	 strxfrm(char *__s1, const char *__s2, size_t __n);
# 104 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/string.h"
char	*strtok_r(char *__str, const char *__sep, char **__lasts);
# 116 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/string.h"
int	 strerror_r(int __errnum, char *__strerrbuf, size_t __buflen);
char	*strdup(const char *__s1);
void	*memccpy(void *__dst, const void *__src, int __c, size_t __n);
# 130 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/string.h"
char	*stpcpy(char *__dst, const char *__src);
char    *stpncpy(char *__dst, const char *__src, size_t __n) ;
char	*strndup(const char *__s1, size_t __n) ;
size_t   strnlen(const char *__s1, size_t __n) ;
char	*strsignal(int __sig);






# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_rsize_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_rsize_t.h"
typedef __darwin_size_t        rsize_t;
# 142 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/string.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_errno_t.h" 1
# 30 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_errno_t.h"
typedef int                    errno_t;
# 143 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/string.h" 2


errno_t	memset_s(void *__s, rsize_t __smax, int __c, rsize_t __n) ;
# 155 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/string.h"
void	*memmem(const void *__big, size_t __big_len, const void *__little, size_t __little_len) ;
void     memset_pattern4(void *__b, const void *__pattern4, size_t __len) ;
void     memset_pattern8(void *__b, const void *__pattern8, size_t __len) ;
void     memset_pattern16(void *__b, const void *__pattern16, size_t __len) ;

char	*strcasestr(const char *__big, const char *__little);
char	*strnstr(const char *__big, const char *__little, size_t __len);
size_t	 strlcat(char *__dst, const char *__source, size_t __size);
size_t	 strlcpy(char *__dst, const char *__source, size_t __size);
void	 strmode(int __mode, char *__bp);
char	*strsep(char **__stringp, const char *__delim);


void	 swab(const void * restrict, void * restrict, ssize_t);



int	timingsafe_bcmp(const void *__b1, const void *__b2, size_t __len);







# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/strings.h" 1
# 70 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/strings.h"
int	 bcmp(const void *, const void *, size_t) ;
void	 bcopy(const void *, void *, size_t) ;
void	 bzero(void *, size_t) ;
char	*index(const char *, int) ;
char	*rindex(const char *, int) ;


int	 ffs(int);
int	 strcasecmp(const char *, const char *);
int	 strncasecmp(const char *, const char *, size_t);





int	 ffsl(long) ;
int	 ffsll(long long) ;
int	 fls(int) ;
int	 flsl(long) ;
int	 flsll(long long) ;


# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/string.h" 1
# 93 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/strings.h" 2
# 181 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/string.h" 2
# 32 "../tinycc/tcc.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/errno.h" 1
# 23 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/errno.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/errno.h" 1
# 80 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/errno.h"
extern int * __error(void);
# 24 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/errno.h" 2
# 33 "../tinycc/tcc.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/math.h" 1
# 44 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/math.h"
    typedef float float_t;
    typedef double double_t;
# 111 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/math.h"
extern int __math_errhandling(void);
# 131 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/math.h"
extern int __fpclassifyf(float);
extern int __fpclassifyd(double);
extern int __fpclassifyl(long double);
# 284 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/math.h"
extern int __isnormalf(float);
extern int __isnormald(double);
extern int __isnormall(long double);
extern int __isfinitef(float);
extern int __isfinited(double);
extern int __isfinitel(long double);
extern int __isinff(float);
extern int __isinfd(double);
extern int __isinfl(long double);
extern int __isnanf(float);
extern int __isnand(double);
extern int __isnanl(long double);
extern int __signbitf(float);
extern int __signbitd(double);
extern int __signbitl(long double);
# 308 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/math.h"
extern float acosf(float);
extern double acos(double);
extern long double acosl(long double);

extern float asinf(float);
extern double asin(double);
extern long double asinl(long double);

extern float atanf(float);
extern double atan(double);
extern long double atanl(long double);

extern float atan2f(float, float);
extern double atan2(double, double);
extern long double atan2l(long double, long double);

extern float cosf(float);
extern double cos(double);
extern long double cosl(long double);

extern float sinf(float);
extern double sin(double);
extern long double sinl(long double);

extern float tanf(float);
extern double tan(double);
extern long double tanl(long double);

extern float acoshf(float);
extern double acosh(double);
extern long double acoshl(long double);

extern float asinhf(float);
extern double asinh(double);
extern long double asinhl(long double);

extern float atanhf(float);
extern double atanh(double);
extern long double atanhl(long double);

extern float coshf(float);
extern double cosh(double);
extern long double coshl(long double);

extern float sinhf(float);
extern double sinh(double);
extern long double sinhl(long double);

extern float tanhf(float);
extern double tanh(double);
extern long double tanhl(long double);

extern float expf(float);
extern double exp(double);
extern long double expl(long double);

extern float exp2f(float);
extern double exp2(double);
extern long double exp2l(long double);

extern float expm1f(float);
extern double expm1(double);
extern long double expm1l(long double);

extern float logf(float);
extern double log(double);
extern long double logl(long double);

extern float log10f(float);
extern double log10(double);
extern long double log10l(long double);

extern float log2f(float);
extern double log2(double);
extern long double log2l(long double);

extern float log1pf(float);
extern double log1p(double);
extern long double log1pl(long double);

extern float logbf(float);
extern double logb(double);
extern long double logbl(long double);

extern float modff(float, float *);
extern double modf(double, double *);
extern long double modfl(long double, long double *);

extern float ldexpf(float, int);
extern double ldexp(double, int);
extern long double ldexpl(long double, int);

extern float frexpf(float, int *);
extern double frexp(double, int *);
extern long double frexpl(long double, int *);

extern int ilogbf(float);
extern int ilogb(double);
extern int ilogbl(long double);

extern float scalbnf(float, int);
extern double scalbn(double, int);
extern long double scalbnl(long double, int);

extern float scalblnf(float, long int);
extern double scalbln(double, long int);
extern long double scalblnl(long double, long int);

extern float fabsf(float);
extern double fabs(double);
extern long double fabsl(long double);

extern float cbrtf(float);
extern double cbrt(double);
extern long double cbrtl(long double);

extern float hypotf(float, float);
extern double hypot(double, double);
extern long double hypotl(long double, long double);

extern float powf(float, float);
extern double pow(double, double);
extern long double powl(long double, long double);

extern float sqrtf(float);
extern double sqrt(double);
extern long double sqrtl(long double);

extern float erff(float);
extern double erf(double);
extern long double erfl(long double);

extern float erfcf(float);
extern double erfc(double);
extern long double erfcl(long double);




extern float lgammaf(float);
extern double lgamma(double);
extern long double lgammal(long double);

extern float tgammaf(float);
extern double tgamma(double);
extern long double tgammal(long double);

extern float ceilf(float);
extern double ceil(double);
extern long double ceill(long double);

extern float floorf(float);
extern double floor(double);
extern long double floorl(long double);

extern float nearbyintf(float);
extern double nearbyint(double);
extern long double nearbyintl(long double);

extern float rintf(float);
extern double rint(double);
extern long double rintl(long double);

extern long int lrintf(float);
extern long int lrint(double);
extern long int lrintl(long double);

extern float roundf(float);
extern double round(double);
extern long double roundl(long double);

extern long int lroundf(float);
extern long int lround(double);
extern long int lroundl(long double);




extern long long int llrintf(float);
extern long long int llrint(double);
extern long long int llrintl(long double);

extern long long int llroundf(float);
extern long long int llround(double);
extern long long int llroundl(long double);


extern float truncf(float);
extern double trunc(double);
extern long double truncl(long double);

extern float fmodf(float, float);
extern double fmod(double, double);
extern long double fmodl(long double, long double);

extern float remainderf(float, float);
extern double remainder(double, double);
extern long double remainderl(long double, long double);

extern float remquof(float, float, int *);
extern double remquo(double, double, int *);
extern long double remquol(long double, long double, int *);

extern float copysignf(float, float);
extern double copysign(double, double);
extern long double copysignl(long double, long double);

extern float nanf(const char *);
extern double nan(const char *);
extern long double nanl(const char *);

extern float nextafterf(float, float);
extern double nextafter(double, double);
extern long double nextafterl(long double, long double);

extern double nexttoward(double, long double);
extern float nexttowardf(float, long double);
extern long double nexttowardl(long double, long double);

extern float fdimf(float, float);
extern double fdim(double, double);
extern long double fdiml(long double, long double);

extern float fmaxf(float, float);
extern double fmax(double, double);
extern long double fmaxl(long double, long double);

extern float fminf(float, float);
extern double fmin(double, double);
extern long double fminl(long double, long double);

extern float fmaf(float, float, float);
extern double fma(double, double, double);
extern long double fmal(long double, long double, long double);
# 551 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/math.h"
extern float __inff(void)
 ;
extern double __inf(void)
 ;
extern long double __infl(void)
 ;
extern float __nan(void)
 ;
# 586 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/math.h"
extern float __exp10f(float) ;
extern double __exp10(double) ;





extern __inline __attribute__ ((__always_inline__)) void __sincosf(float __x, float *__sinp, float *__cosp);
extern __inline __attribute__ ((__always_inline__)) void __sincos(double __x, double *__sinp, double *__cosp);
# 603 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/math.h"
extern float __cospif(float) ;
extern double __cospi(double) ;
extern float __sinpif(float) ;
extern double __sinpi(double) ;
extern float __tanpif(float) ;
extern double __tanpi(double) ;
# 634 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/math.h"
extern __inline __attribute__ ((__always_inline__)) void __sincospif(float __x, float *__sinp, float *__cosp);
extern __inline __attribute__ ((__always_inline__)) void __sincospi(double __x, double *__sinp, double *__cosp);






struct __float2 { float __sinval; float __cosval; };
struct __double2 { double __sinval; double __cosval; };

extern struct __float2 __sincosf_stret(float);
extern struct __double2 __sincos_stret(double);
extern struct __float2 __sincospif_stret(float);
extern struct __double2 __sincospi_stret(double);

extern __inline __attribute__ ((__always_inline__)) void __sincosf(float __x, float *__sinp, float *__cosp) {
    const struct __float2 __stret = __sincosf_stret(__x);
    *__sinp = __stret.__sinval; *__cosp = __stret.__cosval;
}

extern __inline __attribute__ ((__always_inline__)) void __sincos(double __x, double *__sinp, double *__cosp) {
    const struct __double2 __stret = __sincos_stret(__x);
    *__sinp = __stret.__sinval; *__cosp = __stret.__cosval;
}

extern __inline __attribute__ ((__always_inline__)) void __sincospif(float __x, float *__sinp, float *__cosp) {
    const struct __float2 __stret = __sincospif_stret(__x);
    *__sinp = __stret.__sinval; *__cosp = __stret.__cosval;
}

extern __inline __attribute__ ((__always_inline__)) void __sincospi(double __x, double *__sinp, double *__cosp) {
    const struct __double2 __stret = __sincospi_stret(__x);
    *__sinp = __stret.__sinval; *__cosp = __stret.__cosval;
}







extern double j0(double) ;
extern double j1(double) ;
extern double jn(int, double) ;
extern double y0(double) ;
extern double y1(double) ;
extern double yn(int, double) ;
extern double scalb(double, double);
extern int signgam;
# 740 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/math.h"
extern long int rinttol(double)
 ;

extern long int roundtol(double)
 ;

extern double drem(double, double)
 ;

extern int finite(double)
 ;

extern double gamma(double)
 ;

extern double significand(double)
 ;


struct exception {
    int type;
    char *name;
    double arg1;
    double arg2;
    double retval;
};
# 34 "../tinycc/tcc.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/fcntl.h" 1
# 23 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/fcntl.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h" 1
# 116 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_o_sync.h" 1
# 117 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h" 2
# 161 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_o_dsync.h" 1
# 162 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h" 2
# 318 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_seek_set.h" 1
# 319 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h" 2





# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_s_ifmt.h" 1
# 325 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h" 2
# 343 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h"
struct flock {
	off_t   l_start;
	off_t   l_len;
	pid_t   l_pid;
	short   l_type;
	short   l_whence;
};

# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timespec.h" 1
# 33 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timespec.h"
struct timespec
{
	__darwin_time_t tv_sec;
	long            tv_nsec;
};
# 352 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h" 2






struct flocktimeout {
	struct flock    fl;
	struct timespec timeout;
};
# 371 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h"
struct radvisory {
	off_t   ra_offset;
	int     ra_count;
};



typedef struct fcodeblobs {
	void            *f_cd_hash;
	size_t          f_hash_size;
	void            *f_cd_buffer;
	size_t          f_cd_size;
	unsigned int    *f_out_size;
	int             f_arch;
	int             __padding;
} fcodeblobs_t;
# 395 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h"
typedef struct fsignatures {
	off_t           fs_file_start;
	void            *fs_blob_start;
	size_t          fs_blob_size;
} fsignatures_t;
# 411 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h"
typedef struct fchecklv {
	off_t           lv_file_start;
	size_t          lv_error_message_size;
	void            *lv_error_message;
} fchecklv_t;
# 427 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h"
typedef struct fstore {
	unsigned int fst_flags;
	int     fst_posmode;
	off_t   fst_offset;
	off_t   fst_length;
	off_t   fst_bytesalloc;
} fstore_t;


typedef struct fpunchhole {
	unsigned int fp_flags;
	unsigned int reserved;
	off_t fp_offset;
	off_t fp_length;
} fpunchhole_t;


typedef struct ftrimactivefile {
	off_t fta_offset;
	off_t fta_length;
} ftrimactivefile_t;


typedef struct fspecread {
	unsigned int fsr_flags;
	unsigned int reserved;
	off_t fsr_offset;
	off_t fsr_length;
} fspecread_t;



typedef struct fbootstraptransfer {
	off_t fbt_offset;
	size_t fbt_length;
	void *fbt_buffer;
} fbootstraptransfer_t;
# 487 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h"
#pragma pack(4)

struct log2phys {
	unsigned int    l2p_flags;
	off_t           l2p_contigbytes;


	off_t           l2p_devoffset;


};

#pragma pack()
# 510 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_filesec_t.h" 1
# 30 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_filesec_t.h"
struct _filesec;
typedef struct _filesec *filesec_t;
# 511 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/fcntl.h" 2

typedef enum {
	FILESEC_OWNER = 1,
	FILESEC_GROUP = 2,
	FILESEC_UUID = 3,
	FILESEC_MODE = 4,
	FILESEC_ACL = 5,
	FILESEC_GRPUUID = 6,


	FILESEC_ACL_RAW = 100,
	FILESEC_ACL_ALLOCSIZE = 101
} filesec_property_t;






int     open(const char *, int, ...) __asm("_" "open" );

int     openat(int, const char *, int, ...) __asm("_" "openat" ) ;

int     creat(const char *, mode_t) __asm("_" "creat" );
int     fcntl(int, int, ...) __asm("_" "fcntl" );


int     openx_np(const char *, int, filesec_t);




int open_dprotected_np( const char *, int, int, int, ...);
int     flock(int, int);
filesec_t filesec_init(void);
filesec_t filesec_dup(filesec_t);
void    filesec_free(filesec_t);
int     filesec_get_property(filesec_t, filesec_property_t, void *);
int     filesec_query_property(filesec_t, filesec_property_t, int *);
int     filesec_set_property(filesec_t, filesec_property_t, const void *);
int     filesec_unset_property(filesec_t, filesec_property_t) ;
# 24 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/fcntl.h" 2
# 35 "../tinycc/tcc.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/setjmp.h" 1
# 37 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/setjmp.h"
typedef int jmp_buf[((9 * 2) + 3 + 16)];
typedef int sigjmp_buf[((9 * 2) + 3 + 16) + 1];
# 87 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/setjmp.h"
extern int	setjmp(jmp_buf);
extern void longjmp(jmp_buf, int) __attribute__((__noreturn__));


int	_setjmp(jmp_buf);
void	_longjmp(jmp_buf, int) __attribute__((__noreturn__));
int	sigsetjmp(sigjmp_buf, int);
void	siglongjmp(sigjmp_buf, int) __attribute__((__noreturn__));



void	longjmperror(void);
# 36 "../tinycc/tcc.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/time.h" 1
# 69 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/time.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_clock_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_clock_t.h"
typedef __darwin_clock_t        clock_t;
# 70 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/time.h" 2


# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_time_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_time_t.h"
typedef __darwin_time_t         time_t;
# 73 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/time.h" 2


struct tm {
	int	tm_sec;
	int	tm_min;
	int	tm_hour;
	int	tm_mday;
	int	tm_mon;
	int	tm_year;
	int	tm_wday;
	int	tm_yday;
	int	tm_isdst;
	long	tm_gmtoff;
	char	*tm_zone;
};
# 98 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/time.h"
extern char *tzname[];


extern int getdate_err;

extern long timezone __asm("_" "timezone" );

extern int daylight;


char *asctime(const struct tm *);
clock_t clock(void) __asm("_" "clock" );
char *ctime(const time_t *);
double difftime(time_t, time_t);
struct tm *getdate(const char *);
struct tm *gmtime(const time_t *);
struct tm *localtime(const time_t *);
time_t mktime(struct tm *) __asm("_" "mktime" );
size_t strftime(char * restrict, size_t, const char * restrict, const struct tm * restrict) __asm("_" "strftime" );
char *strptime(const char * restrict, const char * restrict, struct tm * restrict) __asm("_" "strptime" );
time_t time(time_t *);


void tzset(void);



char *asctime_r(const struct tm * restrict, char * restrict);
char *ctime_r(const time_t *, char *);
struct tm *gmtime_r(const time_t * restrict, struct tm * restrict);
struct tm *localtime_r(const time_t * restrict, struct tm * restrict);


time_t posix2time(time_t);



void tzsetwall(void);
time_t time2posix(time_t);
time_t timelocal(struct tm * const);
time_t timegm(struct tm * const);



int nanosleep(const struct timespec *__rqtp, struct timespec *__rmtp) __asm("_" "nanosleep" );
# 153 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/time.h"
typedef enum {
_CLOCK_REALTIME  = 0,

_CLOCK_MONOTONIC  = 6,


_CLOCK_MONOTONIC_RAW  = 4,

_CLOCK_MONOTONIC_RAW_APPROX  = 5,

_CLOCK_UPTIME_RAW  = 8,

_CLOCK_UPTIME_RAW_APPROX  = 9,


_CLOCK_PROCESS_CPUTIME_ID  = 12,

_CLOCK_THREAD_CPUTIME_ID  = 16

} clockid_t;


int clock_getres(clockid_t __clock_id, struct timespec *__res);


int clock_gettime(clockid_t __clock_id, struct timespec *__tp);



__uint64_t clock_gettime_nsec_np(clockid_t __clock_id);




int clock_settime(clockid_t __clock_id, const struct timespec *__tp);
# 37 "../tinycc/tcc.h" 2



# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/unistd.h" 1
# 72 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/unistd.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/unistd.h" 1
# 84 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/unistd.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_posix_vdisable.h" 1
# 85 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/unistd.h" 2
# 122 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/unistd.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_seek_set.h" 1
# 123 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/unistd.h" 2
# 132 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/unistd.h"
struct accessx_descriptor {
	unsigned int ad_name_offset;
	int ad_flags;
	int ad_pad[2];
};
# 187 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/unistd.h"
int     getattrlistbulk(int, void *, void *, size_t, uint64_t) ;
int     getattrlistat(int, const char *, void *, void *, size_t, unsigned long) ;
int     setattrlistat(int, const char *, void *, void *, size_t, uint32_t)    ;
# 202 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/unistd.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_gid_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_gid_t.h"
typedef __darwin_gid_t  gid_t;
# 203 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/unistd.h" 2




int     faccessat(int, const char *, int, int) ;
int     fchownat(int, const char *, uid_t, gid_t, int)  ;
int     linkat(int, const char *, int, const char *, int)       ;
ssize_t readlinkat(int, const char *, char *, size_t)   ;
int     symlinkat(const char *, int, const char *) ;
int     unlinkat(int, const char *, int) ;
# 73 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/unistd.h" 2
# 83 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/unistd.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_useconds_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_useconds_t.h"
typedef __darwin_useconds_t     useconds_t;
# 84 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/unistd.h" 2
# 430 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/unistd.h"
void	 _exit(int) __attribute__((__noreturn__));
int	 access(const char *, int);
unsigned int
	 alarm(unsigned int);
int	 chdir(const char *);
int	 chown(const char *, uid_t, gid_t);

int	 close(int) __asm("_" "close" );

int	 dup(int);
int	 dup2(int, int);
int	 execl(const char * __path, const char * __arg0, ...)  ;
int	 execle(const char * __path, const char * __arg0, ...)  ;
int	 execlp(const char * __file, const char * __arg0, ...)  ;
int	 execv(const char * __path, char * const * __argv)  ;
int	 execve(const char * __file, char * const * __argv, char * const * __envp)  ;
int	 execvp(const char * __file, char * const * __argv)  ;
pid_t	 fork(void)  ;
long	 fpathconf(int, int);
char	*getcwd(char *, size_t);
gid_t	 getegid(void);
uid_t	 geteuid(void);
gid_t	 getgid(void);

int	 getgroups(int, gid_t []) __asm("_" "getgroups" "$DARWIN_EXTSN");



char	*getlogin(void);
pid_t	 getpgrp(void);
pid_t	 getpid(void);
pid_t	 getppid(void);
uid_t	 getuid(void);
int	 isatty(int);
int	 link(const char *, const char *);
off_t	 lseek(int, off_t, int);
long	 pathconf(const char *, int);

int	 pause(void) __asm("_" "pause" );

int	 pipe(int [2]);

ssize_t	 read(int, void *, size_t) __asm("_" "read" );

int	 rmdir(const char *);
int	 setgid(gid_t);
int	 setpgid(pid_t, pid_t);
pid_t	 setsid(void);
int	 setuid(uid_t);

unsigned int
	 sleep(unsigned int) __asm("_" "sleep" );

long	 sysconf(int);
pid_t	 tcgetpgrp(int);
int	 tcsetpgrp(int, pid_t);
char	*ttyname(int);


int	 ttyname_r(int, char *, size_t) __asm("_" "ttyname_r" );




int	 unlink(const char *);

ssize_t	 write(int __fd, const void * __buf, size_t __nbyte) __asm("_" "write" );
# 507 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/unistd.h"
size_t	 confstr(int, char *, size_t) __asm("_" "confstr" );

int	 getopt(int, char * const [], const char *) __asm("_" "getopt" );

extern char *optarg;
extern int optind, opterr, optopt;
# 538 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/unistd.h"
__attribute__((__deprecated__))

void	*brk(const void *);
int	 chroot(const char *) ;


char	*crypt(const char *, const char *);

void	 encrypt(char *, int) __asm("_" "encrypt" );



int	 fchdir(int);
long	 gethostid(void);
pid_t	 getpgid(pid_t);
pid_t	 getsid(pid_t);



int	 getdtablesize(void) ;
int	 getpagesize(void) __attribute__((__const__)) ;
char	*getpass(const char *) ;




char	*getwd(char *) ;


int	 lchown(const char *, uid_t, gid_t) __asm("_" "lchown" );

int	 lockf(int, int, off_t) __asm("_" "lockf" );

int	 nice(int) __asm("_" "nice" );

ssize_t	 pread(int __fd, void * __buf, size_t __nbyte, off_t __offset) __asm("_" "pread" );

ssize_t	 pwrite(int __fd, const void * __buf, size_t __nbyte, off_t __offset) __asm("_" "pwrite" );






__attribute__((__deprecated__))

void	*sbrk(int);



pid_t	 setpgrp(void) __asm("_" "setpgrp" );




int	 setregid(gid_t, gid_t) __asm("_" "setregid" );

int	 setreuid(uid_t, uid_t) __asm("_" "setreuid" );

void     swab(const void * restrict, void * restrict, ssize_t);
void	 sync(void);
int	 truncate(const char *, off_t);
useconds_t	 ualarm(useconds_t, useconds_t);
int	 usleep(useconds_t) __asm("_" "usleep" );
pid_t	 vfork(void)  ;


int	 fsync(int) __asm("_" "fsync" );

int	 ftruncate(int, off_t);
int	 getlogin_r(char *, size_t);
# 621 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/unistd.h"
int	 fchown(int, uid_t, gid_t);
int	 gethostname(char *, size_t);
ssize_t  readlink(const char * restrict, char * restrict, size_t);
int	 setegid(gid_t);
int	 seteuid(uid_t);
int	 symlink(const char *, const char *);
# 635 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/unistd.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/select.h" 1
# 75 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/select.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_def.h" 1
# 50 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_def.h"
typedef struct fd_set {
	__int32_t       fds_bits[((((1024) % ((sizeof(__int32_t) * 8))) == 0) ? ((1024) / ((sizeof(__int32_t) * 8))) : (((1024) / ((sizeof(__int32_t) * 8))) + 1))];
} fd_set;

int __darwin_check_fd_set_overflow(int, const void *, int) __attribute__((__weak_import__));


extern __inline __attribute__ ((__always_inline__)) int
__darwin_check_fd_set(int _a, const void *_b)
{
	if ((uintptr_t)&__darwin_check_fd_set_overflow != (uintptr_t) 0) {

		return __darwin_check_fd_set_overflow(_a, _b, 1);



	} else {
		return 1;
	}
}


extern __inline __attribute__ ((__always_inline__)) int
__darwin_fd_isset(int _fd, const struct fd_set *_p)
{
	if (__darwin_check_fd_set(_fd, (const void *) _p)) {
		return _p->fds_bits[(unsigned long)_fd / (sizeof(__int32_t) * 8)] & ((__int32_t)(((unsigned long)1) << ((unsigned long)_fd % (sizeof(__int32_t) * 8))));
	}

	return 0;
}

extern __inline __attribute__ ((__always_inline__)) void
__darwin_fd_set(int _fd, struct fd_set *const _p)
{
	if (__darwin_check_fd_set(_fd, (const void *) _p)) {
		(_p->fds_bits[(unsigned long)_fd / (sizeof(__int32_t) * 8)] |= ((__int32_t)(((unsigned long)1) << ((unsigned long)_fd % (sizeof(__int32_t) * 8)))));
	}
}

extern __inline __attribute__ ((__always_inline__)) void
__darwin_fd_clr(int _fd, struct fd_set *const _p)
{
	if (__darwin_check_fd_set(_fd, (const void *) _p)) {
		(_p->fds_bits[(unsigned long)_fd / (sizeof(__int32_t) * 8)] &= ~((__int32_t)(((unsigned long)1) << ((unsigned long)_fd % (sizeof(__int32_t) * 8)))));
	}
}
# 76 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/select.h" 2
# 85 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/select.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_suseconds_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_suseconds_t.h"
typedef __darwin_suseconds_t    suseconds_t;
# 86 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/select.h" 2
# 100 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/select.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_setsize.h" 1
# 101 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/select.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_set.h" 1
# 102 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/select.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_clr.h" 1
# 103 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/select.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_isset.h" 1
# 104 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/select.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_zero.h" 1
# 105 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/select.h" 2


# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fd_copy.h" 1
# 108 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/select.h" 2






int      pselect(int, fd_set * restrict, fd_set * restrict,
    fd_set * restrict, const struct timespec * restrict,
    const sigset_t * restrict)

__asm("_" "pselect" "$DARWIN_EXTSN" )







;


# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_select.h" 1
# 39 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_select.h"
int      select(int, fd_set * restrict, fd_set * restrict,
    fd_set * restrict, struct timeval * restrict)

__asm("_" "select" "$DARWIN_EXTSN" )







;
# 129 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/select.h" 2
# 636 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/unistd.h" 2



# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uuid_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uuid_t.h"
typedef __darwin_uuid_t uuid_t;
# 640 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/unistd.h" 2


void	 _Exit(int) __attribute__((__noreturn__));
int	 accessx_np(const struct accessx_descriptor *, size_t, int *, uid_t);
int	 acct(const char *);
int	 add_profil(char *, size_t, unsigned long, unsigned int)  ;
void	 endusershell(void);
int	 execvP(const char * __file, const char * __searchpath, char * const * __argv)   ;
char	*fflagstostr(unsigned long);
int	 getdomainname(char *, int);
int	 getgrouplist(const char *, int, int *, int *);




# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/gethostuuid.h" 1
# 39 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/gethostuuid.h"
int gethostuuid(uuid_t, const struct timespec *) ;
# 656 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/unistd.h" 2




mode_t	 getmode(const void *, mode_t);
int	 getpeereid(int, uid_t *, gid_t *);
int	 getsgroups_np(int *, uuid_t);
char	*getusershell(void);
int	 getwgroups_np(int *, uuid_t);
int	 initgroups(const char *, int);
int	 issetugid(void);
char	*mkdtemp(char *);
int	 mknod(const char *, mode_t, dev_t);
int	 mkpath_np(const char *path, mode_t omode) ;
int	 mkpathat_np(int dfd, const char *path, mode_t omode)

		 ;
int	 mkstemp(char *);
int	 mkstemps(char *, int);
char	*mktemp(char *);
int	 mkostemp(char *path, int oflags)

		 ;
int	 mkostemps(char *path, int slen, int oflags)

		 ;

int	 mkstemp_dprotected_np(char *path, int dpclass, int dpflags)

		 ;
char   *mkdtempat_np(int dfd, char *path)

		 ;
int     mkstempsat_np(int dfd, char *path, int slen)

		 ;
int     mkostempsat_np(int dfd, char *path, int slen, int oflags)

		 ;
int	 nfssvc(int, void *);
int	 profil(char *, size_t, unsigned long, unsigned int);

__attribute__((__deprecated__))
int	 pthread_setugid_np(uid_t, gid_t);
int	 pthread_getugid_np( uid_t *, gid_t *);

int	 reboot(int);
int	 revoke(const char *);

__attribute__((__deprecated__)) int	 rcmd(char **, int, const char *, const char *, const char *, int *);
__attribute__((__deprecated__)) int	 rcmd_af(char **, int, const char *, const char *, const char *, int *,
		int);
__attribute__((__deprecated__)) int	 rresvport(int *);
__attribute__((__deprecated__)) int	 rresvport_af(int *, int);
__attribute__((__deprecated__)) int	 iruserok(unsigned long, int, const char *, const char *);
__attribute__((__deprecated__)) int	 iruserok_sa(const void *, int, int, const char *, const char *);
__attribute__((__deprecated__)) int	 ruserok(const char *, int, const char *, const char *);

int	 setdomainname(const char *, int);
int	 setgroups(int, const gid_t *);
void	 sethostid(long);
int	 sethostname(const char *, int);

void	 setkey(const char *) __asm("_" "setkey" );



int	 setlogin(const char *);
void	*setmode(const char *) __asm("_" "setmode" );
int	 setrgid(gid_t);
int	 setruid(uid_t);
int	 setsgroups_np(int, const uuid_t);
void	 setusershell(void);
int	 setwgroups_np(int, const uuid_t);
int	 strtofflags(char **, unsigned long *, unsigned long *);
int	 swapon(const char *);
int	 ttyslot(void);
int	 undelete(const char *);
int	 unwhiteout(const char *);
void	*valloc(size_t);






int	 syscall(int, ...);

extern char *suboptarg;
int	 getsubopt(char **, char * const *, char **);



int    fgetattrlist(int,void*,void*,size_t,unsigned int) ;
int    fsetattrlist(int,void*,void*,size_t,unsigned int) ;
int    getattrlist(const char*,void*,void*,size_t,unsigned int) __asm("_" "getattrlist" );
int    setattrlist(const char*,void*,void*,size_t,unsigned int) __asm("_" "setattrlist" );
int exchangedata(const char*,const char*,unsigned int)  ;
int    getdirentriesattr(int,void*,void*,size_t,unsigned int*,unsigned int*,unsigned int*,unsigned int)  ;
# 769 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/unistd.h"
struct fssearchblock;
struct searchstate;

int	 searchfs(const char *, struct fssearchblock *, unsigned long *, unsigned int, unsigned int, struct searchstate *)  ;
int	 fsctl(const char *,unsigned long,void*,unsigned int);
int	 ffsctl(int,unsigned long,void*,unsigned int) ;




int	fsync_volume_np(int, int) ;
int	sync_volume_np(const char *, int) ;

extern int optreset;
# 41 "../tinycc/tcc.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/time.h" 1
# 80 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/time.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timeval64.h" 1
# 34 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timeval64.h"
struct timeval64 {
	__int64_t               tv_sec;
	__int64_t               tv_usec;
};
# 81 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/time.h" 2
# 91 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/time.h"
struct  itimerval {
	struct  timeval it_interval;
	struct  timeval it_value;
};
# 129 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/time.h"
struct timezone {
	int     tz_minuteswest;
	int     tz_dsttime;
};
# 172 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/time.h"
struct clockinfo {
	int     hz;
	int     tick;
	int     tickadj;
	int     stathz;
	int     profhz;
};
# 190 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/time.h"
int     adjtime(const struct timeval *, struct timeval *);
int     futimes(int, const struct timeval *);
int     lutimes(const char *, const struct timeval *) ;
int     settimeofday(const struct timeval *, const struct timezone *);


int     getitimer(int, struct itimerval *);
int     gettimeofday(struct timeval * restrict, void * restrict);



int     setitimer(int, const struct itimerval * restrict,
    struct itimerval * restrict);
int     utimes(const char *, const struct timeval *);
# 42 "../tinycc/tcc.h" 2

# 1 "./dlfcn.h" 1




void *dlopen(const char *filename, int flag);
void dlclose(void *p);
const char *dlerror(void);
void *dlsym(void *handle, const char *symbol);
# 44 "../tinycc/tcc.h" 2


extern float strtof (const char *__nptr, char **__endptr);
extern long double strtold (const char *__nptr, char **__endptr);
# 321 "../tinycc/tcc.h"
# 1 "../tinycc/libtcc.h" 1
# 12 "../tinycc/libtcc.h"
struct TCCState;

typedef struct TCCState TCCState;

typedef void (*TCCErrorFunc)(void *opaque, const char *msg);


 TCCState *tcc_new(void);


 void tcc_delete(TCCState *s);


 void tcc_set_lib_path(TCCState *s, const char *path);


 void tcc_set_error_func(TCCState *s, void *error_opaque, TCCErrorFunc error_func);


 TCCErrorFunc tcc_get_error_func(TCCState *s);


 void *tcc_get_error_opaque(TCCState *s);


 void tcc_set_options(TCCState *s, const char *str);





 int tcc_add_include_path(TCCState *s, const char *pathname);


 int tcc_add_sysinclude_path(TCCState *s, const char *pathname);


 void tcc_define_symbol(TCCState *s, const char *sym, const char *value);


 void tcc_undefine_symbol(TCCState *s, const char *sym);





 int tcc_add_file(TCCState *s, const char *filename);


 int tcc_compile_string(TCCState *s, const char *buf);





 int tcc_set_output_type(TCCState *s, int output_type);







 int tcc_add_library_path(TCCState *s, const char *pathname);


 int tcc_add_library(TCCState *s, const char *libraryname);


 int tcc_add_symbol(TCCState *s, const char *name, const void *val);



 int tcc_output_file(TCCState *s, const char *filename);



 int tcc_run(TCCState *s, int argc, char **argv);


 int tcc_relocate(TCCState *s1, void *ptr);
# 101 "../tinycc/libtcc.h"
 void *tcc_get_symbol(TCCState *s, const char *name);


 void tcc_list_symbols(TCCState *s, void *ctx,
    void (*symbol_cb)(void *ctx, const char *name, const void *val));
# 322 "../tinycc/tcc.h" 2
# 1 "../tinycc/elf.h" 1
# 23 "../tinycc/elf.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/inttypes.h" 1
# 227 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/inttypes.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wchar_t.h" 1
# 228 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/inttypes.h" 2







extern intmax_t
imaxabs(intmax_t j);


typedef struct {
	intmax_t quot;
	intmax_t rem;
} imaxdiv_t;


extern imaxdiv_t
imaxdiv(intmax_t __numer, intmax_t __denom);



extern intmax_t
strtoimax(const char * restrict __nptr,
	  char ** restrict __endptr,
	  int __base);


extern uintmax_t
strtoumax(const char * restrict __nptr,
	  char ** restrict __endptr,
	  int __base);



extern intmax_t
wcstoimax(const wchar_t * restrict __nptr,
	  wchar_t ** restrict __endptr,
	  int __base);


extern uintmax_t
wcstoumax(const wchar_t * restrict __nptr,
	  wchar_t ** restrict __endptr,
	  int __base);
# 24 "../tinycc/elf.h" 2
# 41 "../tinycc/elf.h"
typedef uint16_t Elf32_Half;
typedef uint16_t Elf64_Half;


typedef uint32_t Elf32_Word;
typedef	int32_t  Elf32_Sword;
typedef uint32_t Elf64_Word;
typedef	int32_t  Elf64_Sword;


typedef uint64_t Elf32_Xword;
typedef	int64_t  Elf32_Sxword;
typedef uint64_t Elf64_Xword;
typedef	int64_t  Elf64_Sxword;


typedef uint32_t Elf32_Addr;
typedef uint64_t Elf64_Addr;


typedef uint32_t Elf32_Off;
typedef uint64_t Elf64_Off;


typedef uint16_t Elf32_Section;
typedef uint16_t Elf64_Section;


typedef Elf32_Half Elf32_Versym;
typedef Elf64_Half Elf64_Versym;






typedef struct
{
  unsigned char	e_ident[(16)];
  Elf32_Half	e_type;
  Elf32_Half	e_machine;
  Elf32_Word	e_version;
  Elf32_Addr	e_entry;
  Elf32_Off	e_phoff;
  Elf32_Off	e_shoff;
  Elf32_Word	e_flags;
  Elf32_Half	e_ehsize;
  Elf32_Half	e_phentsize;
  Elf32_Half	e_phnum;
  Elf32_Half	e_shentsize;
  Elf32_Half	e_shnum;
  Elf32_Half	e_shstrndx;
} Elf32_Ehdr;

typedef struct
{
  unsigned char	e_ident[(16)];
  Elf64_Half	e_type;
  Elf64_Half	e_machine;
  Elf64_Word	e_version;
  Elf64_Addr	e_entry;
  Elf64_Off	e_phoff;
  Elf64_Off	e_shoff;
  Elf64_Word	e_flags;
  Elf64_Half	e_ehsize;
  Elf64_Half	e_phentsize;
  Elf64_Half	e_phnum;
  Elf64_Half	e_shentsize;
  Elf64_Half	e_shnum;
  Elf64_Half	e_shstrndx;
} Elf64_Ehdr;
# 283 "../tinycc/elf.h"
typedef struct
{
  Elf32_Word	sh_name;
  Elf32_Word	sh_type;
  Elf32_Word	sh_flags;
  Elf32_Addr	sh_addr;
  Elf32_Off	sh_offset;
  Elf32_Word	sh_size;
  Elf32_Word	sh_link;
  Elf32_Word	sh_info;
  Elf32_Word	sh_addralign;
  Elf32_Word	sh_entsize;
} Elf32_Shdr;

typedef struct
{
  Elf64_Word	sh_name;
  Elf64_Word	sh_type;
  Elf64_Xword	sh_flags;
  Elf64_Addr	sh_addr;
  Elf64_Off	sh_offset;
  Elf64_Xword	sh_size;
  Elf64_Word	sh_link;
  Elf64_Word	sh_info;
  Elf64_Xword	sh_addralign;
  Elf64_Xword	sh_entsize;
} Elf64_Shdr;
# 393 "../tinycc/elf.h"
typedef struct
{
  Elf32_Word	st_name;
  Elf32_Addr	st_value;
  Elf32_Word	st_size;
  unsigned char	st_info;
  unsigned char	st_other;
  Elf32_Section	st_shndx;
} Elf32_Sym;

typedef struct
{
  Elf64_Word	st_name;
  unsigned char	st_info;
  unsigned char st_other;
  Elf64_Section	st_shndx;
  Elf64_Addr	st_value;
  Elf64_Xword	st_size;
} Elf64_Sym;




typedef struct
{
  Elf32_Half si_boundto;
  Elf32_Half si_flags;
} Elf32_Syminfo;

typedef struct
{
  Elf64_Half si_boundto;
  Elf64_Half si_flags;
} Elf64_Syminfo;
# 508 "../tinycc/elf.h"
typedef struct
{
  Elf32_Addr	r_offset;
  Elf32_Word	r_info;
} Elf32_Rel;






typedef struct
{
  Elf64_Addr	r_offset;
  Elf64_Xword	r_info;
} Elf64_Rel;



typedef struct
{
  Elf32_Addr	r_offset;
  Elf32_Word	r_info;
  Elf32_Sword	r_addend;
} Elf32_Rela;

typedef struct
{
  Elf64_Addr	r_offset;
  Elf64_Xword	r_info;
  Elf64_Sxword	r_addend;
} Elf64_Rela;
# 553 "../tinycc/elf.h"
typedef struct
{
  Elf32_Word	p_type;
  Elf32_Off	p_offset;
  Elf32_Addr	p_vaddr;
  Elf32_Addr	p_paddr;
  Elf32_Word	p_filesz;
  Elf32_Word	p_memsz;
  Elf32_Word	p_flags;
  Elf32_Word	p_align;
} Elf32_Phdr;

typedef struct
{
  Elf64_Word	p_type;
  Elf64_Word	p_flags;
  Elf64_Off	p_offset;
  Elf64_Addr	p_vaddr;
  Elf64_Addr	p_paddr;
  Elf64_Xword	p_filesz;
  Elf64_Xword	p_memsz;
  Elf64_Xword	p_align;
} Elf64_Phdr;
# 659 "../tinycc/elf.h"
typedef struct
{
  Elf32_Sword	d_tag;
  union
    {
      Elf32_Word d_val;
      Elf32_Addr d_ptr;
    } d_un;
} Elf32_Dyn;

typedef struct
{
  Elf64_Sxword	d_tag;
  union
    {
      Elf64_Xword d_val;
      Elf64_Addr d_ptr;
    } d_un;
} Elf64_Dyn;
# 835 "../tinycc/elf.h"
typedef struct
{
  Elf32_Half	vd_version;
  Elf32_Half	vd_flags;
  Elf32_Half	vd_ndx;
  Elf32_Half	vd_cnt;
  Elf32_Word	vd_hash;
  Elf32_Word	vd_aux;
  Elf32_Word	vd_next;

} Elf32_Verdef;

typedef struct
{
  Elf64_Half	vd_version;
  Elf64_Half	vd_flags;
  Elf64_Half	vd_ndx;
  Elf64_Half	vd_cnt;
  Elf64_Word	vd_hash;
  Elf64_Word	vd_aux;
  Elf64_Word	vd_next;

} Elf64_Verdef;
# 877 "../tinycc/elf.h"
typedef struct
{
  Elf32_Word	vda_name;
  Elf32_Word	vda_next;

} Elf32_Verdaux;

typedef struct
{
  Elf64_Word	vda_name;
  Elf64_Word	vda_next;

} Elf64_Verdaux;




typedef struct
{
  Elf32_Half	vn_version;
  Elf32_Half	vn_cnt;
  Elf32_Word	vn_file;

  Elf32_Word	vn_aux;
  Elf32_Word	vn_next;

} Elf32_Verneed;

typedef struct
{
  Elf64_Half	vn_version;
  Elf64_Half	vn_cnt;
  Elf64_Word	vn_file;

  Elf64_Word	vn_aux;
  Elf64_Word	vn_next;

} Elf64_Verneed;
# 924 "../tinycc/elf.h"
typedef struct
{
  Elf32_Word	vna_hash;
  Elf32_Half	vna_flags;
  Elf32_Half	vna_other;
  Elf32_Word	vna_name;
  Elf32_Word	vna_next;

} Elf32_Vernaux;

typedef struct
{
  Elf64_Word	vna_hash;
  Elf64_Half	vna_flags;
  Elf64_Half	vna_other;
  Elf64_Word	vna_name;
  Elf64_Word	vna_next;

} Elf64_Vernaux;
# 958 "../tinycc/elf.h"
typedef struct
{
  uint32_t a_type;
  union
    {
      uint32_t a_val;



    } a_un;
} Elf32_auxv_t;

typedef struct
{
  uint64_t a_type;
  union
    {
      uint64_t a_val;



    } a_un;
} Elf64_auxv_t;
# 1042 "../tinycc/elf.h"
typedef struct
{
  Elf32_Word n_namesz;
  Elf32_Word n_descsz;
  Elf32_Word n_type;
} Elf32_Nhdr;

typedef struct
{
  Elf64_Word n_namesz;
  Elf64_Word n_descsz;
  Elf64_Word n_type;
} Elf64_Nhdr;
# 1106 "../tinycc/elf.h"
typedef struct
{
  Elf32_Xword m_value;
  Elf32_Word m_info;
  Elf32_Word m_poffset;
  Elf32_Half m_repeat;
  Elf32_Half m_stride;
} Elf32_Move;

typedef struct
{
  Elf64_Xword m_value;
  Elf64_Xword m_info;
  Elf64_Xword m_poffset;
  Elf64_Half m_repeat;
  Elf64_Half m_stride;
} Elf64_Move;
# 1490 "../tinycc/elf.h"
typedef union
{
  struct
    {
      Elf32_Word gt_current_g_value;
      Elf32_Word gt_unused;
    } gt_header;
  struct
    {
      Elf32_Word gt_g_value;
      Elf32_Word gt_bytes;
    } gt_entry;
} Elf32_gptab;



typedef struct
{
  Elf32_Word	ri_gprmask;
  Elf32_Word	ri_cprmask[4];
  Elf32_Sword	ri_gp_value;
} Elf32_RegInfo;



typedef struct
{
  unsigned char kind;

  unsigned char size;
  Elf32_Section section;

  Elf32_Word info;
} Elf_Options;
# 1566 "../tinycc/elf.h"
typedef struct
{
  Elf32_Word hwp_flags1;
  Elf32_Word hwp_flags2;
} Elf_Options_Hw;
# 1727 "../tinycc/elf.h"
typedef struct
{
  Elf32_Word l_name;
  Elf32_Word l_time_stamp;
  Elf32_Word l_checksum;
  Elf32_Word l_version;
  Elf32_Word l_flags;
} Elf32_Lib;

typedef struct
{
  Elf64_Word l_name;
  Elf64_Word l_time_stamp;
  Elf64_Word l_checksum;
  Elf64_Word l_version;
  Elf64_Word l_flags;
} Elf64_Lib;
# 1758 "../tinycc/elf.h"
typedef Elf32_Addr Elf32_Conflict;
# 323 "../tinycc/tcc.h" 2
# 1 "../tinycc/stab.h" 1
# 9 "../tinycc/stab.h"
enum __stab_debug_code
{
# 1 "../tinycc/stab.def" 1
# 24 "../tinycc/stab.def"
N_GSYM=0x20,



N_FNAME=0x22,




N_FUN=0x24,



N_STSYM=0x26,


N_LCSYM=0x28,



N_MAIN=0x2a,



N_PC=0x30,


N_NSYMS=0x32,


N_NOMAP=0x34,



N_OBJ=0x38,




N_OPT=0x3c,


N_RSYM=0x40,


N_M2C=0x42,



N_SLINE=0x44,


N_DSLINE=0x46,


N_BSLINE=0x48,




N_BROWS=0x48,





N_DEFD=0x4a,




N_EHDECL=0x50,

N_MOD2=0x50,






N_CATCH=0x54,


N_SSYM=0x60,



N_SO=0x64,



N_LSYM=0x80,




N_BINCL=0x82,



N_SOL=0x84,



N_PSYM=0xa0,





N_EINCL=0xa2,


N_ENTRY=0xa4,





N_LBRAC=0xc0,





N_EXCL=0xc2,


N_SCOPE=0xc4,



N_RBRAC=0xe0,


N_BCOMM=0xe2,



N_ECOMM=0xe4,



N_ECOML=0xe8,




N_NBTEXT=0xF0,
N_NBDATA=0xF2,
N_NBBSS=0xF4,
N_NBSTS=0xF6,
N_NBLCS=0xF8,



N_LENG=0xfe,
# 12 "../tinycc/stab.h" 2
LAST_UNUSED_STAB_CODE
};
# 324 "../tinycc/tcc.h" 2
# 360 "../tinycc/tcc.h"
# 1 "../tinycc/x86_64-gen.c" 1
# 57 "../tinycc/x86_64-gen.c"
enum {
    TREG_RAX = 0,
    TREG_RCX = 1,
    TREG_RDX = 2,
    TREG_RSP = 4,
    TREG_RSI = 6,
    TREG_RDI = 7,

    TREG_R8  = 8,
    TREG_R9  = 9,
    TREG_R10 = 10,
    TREG_R11 = 11,

    TREG_XMM0 = 16,
    TREG_XMM1 = 17,
    TREG_XMM2 = 18,
    TREG_XMM3 = 19,
    TREG_XMM4 = 20,
    TREG_XMM5 = 21,
    TREG_XMM6 = 22,
    TREG_XMM7 = 23,

    TREG_ST0 = 24,

    TREG_MEM = 0x20
};
# 361 "../tinycc/tcc.h" 2
# 1 "../tinycc/x86_64-link.c" 1
# 362 "../tinycc/tcc.h" 2
# 425 "../tinycc/tcc.h"
typedef struct TokenSym {
    struct TokenSym *hash_next;
    struct Sym *sym_define;
    struct Sym *sym_label;
    struct Sym *sym_struct;
    struct Sym *sym_identifier;
    int tok;
    int len;
    char str[1];
} TokenSym;




typedef int nwchar_t;


typedef struct CString {
    int size;
    void *data;
    int size_allocated;
} CString;


typedef struct CType {
    int t;
    struct Sym *ref;
} CType;


typedef union CValue {
    long double ld;
    double d;
    float f;
    uint64_t i;
    struct {
        const void *data;
        int size;
    } str;
    int tab[16/4];
} CValue;


typedef struct SValue {
    CType type;
    unsigned short r;
    unsigned short r2;

    union {
      struct { int jtrue, jfalse; };
      CValue c;
    };
    union {
      struct { unsigned short cmp_op, cmp_r; };
      struct Sym *sym;
    };

} SValue;


struct SymAttr {
    unsigned short
    aligned     : 5,
    packed      : 1,
    weak        : 1,
    visibility  : 2,
    dllexport   : 1,
    nodecorate  : 1,
    dllimport   : 1,
    addrtaken   : 1,
    xxxx        : 3;
};


struct FuncAttr {
    unsigned
    func_call   : 3,
    func_type   : 2,
    func_noreturn : 1,
    func_ctor   : 1,
    func_dtor   : 1,
    func_args   : 8,
    func_alwinl : 1,
    xxxx        : 15;
};


typedef struct Sym {
    int v;
    unsigned short r;
    struct SymAttr a;
    union {
        struct {
            int c;
            union {
                int sym_scope;
                int jnext;
                struct FuncAttr f;
                int auxtype;
            };
        };
        long long enum_val;
        int *d;
        struct Sym *ncl;
    };
    CType type;
    union {
        struct Sym *next;
        struct Sym *cleanupstate;
        int asm_label;
    };
    struct Sym *prev;
    struct Sym *prev_tok;
} Sym;


typedef struct Section {
    unsigned long data_offset;
    unsigned char *data;
    unsigned long data_allocated;
    TCCState *s1;
    int sh_name;
    int sh_num;
    int sh_type;
    int sh_flags;
    int sh_info;
    int sh_addralign;
    int sh_entsize;
    unsigned long sh_size;
    Elf64_Addr sh_addr;
    unsigned long sh_offset;
    int nb_hashed_syms;
    struct Section *link;
    struct Section *reloc;
    struct Section *hash;
    struct Section *prev;
    char name[1];
} Section;

typedef struct DLLReference {
    int level;
    void *handle;
    char name[1];
} DLLReference;
# 606 "../tinycc/tcc.h"
typedef struct BufferedFile {
    uint8_t *buf_ptr;
    uint8_t *buf_end;
    int fd;
    struct BufferedFile *prev;
    int line_num;
    int line_ref;
    int ifndef_macro;
    int ifndef_macro_saved;
    int *ifdef_stack_ptr;
    int include_next_index;
    char filename[1024];
    char *true_filename;
    unsigned char unget[4];
    unsigned char buffer[1];
} BufferedFile;





typedef struct TokenString {
    int *str;
    int len;
    int lastlen;
    int allocated_len;
    int last_line_num;
    int save_line_num;

    struct TokenString *prev;
    const int *prev_ptr;
    char alloc;
} TokenString;


typedef struct AttributeDef {
    struct SymAttr a;
    struct FuncAttr f;
    struct Section *section;
    Sym *cleanup_func;
    int asm_label;
    char attr_mode;
} AttributeDef;


typedef struct InlineFunc {
    TokenString *func_str;
    Sym *sym;
    char filename[1];
} InlineFunc;



typedef struct CachedInclude {
    int ifndef_macro;
    int once;
    int hash_next;
    char filename[1];
} CachedInclude;




typedef struct ExprValue {
    uint64_t v;
    Sym *sym;
    int pcrel;
} ExprValue;


typedef struct ASMOperand {
    int id;
    char *constraint;
    char asm_str[16];
    SValue *vt;
    int ref_index;
    int input_index;
    int priority;
    int reg;
    int is_llong;
    int is_memory;
    int is_rw;
} ASMOperand;



struct sym_attr {
    unsigned got_offset;
    unsigned plt_offset;
    int plt_sym;
    int dyn_index;



};

struct TCCState {
    unsigned char verbose;
    unsigned char nostdinc;
    unsigned char nostdlib;
    unsigned char nocommon;
    unsigned char static_link;
    unsigned char rdynamic;
    unsigned char symbolic;
    unsigned char filetype;
    unsigned char optimize;
    unsigned char option_pthread;
    unsigned char enable_new_dtags;
    unsigned int  cversion;

    char *tcc_lib_path;
    char *soname;
    char *rpath;


    int output_type;

    int output_format;


    unsigned char char_is_unsigned;
    unsigned char leading_underscore;
    unsigned char ms_extensions;
    unsigned char dollars_in_identifiers;
    unsigned char ms_bitfields;


    unsigned char warn_write_strings;
    unsigned char warn_unsupported;
    unsigned char warn_error;
    unsigned char warn_none;
    unsigned char warn_implicit_function_declaration;
    unsigned char warn_gcc_compat;


    unsigned char do_debug;
    unsigned char do_backtrace;


    unsigned char do_bounds_check;




    int run_test;

    Elf64_Addr text_addr;
    unsigned char has_text_addr;

    unsigned section_align;


    unsigned char gnu_ext;

    unsigned char tcc_ext;

    char *init_symbol;
    char *fini_symbol;





    unsigned char nosse;



    DLLReference **loaded_dlls;
    int nb_loaded_dlls;


    char **include_paths;
    int nb_include_paths;

    char **sysinclude_paths;
    int nb_sysinclude_paths;


    char **library_paths;
    int nb_library_paths;


    char **crt_paths;
    int nb_crt_paths;


    CString cmdline_defs;

    CString cmdline_incl;


    void *error_opaque;
    void (*error_func)(void *opaque, const char *msg);
    int error_set_jmp_enabled;
    jmp_buf error_jmp_buf;
    int nb_errors;


    FILE *ppfp;
    enum {
	LINE_MACRO_OUTPUT_FORMAT_GCC,
	LINE_MACRO_OUTPUT_FORMAT_NONE,
	LINE_MACRO_OUTPUT_FORMAT_STD,
    LINE_MACRO_OUTPUT_FORMAT_P10 = 11
    } Pflag;
    char dflag;


    char **target_deps;
    int nb_target_deps;


    BufferedFile *include_stack[32];
    BufferedFile **include_stack_ptr;

    int ifdef_stack[64];
    int *ifdef_stack_ptr;


    int cached_includes_hash[32];
    CachedInclude **cached_includes;
    int nb_cached_includes;


    int pack_stack[8];
    int *pack_stack_ptr;
    char **pragma_libs;
    int nb_pragma_libs;



    struct InlineFunc **inline_fns;
    int nb_inline_fns;


    Section **sections;
    int nb_sections;

    Section **priv_sections;
    int nb_priv_sections;


    Section *got;
    Section *plt;


    Section *text_section, *data_section, *bss_section;
    Section *common_section;
    Section *cur_text_section;


    Section *bounds_section;
    Section *lbounds_section;


    Section *symtab_section;

    Section *stab_section;

    int new_undef_sym;


    Section *dynsymtab_section;

    Section *dynsym;

    Section *symtab;

    struct sym_attr *sym_attrs;
    int nb_sym_attrs;

    Elf64_Rela *qrel;
# 905 "../tinycc/tcc.h"
    const char *runtime_main;
    void **runtime_mem;
    int nb_runtime_mem;



    int rt_num_callers;


    int fd, cc;


    int total_idents;
    int total_lines;
    int total_bytes;


    int g_debug;


    const char *current_filename;


    struct filespec **files;
    int nb_files;
    int nb_libraries;
    char *outfile;
    unsigned char option_r;
    unsigned char do_bench;
    int gen_deps;
    char *deps_outfile;
    int argc;
    char **argv;
};

struct filespec {
    char type;
    char name[1];
};
# 1190 "../tinycc/tcc.h"
enum tcc_token {
    TOK_LAST = 256 - 1

# 1 "../tinycc/tcctok.h" 1

     ,TOK_INT
     ,TOK_VOID
     ,TOK_CHAR
     ,TOK_IF
     ,TOK_ELSE
     ,TOK_WHILE
     ,TOK_BREAK
     ,TOK_RETURN
     ,TOK_FOR
     ,TOK_EXTERN
     ,TOK_STATIC
     ,TOK_UNSIGNED
     ,TOK_GOTO
     ,TOK_DO
     ,TOK_CONTINUE
     ,TOK_SWITCH
     ,TOK_CASE

     ,TOK_CONST1
     ,TOK_CONST2
     ,TOK_CONST3
     ,TOK_VOLATILE1
     ,TOK_VOLATILE2
     ,TOK_VOLATILE3
     ,TOK_LONG
     ,TOK_REGISTER
     ,TOK_SIGNED1
     ,TOK_SIGNED2
     ,TOK_SIGNED3
     ,TOK_AUTO
     ,TOK_INLINE1
     ,TOK_INLINE2
     ,TOK_INLINE3
     ,TOK_RESTRICT1
     ,TOK_RESTRICT2
     ,TOK_RESTRICT3
     ,TOK_EXTENSION

     ,TOK_GENERIC
     ,TOK_STATIC_ASSERT

     ,TOK_FLOAT
     ,TOK_DOUBLE
     ,TOK_BOOL
     ,TOK_SHORT
     ,TOK_STRUCT
     ,TOK_UNION
     ,TOK_TYPEDEF
     ,TOK_DEFAULT
     ,TOK_ENUM
     ,TOK_SIZEOF
     ,TOK_ATTRIBUTE1
     ,TOK_ATTRIBUTE2
     ,TOK_ALIGNOF1
     ,TOK_ALIGNOF2
     ,TOK_ALIGNOF3
     ,TOK_ALIGNAS
     ,TOK_TYPEOF1
     ,TOK_TYPEOF2
     ,TOK_TYPEOF3
     ,TOK_LABEL
     ,TOK_ASM1
     ,TOK_ASM2
     ,TOK_ASM3
# 74 "../tinycc/tcctok.h"
     ,TOK_DEFINE
     ,TOK_INCLUDE
     ,TOK_INCLUDE_NEXT
     ,TOK_IFDEF
     ,TOK_IFNDEF
     ,TOK_ELIF
     ,TOK_ENDIF
     ,TOK_DEFINED
     ,TOK_UNDEF
     ,TOK_ERROR
     ,TOK_WARNING
     ,TOK_LINE
     ,TOK_PRAGMA
     ,TOK___LINE__
     ,TOK___FILE__
     ,TOK___DATE__
     ,TOK___TIME__
     ,TOK___FUNCTION__
     ,TOK___VA_ARGS__
     ,TOK___COUNTER__
     ,TOK___HAS_INCLUDE


     ,TOK___FUNC__


     ,TOK___NAN__
     ,TOK___SNAN__
     ,TOK___INF__



     ,TOK_SECTION1
     ,TOK_SECTION2
     ,TOK_ALIGNED1
     ,TOK_ALIGNED2
     ,TOK_PACKED1
     ,TOK_PACKED2
     ,TOK_WEAK1
     ,TOK_WEAK2
     ,TOK_ALIAS1
     ,TOK_ALIAS2
     ,TOK_UNUSED1
     ,TOK_UNUSED2
     ,TOK_CDECL1
     ,TOK_CDECL2
     ,TOK_CDECL3
     ,TOK_STDCALL1
     ,TOK_STDCALL2
     ,TOK_STDCALL3
     ,TOK_FASTCALL1
     ,TOK_FASTCALL2
     ,TOK_FASTCALL3
     ,TOK_REGPARM1
     ,TOK_REGPARM2
     ,TOK_CLEANUP1
     ,TOK_CLEANUP2
     ,TOK_CONSTRUCTOR1
     ,TOK_CONSTRUCTOR2
     ,TOK_DESTRUCTOR1
     ,TOK_DESTRUCTOR2
     ,TOK_ALWAYS_INLINE1
     ,TOK_ALWAYS_INLINE2

     ,TOK_MODE
     ,TOK_MODE_QI
     ,TOK_MODE_DI
     ,TOK_MODE_HI
     ,TOK_MODE_SI
     ,TOK_MODE_word

     ,TOK_DLLEXPORT
     ,TOK_DLLIMPORT
     ,TOK_NODECORATE
     ,TOK_NORETURN1
     ,TOK_NORETURN2
     ,TOK_NORETURN3
     ,TOK_VISIBILITY1
     ,TOK_VISIBILITY2

     ,TOK_builtin_types_compatible_p
     ,TOK_builtin_choose_expr
     ,TOK_builtin_constant_p
     ,TOK_builtin_frame_address
     ,TOK_builtin_return_address
     ,TOK_builtin_expect




     ,TOK_builtin_va_arg_types
# 173 "../tinycc/tcctok.h"
     ,TOK_pack





     ,TOK_comment
     ,TOK_lib
     ,TOK_push_macro
     ,TOK_pop_macro
     ,TOK_once
     ,TOK_option



     ,TOK_memcpy
     ,TOK_memmove
     ,TOK_memset
     ,TOK___divdi3
     ,TOK___moddi3
     ,TOK___udivdi3
     ,TOK___umoddi3
     ,TOK___ashrdi3
     ,TOK___lshrdi3
     ,TOK___ashldi3
     ,TOK___floatundisf
     ,TOK___floatundidf

     ,TOK___floatundixf
     ,TOK___fixunsxfdi

     ,TOK___fixunssfdi
     ,TOK___fixunsdfdi
# 267 "../tinycc/tcctok.h"
     ,TOK_alloca
# 301 "../tinycc/tcctok.h"
     ,TOK___bound_ptr_add
     ,TOK___bound_ptr_indir1
     ,TOK___bound_ptr_indir2
     ,TOK___bound_ptr_indir4
     ,TOK___bound_ptr_indir8
     ,TOK___bound_ptr_indir12
     ,TOK___bound_ptr_indir16
     ,TOK___bound_main_arg
     ,TOK___bound_local_new
     ,TOK___bound_local_delete
     ,TOK___bound_setjmp
     ,TOK___bound_new_region





     ,TOK_sigsetjmp
     ,TOK___sigsetjmp
     ,TOK_siglongjmp

     ,TOK_setjmp
     ,TOK__setjmp



 ,TOK_ASMDIR_byte
 ,TOK_ASMDIR_word
 ,TOK_ASMDIR_align
 ,TOK_ASMDIR_balign
 ,TOK_ASMDIR_p2align
 ,TOK_ASMDIR_set
 ,TOK_ASMDIR_skip
 ,TOK_ASMDIR_space
 ,TOK_ASMDIR_string
 ,TOK_ASMDIR_asciz
 ,TOK_ASMDIR_ascii
 ,TOK_ASMDIR_file
 ,TOK_ASMDIR_globl
 ,TOK_ASMDIR_global
 ,TOK_ASMDIR_weak
 ,TOK_ASMDIR_hidden
 ,TOK_ASMDIR_ident
 ,TOK_ASMDIR_size
 ,TOK_ASMDIR_type
 ,TOK_ASMDIR_text
 ,TOK_ASMDIR_data
 ,TOK_ASMDIR_bss
 ,TOK_ASMDIR_previous
 ,TOK_ASMDIR_pushsection
 ,TOK_ASMDIR_popsection
 ,TOK_ASMDIR_fill
 ,TOK_ASMDIR_rept
 ,TOK_ASMDIR_endr
 ,TOK_ASMDIR_org
 ,TOK_ASMDIR_quad




 ,TOK_ASMDIR_code64

 ,TOK_ASMDIR_short
 ,TOK_ASMDIR_long
 ,TOK_ASMDIR_int
 ,TOK_ASMDIR_section


# 1 "../tinycc/i386-tok.h" 1




 ,TOK_ASM_al
 ,TOK_ASM_cl
 ,TOK_ASM_dl
 ,TOK_ASM_bl
 ,TOK_ASM_ah
 ,TOK_ASM_ch
 ,TOK_ASM_dh
 ,TOK_ASM_bh
 ,TOK_ASM_ax
 ,TOK_ASM_cx
 ,TOK_ASM_dx
 ,TOK_ASM_bx
 ,TOK_ASM_sp
 ,TOK_ASM_bp
 ,TOK_ASM_si
 ,TOK_ASM_di
 ,TOK_ASM_eax
 ,TOK_ASM_ecx
 ,TOK_ASM_edx
 ,TOK_ASM_ebx
 ,TOK_ASM_esp
 ,TOK_ASM_ebp
 ,TOK_ASM_esi
 ,TOK_ASM_edi

 ,TOK_ASM_rax
 ,TOK_ASM_rcx
 ,TOK_ASM_rdx
 ,TOK_ASM_rbx
 ,TOK_ASM_rsp
 ,TOK_ASM_rbp
 ,TOK_ASM_rsi
 ,TOK_ASM_rdi

 ,TOK_ASM_mm0
 ,TOK_ASM_mm1
 ,TOK_ASM_mm2
 ,TOK_ASM_mm3
 ,TOK_ASM_mm4
 ,TOK_ASM_mm5
 ,TOK_ASM_mm6
 ,TOK_ASM_mm7
 ,TOK_ASM_xmm0
 ,TOK_ASM_xmm1
 ,TOK_ASM_xmm2
 ,TOK_ASM_xmm3
 ,TOK_ASM_xmm4
 ,TOK_ASM_xmm5
 ,TOK_ASM_xmm6
 ,TOK_ASM_xmm7
 ,TOK_ASM_cr0
 ,TOK_ASM_cr1
 ,TOK_ASM_cr2
 ,TOK_ASM_cr3
 ,TOK_ASM_cr4
 ,TOK_ASM_cr5
 ,TOK_ASM_cr6
 ,TOK_ASM_cr7
 ,TOK_ASM_tr0
 ,TOK_ASM_tr1
 ,TOK_ASM_tr2
 ,TOK_ASM_tr3
 ,TOK_ASM_tr4
 ,TOK_ASM_tr5
 ,TOK_ASM_tr6
 ,TOK_ASM_tr7
 ,TOK_ASM_db0
 ,TOK_ASM_db1
 ,TOK_ASM_db2
 ,TOK_ASM_db3
 ,TOK_ASM_db4
 ,TOK_ASM_db5
 ,TOK_ASM_db6
 ,TOK_ASM_db7
 ,TOK_ASM_dr0
 ,TOK_ASM_dr1
 ,TOK_ASM_dr2
 ,TOK_ASM_dr3
 ,TOK_ASM_dr4
 ,TOK_ASM_dr5
 ,TOK_ASM_dr6
 ,TOK_ASM_dr7
 ,TOK_ASM_es
 ,TOK_ASM_cs
 ,TOK_ASM_ss
 ,TOK_ASM_ds
 ,TOK_ASM_fs
 ,TOK_ASM_gs
 ,TOK_ASM_st
 ,TOK_ASM_rip




 ,TOK_ASM_spl
 ,TOK_ASM_bpl
 ,TOK_ASM_sil
 ,TOK_ASM_dil


 ,TOK_ASM_movb ,TOK_ASM_movw ,TOK_ASM_movl ,TOK_ASM_movq ,TOK_ASM_mov

 ,TOK_ASM_addb ,TOK_ASM_addw ,TOK_ASM_addl ,TOK_ASM_addq ,TOK_ASM_add
 ,TOK_ASM_orb ,TOK_ASM_orw ,TOK_ASM_orl ,TOK_ASM_orq ,TOK_ASM_or
 ,TOK_ASM_adcb ,TOK_ASM_adcw ,TOK_ASM_adcl ,TOK_ASM_adcq ,TOK_ASM_adc
 ,TOK_ASM_sbbb ,TOK_ASM_sbbw ,TOK_ASM_sbbl ,TOK_ASM_sbbq ,TOK_ASM_sbb
 ,TOK_ASM_andb ,TOK_ASM_andw ,TOK_ASM_andl ,TOK_ASM_andq ,TOK_ASM_and
 ,TOK_ASM_subb ,TOK_ASM_subw ,TOK_ASM_subl ,TOK_ASM_subq ,TOK_ASM_sub
 ,TOK_ASM_xorb ,TOK_ASM_xorw ,TOK_ASM_xorl ,TOK_ASM_xorq ,TOK_ASM_xor
 ,TOK_ASM_cmpb ,TOK_ASM_cmpw ,TOK_ASM_cmpl ,TOK_ASM_cmpq ,TOK_ASM_cmp


 ,TOK_ASM_incb ,TOK_ASM_incw ,TOK_ASM_incl ,TOK_ASM_incq ,TOK_ASM_inc
 ,TOK_ASM_decb ,TOK_ASM_decw ,TOK_ASM_decl ,TOK_ASM_decq ,TOK_ASM_dec
 ,TOK_ASM_notb ,TOK_ASM_notw ,TOK_ASM_notl ,TOK_ASM_notq ,TOK_ASM_not
 ,TOK_ASM_negb ,TOK_ASM_negw ,TOK_ASM_negl ,TOK_ASM_negq ,TOK_ASM_neg
 ,TOK_ASM_mulb ,TOK_ASM_mulw ,TOK_ASM_mull ,TOK_ASM_mulq ,TOK_ASM_mul
 ,TOK_ASM_imulb ,TOK_ASM_imulw ,TOK_ASM_imull ,TOK_ASM_imulq ,TOK_ASM_imul
 ,TOK_ASM_divb ,TOK_ASM_divw ,TOK_ASM_divl ,TOK_ASM_divq ,TOK_ASM_div
 ,TOK_ASM_idivb ,TOK_ASM_idivw ,TOK_ASM_idivl ,TOK_ASM_idivq ,TOK_ASM_idiv

 ,TOK_ASM_xchgb ,TOK_ASM_xchgw ,TOK_ASM_xchgl ,TOK_ASM_xchgq ,TOK_ASM_xchg
 ,TOK_ASM_testb ,TOK_ASM_testw ,TOK_ASM_testl ,TOK_ASM_testq ,TOK_ASM_test


 ,TOK_ASM_rolb ,TOK_ASM_rolw ,TOK_ASM_roll ,TOK_ASM_rolq ,TOK_ASM_rol
 ,TOK_ASM_rorb ,TOK_ASM_rorw ,TOK_ASM_rorl ,TOK_ASM_rorq ,TOK_ASM_ror
 ,TOK_ASM_rclb ,TOK_ASM_rclw ,TOK_ASM_rcll ,TOK_ASM_rclq ,TOK_ASM_rcl
 ,TOK_ASM_rcrb ,TOK_ASM_rcrw ,TOK_ASM_rcrl ,TOK_ASM_rcrq ,TOK_ASM_rcr
 ,TOK_ASM_shlb ,TOK_ASM_shlw ,TOK_ASM_shll ,TOK_ASM_shlq ,TOK_ASM_shl
 ,TOK_ASM_shrb ,TOK_ASM_shrw ,TOK_ASM_shrl ,TOK_ASM_shrq ,TOK_ASM_shr
 ,TOK_ASM_sarb ,TOK_ASM_sarw ,TOK_ASM_sarl ,TOK_ASM_sarq ,TOK_ASM_sar

 ,TOK_ASM_shldw ,TOK_ASM_shldl ,TOK_ASM_shldq ,TOK_ASM_shld
 ,TOK_ASM_shrdw ,TOK_ASM_shrdl ,TOK_ASM_shrdq ,TOK_ASM_shrd

 ,TOK_ASM_pushw
 ,TOK_ASM_pushl

 ,TOK_ASM_pushq

 ,TOK_ASM_push

 ,TOK_ASM_popw
 ,TOK_ASM_popl

 ,TOK_ASM_popq

 ,TOK_ASM_pop

 ,TOK_ASM_inb ,TOK_ASM_inw ,TOK_ASM_inl ,TOK_ASM_in
 ,TOK_ASM_outb ,TOK_ASM_outw ,TOK_ASM_outl ,TOK_ASM_out

 ,TOK_ASM_movzbw ,TOK_ASM_movzbl ,TOK_ASM_movzbq ,TOK_ASM_movzb
 ,TOK_ASM_movzwl
 ,TOK_ASM_movsbw
 ,TOK_ASM_movsbl
 ,TOK_ASM_movswl

 ,TOK_ASM_movsbq
 ,TOK_ASM_movswq
 ,TOK_ASM_movzwq
 ,TOK_ASM_movslq


 ,TOK_ASM_leaw ,TOK_ASM_leal ,TOK_ASM_leaq ,TOK_ASM_lea

 ,TOK_ASM_les
 ,TOK_ASM_lds
 ,TOK_ASM_lss
 ,TOK_ASM_lfs
 ,TOK_ASM_lgs

 ,TOK_ASM_call
 ,TOK_ASM_jmp
 ,TOK_ASM_lcall
 ,TOK_ASM_ljmp

 ,TOK_ASM_jo ,TOK_ASM_jno ,TOK_ASM_jb ,TOK_ASM_jc ,TOK_ASM_jnae ,TOK_ASM_jnb ,TOK_ASM_jnc ,TOK_ASM_jae ,TOK_ASM_je ,TOK_ASM_jz ,TOK_ASM_jne ,TOK_ASM_jnz ,TOK_ASM_jbe ,TOK_ASM_jna ,TOK_ASM_jnbe ,TOK_ASM_ja ,TOK_ASM_js ,TOK_ASM_jns ,TOK_ASM_jp ,TOK_ASM_jpe ,TOK_ASM_jnp ,TOK_ASM_jpo ,TOK_ASM_jl ,TOK_ASM_jnge ,TOK_ASM_jnl ,TOK_ASM_jge ,TOK_ASM_jle ,TOK_ASM_jng ,TOK_ASM_jnle ,TOK_ASM_jg

 ,TOK_ASM_seto ,TOK_ASM_setno ,TOK_ASM_setb ,TOK_ASM_setc ,TOK_ASM_setnae ,TOK_ASM_setnb ,TOK_ASM_setnc ,TOK_ASM_setae ,TOK_ASM_sete ,TOK_ASM_setz ,TOK_ASM_setne ,TOK_ASM_setnz ,TOK_ASM_setbe ,TOK_ASM_setna ,TOK_ASM_setnbe ,TOK_ASM_seta ,TOK_ASM_sets ,TOK_ASM_setns ,TOK_ASM_setp ,TOK_ASM_setpe ,TOK_ASM_setnp ,TOK_ASM_setpo ,TOK_ASM_setl ,TOK_ASM_setnge ,TOK_ASM_setnl ,TOK_ASM_setge ,TOK_ASM_setle ,TOK_ASM_setng ,TOK_ASM_setnle ,TOK_ASM_setg
 ,TOK_ASM_setob ,TOK_ASM_setnob ,TOK_ASM_setbb ,TOK_ASM_setcb ,TOK_ASM_setnaeb ,TOK_ASM_setnbb ,TOK_ASM_setncb ,TOK_ASM_setaeb ,TOK_ASM_seteb ,TOK_ASM_setzb ,TOK_ASM_setneb ,TOK_ASM_setnzb ,TOK_ASM_setbeb ,TOK_ASM_setnab ,TOK_ASM_setnbeb ,TOK_ASM_setab ,TOK_ASM_setsb ,TOK_ASM_setnsb ,TOK_ASM_setpb ,TOK_ASM_setpeb ,TOK_ASM_setnpb ,TOK_ASM_setpob ,TOK_ASM_setlb ,TOK_ASM_setngeb ,TOK_ASM_setnlb ,TOK_ASM_setgeb ,TOK_ASM_setleb ,TOK_ASM_setngb ,TOK_ASM_setnleb ,TOK_ASM_setgb
 ,TOK_ASM_cmovo ,TOK_ASM_cmovno ,TOK_ASM_cmovb ,TOK_ASM_cmovc ,TOK_ASM_cmovnae ,TOK_ASM_cmovnb ,TOK_ASM_cmovnc ,TOK_ASM_cmovae ,TOK_ASM_cmove ,TOK_ASM_cmovz ,TOK_ASM_cmovne ,TOK_ASM_cmovnz ,TOK_ASM_cmovbe ,TOK_ASM_cmovna ,TOK_ASM_cmovnbe ,TOK_ASM_cmova ,TOK_ASM_cmovs ,TOK_ASM_cmovns ,TOK_ASM_cmovp ,TOK_ASM_cmovpe ,TOK_ASM_cmovnp ,TOK_ASM_cmovpo ,TOK_ASM_cmovl ,TOK_ASM_cmovnge ,TOK_ASM_cmovnl ,TOK_ASM_cmovge ,TOK_ASM_cmovle ,TOK_ASM_cmovng ,TOK_ASM_cmovnle ,TOK_ASM_cmovg

 ,TOK_ASM_bsfw ,TOK_ASM_bsfl ,TOK_ASM_bsfq ,TOK_ASM_bsf
 ,TOK_ASM_bsrw ,TOK_ASM_bsrl ,TOK_ASM_bsrq ,TOK_ASM_bsr
 ,TOK_ASM_btw ,TOK_ASM_btl ,TOK_ASM_btq ,TOK_ASM_bt
 ,TOK_ASM_btsw ,TOK_ASM_btsl ,TOK_ASM_btsq ,TOK_ASM_bts
 ,TOK_ASM_btrw ,TOK_ASM_btrl ,TOK_ASM_btrq ,TOK_ASM_btr
 ,TOK_ASM_btcw ,TOK_ASM_btcl ,TOK_ASM_btcq ,TOK_ASM_btc

 ,TOK_ASM_larw ,TOK_ASM_larl ,TOK_ASM_larq ,TOK_ASM_lar
 ,TOK_ASM_lslw ,TOK_ASM_lsll ,TOK_ASM_lslq ,TOK_ASM_lsl


 ,TOK_ASM_fadd ,TOK_ASM_faddp ,TOK_ASM_fadds ,TOK_ASM_fiaddl ,TOK_ASM_faddl ,TOK_ASM_fiadds
 ,TOK_ASM_fmul ,TOK_ASM_fmulp ,TOK_ASM_fmuls ,TOK_ASM_fimull ,TOK_ASM_fmull ,TOK_ASM_fimuls

 ,TOK_ASM_fcom
 ,TOK_ASM_fcom_1
 ,TOK_ASM_fcoms ,TOK_ASM_ficoml ,TOK_ASM_fcoml ,TOK_ASM_ficoms

 ,TOK_ASM_fcomp ,TOK_ASM_fcompp ,TOK_ASM_fcomps ,TOK_ASM_ficompl ,TOK_ASM_fcompl ,TOK_ASM_ficomps
 ,TOK_ASM_fsub ,TOK_ASM_fsubp ,TOK_ASM_fsubs ,TOK_ASM_fisubl ,TOK_ASM_fsubl ,TOK_ASM_fisubs
 ,TOK_ASM_fsubr ,TOK_ASM_fsubrp ,TOK_ASM_fsubrs ,TOK_ASM_fisubrl ,TOK_ASM_fsubrl ,TOK_ASM_fisubrs
 ,TOK_ASM_fdiv ,TOK_ASM_fdivp ,TOK_ASM_fdivs ,TOK_ASM_fidivl ,TOK_ASM_fdivl ,TOK_ASM_fidivs
 ,TOK_ASM_fdivr ,TOK_ASM_fdivrp ,TOK_ASM_fdivrs ,TOK_ASM_fidivrl ,TOK_ASM_fdivrl ,TOK_ASM_fidivrs

 ,TOK_ASM_xaddb ,TOK_ASM_xaddw ,TOK_ASM_xaddl ,TOK_ASM_xaddq ,TOK_ASM_xadd
 ,TOK_ASM_cmpxchgb ,TOK_ASM_cmpxchgw ,TOK_ASM_cmpxchgl ,TOK_ASM_cmpxchgq ,TOK_ASM_cmpxchg


 ,TOK_ASM_cmpsb ,TOK_ASM_cmpsw ,TOK_ASM_cmpsl ,TOK_ASM_cmpsq ,TOK_ASM_cmps
 ,TOK_ASM_scmpb ,TOK_ASM_scmpw ,TOK_ASM_scmpl ,TOK_ASM_scmpq ,TOK_ASM_scmp
 ,TOK_ASM_insb ,TOK_ASM_insw ,TOK_ASM_insl ,TOK_ASM_ins
 ,TOK_ASM_outsb ,TOK_ASM_outsw ,TOK_ASM_outsl ,TOK_ASM_outs
 ,TOK_ASM_lodsb ,TOK_ASM_lodsw ,TOK_ASM_lodsl ,TOK_ASM_lodsq ,TOK_ASM_lods
 ,TOK_ASM_slodb ,TOK_ASM_slodw ,TOK_ASM_slodl ,TOK_ASM_slodq ,TOK_ASM_slod
 ,TOK_ASM_movsb ,TOK_ASM_movsw ,TOK_ASM_movsl ,TOK_ASM_movsq ,TOK_ASM_movs
 ,TOK_ASM_smovb ,TOK_ASM_smovw ,TOK_ASM_smovl ,TOK_ASM_smovq ,TOK_ASM_smov
 ,TOK_ASM_scasb ,TOK_ASM_scasw ,TOK_ASM_scasl ,TOK_ASM_scasq ,TOK_ASM_scas
 ,TOK_ASM_sscab ,TOK_ASM_sscaw ,TOK_ASM_sscal ,TOK_ASM_sscaq ,TOK_ASM_ssca
 ,TOK_ASM_stosb ,TOK_ASM_stosw ,TOK_ASM_stosl ,TOK_ASM_stosq ,TOK_ASM_stos
 ,TOK_ASM_sstob ,TOK_ASM_sstow ,TOK_ASM_sstol ,TOK_ASM_sstoq ,TOK_ASM_ssto
# 238 "../tinycc/i386-tok.h"
# 1 "../tinycc/x86_64-asm.h" 1
     ,TOK_ASM_clc
     ,TOK_ASM_cld
     ,TOK_ASM_cli
     ,TOK_ASM_clts
     ,TOK_ASM_cmc
     ,TOK_ASM_lahf
     ,TOK_ASM_sahf
     ,TOK_ASM_pushfq
     ,TOK_ASM_popfq
     ,TOK_ASM_pushf
     ,TOK_ASM_popf
     ,TOK_ASM_stc
     ,TOK_ASM_std
     ,TOK_ASM_sti
     ,TOK_ASM_aaa
     ,TOK_ASM_aas
     ,TOK_ASM_daa
     ,TOK_ASM_das
     ,TOK_ASM_aad
     ,TOK_ASM_aam
     ,TOK_ASM_cbw
     ,TOK_ASM_cwd
     ,TOK_ASM_cwde
     ,TOK_ASM_cdq
     ,TOK_ASM_cbtw
     ,TOK_ASM_cwtl
     ,TOK_ASM_cwtd
     ,TOK_ASM_cltd
     ,TOK_ASM_cqto
     ,TOK_ASM_int3
     ,TOK_ASM_into
     ,TOK_ASM_iret
     ,TOK_ASM_rsm
     ,TOK_ASM_hlt
     ,TOK_ASM_wait
     ,TOK_ASM_nop
     ,TOK_ASM_pause
     ,TOK_ASM_xlat
# 77 "../tinycc/x86_64-asm.h"
     ,TOK_ASM_lock
     ,TOK_ASM_rep
     ,TOK_ASM_repe
     ,TOK_ASM_repz
     ,TOK_ASM_repne
     ,TOK_ASM_repnz

     ,TOK_ASM_invd
     ,TOK_ASM_wbinvd
     ,TOK_ASM_cpuid
     ,TOK_ASM_wrmsr
     ,TOK_ASM_rdtsc
     ,TOK_ASM_rdmsr
     ,TOK_ASM_rdpmc

     ,TOK_ASM_syscall
     ,TOK_ASM_sysret

     ,TOK_ASM_ud2
# 227 "../tinycc/x86_64-asm.h"
    ,TOK_ASM_leave
    ,TOK_ASM_ret
    ,TOK_ASM_retq


    ,TOK_ASM_lret
# 261 "../tinycc/x86_64-asm.h"
     ,TOK_ASM_fucompp
     ,TOK_ASM_ftst
     ,TOK_ASM_fxam
     ,TOK_ASM_fld1
     ,TOK_ASM_fldl2t
     ,TOK_ASM_fldl2e
     ,TOK_ASM_fldpi
     ,TOK_ASM_fldlg2
     ,TOK_ASM_fldln2
     ,TOK_ASM_fldz

     ,TOK_ASM_f2xm1
     ,TOK_ASM_fyl2x
     ,TOK_ASM_fptan
     ,TOK_ASM_fpatan
     ,TOK_ASM_fxtract
     ,TOK_ASM_fprem1
     ,TOK_ASM_fdecstp
     ,TOK_ASM_fincstp
     ,TOK_ASM_fprem
     ,TOK_ASM_fyl2xp1
     ,TOK_ASM_fsqrt
     ,TOK_ASM_fsincos
     ,TOK_ASM_frndint
     ,TOK_ASM_fscale
     ,TOK_ASM_fsin
     ,TOK_ASM_fcos
     ,TOK_ASM_fchs
     ,TOK_ASM_fabs
     ,TOK_ASM_fninit
     ,TOK_ASM_fnclex
     ,TOK_ASM_fnop
     ,TOK_ASM_fwait
# 325 "../tinycc/x86_64-asm.h"
    ,TOK_ASM_fxch
# 336 "../tinycc/x86_64-asm.h"
    ,TOK_ASM_fnstsw
# 418 "../tinycc/x86_64-asm.h"
    ,TOK_ASM_emms
# 239 "../tinycc/i386-tok.h" 2
# 250 "../tinycc/i386-tok.h"
# 1 "../tinycc/x86_64-asm.h" 1
# 94 "../tinycc/x86_64-asm.h"
     ,TOK_ASM_sysretq
# 220 "../tinycc/x86_64-asm.h"
    ,TOK_ASM_ljmpw
    ,TOK_ASM_ljmpl




    ,TOK_ASM_enter
# 236 "../tinycc/x86_64-asm.h"
    ,TOK_ASM_loopne
    ,TOK_ASM_loopnz
    ,TOK_ASM_loope
    ,TOK_ASM_loopz
    ,TOK_ASM_loop
    ,TOK_ASM_jecxz
# 296 "../tinycc/x86_64-asm.h"
    ,TOK_ASM_fld
    ,TOK_ASM_fldl
    ,TOK_ASM_flds

    ,TOK_ASM_fildl
    ,TOK_ASM_fildq
    ,TOK_ASM_fildll
    ,TOK_ASM_fldt
    ,TOK_ASM_fbld


    ,TOK_ASM_fst
    ,TOK_ASM_fstl
    ,TOK_ASM_fsts
    ,TOK_ASM_fstps

    ,TOK_ASM_fstpl
    ,TOK_ASM_fist
    ,TOK_ASM_fistp
    ,TOK_ASM_fistl
    ,TOK_ASM_fistpl

    ,TOK_ASM_fstp
    ,TOK_ASM_fistpq
    ,TOK_ASM_fistpll
    ,TOK_ASM_fstpt
    ,TOK_ASM_fbstp






    ,TOK_ASM_fucom
    ,TOK_ASM_fucomp

    ,TOK_ASM_finit
    ,TOK_ASM_fldcw
    ,TOK_ASM_fnstcw
    ,TOK_ASM_fstcw



    ,TOK_ASM_fstsw


    ,TOK_ASM_fclex
    ,TOK_ASM_fnstenv
    ,TOK_ASM_fstenv
    ,TOK_ASM_fldenv
    ,TOK_ASM_fnsave
    ,TOK_ASM_fsave
    ,TOK_ASM_frstor
    ,TOK_ASM_ffree
    ,TOK_ASM_ffreep
    ,TOK_ASM_fxsave
    ,TOK_ASM_fxrstor




    ,TOK_ASM_fxsaveq
    ,TOK_ASM_fxrstorq


    ,TOK_ASM_arpl

    ,TOK_ASM_lgdt
    ,TOK_ASM_lgdtq
    ,TOK_ASM_lidt
    ,TOK_ASM_lidtq
    ,TOK_ASM_lldt
    ,TOK_ASM_lmsw

    ,TOK_ASM_ltr
    ,TOK_ASM_sgdt
    ,TOK_ASM_sgdtq
    ,TOK_ASM_sidt
    ,TOK_ASM_sidtq
    ,TOK_ASM_sldt
    ,TOK_ASM_smsw
    ,TOK_ASM_str


    ,TOK_ASM_verr
    ,TOK_ASM_verw
    ,TOK_ASM_swapgs



    ,TOK_ASM_bswap
    ,TOK_ASM_bswapl
    ,TOK_ASM_bswapq



    ,TOK_ASM_invlpg


    ,TOK_ASM_cmpxchg8b


    ,TOK_ASM_cmpxchg16b




    ,TOK_ASM_fcmovb
    ,TOK_ASM_fcmove
    ,TOK_ASM_fcmovbe
    ,TOK_ASM_fcmovu
    ,TOK_ASM_fcmovnb
    ,TOK_ASM_fcmovne
    ,TOK_ASM_fcmovnbe
    ,TOK_ASM_fcmovnu

    ,TOK_ASM_fucomi
    ,TOK_ASM_fcomi
    ,TOK_ASM_fucomip
    ,TOK_ASM_fcomip



    ,TOK_ASM_movd
# 432 "../tinycc/x86_64-asm.h"
    ,TOK_ASM_packssdw
    ,TOK_ASM_packsswb
    ,TOK_ASM_packuswb
    ,TOK_ASM_paddb
    ,TOK_ASM_paddw
    ,TOK_ASM_paddd
    ,TOK_ASM_paddsb
    ,TOK_ASM_paddsw
    ,TOK_ASM_paddusb
    ,TOK_ASM_paddusw
    ,TOK_ASM_pand
    ,TOK_ASM_pandn
    ,TOK_ASM_pcmpeqb
    ,TOK_ASM_pcmpeqw
    ,TOK_ASM_pcmpeqd
    ,TOK_ASM_pcmpgtb
    ,TOK_ASM_pcmpgtw
    ,TOK_ASM_pcmpgtd
    ,TOK_ASM_pmaddwd
    ,TOK_ASM_pmulhw
    ,TOK_ASM_pmullw
    ,TOK_ASM_por
    ,TOK_ASM_psllw

    ,TOK_ASM_pslld

    ,TOK_ASM_psllq

    ,TOK_ASM_psraw

    ,TOK_ASM_psrad

    ,TOK_ASM_psrlw

    ,TOK_ASM_psrld

    ,TOK_ASM_psrlq

    ,TOK_ASM_psubb
    ,TOK_ASM_psubw
    ,TOK_ASM_psubd
    ,TOK_ASM_psubsb
    ,TOK_ASM_psubsw
    ,TOK_ASM_psubusb
    ,TOK_ASM_psubusw
    ,TOK_ASM_punpckhbw
    ,TOK_ASM_punpckhwd
    ,TOK_ASM_punpckhdq
    ,TOK_ASM_punpcklbw
    ,TOK_ASM_punpcklwd
    ,TOK_ASM_punpckldq
    ,TOK_ASM_pxor


    ,TOK_ASM_movups

    ,TOK_ASM_movaps

    ,TOK_ASM_movhps

    ,TOK_ASM_addps
    ,TOK_ASM_cvtpi2ps
    ,TOK_ASM_cvtps2pi
    ,TOK_ASM_cvttps2pi
    ,TOK_ASM_divps
    ,TOK_ASM_maxps
    ,TOK_ASM_minps
    ,TOK_ASM_mulps
    ,TOK_ASM_pavgb
    ,TOK_ASM_pavgw
    ,TOK_ASM_pmaxsw
    ,TOK_ASM_pmaxub
    ,TOK_ASM_pminsw
    ,TOK_ASM_pminub
    ,TOK_ASM_rcpss
    ,TOK_ASM_rsqrtps
    ,TOK_ASM_sqrtps
    ,TOK_ASM_subps

    ,TOK_ASM_prefetchnta
    ,TOK_ASM_prefetcht0
    ,TOK_ASM_prefetcht1
    ,TOK_ASM_prefetcht2
    ,TOK_ASM_prefetchw
    ,TOK_ASM_lfence
    ,TOK_ASM_mfence
    ,TOK_ASM_sfence
    ,TOK_ASM_clflush
# 251 "../tinycc/i386-tok.h" 2
# 370 "../tinycc/tcctok.h" 2
# 1194 "../tinycc/tcc.h" 2

};






static struct TCCState *tcc_state;


static char *pstrcpy(char *buf, size_t buf_size, const char *s);
static char *pstrcat(char *buf, size_t buf_size, const char *s);
static char *pstrncpy(char *out, const char *in, size_t num);
 char *tcc_basename(const char *name);
 char *tcc_fileextension (const char *name);


 void tcc_free(void *ptr);
 void *tcc_malloc(unsigned long size);
 void *tcc_mallocz(unsigned long size);
 void *tcc_realloc(void *ptr, unsigned long size);
 char *tcc_strdup(const char *str);
# 1235 "../tinycc/tcc.h"
 void _tcc_error_noabort(const char *fmt, ...) __attribute__ ((format (printf, (1), (2))));
 __attribute__((noreturn)) void _tcc_error(const char *fmt, ...) __attribute__ ((format (printf, (1), (2))));
 void _tcc_warning(const char *fmt, ...) __attribute__ ((format (printf, (1), (2))));


static void dynarray_add(void *ptab, int *nb_ptr, void *data);
static void dynarray_reset(void *pp, int *n);
static inline void cstr_ccat(CString *cstr, int ch);
static void cstr_cat(CString *cstr, const char *str, int len);
static void cstr_wccat(CString *cstr, int ch);
static void cstr_new(CString *cstr);
static void cstr_free(CString *cstr);
static int cstr_printf(CString *cs, const char *fmt, ...) __attribute__ ((format (printf, (2), (3))));
static void cstr_reset(CString *cstr);

static inline void sym_free(Sym *sym);
static Sym *sym_push2(Sym **ps, int v, int t, int c);
static Sym *sym_find2(Sym *s, int v);
static Sym *sym_push(int v, CType *type, int r, int c);
static void sym_pop(Sym **ptop, Sym *b, int keep);
static inline Sym *struct_find(int v);
static inline Sym *sym_find(int v);
static Sym *global_identifier_push(int v, int t, int c);

static void tcc_open_bf(TCCState *s1, const char *filename, int initlen);
static int tcc_open(TCCState *s1, const char *filename);
static void tcc_close(void);

static int tcc_add_file_internal(TCCState *s1, const char *filename, int flags);
# 1289 "../tinycc/tcc.h"
static void tcc_add_bcheck(TCCState *s1);


static void tcc_add_btstub(TCCState *s1);

static void tcc_add_pragma_libs(TCCState *s1);
 int tcc_add_library_err(TCCState *s, const char *f);
 void tcc_print_stats(TCCState *s, unsigned total_time);
 int tcc_parse_args(TCCState *s, int *argc, char ***argv, int optind);
# 1314 "../tinycc/tcc.h"
static struct BufferedFile *file;
static int ch, tok;
static CValue tokc;
static const int *macro_ptr;
static int parse_flags;
static int tok_flags;
static CString tokcstr;


static int tok_ident;
static TokenSym **table_ident;
# 1346 "../tinycc/tcc.h"
static TokenSym *tok_alloc(const char *str, int len);
static const char *get_tok_str(int v, CValue *cv);
static void begin_macro(TokenString *str, int alloc);
static void end_macro(void);
static int set_idnum(int c, int val);
static inline void tok_str_new(TokenString *s);
static TokenString *tok_str_alloc(void);
static void tok_str_free(TokenString *s);
static void tok_str_free_str(int *str);
static void tok_str_add(TokenString *s, int t);
static void tok_str_add_tok(TokenString *s);
static inline void define_push(int v, int macro_type, int *str, Sym *first_arg);
static void define_undef(Sym *s);
static inline Sym *define_find(int v);
static void free_defines(Sym *b);
static Sym *label_find(int v);
static Sym *label_push(Sym **ptop, int v, int flags);
static void label_pop(Sym **ptop, Sym *slast, int keep);
static void parse_define(void);
static void preprocess(int is_bof);
static void next(void);
static inline void unget_tok(int last_tok);
static void preprocess_start(TCCState *s1, int filetype);
static void preprocess_end(TCCState *s1);
static void tccpp_new(TCCState *s);
static void tccpp_delete(TCCState *s);
static int tcc_preprocess(TCCState *s1);
static void skip(int c);
static __attribute__((noreturn)) void expect(const char *msg);


static inline int is_space(int ch) {
    return ch == ' ' || ch == '\t' || ch == '\v' || ch == '\f' || ch == '\r';
}
static inline int isid(int c) {
    return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || c == '_';
}
static inline int isnum(int c) {
    return c >= '0' && c <= '9';
}
static inline int isoct(int c) {
    return c >= '0' && c <= '7';
}
static inline int toup(int c) {
    return (c >= 'a' && c <= 'z') ? c - 'a' + 'A' : c;
}





static Sym *global_stack;
static Sym *local_stack;
static Sym *local_label_stack;
static Sym *global_label_stack;
static Sym *define_stack;
static CType int_type, func_old_type, char_pointer_type;
static SValue *vtop;
static int rsym, anon_sym, ind, loc;

static int const_wanted;
static int nocode_wanted;
static int global_expr;
static CType func_vt;
static int func_var;
static int func_vc;
static const char *funcname;

static void tcc_debug_start(TCCState *s1);
static void tcc_debug_end(TCCState *s1);
static void tcc_debug_bincl(TCCState *s1);
static void tcc_debug_eincl(TCCState *s1);
static void tcc_debug_putfile(TCCState *s1, const char *filename);
static void tcc_debug_funcstart(TCCState *s1, Sym *sym);
static void tcc_debug_funcend(TCCState *s1, int size);
static void tcc_debug_line(TCCState *s1);

static void tccgen_init(TCCState *s1);
static int tccgen_compile(TCCState *s1);
static void tccgen_finish(TCCState *s1);
static void check_vstack(void);

static inline int is_float(int t);
static int ieee_finite(double d);
static int exact_log2p1(int i);
static void test_lvalue(void);
static void vpushi(int v);
static Elf64_Sym *elfsym(Sym *);
static void update_storage(Sym *sym);
static Sym *external_global_sym(int v, CType *type);
static void vset(CType *type, int r, int v);
static void vset_VT_CMP(int op);
static void vswap(void);
static void vpush_global_sym(CType *type, int v);
static void vrote(SValue *e, int n);
static void vrott(int n);
static void vrotb(int n);






static void vpushv(SValue *v);
static void save_reg(int r);
static void save_reg_upstack(int r, int n);
static int get_reg(int rc);
static void save_regs(int n);
static void gaddrof(void);
static int gv(int rc);
static void gv2(int rc1, int rc2);
static void vpop(void);
static void gen_op(int op);
static int type_size(CType *type, int *a);
static void mk_pointer(CType *type);
static void vstore(void);
static void inc(int post, int c);
static void parse_mult_str (CString *astr, const char *msg);
static void parse_asm_str(CString *astr);
static void indir(void);
static void unary(void);
static void gexpr(void);
static int expr_const(void);

static Sym *get_sym_ref(CType *type, Section *sec, unsigned long offset, unsigned long size);


static int classify_x86_64_va_arg(CType *ty);


static void gbound_args(int nb_args);
static int func_bound_add_epilog;
# 1488 "../tinycc/tcc.h"
typedef struct {
    unsigned int n_strx;
    unsigned char n_type;
    unsigned char n_other;
    unsigned short n_desc;
    unsigned int n_value;
} Stab_Sym;

static void tccelf_new(TCCState *s);
static void tccelf_delete(TCCState *s);
static void tccelf_stab_new(TCCState *s);
static void tccelf_begin_file(TCCState *s1);
static void tccelf_end_file(TCCState *s1);

static void tccelf_bounds_new(TCCState *s);

static Section *new_section(TCCState *s1, const char *name, int sh_type, int sh_flags);
static void section_realloc(Section *sec, unsigned long new_size);
static size_t section_add(Section *sec, Elf64_Addr size, int align);
static void *section_ptr_add(Section *sec, Elf64_Addr size);
static void section_reserve(Section *sec, unsigned long size);
static Section *find_section(TCCState *s1, const char *name);
static Section *new_symtab(TCCState *s1, const char *symtab_name, int sh_type, int sh_flags, const char *strtab_name, const char *hash_name, int hash_sh_flags);

static void put_extern_sym2(Sym *sym, int sh_num, Elf64_Addr value, unsigned long size, int can_add_underscore);
static void put_extern_sym(Sym *sym, Section *section, Elf64_Addr value, unsigned long size);



static void greloca(Section *s, Sym *sym, unsigned long offset, int type, Elf64_Addr addend);

static int put_elf_str(Section *s, const char *sym);
static int put_elf_sym(Section *s, Elf64_Addr value, unsigned long size, int info, int other, int shndx, const char *name);
static int set_elf_sym(Section *s, Elf64_Addr value, unsigned long size, int info, int other, int shndx, const char *name);
static int find_elf_sym(Section *s, const char *name);
static void put_elf_reloc(Section *symtab, Section *s, unsigned long offset, int type, int symbol);
static void put_elf_reloca(Section *symtab, Section *s, unsigned long offset, int type, int symbol, Elf64_Addr addend);

static void put_stabs(TCCState *s1, const char *str, int type, int other, int desc, unsigned long value);
static void put_stabs_r(TCCState *s1, const char *str, int type, int other, int desc, unsigned long value, Section *sec, int sym_index);
static void put_stabn(TCCState *s1, int type, int other, int desc, int value);

static void resolve_common_syms(TCCState *s1);
static void relocate_syms(TCCState *s1, Section *symtab, int do_resolve);
static void relocate_section(TCCState *s1, Section *s);

static ssize_t full_read(int fd, void *buf, size_t count);
static void *load_data(int fd, unsigned long file_offset, unsigned long size);
static int tcc_object_type(int fd, Elf64_Ehdr *h);
static int tcc_load_object_file(TCCState *s1, int fd, unsigned long file_offset);
static int tcc_load_archive(TCCState *s1, int fd, int alacarte);
static void add_array(TCCState *s1, const char *sec, int c);


static void build_got_entries(TCCState *s1);

static struct sym_attr *get_sym_attr(TCCState *s1, int index, int alloc);
static void squeeze_multi_relocs(Section *sec, size_t oldrelocoffset);

static Elf64_Addr get_sym_addr(TCCState *s, const char *name, int err, int forc);
static void list_elf_symbols(TCCState *s, void *ctx,
    void (*symbol_cb)(void *ctx, const char *name, const void *val));
static int set_global_sym(TCCState *s1, const char *name, Section *sec, Elf64_Addr offs);
# 1563 "../tinycc/tcc.h"
static void tcc_add_runtime(TCCState *s1);






enum gotplt_entry {
    NO_GOTPLT_ENTRY,
    BUILD_GOT_ONLY,
    AUTO_GOTPLT_ENTRY,
    ALWAYS_GOTPLT_ENTRY
};


static int code_reloc (int reloc_type);
static int gotplt_entry_type (int reloc_type);

static unsigned create_plt_entry(TCCState *s1, unsigned got_offset, struct sym_attr *attr);
static void relocate_plt(TCCState *s1);


static void relocate(TCCState *s1, Elf64_Rela *rel, int type, unsigned char *ptr, Elf64_Addr addr, Elf64_Addr val);



static const int reg_classes[25];

static void gsym_addr(int t, int a);
static void gsym(int t);
static void load(int r, SValue *sv);
static void store(int r, SValue *v);
static int gfunc_sret(CType *vt, int variadic, CType *ret, int *align, int *regsize);
static void gfunc_call(int nb_args);
static void gfunc_prolog(Sym *func_sym);
static void gfunc_epilog(void);
static void gen_fill_nops(int);
static int gjmp(int t);
static void gjmp_addr(int a);
static int gjmp_cond(int op, int t);
static int gjmp_append(int n, int t);
static void gen_opi(int op);
static void gen_opf(int op);
static void gen_cvt_ftoi(int t);
static void gen_cvt_itof(int t);
static void gen_cvt_ftof(int t);
static void ggoto(void);

static void o(unsigned int c);

static void gen_vla_sp_save(int addr);
static void gen_vla_sp_restore(int addr);
static void gen_vla_alloc(CType *type, int align);

static inline uint16_t read16le(unsigned char *p) {
    return p[0] | (uint16_t)p[1] << 8;
}
static inline void write16le(unsigned char *p, uint16_t x) {
    p[0] = x & 255;  p[1] = x >> 8 & 255;
}
static inline uint32_t read32le(unsigned char *p) {
  return read16le(p) | (uint32_t)read16le(p + 2) << 16;
}
static inline void write32le(unsigned char *p, uint32_t x) {
    write16le(p, x);  write16le(p + 2, x >> 16);
}
static inline void add32le(unsigned char *p, int32_t x) {
    write32le(p, read32le(p) + x);
}
static inline uint64_t read64le(unsigned char *p) {
  return read32le(p) | (uint64_t)read32le(p + 4) << 32;
}
static inline void write64le(unsigned char *p, uint64_t x) {
    write32le(p, x);  write32le(p + 4, x >> 32);
}
static inline void add64le(unsigned char *p, int64_t x) {
    write64le(p, read64le(p) + x);
}



static void g(int c);
static void gen_le16(int c);
static void gen_le32(int c);
static void gen_addr32(int r, Sym *sym, int c);
static void gen_addrpc32(int r, Sym *sym, int c);
static void gen_cvt_csti(int t);




static void gen_addr64(int r, Sym *sym, int64_t c);
static void gen_opl(int op);



static void gen_cvt_sxtw(void);
static void gen_cvt_csti(int t);
# 1703 "../tinycc/tcc.h"
static void asm_instr(void);
static void asm_global_instr(void);

static int find_constraint(ASMOperand *operands, int nb_operands, const char *name, const char **pp);
static Sym* get_asm_sym(int name, Sym *csym);
static void asm_expr(TCCState *s1, ExprValue *pe);
static int asm_int_expr(TCCState *s1);
static int tcc_assemble(TCCState *s1, int do_preprocess);

static void gen_expr32(ExprValue *pe);

static void gen_expr64(ExprValue *pe);

static void asm_opcode(TCCState *s1, int opcode);
static int asm_parse_regvar(int t);
static void asm_compute_constraints(ASMOperand *operands, int nb_operands, int nb_outputs, const uint8_t *clobber_regs, int *pout_reg);
static void subst_asm_operand(CString *add_str, SValue *sv, int modifier);
static void asm_gen_code(ASMOperand *operands, int nb_operands, int nb_outputs, int is_output, uint8_t *clobber_regs, int out_reg);
static void asm_clobber(uint8_t *clobber_regs, const char *str);
# 1745 "../tinycc/tcc.h"
static int macho_output_file(TCCState * s1, const char *filename);
static int macho_load_dll(TCCState *s1, int fd, const char *filename, int lev);
# 1761 "../tinycc/tcc.h"
static void tcc_run_free(TCCState *s1);
# 1802 "../tinycc/tcc.h"
 void tcc_enter_state(TCCState *s1);
 void tcc_exit_state(void);
# 7 "ffic.c" 2
# 1 "../tinycc/libtcc.c" 1
# 22 "../tinycc/libtcc.c"
# 1 "../tinycc/tccpp.c" 1
# 22 "../tinycc/tccpp.c"
# 1 "../tinycc/tcc.h" 1
# 23 "../tinycc/tccpp.c" 2




static int tok_flags;
static int parse_flags;

static struct BufferedFile *file;
static int ch, tok;
static CValue tokc;
static const int *macro_ptr;
static CString tokcstr;


static int tok_ident;
static TokenSym **table_ident;



static TokenSym *hash_ident[16384];
static char token_buf[1024 + 1];
static CString cstr_buf;
static CString macro_equal_buf;
static TokenString tokstr_buf;
static unsigned char isidnum_table[256 - (-1)];
static int pp_debug_tok, pp_debug_symv;
static int pp_once;
static int pp_expr;
static int pp_counter;
static void tok_print(const char *msg, const int *str);

static struct TinyAlloc *toksym_alloc;
static struct TinyAlloc *tokstr_alloc;

static TokenString *macro_stack;

static const char tcc_keywords[] =

# 1 "../tinycc/tcctok.h" 1

     "int" "\0"
     "void" "\0"
     "char" "\0"
     "if" "\0"
     "else" "\0"
     "while" "\0"
     "break" "\0"
     "return" "\0"
     "for" "\0"
     "extern" "\0"
     "static" "\0"
     "unsigned" "\0"
     "goto" "\0"
     "do" "\0"
     "continue" "\0"
     "switch" "\0"
     "case" "\0"

     "const" "\0"
     "__const" "\0"
     "__const__" "\0"
     "volatile" "\0"
     "__volatile" "\0"
     "__volatile__" "\0"
     "long" "\0"
     "register" "\0"
     "signed" "\0"
     "__signed" "\0"
     "__signed__" "\0"
     "auto" "\0"
     "inline" "\0"
     "__inline" "\0"
     "__inline__" "\0"
     "restrict" "\0"
     "__restrict" "\0"
     "__restrict__" "\0"
     "__extension__" "\0"

     "_Generic" "\0"
     "_Static_assert" "\0"

     "float" "\0"
     "double" "\0"
     "_Bool" "\0"
     "short" "\0"
     "struct" "\0"
     "union" "\0"
     "typedef" "\0"
     "default" "\0"
     "enum" "\0"
     "sizeof" "\0"
     "__attribute" "\0"
     "__attribute__" "\0"
     "__alignof" "\0"
     "__alignof__" "\0"
     "_Alignof" "\0"
     "_Alignas" "\0"
     "typeof" "\0"
     "__typeof" "\0"
     "__typeof__" "\0"
     "__label__" "\0"
     "asm" "\0"
     "__asm" "\0"
     "__asm__" "\0"
# 74 "../tinycc/tcctok.h"
     "define" "\0"
     "include" "\0"
     "include_next" "\0"
     "ifdef" "\0"
     "ifndef" "\0"
     "elif" "\0"
     "endif" "\0"
     "defined" "\0"
     "undef" "\0"
     "error" "\0"
     "warning" "\0"
     "line" "\0"
     "pragma" "\0"
     "__LINE__" "\0"
     "__FILE__" "\0"
     "__DATE__" "\0"
     "__TIME__" "\0"
     "__FUNCTION__" "\0"
     "__VA_ARGS__" "\0"
     "__COUNTER__" "\0"
     "__has_include" "\0"


     "__func__" "\0"


     "__nan__" "\0"
     "__snan__" "\0"
     "__inf__" "\0"



     "section" "\0"
     "__section__" "\0"
     "aligned" "\0"
     "__aligned__" "\0"
     "packed" "\0"
     "__packed__" "\0"
     "weak" "\0"
     "__weak__" "\0"
     "alias" "\0"
     "__alias__" "\0"
     "unused" "\0"
     "__unused__" "\0"
     "cdecl" "\0"
     "__cdecl" "\0"
     "__cdecl__" "\0"
     "stdcall" "\0"
     "__stdcall" "\0"
     "__stdcall__" "\0"
     "fastcall" "\0"
     "__fastcall" "\0"
     "__fastcall__" "\0"
     "regparm" "\0"
     "__regparm__" "\0"
     "cleanup" "\0"
     "__cleanup__" "\0"
     "constructor" "\0"
     "__constructor__" "\0"
     "destructor" "\0"
     "__destructor__" "\0"
     "always_inline" "\0"
     "__always_inline__" "\0"

     "__mode__" "\0"
     "__QI__" "\0"
     "__DI__" "\0"
     "__HI__" "\0"
     "__SI__" "\0"
     "__word__" "\0"

     "dllexport" "\0"
     "dllimport" "\0"
     "nodecorate" "\0"
     "noreturn" "\0"
     "__noreturn__" "\0"
     "_Noreturn" "\0"
     "visibility" "\0"
     "__visibility__" "\0"

     "__builtin_types_compatible_p" "\0"
     "__builtin_choose_expr" "\0"
     "__builtin_constant_p" "\0"
     "__builtin_frame_address" "\0"
     "__builtin_return_address" "\0"
     "__builtin_expect" "\0"




     "__builtin_va_arg_types" "\0"
# 173 "../tinycc/tcctok.h"
     "pack" "\0"





     "comment" "\0"
     "lib" "\0"
     "push_macro" "\0"
     "pop_macro" "\0"
     "once" "\0"
     "option" "\0"



     "memcpy" "\0"
     "memmove" "\0"
     "memset" "\0"
     "__divdi3" "\0"
     "__moddi3" "\0"
     "__udivdi3" "\0"
     "__umoddi3" "\0"
     "__ashrdi3" "\0"
     "__lshrdi3" "\0"
     "__ashldi3" "\0"
     "__floatundisf" "\0"
     "__floatundidf" "\0"

     "__floatundixf" "\0"
     "__fixunsxfdi" "\0"

     "__fixunssfdi" "\0"
     "__fixunsdfdi" "\0"
# 267 "../tinycc/tcctok.h"
     "alloca" "\0"
# 301 "../tinycc/tcctok.h"
     "__bound_ptr_add" "\0"
     "__bound_ptr_indir1" "\0"
     "__bound_ptr_indir2" "\0"
     "__bound_ptr_indir4" "\0"
     "__bound_ptr_indir8" "\0"
     "__bound_ptr_indir12" "\0"
     "__bound_ptr_indir16" "\0"
     "__bound_main_arg" "\0"
     "__bound_local_new" "\0"
     "__bound_local_delete" "\0"
     "__bound_setjmp" "\0"
     "__bound_new_region" "\0"





     "sigsetjmp" "\0"
     "__sigsetjmp" "\0"
     "siglongjmp" "\0"

     "setjmp" "\0"
     "_setjmp" "\0"



 "." "byte" "\0"
 "." "word" "\0"
 "." "align" "\0"
 "." "balign" "\0"
 "." "p2align" "\0"
 "." "set" "\0"
 "." "skip" "\0"
 "." "space" "\0"
 "." "string" "\0"
 "." "asciz" "\0"
 "." "ascii" "\0"
 "." "file" "\0"
 "." "globl" "\0"
 "." "global" "\0"
 "." "weak" "\0"
 "." "hidden" "\0"
 "." "ident" "\0"
 "." "size" "\0"
 "." "type" "\0"
 "." "text" "\0"
 "." "data" "\0"
 "." "bss" "\0"
 "." "previous" "\0"
 "." "pushsection" "\0"
 "." "popsection" "\0"
 "." "fill" "\0"
 "." "rept" "\0"
 "." "endr" "\0"
 "." "org" "\0"
 "." "quad" "\0"




 "." "code64" "\0"

 "." "short" "\0"
 "." "long" "\0"
 "." "int" "\0"
 "." "section" "\0"


# 1 "../tinycc/i386-tok.h" 1




 "al" "\0"
 "cl" "\0"
 "dl" "\0"
 "bl" "\0"
 "ah" "\0"
 "ch" "\0"
 "dh" "\0"
 "bh" "\0"
 "ax" "\0"
 "cx" "\0"
 "dx" "\0"
 "bx" "\0"
 "sp" "\0"
 "bp" "\0"
 "si" "\0"
 "di" "\0"
 "eax" "\0"
 "ecx" "\0"
 "edx" "\0"
 "ebx" "\0"
 "esp" "\0"
 "ebp" "\0"
 "esi" "\0"
 "edi" "\0"

 "rax" "\0"
 "rcx" "\0"
 "rdx" "\0"
 "rbx" "\0"
 "rsp" "\0"
 "rbp" "\0"
 "rsi" "\0"
 "rdi" "\0"

 "mm0" "\0"
 "mm1" "\0"
 "mm2" "\0"
 "mm3" "\0"
 "mm4" "\0"
 "mm5" "\0"
 "mm6" "\0"
 "mm7" "\0"
 "xmm0" "\0"
 "xmm1" "\0"
 "xmm2" "\0"
 "xmm3" "\0"
 "xmm4" "\0"
 "xmm5" "\0"
 "xmm6" "\0"
 "xmm7" "\0"
 "cr0" "\0"
 "cr1" "\0"
 "cr2" "\0"
 "cr3" "\0"
 "cr4" "\0"
 "cr5" "\0"
 "cr6" "\0"
 "cr7" "\0"
 "tr0" "\0"
 "tr1" "\0"
 "tr2" "\0"
 "tr3" "\0"
 "tr4" "\0"
 "tr5" "\0"
 "tr6" "\0"
 "tr7" "\0"
 "db0" "\0"
 "db1" "\0"
 "db2" "\0"
 "db3" "\0"
 "db4" "\0"
 "db5" "\0"
 "db6" "\0"
 "db7" "\0"
 "dr0" "\0"
 "dr1" "\0"
 "dr2" "\0"
 "dr3" "\0"
 "dr4" "\0"
 "dr5" "\0"
 "dr6" "\0"
 "dr7" "\0"
 "es" "\0"
 "cs" "\0"
 "ss" "\0"
 "ds" "\0"
 "fs" "\0"
 "gs" "\0"
 "st" "\0"
 "rip" "\0"




 "spl" "\0"
 "bpl" "\0"
 "sil" "\0"
 "dil" "\0"


 "mov" "b" "\0" "mov" "w" "\0" "mov" "l" "\0" "mov" "q" "\0" "mov" "\0"

 "add" "b" "\0" "add" "w" "\0" "add" "l" "\0" "add" "q" "\0" "add" "\0"
 "or" "b" "\0" "or" "w" "\0" "or" "l" "\0" "or" "q" "\0" "or" "\0"
 "adc" "b" "\0" "adc" "w" "\0" "adc" "l" "\0" "adc" "q" "\0" "adc" "\0"
 "sbb" "b" "\0" "sbb" "w" "\0" "sbb" "l" "\0" "sbb" "q" "\0" "sbb" "\0"
 "and" "b" "\0" "and" "w" "\0" "and" "l" "\0" "and" "q" "\0" "and" "\0"
 "sub" "b" "\0" "sub" "w" "\0" "sub" "l" "\0" "sub" "q" "\0" "sub" "\0"
 "xor" "b" "\0" "xor" "w" "\0" "xor" "l" "\0" "xor" "q" "\0" "xor" "\0"
 "cmp" "b" "\0" "cmp" "w" "\0" "cmp" "l" "\0" "cmp" "q" "\0" "cmp" "\0"


 "inc" "b" "\0" "inc" "w" "\0" "inc" "l" "\0" "inc" "q" "\0" "inc" "\0"
 "dec" "b" "\0" "dec" "w" "\0" "dec" "l" "\0" "dec" "q" "\0" "dec" "\0"
 "not" "b" "\0" "not" "w" "\0" "not" "l" "\0" "not" "q" "\0" "not" "\0"
 "neg" "b" "\0" "neg" "w" "\0" "neg" "l" "\0" "neg" "q" "\0" "neg" "\0"
 "mul" "b" "\0" "mul" "w" "\0" "mul" "l" "\0" "mul" "q" "\0" "mul" "\0"
 "imul" "b" "\0" "imul" "w" "\0" "imul" "l" "\0" "imul" "q" "\0" "imul" "\0"
 "div" "b" "\0" "div" "w" "\0" "div" "l" "\0" "div" "q" "\0" "div" "\0"
 "idiv" "b" "\0" "idiv" "w" "\0" "idiv" "l" "\0" "idiv" "q" "\0" "idiv" "\0"

 "xchg" "b" "\0" "xchg" "w" "\0" "xchg" "l" "\0" "xchg" "q" "\0" "xchg" "\0"
 "test" "b" "\0" "test" "w" "\0" "test" "l" "\0" "test" "q" "\0" "test" "\0"


 "rol" "b" "\0" "rol" "w" "\0" "rol" "l" "\0" "rol" "q" "\0" "rol" "\0"
 "ror" "b" "\0" "ror" "w" "\0" "ror" "l" "\0" "ror" "q" "\0" "ror" "\0"
 "rcl" "b" "\0" "rcl" "w" "\0" "rcl" "l" "\0" "rcl" "q" "\0" "rcl" "\0"
 "rcr" "b" "\0" "rcr" "w" "\0" "rcr" "l" "\0" "rcr" "q" "\0" "rcr" "\0"
 "shl" "b" "\0" "shl" "w" "\0" "shl" "l" "\0" "shl" "q" "\0" "shl" "\0"
 "shr" "b" "\0" "shr" "w" "\0" "shr" "l" "\0" "shr" "q" "\0" "shr" "\0"
 "sar" "b" "\0" "sar" "w" "\0" "sar" "l" "\0" "sar" "q" "\0" "sar" "\0"

 "shld" "w" "\0" "shld" "l" "\0" "shld" "q" "\0" "shld" "\0"
 "shrd" "w" "\0" "shrd" "l" "\0" "shrd" "q" "\0" "shrd" "\0"

 "pushw" "\0"
 "pushl" "\0"

 "pushq" "\0"

 "push" "\0"

 "popw" "\0"
 "popl" "\0"

 "popq" "\0"

 "pop" "\0"

 "in" "b" "\0" "in" "w" "\0" "in" "l" "\0" "in" "\0"
 "out" "b" "\0" "out" "w" "\0" "out" "l" "\0" "out" "\0"

 "movzb" "w" "\0" "movzb" "l" "\0" "movzb" "q" "\0" "movzb" "\0"
 "movzwl" "\0"
 "movsbw" "\0"
 "movsbl" "\0"
 "movswl" "\0"

 "movsbq" "\0"
 "movswq" "\0"
 "movzwq" "\0"
 "movslq" "\0"


 "lea" "w" "\0" "lea" "l" "\0" "lea" "q" "\0" "lea" "\0"

 "les" "\0"
 "lds" "\0"
 "lss" "\0"
 "lfs" "\0"
 "lgs" "\0"

 "call" "\0"
 "jmp" "\0"
 "lcall" "\0"
 "ljmp" "\0"

 "jo" "\0" "jno" "\0" "jb" "\0" "jc" "\0" "jnae" "\0" "jnb" "\0" "jnc" "\0" "jae" "\0" "je" "\0" "jz" "\0" "jne" "\0" "jnz" "\0" "jbe" "\0" "jna" "\0" "jnbe" "\0" "ja" "\0" "js" "\0" "jns" "\0" "jp" "\0" "jpe" "\0" "jnp" "\0" "jpo" "\0" "jl" "\0" "jnge" "\0" "jnl" "\0" "jge" "\0" "jle" "\0" "jng" "\0" "jnle" "\0" "jg" "\0"

 "seto" "\0" "setno" "\0" "setb" "\0" "setc" "\0" "setnae" "\0" "setnb" "\0" "setnc" "\0" "setae" "\0" "sete" "\0" "setz" "\0" "setne" "\0" "setnz" "\0" "setbe" "\0" "setna" "\0" "setnbe" "\0" "seta" "\0" "sets" "\0" "setns" "\0" "setp" "\0" "setpe" "\0" "setnp" "\0" "setpo" "\0" "setl" "\0" "setnge" "\0" "setnl" "\0" "setge" "\0" "setle" "\0" "setng" "\0" "setnle" "\0" "setg" "\0"
 "setob" "\0" "setnob" "\0" "setbb" "\0" "setcb" "\0" "setnaeb" "\0" "setnbb" "\0" "setncb" "\0" "setaeb" "\0" "seteb" "\0" "setzb" "\0" "setneb" "\0" "setnzb" "\0" "setbeb" "\0" "setnab" "\0" "setnbeb" "\0" "setab" "\0" "setsb" "\0" "setnsb" "\0" "setpb" "\0" "setpeb" "\0" "setnpb" "\0" "setpob" "\0" "setlb" "\0" "setngeb" "\0" "setnlb" "\0" "setgeb" "\0" "setleb" "\0" "setngb" "\0" "setnleb" "\0" "setgb" "\0"
 "cmovo" "\0" "cmovno" "\0" "cmovb" "\0" "cmovc" "\0" "cmovnae" "\0" "cmovnb" "\0" "cmovnc" "\0" "cmovae" "\0" "cmove" "\0" "cmovz" "\0" "cmovne" "\0" "cmovnz" "\0" "cmovbe" "\0" "cmovna" "\0" "cmovnbe" "\0" "cmova" "\0" "cmovs" "\0" "cmovns" "\0" "cmovp" "\0" "cmovpe" "\0" "cmovnp" "\0" "cmovpo" "\0" "cmovl" "\0" "cmovnge" "\0" "cmovnl" "\0" "cmovge" "\0" "cmovle" "\0" "cmovng" "\0" "cmovnle" "\0" "cmovg" "\0"

 "bsf" "w" "\0" "bsf" "l" "\0" "bsf" "q" "\0" "bsf" "\0"
 "bsr" "w" "\0" "bsr" "l" "\0" "bsr" "q" "\0" "bsr" "\0"
 "bt" "w" "\0" "bt" "l" "\0" "bt" "q" "\0" "bt" "\0"
 "bts" "w" "\0" "bts" "l" "\0" "bts" "q" "\0" "bts" "\0"
 "btr" "w" "\0" "btr" "l" "\0" "btr" "q" "\0" "btr" "\0"
 "btc" "w" "\0" "btc" "l" "\0" "btc" "q" "\0" "btc" "\0"

 "lar" "w" "\0" "lar" "l" "\0" "lar" "q" "\0" "lar" "\0"
 "lsl" "w" "\0" "lsl" "l" "\0" "lsl" "q" "\0" "lsl" "\0"


 "f" "add" "\0" "f" "add" "p" "\0" "f" "add" "s" "\0" "fi" "add" "l" "\0" "f" "add" "l" "\0" "fi" "add" "s" "\0"
 "f" "mul" "\0" "f" "mul" "p" "\0" "f" "mul" "s" "\0" "fi" "mul" "l" "\0" "f" "mul" "l" "\0" "fi" "mul" "s" "\0"

 "fcom" "\0"
 "fcom_1" "\0"
 "f" "com" "s" "\0" "fi" "com" "l" "\0" "f" "com" "l" "\0" "fi" "com" "s" "\0"

 "f" "comp" "\0" "f" "comp" "p" "\0" "f" "comp" "s" "\0" "fi" "comp" "l" "\0" "f" "comp" "l" "\0" "fi" "comp" "s" "\0"
 "f" "sub" "\0" "f" "sub" "p" "\0" "f" "sub" "s" "\0" "fi" "sub" "l" "\0" "f" "sub" "l" "\0" "fi" "sub" "s" "\0"
 "f" "subr" "\0" "f" "subr" "p" "\0" "f" "subr" "s" "\0" "fi" "subr" "l" "\0" "f" "subr" "l" "\0" "fi" "subr" "s" "\0"
 "f" "div" "\0" "f" "div" "p" "\0" "f" "div" "s" "\0" "fi" "div" "l" "\0" "f" "div" "l" "\0" "fi" "div" "s" "\0"
 "f" "divr" "\0" "f" "divr" "p" "\0" "f" "divr" "s" "\0" "fi" "divr" "l" "\0" "f" "divr" "l" "\0" "fi" "divr" "s" "\0"

 "xadd" "b" "\0" "xadd" "w" "\0" "xadd" "l" "\0" "xadd" "q" "\0" "xadd" "\0"
 "cmpxchg" "b" "\0" "cmpxchg" "w" "\0" "cmpxchg" "l" "\0" "cmpxchg" "q" "\0" "cmpxchg" "\0"


 "cmps" "b" "\0" "cmps" "w" "\0" "cmps" "l" "\0" "cmps" "q" "\0" "cmps" "\0"
 "scmp" "b" "\0" "scmp" "w" "\0" "scmp" "l" "\0" "scmp" "q" "\0" "scmp" "\0"
 "ins" "b" "\0" "ins" "w" "\0" "ins" "l" "\0" "ins" "\0"
 "outs" "b" "\0" "outs" "w" "\0" "outs" "l" "\0" "outs" "\0"
 "lods" "b" "\0" "lods" "w" "\0" "lods" "l" "\0" "lods" "q" "\0" "lods" "\0"
 "slod" "b" "\0" "slod" "w" "\0" "slod" "l" "\0" "slod" "q" "\0" "slod" "\0"
 "movs" "b" "\0" "movs" "w" "\0" "movs" "l" "\0" "movs" "q" "\0" "movs" "\0"
 "smov" "b" "\0" "smov" "w" "\0" "smov" "l" "\0" "smov" "q" "\0" "smov" "\0"
 "scas" "b" "\0" "scas" "w" "\0" "scas" "l" "\0" "scas" "q" "\0" "scas" "\0"
 "ssca" "b" "\0" "ssca" "w" "\0" "ssca" "l" "\0" "ssca" "q" "\0" "ssca" "\0"
 "stos" "b" "\0" "stos" "w" "\0" "stos" "l" "\0" "stos" "q" "\0" "stos" "\0"
 "ssto" "b" "\0" "ssto" "w" "\0" "ssto" "l" "\0" "ssto" "q" "\0" "ssto" "\0"
# 238 "../tinycc/i386-tok.h"
# 1 "../tinycc/x86_64-asm.h" 1
     "clc" "\0"
     "cld" "\0"
     "cli" "\0"
     "clts" "\0"
     "cmc" "\0"
     "lahf" "\0"
     "sahf" "\0"
     "pushfq" "\0"
     "popfq" "\0"
     "pushf" "\0"
     "popf" "\0"
     "stc" "\0"
     "std" "\0"
     "sti" "\0"
     "aaa" "\0"
     "aas" "\0"
     "daa" "\0"
     "das" "\0"
     "aad" "\0"
     "aam" "\0"
     "cbw" "\0"
     "cwd" "\0"
     "cwde" "\0"
     "cdq" "\0"
     "cbtw" "\0"
     "cwtl" "\0"
     "cwtd" "\0"
     "cltd" "\0"
     "cqto" "\0"
     "int3" "\0"
     "into" "\0"
     "iret" "\0"
     "rsm" "\0"
     "hlt" "\0"
     "wait" "\0"
     "nop" "\0"
     "pause" "\0"
     "xlat" "\0"
# 77 "../tinycc/x86_64-asm.h"
     "lock" "\0"
     "rep" "\0"
     "repe" "\0"
     "repz" "\0"
     "repne" "\0"
     "repnz" "\0"

     "invd" "\0"
     "wbinvd" "\0"
     "cpuid" "\0"
     "wrmsr" "\0"
     "rdtsc" "\0"
     "rdmsr" "\0"
     "rdpmc" "\0"

     "syscall" "\0"
     "sysret" "\0"

     "ud2" "\0"
# 227 "../tinycc/x86_64-asm.h"
    "leave" "\0"
    "ret" "\0"
    "retq" "\0"


    "lret" "\0"
# 261 "../tinycc/x86_64-asm.h"
     "fucompp" "\0"
     "ftst" "\0"
     "fxam" "\0"
     "fld1" "\0"
     "fldl2t" "\0"
     "fldl2e" "\0"
     "fldpi" "\0"
     "fldlg2" "\0"
     "fldln2" "\0"
     "fldz" "\0"

     "f2xm1" "\0"
     "fyl2x" "\0"
     "fptan" "\0"
     "fpatan" "\0"
     "fxtract" "\0"
     "fprem1" "\0"
     "fdecstp" "\0"
     "fincstp" "\0"
     "fprem" "\0"
     "fyl2xp1" "\0"
     "fsqrt" "\0"
     "fsincos" "\0"
     "frndint" "\0"
     "fscale" "\0"
     "fsin" "\0"
     "fcos" "\0"
     "fchs" "\0"
     "fabs" "\0"
     "fninit" "\0"
     "fnclex" "\0"
     "fnop" "\0"
     "fwait" "\0"
# 325 "../tinycc/x86_64-asm.h"
    "fxch" "\0"
# 336 "../tinycc/x86_64-asm.h"
    "fnstsw" "\0"
# 418 "../tinycc/x86_64-asm.h"
    "emms" "\0"
# 239 "../tinycc/i386-tok.h" 2
# 250 "../tinycc/i386-tok.h"
# 1 "../tinycc/x86_64-asm.h" 1
# 94 "../tinycc/x86_64-asm.h"
     "sysretq" "\0"
# 220 "../tinycc/x86_64-asm.h"
    "ljmpw" "\0"
    "ljmpl" "\0"




    "enter" "\0"
# 236 "../tinycc/x86_64-asm.h"
    "loopne" "\0"
    "loopnz" "\0"
    "loope" "\0"
    "loopz" "\0"
    "loop" "\0"
    "jecxz" "\0"
# 296 "../tinycc/x86_64-asm.h"
    "fld" "\0"
    "fldl" "\0"
    "flds" "\0"

    "fildl" "\0"
    "fildq" "\0"
    "fildll" "\0"
    "fldt" "\0"
    "fbld" "\0"


    "fst" "\0"
    "fstl" "\0"
    "fsts" "\0"
    "fstps" "\0"

    "fstpl" "\0"
    "fist" "\0"
    "fistp" "\0"
    "fistl" "\0"
    "fistpl" "\0"

    "fstp" "\0"
    "fistpq" "\0"
    "fistpll" "\0"
    "fstpt" "\0"
    "fbstp" "\0"






    "fucom" "\0"
    "fucomp" "\0"

    "finit" "\0"
    "fldcw" "\0"
    "fnstcw" "\0"
    "fstcw" "\0"



    "fstsw" "\0"


    "fclex" "\0"
    "fnstenv" "\0"
    "fstenv" "\0"
    "fldenv" "\0"
    "fnsave" "\0"
    "fsave" "\0"
    "frstor" "\0"
    "ffree" "\0"
    "ffreep" "\0"
    "fxsave" "\0"
    "fxrstor" "\0"




    "fxsaveq" "\0"
    "fxrstorq" "\0"


    "arpl" "\0"

    "lgdt" "\0"
    "lgdtq" "\0"
    "lidt" "\0"
    "lidtq" "\0"
    "lldt" "\0"
    "lmsw" "\0"

    "ltr" "\0"
    "sgdt" "\0"
    "sgdtq" "\0"
    "sidt" "\0"
    "sidtq" "\0"
    "sldt" "\0"
    "smsw" "\0"
    "str" "\0"


    "verr" "\0"
    "verw" "\0"
    "swapgs" "\0"



    "bswap" "\0"
    "bswapl" "\0"
    "bswapq" "\0"



    "invlpg" "\0"


    "cmpxchg8b" "\0"


    "cmpxchg16b" "\0"




    "fcmovb" "\0"
    "fcmove" "\0"
    "fcmovbe" "\0"
    "fcmovu" "\0"
    "fcmovnb" "\0"
    "fcmovne" "\0"
    "fcmovnbe" "\0"
    "fcmovnu" "\0"

    "fucomi" "\0"
    "fcomi" "\0"
    "fucomip" "\0"
    "fcomip" "\0"



    "movd" "\0"
# 432 "../tinycc/x86_64-asm.h"
    "packssdw" "\0"
    "packsswb" "\0"
    "packuswb" "\0"
    "paddb" "\0"
    "paddw" "\0"
    "paddd" "\0"
    "paddsb" "\0"
    "paddsw" "\0"
    "paddusb" "\0"
    "paddusw" "\0"
    "pand" "\0"
    "pandn" "\0"
    "pcmpeqb" "\0"
    "pcmpeqw" "\0"
    "pcmpeqd" "\0"
    "pcmpgtb" "\0"
    "pcmpgtw" "\0"
    "pcmpgtd" "\0"
    "pmaddwd" "\0"
    "pmulhw" "\0"
    "pmullw" "\0"
    "por" "\0"
    "psllw" "\0"

    "pslld" "\0"

    "psllq" "\0"

    "psraw" "\0"

    "psrad" "\0"

    "psrlw" "\0"

    "psrld" "\0"

    "psrlq" "\0"

    "psubb" "\0"
    "psubw" "\0"
    "psubd" "\0"
    "psubsb" "\0"
    "psubsw" "\0"
    "psubusb" "\0"
    "psubusw" "\0"
    "punpckhbw" "\0"
    "punpckhwd" "\0"
    "punpckhdq" "\0"
    "punpcklbw" "\0"
    "punpcklwd" "\0"
    "punpckldq" "\0"
    "pxor" "\0"


    "movups" "\0"

    "movaps" "\0"

    "movhps" "\0"

    "addps" "\0"
    "cvtpi2ps" "\0"
    "cvtps2pi" "\0"
    "cvttps2pi" "\0"
    "divps" "\0"
    "maxps" "\0"
    "minps" "\0"
    "mulps" "\0"
    "pavgb" "\0"
    "pavgw" "\0"
    "pmaxsw" "\0"
    "pmaxub" "\0"
    "pminsw" "\0"
    "pminub" "\0"
    "rcpss" "\0"
    "rsqrtps" "\0"
    "sqrtps" "\0"
    "subps" "\0"

    "prefetchnta" "\0"
    "prefetcht0" "\0"
    "prefetcht1" "\0"
    "prefetcht2" "\0"
    "prefetchw" "\0"
    "lfence" "\0"
    "mfence" "\0"
    "sfence" "\0"
    "clflush" "\0"
# 251 "../tinycc/i386-tok.h" 2
# 370 "../tinycc/tcctok.h" 2
# 62 "../tinycc/tccpp.c" 2

;


static const unsigned char tok_two_chars[] =



 {
    '<','=', 0x9e,
    '>','=', 0x9d,
    '!','=', 0x95,
    '&','&', 0x90,
    '|','|', 0x91,
    '+','+', 0x82,
    '-','-', 0x80,
    '=','=', 0x94,
    '<','<', '<',
    '>','>', '>',
    '+','=', 0xb0,
    '-','=', 0xb1,
    '*','=', 0xb2,
    '/','=', 0xb3,
    '%','=', 0xb4,
    '&','=', 0xb5,
    '^','=', 0xb7,
    '|','=', 0xb6,
    '-','>', 0xa0,
    '.','.', 0xa2,
    '#','#', 0xa3,
    0
};

static void next_nomacro(void);

static void skip(int c)
{
    if (tok != c)
        _tcc_error("'%c' expected (got \"%s\")", c, get_tok_str(tok, &tokc));
    next();
}

static void expect(const char *msg)
{
    _tcc_error("%s expected", msg);
}
# 140 "../tinycc/tccpp.c"
typedef struct TinyAlloc {
    unsigned  limit;
    unsigned  size;
    uint8_t *buffer;
    uint8_t *p;
    unsigned  nb_allocs;
    struct TinyAlloc *next, *top;






} TinyAlloc;

typedef struct tal_header_t {
    unsigned  size;




} tal_header_t;



static TinyAlloc *tal_new(TinyAlloc **pal, unsigned limit, unsigned size)
{
    TinyAlloc *al = tcc_mallocz(sizeof(TinyAlloc));
    al->p = al->buffer = tcc_malloc(size);
    al->limit = limit;
    al->size = size;
    if (pal) *pal = al;
    return al;
}

static void tal_delete(TinyAlloc *al)
{
    TinyAlloc *next;

tail_call:
    if (!al)
        return;
# 206 "../tinycc/tccpp.c"
    next = al->next;
    tcc_free(al->buffer);
    tcc_free(al);
    al = next;
    goto tail_call;
}

static void tal_free_impl(TinyAlloc *al, void *p )
{
    if (!p)
        return;
tail_call:
    if (al->buffer <= (uint8_t *)p && (uint8_t *)p < al->buffer + al->size) {
# 229 "../tinycc/tccpp.c"
        al->nb_allocs--;
        if (!al->nb_allocs)
            al->p = al->buffer;
    } else if (al->next) {
        al = al->next;
        goto tail_call;
    }
    else
        tcc_free(p);
}

static void *tal_realloc_impl(TinyAlloc **pal, void *p, unsigned size )
{
    tal_header_t *header;
    void *ret;
    int is_own;
    unsigned adj_size = (size + 3) & -4;
    TinyAlloc *al = *pal;

tail_call:
    is_own = (al->buffer <= (uint8_t *)p && (uint8_t *)p < al->buffer + al->size);
    if ((!p || is_own) && size <= al->limit) {
        if (al->p - al->buffer + adj_size + sizeof(tal_header_t) < al->size) {
            header = (tal_header_t *)al->p;
            header->size = adj_size;






            ret = al->p + sizeof(tal_header_t);
            al->p += adj_size + sizeof(tal_header_t);
            if (is_own) {
                header = (((tal_header_t *)p) - 1);
                if (p) memcpy(ret, p, header->size);



            } else {
                al->nb_allocs++;
            }







            return ret;
        } else if (is_own) {
            al->nb_allocs--;
            ret = tal_realloc_impl(&*pal, 0, size);
            header = (((tal_header_t *)p) - 1);
            if (p) memcpy(ret, p, header->size);



            return ret;
        }
        if (al->next) {
            al = al->next;
        } else {
            TinyAlloc *bottom = al, *next = al->top ? al->top : al;

            al = tal_new(pal, next->limit, next->size * 2);
            al->next = next;
            bottom->top = al;
        }
        goto tail_call;
    }
    if (is_own) {
        al->nb_allocs--;
        ret = tcc_malloc(size);
        header = (((tal_header_t *)p) - 1);
        if (p) memcpy(ret, p, header->size);



    } else if (al->next) {
        al = al->next;
        goto tail_call;
    } else
        ret = tcc_realloc(p, size);



    return ret;
}





static void cstr_realloc(CString *cstr, int new_size)
{
    int size;

    size = cstr->size_allocated;
    if (size < 8)
        size = 8;
    while (size < new_size)
        size = size * 2;
    cstr->data = tcc_realloc(cstr->data, size);
    cstr->size_allocated = size;
}


static inline void cstr_ccat(CString *cstr, int ch)
{
    int size;
    size = cstr->size + 1;
    if (size > cstr->size_allocated)
        cstr_realloc(cstr, size);
    ((unsigned char *)cstr->data)[size - 1] = ch;
    cstr->size = size;
}

static void cstr_cat(CString *cstr, const char *str, int len)
{
    int size;
    if (len <= 0)
        len = strlen(str) + 1 + len;
    size = cstr->size + len;
    if (size > cstr->size_allocated)
        cstr_realloc(cstr, size);
    memmove(((unsigned char *)cstr->data) + cstr->size, str, len);
    cstr->size = size;
}


static void cstr_wccat(CString *cstr, int ch)
{
    int size;
    size = cstr->size + sizeof(nwchar_t);
    if (size > cstr->size_allocated)
        cstr_realloc(cstr, size);
    *(nwchar_t *)(((unsigned char *)cstr->data) + size - sizeof(nwchar_t)) = ch;
    cstr->size = size;
}

static void cstr_new(CString *cstr)
{
    memset(cstr, 0, sizeof(CString));
}


static void cstr_free(CString *cstr)
{
    tcc_free(cstr->data);
    cstr_new(cstr);
}


static void cstr_reset(CString *cstr)
{
    cstr->size = 0;
}

static int cstr_printf(CString *cstr, const char *fmt, ...)
{
    va_list v;
    int len, size;

    __builtin_va_start(v, fmt);
    len = vsnprintf(((void *)0), 0, fmt, v);
    __builtin_va_end(v);
    size = cstr->size + len + 1;
    if (size > cstr->size_allocated)
        cstr_realloc(cstr, size);
    __builtin_va_start(v, fmt);
    vsnprintf((char*)cstr->data + cstr->size, size, fmt, v);
    __builtin_va_end(v);
    cstr->size += len;
    return len;
}


static void add_char(CString *cstr, int c)
{
    if (c == '\'' || c == '\"' || c == '\\') {

        cstr_ccat(cstr, '\\');
    }
    if (c >= 32 && c <= 126) {
        cstr_ccat(cstr, c);
    } else {
        cstr_ccat(cstr, '\\');
        if (c == '\n') {
            cstr_ccat(cstr, 'n');
        } else {
            cstr_ccat(cstr, '0' + ((c >> 6) & 7));
            cstr_ccat(cstr, '0' + ((c >> 3) & 7));
            cstr_ccat(cstr, '0' + (c & 7));
        }
    }
}



static TokenSym *tok_alloc_new(TokenSym **pts, const char *str, int len)
{
    TokenSym *ts, **ptable;
    int i;

    if (tok_ident >= 0x10000000)
        _tcc_error("memory full (symbols)");


    i = tok_ident - 256;
    if ((i % 512) == 0) {
        ptable = tcc_realloc(table_ident, (i + 512) * sizeof(TokenSym *));
        table_ident = ptable;
    }

    ts = tal_realloc_impl(&toksym_alloc, 0, sizeof(TokenSym) + len);
    table_ident[i] = ts;
    ts->tok = tok_ident++;
    ts->sym_define = ((void *)0);
    ts->sym_label = ((void *)0);
    ts->sym_struct = ((void *)0);
    ts->sym_identifier = ((void *)0);
    ts->len = len;
    ts->hash_next = ((void *)0);
    memcpy(ts->str, str, len);
    ts->str[len] = '\0';
    *pts = ts;
    return ts;
}






static TokenSym *tok_alloc(const char *str, int len)
{
    TokenSym *ts, **pts;
    int i;
    unsigned int h;

    h = 1;
    for(i=0;i<len;i++)
        h = ((h) + ((h) << 5) + ((h) >> 27) + (((unsigned char *)str)[i]));
    h &= (16384 - 1);

    pts = &hash_ident[h];
    for(;;) {
        ts = *pts;
        if (!ts)
            break;
        if (ts->len == len && !memcmp(ts->str, str, len))
            return ts;
        pts = &(ts->hash_next);
    }
    return tok_alloc_new(pts, str, len);
}



static const char *get_tok_str(int v, CValue *cv)
{
    char *p;
    int i, len;

    cstr_reset(&cstr_buf);
    p = cstr_buf.data;

    switch(v) {
    case 0xc2:
    case 0xc3:
    case 0xc6:
    case 0xc7:
    case 0xc4:
    case 0xc5:




        sprintf(p, "%llu", (unsigned long long)cv->i);

        break;
    case 0xc1:
        cstr_ccat(&cstr_buf, 'L');
    case 0xc0:
        cstr_ccat(&cstr_buf, '\'');
        add_char(&cstr_buf, cv->i);
        cstr_ccat(&cstr_buf, '\'');
        cstr_ccat(&cstr_buf, '\0');
        break;
    case 0xcd:
    case 0xce:
        return (char*)cv->str.data;
    case 0xc9:
        cstr_ccat(&cstr_buf, 'L');
    case 0xc8:
        cstr_ccat(&cstr_buf, '\"');
        if (v == 0xc8) {
            len = cv->str.size - 1;
            for(i=0;i<len;i++)
                add_char(&cstr_buf, ((unsigned char *)cv->str.data)[i]);
        } else {
            len = (cv->str.size / sizeof(nwchar_t)) - 1;
            for(i=0;i<len;i++)
                add_char(&cstr_buf, ((nwchar_t *)cv->str.data)[i]);
        }
        cstr_ccat(&cstr_buf, '\"');
        cstr_ccat(&cstr_buf, '\0');
        break;

    case 0xca:
        cstr_cat(&cstr_buf, "<float>", 0);
        break;
    case 0xcb:
	cstr_cat(&cstr_buf, "<double>", 0);
	break;
    case 0xcc:
	cstr_cat(&cstr_buf, "<long double>", 0);
	break;
    case 0xcf:
	cstr_cat(&cstr_buf, "<linenumber>", 0);
	break;


    case 0x9c:
        v = '<';
        goto addv;
    case 0x9f:
        v = '>';
        goto addv;
    case 0xa1:
        return strcpy(p, "...");
    case 0xb8:
        return strcpy(p, "<<=");
    case 0xb9:
        return strcpy(p, ">>=");
    case (-1):
        return strcpy(p, "<eof>");
    default:
        if (v < 256) {

            const unsigned char *q = tok_two_chars;
            while (*q) {
                if (q[2] == v) {
                    *p++ = q[0];
                    *p++ = q[1];
                    *p = '\0';
                    return cstr_buf.data;
                }
                q += 3;
            }
        if (v >= 127) {
            sprintf(cstr_buf.data, "<%02x>", v);
            return cstr_buf.data;
        }
        addv:
            *p++ = v;
            *p = '\0';
        } else if (v < tok_ident) {
            return table_ident[v - 256]->str;
        } else if (v >= 0x10000000) {

            sprintf(p, "L.%u", v - 0x10000000);
        } else {

            return ((void *)0);
        }
        break;
    }
    return cstr_buf.data;
}



static int handle_eob(void)
{
    BufferedFile *bf = file;
    int len;


    if (bf->buf_ptr >= bf->buf_end) {
        if (bf->fd >= 0) {



            len = 8192;

            len = read(bf->fd, bf->buffer, len);
            if (len < 0)
                len = 0;
        } else {
            len = 0;
        }
        tcc_state->total_bytes += len;
        bf->buf_ptr = bf->buffer;
        bf->buf_end = bf->buffer + len;
        *bf->buf_end = '\\';
    }
    if (bf->buf_ptr < bf->buf_end) {
        return bf->buf_ptr[0];
    } else {
        bf->buf_ptr = bf->buf_end;
        return (-1);
    }
}


static inline void inp(void)
{
    ch = *(++(file->buf_ptr));

    if (ch == '\\')
        ch = handle_eob();
}


static int handle_stray_noerror(void)
{
    while (ch == '\\') {
        inp();
        if (ch == '\n') {
            file->line_num++;
            inp();
        } else if (ch == '\r') {
            inp();
            if (ch != '\n')
                goto fail;
            file->line_num++;
            inp();
        } else {
        fail:
            return 1;
        }
    }
    return 0;
}

static void handle_stray(void)
{
    if (handle_stray_noerror())
        _tcc_error("stray '\\' in program");
}



static int handle_stray1(uint8_t *p)
{
    int c;

    file->buf_ptr = p;
    if (p >= file->buf_end) {
        c = handle_eob();
        if (c != '\\')
            return c;
        p = file->buf_ptr;
    }
    ch = *p;
    if (handle_stray_noerror()) {
        if (!(parse_flags & 0x0020))
            _tcc_error("stray '\\' in program");
        *--file->buf_ptr = '\\';
    }
    p = file->buf_ptr;
    c = *p;
    return c;
}
# 722 "../tinycc/tccpp.c"
static void minp(void)
{
    inp();
    if (ch == '\\')
        handle_stray();
}


static uint8_t *parse_line_comment(uint8_t *p)
{
    int c;

    p++;
    for(;;) {
        c = *p;
    redo:
        if (c == '\n' || c == (-1)) {
            break;
        } else if (c == '\\') {
            file->buf_ptr = p;
            c = handle_eob();
            p = file->buf_ptr;
            if (c == '\\') {
                { p++; c = *p; if (c == '\\') { file->buf_ptr = p; c = handle_eob(); p = file->buf_ptr; }};
                if (c == '\n') {
                    file->line_num++;
                    { p++; c = *p; if (c == '\\') { file->buf_ptr = p; c = handle_eob(); p = file->buf_ptr; }};
                } else if (c == '\r') {
                    { p++; c = *p; if (c == '\\') { file->buf_ptr = p; c = handle_eob(); p = file->buf_ptr; }};
                    if (c == '\n') {
                        file->line_num++;
                        { p++; c = *p; if (c == '\\') { file->buf_ptr = p; c = handle_eob(); p = file->buf_ptr; }};
                    }
                }
            } else {
                goto redo;
            }
        } else {
            p++;
        }
    }
    return p;
}


static uint8_t *parse_comment(uint8_t *p)
{
    int c;

    p++;
    for(;;) {

        for(;;) {
            c = *p;
            if (c == '\n' || c == '*' || c == '\\')
                break;
            p++;
            c = *p;
            if (c == '\n' || c == '*' || c == '\\')
                break;
            p++;
        }

        if (c == '\n') {
            file->line_num++;
            p++;
        } else if (c == '*') {
            p++;
            for(;;) {
                c = *p;
                if (c == '*') {
                    p++;
                } else if (c == '/') {
                    goto end_of_comment;
                } else if (c == '\\') {
                    file->buf_ptr = p;
                    c = handle_eob();
                    p = file->buf_ptr;
                    if (c == (-1))
                        _tcc_error("unexpected end of file in comment");
                    if (c == '\\') {

                        while (c == '\\') {
                            { p++; c = *p; if (c == '\\') { file->buf_ptr = p; c = handle_eob(); p = file->buf_ptr; }};
                            if (c == '\n') {
                                file->line_num++;
                                { p++; c = *p; if (c == '\\') { file->buf_ptr = p; c = handle_eob(); p = file->buf_ptr; }};
                            } else if (c == '\r') {
                                { p++; c = *p; if (c == '\\') { file->buf_ptr = p; c = handle_eob(); p = file->buf_ptr; }};
                                if (c == '\n') {
                                    file->line_num++;
                                    { p++; c = *p; if (c == '\\') { file->buf_ptr = p; c = handle_eob(); p = file->buf_ptr; }};
                                }
                            } else {
                                goto after_star;
                            }
                        }
                    }
                } else {
                    break;
                }
            }
        after_star: ;
        } else {

            file->buf_ptr = p;
            c = handle_eob();
            p = file->buf_ptr;
            if (c == (-1)) {
                _tcc_error("unexpected end of file in comment");
            } else if (c == '\\') {
                p++;
            }
        }
    }
 end_of_comment:
    p++;
    return p;
}

static int set_idnum(int c, int val)
{
    int prev = isidnum_table[c - (-1)];
    isidnum_table[c - (-1)] = val;
    return prev;
}



static inline void skip_spaces(void)
{
    while (isidnum_table[ch - (-1)] & 1)
        minp();
}

static inline int check_space(int t, int *spc)
{
    if (t < 256 && (isidnum_table[t - (-1)] & 1)) {
        if (*spc)
            return 1;
        *spc = 1;
    } else
        *spc = 0;
    return 0;
}


static uint8_t *parse_pp_string(uint8_t *p,
                                int sep, CString *str)
{
    int c;
    p++;
    for(;;) {
        c = *p;
        if (c == sep) {
            break;
        } else if (c == '\\') {
            file->buf_ptr = p;
            c = handle_eob();
            p = file->buf_ptr;
            if (c == (-1)) {
            unterminated_string:

                _tcc_error("missing terminating %c character", sep);
            } else if (c == '\\') {

                { p++; c = *p; if (c == '\\') { file->buf_ptr = p; c = handle_eob(); p = file->buf_ptr; }};
                if (c == '\n') {
                    file->line_num++;
                    p++;
                } else if (c == '\r') {
                    { p++; c = *p; if (c == '\\') { file->buf_ptr = p; c = handle_eob(); p = file->buf_ptr; }};
                    if (c != '\n')
                        expect("'\n' after '\r'");
                    file->line_num++;
                    p++;
                } else if (c == (-1)) {
                    goto unterminated_string;
                } else {
                    if (str) {
                        cstr_ccat(str, '\\');
                        cstr_ccat(str, c);
                    }
                    p++;
                }
            }
        } else if (c == '\n') {
            file->line_num++;
            goto add_char;
        } else if (c == '\r') {
            { p++; c = *p; if (c == '\\') { file->buf_ptr = p; c = handle_eob(); p = file->buf_ptr; }};
            if (c != '\n') {
                if (str)
                    cstr_ccat(str, '\r');
            } else {
                file->line_num++;
                goto add_char;
            }
        } else {
        add_char:
            if (str)
                cstr_ccat(str, c);
            p++;
        }
    }
    p++;
    return p;
}



static void preprocess_skip(void)
{
    int a, start_of_line, c, in_warn_or_error;
    uint8_t *p;

    p = file->buf_ptr;
    a = 0;
redo_start:
    start_of_line = 1;
    in_warn_or_error = 0;
    for(;;) {
    redo_no_start:
        c = *p;
        switch(c) {
        case ' ':
        case '\t':
        case '\f':
        case '\v':
        case '\r':
            p++;
            goto redo_no_start;
        case '\n':
            file->line_num++;
            p++;
            goto redo_start;
        case '\\':
            file->buf_ptr = p;
            c = handle_eob();
            if (c == (-1)) {
                expect("#endif");
            } else if (c == '\\') {
                ch = file->buf_ptr[0];
                handle_stray_noerror();
            }
            p = file->buf_ptr;
            goto redo_no_start;

        case '\"':
        case '\'':
            if (in_warn_or_error)
                goto _default;
            p = parse_pp_string(p, c, ((void *)0));
            break;

        case '/':
            if (in_warn_or_error)
                goto _default;
            file->buf_ptr = p;
            ch = *p;
            minp();
            p = file->buf_ptr;
            if (ch == '*') {
                p = parse_comment(p);
            } else if (ch == '/') {
                p = parse_line_comment(p);
            }
            break;
        case '#':
            p++;
            if (start_of_line) {
                file->buf_ptr = p;
                next_nomacro();
                p = file->buf_ptr;
                if (a == 0 &&
                    (tok == TOK_ELSE || tok == TOK_ELIF || tok == TOK_ENDIF))
                    goto the_end;
                if (tok == TOK_IF || tok == TOK_IFDEF || tok == TOK_IFNDEF)
                    a++;
                else if (tok == TOK_ENDIF)
                    a--;
                else if( tok == TOK_ERROR || tok == TOK_WARNING)
                    in_warn_or_error = 1;
                else if (tok == 10)
                    goto redo_start;
                else if (parse_flags & 0x0008)
                    p = parse_line_comment(p - 1);
            } else if (parse_flags & 0x0008)
                p = parse_line_comment(p - 1);
            break;
_default:
        default:
            p++;
            break;
        }
        start_of_line = 0;
    }
 the_end: ;
    file->buf_ptr = p;
}
# 1058 "../tinycc/tccpp.c"
static inline void tok_str_new(TokenString *s)
{
    s->str = ((void *)0);
    s->len = s->lastlen = 0;
    s->allocated_len = 0;
    s->last_line_num = -1;
}

static TokenString *tok_str_alloc(void)
{
    TokenString *str = tal_realloc_impl(&tokstr_alloc, 0, sizeof *str);
    tok_str_new(str);
    return str;
}

static int *tok_str_dup(TokenString *s)
{
    int *str;

    str = tal_realloc_impl(&tokstr_alloc, 0, s->len * sizeof(int));
    memcpy(str, s->str, s->len * sizeof(int));
    return str;
}

static void tok_str_free_str(int *str)
{
    tal_free_impl(tokstr_alloc, str);
}

static void tok_str_free(TokenString *str)
{
    tok_str_free_str(str->str);
    tal_free_impl(tokstr_alloc, str);
}

static int *tok_str_realloc(TokenString *s, int new_size)
{
    int *str, size;

    size = s->allocated_len;
    if (size < 16)
        size = 16;
    while (size < new_size)
        size = size * 2;
    if (size > s->allocated_len) {
        str = tal_realloc_impl(&tokstr_alloc, s->str, size * sizeof(int));
        s->allocated_len = size;
        s->str = str;
    }
    return s->str;
}

static void tok_str_add(TokenString *s, int t)
{
    int len, *str;

    len = s->len;
    str = s->str;
    if (len >= s->allocated_len)
        str = tok_str_realloc(s, len + 1);
    str[len++] = t;
    s->len = len;
}

static void begin_macro(TokenString *str, int alloc)
{
    str->alloc = alloc;
    str->prev = macro_stack;
    str->prev_ptr = macro_ptr;
    str->save_line_num = file->line_num;
    macro_ptr = str->str;
    macro_stack = str;
}

static void end_macro(void)
{
    TokenString *str = macro_stack;
    macro_stack = str->prev;
    macro_ptr = str->prev_ptr;
    file->line_num = str->save_line_num;
    if (str->alloc != 0) {
        if (str->alloc == 2)
            str->str = ((void *)0);
        tok_str_free(str);
    }
}

static void tok_str_add2(TokenString *s, int t, CValue *cv)
{
    int len, *str;

    len = s->lastlen = s->len;
    str = s->str;


    if (len + 4 >= s->allocated_len)
        str = tok_str_realloc(s, len + 4 + 1);
    str[len++] = t;
    switch(t) {
    case 0xc2:
    case 0xc3:
    case 0xc0:
    case 0xc1:
    case 0xca:
    case 0xcf:




        str[len++] = cv->tab[0];
        break;
    case 0xcd:
    case 0xce:
    case 0xc8:
    case 0xc9:
        {

            size_t nb_words =
                1 + (cv->str.size + sizeof(int) - 1) / sizeof(int);
            if (len + nb_words >= s->allocated_len)
                str = tok_str_realloc(s, len + nb_words + 1);
            str[len] = cv->str.size;
            memcpy(&str[len + 1], cv->str.data, cv->str.size);
            len += nb_words;
        }
        break;
    case 0xcb:
    case 0xc4:
    case 0xc5:

    case 0xc6:
    case 0xc7:




        str[len++] = cv->tab[0];
        str[len++] = cv->tab[1];
        break;






    case 0xcc:
        str[len++] = cv->tab[0];
        str[len++] = cv->tab[1];
        str[len++] = cv->tab[2];
        str[len++] = cv->tab[3];



        break;
    default:
        break;
    }
    s->len = len;
}


static void tok_str_add_tok(TokenString *s)
{
    CValue cval;


    if (file->line_num != s->last_line_num) {
        s->last_line_num = file->line_num;
        cval.i = s->last_line_num;
        tok_str_add2(s, 0xcf, &cval);
    }
    tok_str_add2(s, tok, &tokc);
}


static inline void tok_get(int *t, const int **pp, CValue *cv)
{
    const int *p = *pp;
    int n, *tab;

    tab = cv->tab;
    switch(*t = *p++) {



    case 0xc2:
    case 0xc0:
    case 0xc1:
    case 0xcf:
        cv->i = *p++;
        break;



    case 0xc3:
        cv->i = (unsigned)*p++;
        break;
    case 0xca:
	tab[0] = *p++;
	break;
    case 0xc8:
    case 0xc9:
    case 0xcd:
    case 0xce:
        cv->str.size = *p++;
        cv->str.data = p;
        p += (cv->str.size + sizeof(int) - 1) / sizeof(int);
        break;
    case 0xcb:
    case 0xc4:
    case 0xc5:

    case 0xc6:
    case 0xc7:

        n = 2;
        goto copy;
    case 0xcc:

        n = 4;







    copy:
        do
            *tab++ = *p++;
        while (--n);
        break;
    default:
        break;
    }
    *pp = p;
}
# 1308 "../tinycc/tccpp.c"
static int macro_is_equal(const int *a, const int *b)
{
    CValue cv;
    int t;

    if (!a || !b)
        return 1;

    while (*a && *b) {

        cstr_reset(&macro_equal_buf);
        do { int _t = **(&a); if ((_t >= 0xc0 && _t <= 0xcf)) tok_get(&t, &a, &cv); else *(&t) = _t, ++*(&a); } while (0);
        cstr_cat(&macro_equal_buf, get_tok_str(t, &cv), 0);
        do { int _t = **(&b); if ((_t >= 0xc0 && _t <= 0xcf)) tok_get(&t, &b, &cv); else *(&t) = _t, ++*(&b); } while (0);
        if (strcmp(macro_equal_buf.data, get_tok_str(t, &cv)))
            return 0;
    }
    return !(*a || *b);
}


static inline void define_push(int v, int macro_type, int *str, Sym *first_arg)
{
    Sym *s, *o;

    o = define_find(v);
    s = sym_push2(&define_stack, v, macro_type, 0);
    s->d = str;
    s->next = first_arg;
    table_ident[v - 256]->sym_define = s;

    if (o && !macro_is_equal(o->d, s->d))
	_tcc_warning("%s redefined", get_tok_str(v, ((void *)0)));
}


static void define_undef(Sym *s)
{
    int v = s->v;
    if (v >= 256 && v < tok_ident)
        table_ident[v - 256]->sym_define = ((void *)0);
}

static inline Sym *define_find(int v)
{
    v -= 256;
    if ((unsigned)v >= (unsigned)(tok_ident - 256))
        return ((void *)0);
    return table_ident[v]->sym_define;
}


static void free_defines(Sym *b)
{
    while (define_stack != b) {
        Sym *top = define_stack;
        define_stack = top->prev;
        tok_str_free_str(top->d);
        define_undef(top);
        sym_free(top);
    }
}


static Sym *label_find(int v)
{
    v -= 256;
    if ((unsigned)v >= (unsigned)(tok_ident - 256))
        return ((void *)0);
    return table_ident[v]->sym_label;
}

static Sym *label_push(Sym **ptop, int v, int flags)
{
    Sym *s, **ps;
    s = sym_push2(ptop, v, 0, 0);
    s->r = flags;
    ps = &table_ident[v - 256]->sym_label;
    if (ptop == &global_label_stack) {


        while (*ps != ((void *)0))
            ps = &(*ps)->prev_tok;
    }
    s->prev_tok = *ps;
    *ps = s;
    return s;
}



static void label_pop(Sym **ptop, Sym *slast, int keep)
{
    Sym *s, *s1;
    for(s = *ptop; s != slast; s = s1) {
        s1 = s->prev;
        if (s->r == 2) {
            _tcc_warning("label '%s' declared but not used", get_tok_str(s->v, ((void *)0)));
        } else if (s->r == 1) {
                _tcc_error("label '%s' used but not defined",
                      get_tok_str(s->v, ((void *)0)));
        } else {
            if (s->c) {


                put_extern_sym(s, tcc_state->cur_text_section, s->jnext, 1);
            }
        }

        if (s->r != 3)
            table_ident[s->v - 256]->sym_label = s->prev_tok;
        if (!keep)
            sym_free(s);
        else
            s->r = 3;
    }
    if (!keep)
        *ptop = slast;
}


static void maybe_run_test(TCCState *s)
{
    const char *p;
    if (s->include_stack_ptr != s->include_stack)
        return;
    p = get_tok_str(tok, ((void *)0));
    if (0 != memcmp(p, "test_", 5))
        return;
    if (0 != --s->run_test)
        return;
    fprintf(s->ppfp, &"\n[%s]\n"[!(s->dflag & 32)], p), fflush(s->ppfp);
    define_push(tok, 0, ((void *)0), ((void *)0));
}


static int expr_preprocess(void)
{
    int c, t;
    TokenString *str;

    str = tok_str_alloc();
    pp_expr = 1;
    while (tok != 10 && tok != (-1)) {
        next();
      redo:
        if (tok == TOK_DEFINED) {
            next_nomacro();
            t = tok;
            if (t == '(')
                next_nomacro();
            if (tok < 256)
                expect("identifier");
            if (tcc_state->run_test)
                maybe_run_test(tcc_state);
            c = define_find(tok) != 0;
            if (t == '(') {
                next_nomacro();
                if (tok != ')')
                    expect("')'");
            }
            tok = 0xc2;
            tokc.i = c;
        } else if (1 && tok == TOK___HAS_INCLUDE) {
            next();
            skip('(');
            while (tok != ')' && tok != (-1))
              next();
            if (tok != ')')
              expect("')'");
            tok = 0xc2;
            tokc.i = 0;
        } else if (tok >= 256) {

            t = tok;
            tok = 0xc2;
            tokc.i = 0;
            tok_str_add_tok(str);
            next();
            if (tok == '(')
                _tcc_error("function-like macro '%s' is not defined",
                          get_tok_str(t, ((void *)0)));
            goto redo;
        }
        tok_str_add_tok(str);
    }
    pp_expr = 0;
    tok_str_add(str, -1);
    tok_str_add(str, 0);

    begin_macro(str, 1);
    next();
    c = expr_const();
    end_macro();
    return c != 0;
}



static void parse_define(void)
{
    Sym *s, *first, **ps;
    int v, t, varg, is_vaargs, spc;
    int saved_parse_flags = parse_flags;

    v = tok;
    if (v < 256 || v == TOK_DEFINED)
        _tcc_error("invalid macro name '%s'", get_tok_str(tok, &tokc));

    first = ((void *)0);
    t = 0;




    parse_flags = ((parse_flags & ~0x0008) | 0x0010);

    next_nomacro();
    parse_flags &= ~0x0010;
    if (tok == '(') {
        int dotid = set_idnum('.', 0);
        next_nomacro();
        ps = &first;
        if (tok != ')') for (;;) {
            varg = tok;
            next_nomacro();
            is_vaargs = 0;
            if (varg == 0xa1) {
                varg = TOK___VA_ARGS__;
                is_vaargs = 1;
            } else if (tok == 0xa1 && tcc_state->gnu_ext) {
                is_vaargs = 1;
                next_nomacro();
            }
            if (varg < 256)
        bad_list:
                _tcc_error("bad macro parameter list");
            s = sym_push2(&define_stack, varg | 0x20000000, is_vaargs, 0);
            *ps = s;
            ps = &s->next;
            if (tok == ')')
                break;
            if (tok != ',' || is_vaargs)
                goto bad_list;
            next_nomacro();
        }
        parse_flags |= 0x0010;
        next_nomacro();
        t = 1;
        set_idnum('.', dotid);
    }

    tokstr_buf.len = 0;
    spc = 2;
    parse_flags |= 0x0020 | 0x0010 | 0x0004;





    while (tok != 10 && tok != (-1)) {

        if (0xa3 == tok) {
            if (2 == spc)
                goto bad_twosharp;
            if (1 == spc)
                --tokstr_buf.len;
            spc = 3;
	    tok = 0xa6;
        } else if ('#' == tok) {
            spc = 4;
        } else if (check_space(tok, &spc)) {
            goto skip;
        }
        tok_str_add2(&tokstr_buf, tok, &tokc);
    skip:
        next_nomacro();
    }

    parse_flags = saved_parse_flags;
    if (spc == 1)
        --tokstr_buf.len;
    tok_str_add(&tokstr_buf, 0);
    if (3 == spc)
bad_twosharp:
        _tcc_error("'##' cannot appear at either end of macro");
    define_push(v, t, tok_str_dup(&tokstr_buf), first);
}

static CachedInclude *search_cached_include(TCCState *s1, const char *filename, int add)
{
    const unsigned char *s;
    unsigned int h;
    CachedInclude *e;
    int i;

    h = 1;
    s = (unsigned char *) filename;
    while (*s) {



        h = ((h) + ((h) << 5) + ((h) >> 27) + (*s));

        s++;
    }
    h &= (32 - 1);

    i = s1->cached_includes_hash[h];
    for(;;) {
        if (i == 0)
            break;
        e = s1->cached_includes[i - 1];
        if (0 == strcmp(e->filename, filename))
            return e;
        i = e->hash_next;
    }
    if (!add)
        return ((void *)0);

    e = tcc_malloc(sizeof(CachedInclude) + strlen(filename));
    strcpy(e->filename, filename);
    e->ifndef_macro = e->once = 0;
    dynarray_add(&s1->cached_includes, &s1->nb_cached_includes, e);

    e->hash_next = s1->cached_includes_hash[h];
    s1->cached_includes_hash[h] = s1->nb_cached_includes;



    return e;
}

static void pragma_parse(TCCState *s1)
{
    next_nomacro();
    if (tok == TOK_push_macro || tok == TOK_pop_macro) {
        int t = tok, v;
        Sym *s;

        if (next(), tok != '(')
            goto pragma_err;
        if (next(), tok != 0xc8)
            goto pragma_err;
        v = tok_alloc(tokc.str.data, tokc.str.size - 1)->tok;
        if (next(), tok != ')')
            goto pragma_err;
        if (t == TOK_push_macro) {
            while (((void *)0) == (s = define_find(v)))
                define_push(v, 0, ((void *)0), ((void *)0));
            s->type.ref = s;
        } else {
            for (s = define_stack; s; s = s->prev)
                if (s->v == v && s->type.ref == s) {
                    s->type.ref = ((void *)0);
                    break;
                }
        }
        if (s)
            table_ident[v - 256]->sym_define = s->d ? s : ((void *)0);
        else
            _tcc_warning("unbalanced #pragma pop_macro");
        pp_debug_tok = t, pp_debug_symv = v;

    } else if (tok == TOK_once) {
        search_cached_include(s1, file->filename, 1)->once = pp_once;

    } else if (s1->output_type == 5) {

        unget_tok(' ');
        unget_tok(TOK_PRAGMA);
        unget_tok('#');
        unget_tok(10);

    } else if (tok == TOK_pack) {





        next();
        skip('(');
        if (tok == TOK_ASM_pop) {
            next();
            if (s1->pack_stack_ptr <= s1->pack_stack) {
            stk_error:
                _tcc_error("out of pack stack");
            }
            s1->pack_stack_ptr--;
        } else {
            int val = 0;
            if (tok != ')') {
                if (tok == TOK_ASM_push) {
                    next();
                    if (s1->pack_stack_ptr >= s1->pack_stack + 8 - 1)
                        goto stk_error;
                    s1->pack_stack_ptr++;
                    skip(',');
                }
                if (tok != 0xc2)
                    goto pragma_err;
                val = tokc.i;
                if (val < 1 || val > 16 || (val & (val - 1)) != 0)
                    goto pragma_err;
                next();
            }
            *s1->pack_stack_ptr = val;
        }
        if (tok != ')')
            goto pragma_err;

    } else if (tok == TOK_comment) {
        char *p; int t;
        next();
        skip('(');
        t = tok;
        next();
        skip(',');
        if (tok != 0xc8)
            goto pragma_err;
        p = tcc_strdup((char *)tokc.str.data);
        next();
        if (tok != ')')
            goto pragma_err;
        if (t == TOK_lib) {
            dynarray_add(&s1->pragma_libs, &s1->nb_pragma_libs, p);
        } else {
            if (t == TOK_option)
                tcc_set_options(s1, p);
            tcc_free(p);
        }

    } else if (s1->warn_unsupported) {
        _tcc_warning("#pragma %s is ignored", get_tok_str(tok, &tokc));
    }
    return;

pragma_err:
    _tcc_error("malformed #pragma directive");
    return;
}


static void preprocess(int is_bof)
{
    TCCState *s1 = tcc_state;
    int i, c, n, saved_parse_flags;
    char buf[1024], *q;
    Sym *s;

    saved_parse_flags = parse_flags;
    parse_flags = 0x0001
        | 0x0002
        | 0x0040
        | 0x0004
        | (parse_flags & 0x0008)
        ;

    next_nomacro();
 redo:
    switch(tok) {
    case TOK_DEFINE:
        pp_debug_tok = tok;
        next_nomacro();
        pp_debug_symv = tok;
        parse_define();
        break;
    case TOK_UNDEF:
        pp_debug_tok = tok;
        next_nomacro();
        pp_debug_symv = tok;
        s = define_find(tok);

        if (s)
            define_undef(s);
        break;
    case TOK_INCLUDE:
    case TOK_INCLUDE_NEXT:
        ch = file->buf_ptr[0];

        skip_spaces();
        if (ch == '<') {
            c = '>';
            goto read_name;
        } else if (ch == '\"') {
            c = ch;
        read_name:
            inp();
            q = buf;
            while (ch != c && ch != '\n' && ch != (-1)) {
                if ((q - buf) < sizeof(buf) - 1)
                    *q++ = ch;
                if (ch == '\\') {
                    if (handle_stray_noerror() == 0)
                        --q;
                } else
                    inp();
            }
            *q = '\0';
            minp();






        } else {
	    int len;



	    parse_flags = (0x0001
			   | 0x0004
			   | (parse_flags & 0x0008));
            next();
            buf[0] = '\0';
	    while (tok != 10) {
		pstrcat(buf, sizeof(buf), get_tok_str(tok, &tokc));
		next();
	    }
	    len = strlen(buf);

	    if ((len < 2 || ((buf[0] != '"' || buf[len-1] != '"') &&
			     (buf[0] != '<' || buf[len-1] != '>'))))
	        _tcc_error("'#include' expects \"FILENAME\" or <FILENAME>");
	    c = buf[len-1];
	    memmove(buf, buf + 1, len - 2);
	    buf[len - 2] = '\0';
        }

        if (s1->include_stack_ptr >= s1->include_stack + 32)
            _tcc_error("#include recursion too deep");

        *s1->include_stack_ptr++ = file;
        i = tok == TOK_INCLUDE_NEXT ? file->include_next_index + 1 : 0;
        n = 2 + s1->nb_include_paths + s1->nb_sysinclude_paths;
        for (; i < n; ++i) {
            char buf1[sizeof file->filename];
            CachedInclude *e;
            const char *path;

            if (i == 0) {

                if (!(buf[0] == '/'))
                    continue;
                buf1[0] = 0;

            } else if (i == 1) {

                if (c != '\"')
                    continue;

                path = file->true_filename;
                pstrncpy(buf1, path, tcc_basename(path) - path);

            } else {

                int j = i - 2, k = j - s1->nb_include_paths;
                path = k < 0 ? s1->include_paths[j] : s1->sysinclude_paths[k];
                pstrcpy(buf1, sizeof(buf1), path);
                pstrcat(buf1, sizeof(buf1), "/");
            }

            pstrcat(buf1, sizeof(buf1), buf);
            e = search_cached_include(s1, buf1, 0);
            if (e && (define_find(e->ifndef_macro) || e->once == pp_once)) {





                goto include_done;
            }

            if (tcc_open(s1, buf1) < 0)
                continue;

            file->include_next_index = i;




            if (s1->gen_deps) {
                BufferedFile *bf = file;
                while (i == 1 && (bf = bf->prev))
                    i = bf->include_next_index;

                if (n - i > s1->nb_sysinclude_paths)
                    dynarray_add(&s1->target_deps, &s1->nb_target_deps,
                        tcc_strdup(buf1));
            }

            tcc_debug_bincl(tcc_state);
            tok_flags |= 0x0002 | 0x0001;
            ch = file->buf_ptr[0];
            goto the_end;
        }
        _tcc_error("include file '%s' not found", buf);
include_done:
        --s1->include_stack_ptr;
        break;
    case TOK_IFNDEF:
        c = 1;
        goto do_ifdef;
    case TOK_IF:
        c = expr_preprocess();
        goto do_if;
    case TOK_IFDEF:
        c = 0;
    do_ifdef:
        next_nomacro();
        if (tok < 256)
            _tcc_error("invalid argument for '#if%sdef'", c ? "n" : "");
        if (is_bof) {
            if (c) {



                file->ifndef_macro = tok;
            }
        }
        c = (define_find(tok) != 0) ^ c;
    do_if:
        if (s1->ifdef_stack_ptr >= s1->ifdef_stack + 64)
            _tcc_error("memory full (ifdef)");
        *s1->ifdef_stack_ptr++ = c;
        goto test_skip;
    case TOK_ELSE:
        if (s1->ifdef_stack_ptr == s1->ifdef_stack)
            _tcc_error("#else without matching #if");
        if (s1->ifdef_stack_ptr[-1] & 2)
            _tcc_error("#else after #else");
        c = (s1->ifdef_stack_ptr[-1] ^= 3);
        goto test_else;
    case TOK_ELIF:
        if (s1->ifdef_stack_ptr == s1->ifdef_stack)
            _tcc_error("#elif without matching #if");
        c = s1->ifdef_stack_ptr[-1];
        if (c > 1)
            _tcc_error("#elif after #else");

        if (c == 1) {
            c = 0;
        } else {
            c = expr_preprocess();
            s1->ifdef_stack_ptr[-1] = c;
        }
    test_else:
        if (s1->ifdef_stack_ptr == file->ifdef_stack_ptr + 1)
            file->ifndef_macro = 0;
    test_skip:
        if (!(c & 1)) {
            preprocess_skip();
            is_bof = 0;
            goto redo;
        }
        break;
    case TOK_ENDIF:
        if (s1->ifdef_stack_ptr <= file->ifdef_stack_ptr)
            _tcc_error("#endif without matching #if");
        s1->ifdef_stack_ptr--;


        if (file->ifndef_macro &&
            s1->ifdef_stack_ptr == file->ifdef_stack_ptr) {
            file->ifndef_macro_saved = file->ifndef_macro;


            file->ifndef_macro = 0;
            while (tok != 10)
                next_nomacro();
            tok_flags |= 0x0004;
            goto the_end;
        }
        break;
    case 0xcd:
        n = strtoul((char*)tokc.str.data, &q, 10);
        goto _line_num;
    case TOK_LINE:
        next();
        if (tok != 0xc2)
    _line_err:
            _tcc_error("wrong #line format");
        n = tokc.i;
    _line_num:
        next();
        if (tok != 10) {
            if (tok == 0xc8) {
                if (file->true_filename == file->filename)
                    file->true_filename = tcc_strdup(file->filename);

                pstrcpy(buf, sizeof buf, file->true_filename);
                *tcc_basename(buf) = 0;
                pstrcat(buf, sizeof buf, (char *)tokc.str.data);
                tcc_debug_putfile(s1, buf);
            } else if (parse_flags & 0x0008)
                break;
            else
                goto _line_err;
            --n;
        }
        if (file->fd > 0)
            tcc_state->total_lines += file->line_num - n;
        file->line_num = n;
        break;
    case TOK_ERROR:
    case TOK_WARNING:
        c = tok;
        ch = file->buf_ptr[0];
        skip_spaces();
        q = buf;
        while (ch != '\n' && ch != (-1)) {
            if ((q - buf) < sizeof(buf) - 1)
                *q++ = ch;
            if (ch == '\\') {
                if (handle_stray_noerror() == 0)
                    --q;
            } else
                inp();
        }
        *q = '\0';
        if (c == TOK_ERROR)
            _tcc_error("#error %s", buf);
        else
            _tcc_warning("#warning %s", buf);
        break;
    case TOK_PRAGMA:
        pragma_parse(s1);
        break;
    case 10:
        goto the_end;
    default:

        if (saved_parse_flags & 0x0008)
            goto ignore;
        if (tok == '!' && is_bof)

            goto ignore;
        _tcc_warning("Ignoring unknown preprocessing directive #%s", get_tok_str(tok, &tokc));
    ignore:
        file->buf_ptr = parse_line_comment(file->buf_ptr - 1);
        goto the_end;
    }

    while (tok != 10)
        next_nomacro();
 the_end:
    parse_flags = saved_parse_flags;
}


static void parse_escape_string(CString *outstr, const uint8_t *buf, int is_long)
{
    int c, n;
    const uint8_t *p;

    p = buf;
    for(;;) {
        c = *p;
        if (c == '\0')
            break;
        if (c == '\\') {
            p++;

            c = *p;
            switch(c) {
            case '0': case '1': case '2': case '3':
            case '4': case '5': case '6': case '7':

                n = c - '0';
                p++;
                c = *p;
                if (isoct(c)) {
                    n = n * 8 + c - '0';
                    p++;
                    c = *p;
                    if (isoct(c)) {
                        n = n * 8 + c - '0';
                        p++;
                    }
                }
                c = n;
                goto add_char_nonext;
            case 'x':
            case 'u':
            case 'U':
                p++;
                n = 0;
                for(;;) {
                    c = *p;
                    if (c >= 'a' && c <= 'f')
                        c = c - 'a' + 10;
                    else if (c >= 'A' && c <= 'F')
                        c = c - 'A' + 10;
                    else if (isnum(c))
                        c = c - '0';
                    else
                        break;
                    n = n * 16 + c;
                    p++;
                }
                c = n;
                goto add_char_nonext;
            case 'a':
                c = '\a';
                break;
            case 'b':
                c = '\b';
                break;
            case 'f':
                c = '\f';
                break;
            case 'n':
                c = '\n';
                break;
            case 'r':
                c = '\r';
                break;
            case 't':
                c = '\t';
                break;
            case 'v':
                c = '\v';
                break;
            case 'e':
                if (!tcc_state->gnu_ext)
                    goto invalid_escape;
                c = 27;
                break;
            case '\'':
            case '\"':
            case '\\':
            case '?':
                break;
            default:
            invalid_escape:
                if (c >= '!' && c <= '~')
                    _tcc_warning("unknown escape sequence: \'\\%c\'", c);
                else
                    _tcc_warning("unknown escape sequence: \'\\x%x\'", c);
                break;
            }
        } else if (is_long && c >= 0x80) {



            int cont;
            int skip;
            int i;


            if (c < 0xC2) {
	            skip = 1; goto invalid_utf8_sequence;
            } else if (c <= 0xDF) {
	            cont = 1; n = c & 0x1f;
            } else if (c <= 0xEF) {
	            cont = 2; n = c & 0xf;
            } else if (c <= 0xF4) {
	            cont = 3; n = c & 0x7;
            } else {
	            skip = 1; goto invalid_utf8_sequence;
            }


            for (i = 1; i <= cont; i++) {
                int l = 0x80, h = 0xBF;


                if (i == 1) {
                    switch (c) {
                    case 0xE0: l = 0xA0; break;
                    case 0xED: h = 0x9F; break;
                    case 0xF0: l = 0x90; break;
                    case 0xF4: h = 0x8F; break;
                    }
                }

                if (p[i] < l || p[i] > h) {
                    skip = i; goto invalid_utf8_sequence;
                }

                n = (n << 6) | (p[i] & 0x3f);
            }


            p += 1 + cont;
            c = n;
            goto add_char_nonext;


        invalid_utf8_sequence:
            _tcc_warning("ill-formed UTF-8 subsequence starting with: \'\\x%x\'", c);
            c = 0xFFFD;
            p += skip;
            goto add_char_nonext;

        }
        p++;
    add_char_nonext:
        if (!is_long)
            cstr_ccat(outstr, c);
        else {
# 2220 "../tinycc/tccpp.c"
            cstr_wccat(outstr, c);

        }
    }

    if (!is_long)
        cstr_ccat(outstr, '\0');
    else
        cstr_wccat(outstr, '\0');
}

static void parse_string(const char *s, int len)
{
    uint8_t buf[1000], *p = buf;
    int is_long, sep;

    if ((is_long = *s == 'L'))
        ++s, --len;
    sep = *s++;
    len -= 2;
    if (len >= sizeof buf)
        p = tcc_malloc(len + 1);
    memcpy(p, s, len);
    p[len] = 0;

    cstr_reset(&tokcstr);
    parse_escape_string(&tokcstr, p, is_long);
    if (p != buf)
        tcc_free(p);

    if (sep == '\'') {
        int char_size, i, n, c;

        if (!is_long)
            tok = 0xc0, char_size = 1;
        else
            tok = 0xc1, char_size = sizeof(nwchar_t);
        n = tokcstr.size / char_size - 1;
        if (n < 1)
            _tcc_error("empty character constant");
        if (n > 1)
            _tcc_warning("multi-character character constant");
        for (c = i = 0; i < n; ++i) {
            if (is_long)
                c = ((nwchar_t *)tokcstr.data)[i];
            else
                c = (c << 8) | ((char *)tokcstr.data)[i];
        }
        tokc.i = c;
    } else {
        tokc.str.size = tokcstr.size;
        tokc.str.data = tokcstr.data;
        if (!is_long)
            tok = 0xc8;
        else
            tok = 0xc9;
    }
}





static void bn_lshift(unsigned int *bn, int shift, int or_val)
{
    int i;
    unsigned int v;
    for(i=0;i<2;i++) {
        v = bn[i];
        bn[i] = (v << shift) | or_val;
        or_val = v >> (32 - shift);
    }
}

static void bn_zero(unsigned int *bn)
{
    int i;
    for(i=0;i<2;i++) {
        bn[i] = 0;
    }
}



static void parse_number(const char *p)
{
    int b, t, shift, frac_bits, s, exp_val, ch;
    char *q;
    unsigned int bn[2];
    double d;


    q = token_buf;
    ch = *p++;
    t = ch;
    ch = *p++;
    *q++ = t;
    b = 10;
    if (t == '.') {
        goto float_frac_parse;
    } else if (t == '0') {
        if (ch == 'x' || ch == 'X') {
            q--;
            ch = *p++;
            b = 16;
        } else if (tcc_state->tcc_ext && (ch == 'b' || ch == 'B')) {
            q--;
            ch = *p++;
            b = 2;
        }
    }


    while (1) {
        if (ch >= 'a' && ch <= 'f')
            t = ch - 'a' + 10;
        else if (ch >= 'A' && ch <= 'F')
            t = ch - 'A' + 10;
        else if (isnum(ch))
            t = ch - '0';
        else
            break;
        if (t >= b)
            break;
        if (q >= token_buf + 1024) {
        num_too_long:
            _tcc_error("number too long");
        }
        *q++ = ch;
        ch = *p++;
    }
    if (ch == '.' ||
        ((ch == 'e' || ch == 'E') && b == 10) ||
        ((ch == 'p' || ch == 'P') && (b == 16 || b == 2))) {
        if (b != 10) {





            *q = '\0';
            if (b == 16)
                shift = 4;
            else
                shift = 1;
            bn_zero(bn);
            q = token_buf;
            while (1) {
                t = *q++;
                if (t == '\0') {
                    break;
                } else if (t >= 'a') {
                    t = t - 'a' + 10;
                } else if (t >= 'A') {
                    t = t - 'A' + 10;
                } else {
                    t = t - '0';
                }
                bn_lshift(bn, shift, t);
            }
            frac_bits = 0;
            if (ch == '.') {
                ch = *p++;
                while (1) {
                    t = ch;
                    if (t >= 'a' && t <= 'f') {
                        t = t - 'a' + 10;
                    } else if (t >= 'A' && t <= 'F') {
                        t = t - 'A' + 10;
                    } else if (t >= '0' && t <= '9') {
                        t = t - '0';
                    } else {
                        break;
                    }
                    if (t >= b)
                        _tcc_error("invalid digit");
                    bn_lshift(bn, shift, t);
                    frac_bits += shift;
                    ch = *p++;
                }
            }
            if (ch != 'p' && ch != 'P')
                expect("exponent");
            ch = *p++;
            s = 1;
            exp_val = 0;
            if (ch == '+') {
                ch = *p++;
            } else if (ch == '-') {
                s = -1;
                ch = *p++;
            }
            if (ch < '0' || ch > '9')
                expect("exponent digits");
            while (ch >= '0' && ch <= '9') {
                exp_val = exp_val * 10 + ch - '0';
                ch = *p++;
            }
            exp_val = exp_val * s;



            d = (double)bn[1] * 4294967296.0 + (double)bn[0];
            d = ldexp(d, exp_val - frac_bits);
            t = toup(ch);
            if (t == 'F') {
                ch = *p++;
                tok = 0xca;

                tokc.f = (float)d;
            } else if (t == 'L') {
                ch = *p++;




                tok = 0xcc;

                tokc.ld = (long double)d;

            } else {
                tok = 0xcb;
                tokc.d = d;
            }
        } else {

            if (ch == '.') {
                if (q >= token_buf + 1024)
                    goto num_too_long;
                *q++ = ch;
                ch = *p++;
            float_frac_parse:
                while (ch >= '0' && ch <= '9') {
                    if (q >= token_buf + 1024)
                        goto num_too_long;
                    *q++ = ch;
                    ch = *p++;
                }
            }
            if (ch == 'e' || ch == 'E') {
                if (q >= token_buf + 1024)
                    goto num_too_long;
                *q++ = ch;
                ch = *p++;
                if (ch == '-' || ch == '+') {
                    if (q >= token_buf + 1024)
                        goto num_too_long;
                    *q++ = ch;
                    ch = *p++;
                }
                if (ch < '0' || ch > '9')
                    expect("exponent digits");
                while (ch >= '0' && ch <= '9') {
                    if (q >= token_buf + 1024)
                        goto num_too_long;
                    *q++ = ch;
                    ch = *p++;
                }
            }
            *q = '\0';
            t = toup(ch);
            (*__error()) = 0;
            if (t == 'F') {
                ch = *p++;
                tok = 0xca;
                tokc.f = strtof(token_buf, ((void *)0));
            } else if (t == 'L') {
                ch = *p++;




                tok = 0xcc;
                tokc.ld = strtold(token_buf, ((void *)0));

            } else {
                tok = 0xcb;
                tokc.d = strtod(token_buf, ((void *)0));
            }
        }
    } else {
        unsigned long long n, n1;
        int lcount, ucount, ov = 0;
        const char *p1;


        *q = '\0';
        q = token_buf;
        if (b == 10 && *q == '0') {
            b = 8;
            q++;
        }
        n = 0;
        while(1) {
            t = *q++;

            if (t == '\0')
                break;
            else if (t >= 'a')
                t = t - 'a' + 10;
            else if (t >= 'A')
                t = t - 'A' + 10;
            else
                t = t - '0';
            if (t >= b)
                _tcc_error("invalid digit");
            n1 = n;
            n = n * b + t;

            if (n1 >= 0x1000000000000000ULL && n / b != n1)
                ov = 1;
        }



        lcount = ucount = 0;
        p1 = p;
        for(;;) {
            t = toup(ch);
            if (t == 'L') {
                if (lcount >= 2)
                    _tcc_error("three 'l's in integer constant");
                if (lcount && *(p - 1) != ch)
                    _tcc_error("incorrect integer suffix: %s", p1);
                lcount++;
                ch = *p++;
            } else if (t == 'U') {
                if (ucount >= 1)
                    _tcc_error("two 'u's in integer constant");
                ucount++;
                ch = *p++;
            } else {
                break;
            }
        }


        if (ucount == 0 && b == 10) {
            if (lcount <= (8 == 4)) {
                if (n >= 0x80000000U)
                    lcount = (8 == 4) + 1;
            }
            if (n >= 0x8000000000000000ULL)
                ov = 1, ucount = 1;
        } else {
            if (lcount <= (8 == 4)) {
                if (n >= 0x100000000ULL)
                    lcount = (8 == 4) + 1;
                else if (n >= 0x80000000U)
                    ucount = 1;
            }
            if (n >= 0x8000000000000000ULL)
                ucount = 1;
        }

        if (ov)
            _tcc_warning("integer constant overflow");

        tok = 0xc2;
	if (lcount) {
            tok = 0xc6;
            if (lcount == 2)
                tok = 0xc4;
	}
	if (ucount)
	    ++tok;
        tokc.i = n;
    }
    if (ch)
        _tcc_error("invalid number\n");
}
# 2605 "../tinycc/tccpp.c"
static inline void next_nomacro1(void)
{
    int t, c, is_long, len;
    TokenSym *ts;
    uint8_t *p, *p1;
    unsigned int h;

    p = file->buf_ptr;
 redo_no_start:
    c = *p;
    switch(c) {
    case ' ':
    case '\t':
        tok = c;
        p++;
 maybe_space:
        if (parse_flags & 0x0010)
            goto keep_tok_flags;
        while (isidnum_table[*p - (-1)] & 1)
            ++p;
        goto redo_no_start;
    case '\f':
    case '\v':
    case '\r':
        p++;
        goto redo_no_start;
    case '\\':

        c = handle_stray1(p);
        p = file->buf_ptr;
        if (c == '\\')
            goto parse_simple;
        if (c != (-1))
            goto redo_no_start;
        {
            TCCState *s1 = tcc_state;
            if ((parse_flags & 0x0004)
                && !(tok_flags & 0x0008)) {
                tok_flags |= 0x0008;
                tok = 10;
                goto keep_tok_flags;
            } else if (!(parse_flags & 0x0001)) {
                tok = (-1);
            } else if (s1->ifdef_stack_ptr != file->ifdef_stack_ptr) {
                _tcc_error("missing #endif");
            } else if (s1->include_stack_ptr == s1->include_stack) {

                tok = (-1);
            } else {
                tok_flags &= ~0x0008;




                if (tok_flags & 0x0004) {



                    search_cached_include(s1, file->filename, 1)
                        ->ifndef_macro = file->ifndef_macro_saved;
                    tok_flags &= ~0x0004;
                }


                tcc_debug_eincl(tcc_state);

                tcc_close();
                s1->include_stack_ptr--;
                p = file->buf_ptr;
                if (p == file->buffer)
                    tok_flags = 0x0002|0x0001;
                goto redo_no_start;
            }
        }
        break;

    case '\n':
        file->line_num++;
        tok_flags |= 0x0001;
        p++;
maybe_newline:
        if (0 == (parse_flags & 0x0004))
            goto redo_no_start;
        tok = 10;
        goto keep_tok_flags;

    case '#':

        { p++; c = *p; if (c == '\\') { c = handle_stray1(p); p = file->buf_ptr; }};
        if ((tok_flags & 0x0001) &&
            (parse_flags & 0x0001)) {
            file->buf_ptr = p;
            preprocess(tok_flags & 0x0002);
            p = file->buf_ptr;
            goto maybe_newline;
        } else {
            if (c == '#') {
                p++;
                tok = 0xa3;
            } else {
                if (parse_flags & 0x0008) {
                    p = parse_line_comment(p - 1);
                    goto redo_no_start;
                } else {
                    tok = '#';
                }
            }
        }
        break;


    case '$':
        if (!(isidnum_table[c - (-1)] & 2)
         || (parse_flags & 0x0008))
            goto parse_simple;

    case 'a': case 'b': case 'c': case 'd':
    case 'e': case 'f': case 'g': case 'h':
    case 'i': case 'j': case 'k': case 'l':
    case 'm': case 'n': case 'o': case 'p':
    case 'q': case 'r': case 's': case 't':
    case 'u': case 'v': case 'w': case 'x':
    case 'y': case 'z':
    case 'A': case 'B': case 'C': case 'D':
    case 'E': case 'F': case 'G': case 'H':
    case 'I': case 'J': case 'K':
    case 'M': case 'N': case 'O': case 'P':
    case 'Q': case 'R': case 'S': case 'T':
    case 'U': case 'V': case 'W': case 'X':
    case 'Y': case 'Z':
    case '_':
    parse_ident_fast:
        p1 = p;
        h = 1;
        h = ((h) + ((h) << 5) + ((h) >> 27) + (c));
        while (c = *++p, isidnum_table[c - (-1)] & (2|4))
            h = ((h) + ((h) << 5) + ((h) >> 27) + (c));
        len = p - p1;
        if (c != '\\') {
            TokenSym **pts;



            h &= (16384 - 1);
            pts = &hash_ident[h];
            for(;;) {
                ts = *pts;
                if (!ts)
                    break;
                if (ts->len == len && !memcmp(ts->str, p1, len))
                    goto token_found;
                pts = &(ts->hash_next);
            }
            ts = tok_alloc_new(pts, (char *) p1, len);
        token_found: ;
        } else {

            cstr_reset(&tokcstr);
            cstr_cat(&tokcstr, (char *) p1, len);
            p--;
            { p++; c = *p; if (c == '\\') { c = handle_stray1(p); p = file->buf_ptr; }};
        parse_ident_slow:
            while (isidnum_table[c - (-1)] & (2|4))
            {
                cstr_ccat(&tokcstr, c);
                { p++; c = *p; if (c == '\\') { c = handle_stray1(p); p = file->buf_ptr; }};
            }
            ts = tok_alloc(tokcstr.data, tokcstr.size);
        }
        tok = ts->tok;
        break;
    case 'L':
        t = p[1];
        if (t != '\\' && t != '\'' && t != '\"') {

            goto parse_ident_fast;
        } else {
            { p++; c = *p; if (c == '\\') { c = handle_stray1(p); p = file->buf_ptr; }};
            if (c == '\'' || c == '\"') {
                is_long = 1;
                goto str_const;
            } else {
                cstr_reset(&tokcstr);
                cstr_ccat(&tokcstr, 'L');
                goto parse_ident_slow;
            }
        }
        break;

    case '0': case '1': case '2': case '3':
    case '4': case '5': case '6': case '7':
    case '8': case '9':
        t = c;
        { p++; c = *p; if (c == '\\') { c = handle_stray1(p); p = file->buf_ptr; }};


    parse_num:
        cstr_reset(&tokcstr);
        for(;;) {
            cstr_ccat(&tokcstr, t);
            if (!((isidnum_table[c - (-1)] & (2|4))
                  || c == '.'
                  || ((c == '+' || c == '-')
                      && (((t == 'e' || t == 'E')
                            && !(parse_flags & 0x0008

                                && ((char*)tokcstr.data)[0] == '0'
                                && toup(((char*)tokcstr.data)[1]) == 'X'))
                          || t == 'p' || t == 'P'))))
                break;
            t = c;
            { p++; c = *p; if (c == '\\') { c = handle_stray1(p); p = file->buf_ptr; }};
        }

        cstr_ccat(&tokcstr, '\0');
        tokc.str.size = tokcstr.size;
        tokc.str.data = tokcstr.data;
        tok = 0xcd;
        break;

    case '.':

        { p++; c = *p; if (c == '\\') { c = handle_stray1(p); p = file->buf_ptr; }};
        if (isnum(c)) {
            t = '.';
            goto parse_num;
        } else if ((isidnum_table['.' - (-1)] & 2)
                   && (isidnum_table[c - (-1)] & (2|4))) {
            *--p = c = '.';
            goto parse_ident_fast;
        } else if (c == '.') {
            { p++; c = *p; if (c == '\\') { c = handle_stray1(p); p = file->buf_ptr; }};
            if (c == '.') {
                p++;
                tok = 0xa1;
            } else {
                *--p = '.';
                tok = '.';
            }
        } else {
            tok = '.';
        }
        break;
    case '\'':
    case '\"':
        is_long = 0;
    str_const:
        cstr_reset(&tokcstr);
        if (is_long)
            cstr_ccat(&tokcstr, 'L');
        cstr_ccat(&tokcstr, c);
        p = parse_pp_string(p, c, &tokcstr);
        cstr_ccat(&tokcstr, c);
        cstr_ccat(&tokcstr, '\0');
        tokc.str.size = tokcstr.size;
        tokc.str.data = tokcstr.data;
        tok = 0xce;
        break;

    case '<':
        { p++; c = *p; if (c == '\\') { c = handle_stray1(p); p = file->buf_ptr; }};
        if (c == '=') {
            p++;
            tok = 0x9e;
        } else if (c == '<') {
            { p++; c = *p; if (c == '\\') { c = handle_stray1(p); p = file->buf_ptr; }};
            if (c == '=') {
                p++;
                tok = 0xb8;
            } else {
                tok = '<';
            }
        } else {
            tok = 0x9c;
        }
        break;
    case '>':
        { p++; c = *p; if (c == '\\') { c = handle_stray1(p); p = file->buf_ptr; }};
        if (c == '=') {
            p++;
            tok = 0x9d;
        } else if (c == '>') {
            { p++; c = *p; if (c == '\\') { c = handle_stray1(p); p = file->buf_ptr; }};
            if (c == '=') {
                p++;
                tok = 0xb9;
            } else {
                tok = '>';
            }
        } else {
            tok = 0x9f;
        }
        break;

    case '&':
        { p++; c = *p; if (c == '\\') { c = handle_stray1(p); p = file->buf_ptr; }};
        if (c == '&') {
            p++;
            tok = 0x90;
        } else if (c == '=') {
            p++;
            tok = 0xb5;
        } else {
            tok = '&';
        }
        break;

    case '|':
        { p++; c = *p; if (c == '\\') { c = handle_stray1(p); p = file->buf_ptr; }};
        if (c == '|') {
            p++;
            tok = 0x91;
        } else if (c == '=') {
            p++;
            tok = 0xb6;
        } else {
            tok = '|';
        }
        break;

    case '+':
        { p++; c = *p; if (c == '\\') { c = handle_stray1(p); p = file->buf_ptr; }};
        if (c == '+') {
            p++;
            tok = 0x82;
        } else if (c == '=') {
            p++;
            tok = 0xb0;
        } else {
            tok = '+';
        }
        break;

    case '-':
        { p++; c = *p; if (c == '\\') { c = handle_stray1(p); p = file->buf_ptr; }};
        if (c == '-') {
            p++;
            tok = 0x80;
        } else if (c == '=') {
            p++;
            tok = 0xb1;
        } else if (c == '>') {
            p++;
            tok = 0xa0;
        } else {
            tok = '-';
        }
        break;

    case '!': { p++; c = *p; if (c == '\\') { c = handle_stray1(p); p = file->buf_ptr; }}; if (c == '=') { p++; tok = 0x95; } else { tok = '!'; } break;
    case '=': { p++; c = *p; if (c == '\\') { c = handle_stray1(p); p = file->buf_ptr; }}; if (c == '=') { p++; tok = 0x94; } else { tok = '='; } break;
    case '*': { p++; c = *p; if (c == '\\') { c = handle_stray1(p); p = file->buf_ptr; }}; if (c == '=') { p++; tok = 0xb2; } else { tok = '*'; } break;
    case '%': { p++; c = *p; if (c == '\\') { c = handle_stray1(p); p = file->buf_ptr; }}; if (c == '=') { p++; tok = 0xb4; } else { tok = '%'; } break;
    case '^': { p++; c = *p; if (c == '\\') { c = handle_stray1(p); p = file->buf_ptr; }}; if (c == '=') { p++; tok = 0xb7; } else { tok = '^'; } break;


    case '/':
        { p++; c = *p; if (c == '\\') { c = handle_stray1(p); p = file->buf_ptr; }};
        if (c == '*') {
            p = parse_comment(p);

            tok = ' ';
            goto maybe_space;
        } else if (c == '/') {
            p = parse_line_comment(p);
            tok = ' ';
            goto maybe_space;
        } else if (c == '=') {
            p++;
            tok = 0xb3;
        } else {
            tok = '/';
        }
        break;


    case '(':
    case ')':
    case '[':
    case ']':
    case '{':
    case '}':
    case ',':
    case ';':
    case ':':
    case '?':
    case '~':
    case '@':
    parse_simple:
        tok = c;
        p++;
        break;
    default:
        if (c >= 0x80 && c <= 0xFF)
	    goto parse_ident_fast;
        if (parse_flags & 0x0008)
            goto parse_simple;
        _tcc_error("unrecognized character \\x%02x", c);
        break;
    }
    tok_flags = 0;
keep_tok_flags:
    file->buf_ptr = p;



}

static void macro_subst(
    TokenString *tok_str,
    Sym **nested_list,
    const int *macro_str
    );



static int *macro_arg_subst(Sym **nested_list, const int *macro_str, Sym *args)
{
    int t, t0, t1, spc;
    const int *st;
    Sym *s;
    CValue cval;
    TokenString str;
    CString cstr;

    tok_str_new(&str);
    t0 = t1 = 0;
    while(1) {
        do { int _t = **(&macro_str); if ((_t >= 0xc0 && _t <= 0xcf)) tok_get(&t, &macro_str, &cval); else *(&t) = _t, ++*(&macro_str); } while (0);
        if (!t)
            break;
        if (t == '#') {

            do { int _t = **(&macro_str); if ((_t >= 0xc0 && _t <= 0xcf)) tok_get(&t, &macro_str, &cval); else *(&t) = _t, ++*(&macro_str); } while (0);
            if (!t)
                goto bad_stringy;
            s = sym_find2(args, t);
            if (s) {
                cstr_new(&cstr);
                cstr_ccat(&cstr, '\"');
                st = s->d;
                spc = 0;
                while (*st >= 0) {
                    do { int _t = **(&st); if ((_t >= 0xc0 && _t <= 0xcf)) tok_get(&t, &st, &cval); else *(&t) = _t, ++*(&st); } while (0);
                    if (t != 0xa4
                     && t != 0xa5
                     && 0 == check_space(t, &spc)) {
                        const char *s = get_tok_str(t, &cval);
                        while (*s) {
                            if (t == 0xce && *s != '\'')
                                add_char(&cstr, *s);
                            else
                                cstr_ccat(&cstr, *s);
                            ++s;
                        }
                    }
                }
                cstr.size -= spc;
                cstr_ccat(&cstr, '\"');
                cstr_ccat(&cstr, '\0');




                cval.str.size = cstr.size;
                cval.str.data = cstr.data;
                tok_str_add2(&str, 0xce, &cval);
                cstr_free(&cstr);
            } else {
        bad_stringy:
                expect("macro parameter after '#'");
            }
        } else if (t >= 256) {
            s = sym_find2(args, t);
            if (s) {
                int l0 = str.len;
                st = s->d;

                if (*macro_str == 0xa6 || t1 == 0xa6) {


                    if (t1 == 0xa6 && t0 == ',' && tcc_state->gnu_ext && s->type.t) {
                        if (*st <= 0) {

                            str.len -= 2;
                        } else {

                            str.len--;
                            goto add_var;
                        }
                    }
                } else {
            add_var:
		    if (!s->next) {




			TokenString str2;
			sym_push2(&s->next, s->v, s->type.t, 0);
			tok_str_new(&str2);
			macro_subst(&str2, nested_list, st);
			tok_str_add(&str2, 0);
			s->next->d = str2.str;
		    }
		    st = s->next->d;
                }
                for(;;) {
                    int t2;
                    do { int _t = **(&st); if ((_t >= 0xc0 && _t <= 0xcf)) tok_get(&t2, &st, &cval); else *(&t2) = _t, ++*(&st); } while (0);
                    if (t2 <= 0)
                        break;
                    tok_str_add2(&str, t2, &cval);
                }
                if (str.len == l0)
                    tok_str_add(&str, 0xa4);
            } else {
                tok_str_add(&str, t);
            }
        } else {
            tok_str_add2(&str, t, &cval);
        }
        t0 = t1, t1 = t;
    }
    tok_str_add(&str, 0);
    return str.str;
}

static char const ab_month_name[12][4] =
{
    "Jan", "Feb", "Mar", "Apr", "May", "Jun",
    "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
};

static int paste_tokens(int t1, CValue *v1, int t2, CValue *v2)
{
    CString cstr;
    int n, ret = 1;

    cstr_new(&cstr);
    if (t1 != 0xa4)
        cstr_cat(&cstr, get_tok_str(t1, v1), -1);
    n = cstr.size;
    if (t2 != 0xa4)
        cstr_cat(&cstr, get_tok_str(t2, v2), -1);
    cstr_ccat(&cstr, '\0');

    tcc_open_bf(tcc_state, ":paste:", cstr.size);
    memcpy(file->buffer, cstr.data, cstr.size);
    tok_flags = 0;
    for (;;) {
        next_nomacro1();
        if (0 == *file->buf_ptr)
            break;
        if (is_space(tok))
            continue;
        _tcc_warning("pasting \"%.*s\" and \"%s\" does not give a valid"
            " preprocessing token", n, (char *)cstr.data, (char*)cstr.data + n);
        ret = 0;
        break;
    }
    tcc_close();

    cstr_free(&cstr);
    return ret;
}



static inline int *macro_twosharps(const int *ptr0)
{
    int t;
    CValue cval;
    TokenString macro_str1;
    int start_of_nosubsts = -1;
    const int *ptr;


    for (ptr = ptr0;;) {
        do { int _t = **(&ptr); if ((_t >= 0xc0 && _t <= 0xcf)) tok_get(&t, &ptr, &cval); else *(&t) = _t, ++*(&ptr); } while (0);
        if (t == 0xa6)
            break;
        if (t == 0)
            return ((void *)0);
    }

    tok_str_new(&macro_str1);


    for (ptr = ptr0;;) {
        do { int _t = **(&ptr); if ((_t >= 0xc0 && _t <= 0xcf)) tok_get(&t, &ptr, &cval); else *(&t) = _t, ++*(&ptr); } while (0);
        if (t == 0)
            break;
        if (t == 0xa6)
            continue;
        while (*ptr == 0xa6) {
            int t1; CValue cv1;

            if (start_of_nosubsts >= 0)
                macro_str1.len = start_of_nosubsts;

            while ((t1 = *++ptr) == 0xa5)
                ;
            if (t1 && t1 != 0xa6) {
                do { int _t = **(&ptr); if ((_t >= 0xc0 && _t <= 0xcf)) tok_get(&t1, &ptr, &cv1); else *(&t1) = _t, ++*(&ptr); } while (0);
                if (t != 0xa4 || t1 != 0xa4) {
                    if (paste_tokens(t, &cval, t1, &cv1)) {
                        t = tok, cval = tokc;
                    } else {
                        tok_str_add2(&macro_str1, t, &cval);
                        t = t1, cval = cv1;
                    }
                }
            }
        }
        if (t == 0xa5) {
            if (start_of_nosubsts < 0)
                start_of_nosubsts = macro_str1.len;
        } else {
            start_of_nosubsts = -1;
        }
        tok_str_add2(&macro_str1, t, &cval);
    }
    tok_str_add(&macro_str1, 0);

    return macro_str1.str;
}



static int next_argstream(Sym **nested_list, TokenString *ws_str)
{
    int t;
    const int *p;
    Sym *sa;

    for (;;) {
        if (macro_ptr) {
            p = macro_ptr, t = *p;
            if (ws_str) {
                while (is_space(t) || 10 == t || 0xa4 == t)
                    tok_str_add(ws_str, t), t = *++p;
            }
            if (t == 0) {
                end_macro();

                sa = *nested_list;
                while (sa && sa->v == 0)
                    sa = sa->prev;
                if (sa)
                    sa->v = 0;
                continue;
            }
        } else {
            ch = handle_eob();
            if (ws_str) {
                while (is_space(ch) || ch == '\n' || ch == '/') {
                    if (ch == '/') {
                        int c;
                        uint8_t *p = file->buf_ptr;
                        { p++; c = *p; if (c == '\\') { c = handle_stray1(p); p = file->buf_ptr; }};
                        if (c == '*') {
                            p = parse_comment(p);
                            file->buf_ptr = p - 1;
                        } else if (c == '/') {
                            p = parse_line_comment(p);
                            file->buf_ptr = p - 1;
                        } else
                            break;
                        ch = ' ';
                    }
                    if (ch == '\n')
                        file->line_num++;
                    if (!(ch == '\f' || ch == '\v' || ch == '\r'))
                        tok_str_add(ws_str, ch);
                    minp();
                }
            }
            t = ch;
        }

        if (ws_str)
            return t;
        next_nomacro();
        return tok;
    }
}





static int macro_subst_tok(
    TokenString *tok_str,
    Sym **nested_list,
    Sym *s)
{
    Sym *args, *sa, *sa1;
    int parlevel, t, t1, spc;
    TokenString str;
    char *cstrval;
    CValue cval;
    CString cstr;
    char buf[32];



    if (tok == TOK___LINE__ || tok == TOK___COUNTER__) {
        t = tok == TOK___LINE__ ? file->line_num : pp_counter++;
        snprintf(buf, sizeof(buf), "%d", t);
        cstrval = buf;
        t1 = 0xcd;
        goto add_cstr1;
    } else if (tok == TOK___FILE__) {
        cstrval = file->filename;
        goto add_cstr;
    } else if (tok == TOK___DATE__ || tok == TOK___TIME__) {
        time_t ti;
        struct tm *tm;

        time(&ti);
        tm = localtime(&ti);
        if (tok == TOK___DATE__) {
            snprintf(buf, sizeof(buf), "%s %2d %d",
                     ab_month_name[tm->tm_mon], tm->tm_mday, tm->tm_year + 1900);
        } else {
            snprintf(buf, sizeof(buf), "%02d:%02d:%02d",
                     tm->tm_hour, tm->tm_min, tm->tm_sec);
        }
        cstrval = buf;
    add_cstr:
        t1 = 0xc8;
    add_cstr1:
        cstr_new(&cstr);
        cstr_cat(&cstr, cstrval, 0);
        cval.str.size = cstr.size;
        cval.str.data = cstr.data;
        tok_str_add2(tok_str, t1, &cval);
        cstr_free(&cstr);
    } else if (s->d) {
        int saved_parse_flags = parse_flags;
	int *joined_str = ((void *)0);
        int *mstr = s->d;

        if (s->type.t == 1) {

            TokenString ws_str;
            tok_str_new(&ws_str);

            spc = 0;
            parse_flags |= 0x0010 | 0x0004
                | 0x0020;


            t = next_argstream(nested_list, &ws_str);
            if (t != '(') {




                parse_flags = saved_parse_flags;
                tok_str_add(tok_str, tok);
                if (parse_flags & 0x0010) {
                    int i;
                    for (i = 0; i < ws_str.len; i++)
                        tok_str_add(tok_str, ws_str.str[i]);
                }
                tok_str_free_str(ws_str.str);
                return 0;
            } else {
                tok_str_free_str(ws_str.str);
            }
	    do {
		next_nomacro();
	    } while (tok == 0xa4 || is_space(tok));


            args = ((void *)0);
            sa = s->next;

            for(;;) {
                do {
                    next_argstream(nested_list, ((void *)0));
                } while (is_space(tok) || 10 == tok);
    empty_arg:

                if (!args && !sa && tok == ')')
                    break;
                if (!sa)
                    _tcc_error("macro '%s' used with too many args",
                          get_tok_str(s->v, 0));
                tok_str_new(&str);
                parlevel = spc = 0;

                while ((parlevel > 0 ||
                        (tok != ')' &&
                         (tok != ',' || sa->type.t)))) {
                    if (tok == (-1) || tok == 0)
                        break;
                    if (tok == '(')
                        parlevel++;
                    else if (tok == ')')
                        parlevel--;
                    if (tok == 10)
                        tok = ' ';
                    if (!check_space(tok, &spc))
                        tok_str_add2(&str, tok, &tokc);
                    next_argstream(nested_list, ((void *)0));
                }
                if (parlevel)
                    expect(")");
                str.len -= spc;
                tok_str_add(&str, -1);
                tok_str_add(&str, 0);
                sa1 = sym_push2(&args, sa->v & ~0x20000000, sa->type.t, 0);
                sa1->d = str.str;
                sa = sa->next;
                if (tok == ')') {


                    if (sa && sa->type.t && tcc_state->gnu_ext)
                        goto empty_arg;
                    break;
                }
                if (tok != ',')
                    expect(",");
            }
            if (sa) {
                _tcc_error("macro '%s' used with too few args",
                      get_tok_str(s->v, 0));
            }


            mstr = macro_arg_subst(nested_list, mstr, args);

            sa = args;
            while (sa) {
                sa1 = sa->prev;
                tok_str_free_str(sa->d);
                if (sa->next) {
                    tok_str_free_str(sa->next->d);
                    sym_free(sa->next);
                }
                sym_free(sa);
                sa = sa1;
            }
            parse_flags = saved_parse_flags;
        }

        sym_push2(nested_list, s->v, 0, 0);
        parse_flags = saved_parse_flags;
        joined_str = macro_twosharps(mstr);
        macro_subst(tok_str, nested_list, joined_str ? joined_str : mstr);


        sa1 = *nested_list;
        *nested_list = sa1->prev;
        sym_free(sa1);
	if (joined_str)
	    tok_str_free_str(joined_str);
        if (mstr != s->d)
            tok_str_free_str(mstr);
    }
    return 0;
}




static void macro_subst(
    TokenString *tok_str,
    Sym **nested_list,
    const int *macro_str
    )
{
    Sym *s;
    int t, spc, nosubst;
    CValue cval;

    spc = nosubst = 0;

    while (1) {
        do { int _t = **(&macro_str); if ((_t >= 0xc0 && _t <= 0xcf)) tok_get(&t, &macro_str, &cval); else *(&t) = _t, ++*(&macro_str); } while (0);
        if (t <= 0)
            break;

        if (t >= 256 && 0 == nosubst) {
            s = define_find(t);
            if (s == ((void *)0))
                goto no_subst;


            if (sym_find2(*nested_list, t)) {

                tok_str_add2(tok_str, 0xa5, ((void *)0));
                goto no_subst;
            }

            {
                TokenString *str = tok_str_alloc();
                str->str = (int*)macro_str;
                begin_macro(str, 2);

                tok = t;
                macro_subst_tok(tok_str, nested_list, s);

                if (macro_stack != str) {

                    break;
                }

                macro_str = macro_ptr;
                end_macro ();
            }
            if (tok_str->len)
                spc = is_space(t = tok_str->str[tok_str->lastlen]);
        } else {
no_subst:
            if (!check_space(t, &spc))
                tok_str_add2(tok_str, t, &cval);

            if (nosubst) {
                if (nosubst > 1 && (spc || (++nosubst == 3 && t == '(')))
                    continue;
                nosubst = 0;
            }
            if (t == 0xa5)
                nosubst = 1;
        }

        if (t == TOK_DEFINED && pp_expr)
            nosubst = 2;
    }
}



static void next_nomacro(void)
{
    int t;
    if (macro_ptr) {
 redo:
        t = *macro_ptr;
        if ((t >= 0xc0 && t <= 0xcf)) {
            tok_get(&tok, &macro_ptr, &tokc);
            if (t == 0xcf) {
                file->line_num = tokc.i;
                goto redo;
            }
        } else {
            macro_ptr++;
            if (t < 256) {
                if (!(parse_flags & 0x0010)
                    && (isidnum_table[t - (-1)] & 1))
                    goto redo;
            }
            tok = t;
        }
    } else {
        next_nomacro1();
    }
}


static void next(void)
{
    int t;
 redo:
    next_nomacro();
    t = tok;
    if (macro_ptr) {
        if (!(t >= 0xc0 && t <= 0xcf)) {
            if (t == 0xa5 || t == 0xa4) {

                goto redo;
            } else if (t == 0) {

                end_macro();
                goto redo;
            } else if (t == '\\') {
                if (!(parse_flags & 0x0020))
                    _tcc_error("stray '\\' in program");
            }
            return;
        }
    } else if (t >= 256 && (parse_flags & 0x0001)) {

        Sym *s = define_find(t);
        if (s) {
            Sym *nested_list = ((void *)0);
            tokstr_buf.len = 0;
            macro_subst_tok(&tokstr_buf, &nested_list, s);
            tok_str_add(&tokstr_buf, 0);
            begin_macro(&tokstr_buf, 0);
            goto redo;
        }
        return;
    }

    if (t == 0xcd) {
        if  (parse_flags & 0x0002)
            parse_number((char *)tokc.str.data);
    } else if (t == 0xce) {
        if (parse_flags & 0x0040)
            parse_string((char *)tokc.str.data, tokc.str.size - 1);
    }
}



static inline void unget_tok(int last_tok)
{

    TokenString *str = tok_str_alloc();
    tok_str_add2(str, tok, &tokc);
    tok_str_add(str, 0);
    begin_macro(str, 1);
    tok = last_tok;
}

static void tcc_predefs(CString *cstr)
{
    cstr_cat(cstr,







    "typedef struct{\n"
    "unsigned gp_offset,fp_offset;\n"
    "union{\n"
    "unsigned overflow_offset;\n"
    "char*overflow_arg_area;\n"
    "};\n"
    "char*reg_save_area;\n"
    "}__builtin_va_list[1];\n"
    "void*__va_arg(__builtin_va_list ap,int arg_type,int size,int align);\n"
    "#define __builtin_va_start(ap,last) (*(ap)=*(__builtin_va_list)((char*)__builtin_frame_address(0)-24))\n"
    "#define __builtin_va_arg(ap,t) (*(t*)(__va_arg(ap,__builtin_va_arg_types(t),sizeof(t),__alignof__(t))))\n"
    "#define __builtin_va_copy(dest,src) (*(dest)=*(src))\n"
# 3672 "../tinycc/tccpp.c"
    "#define __builtin_va_end(ap) (void)(ap)\n"
    "#ifndef __builtin_va_copy\n"
    "#define __builtin_va_copy(dest,src) (dest)=(src)\n"
    "#endif\n"

    "#ifdef __BOUNDS_CHECKING_ON\n"
    "#define __BUILTINBC(ret,name,params) ret __builtin_##name params __attribute__((alias(\"__bound_\"#name)));\n"
    "#define __BOUND(ret,name,params) ret name params __attribute__((alias(\"__bound_\"#name)));\n"
    "#else\n"
    "#define __BUILTINBC(ret,name,params) ret __builtin_##name params __attribute__((alias(#name)));\n"
    "#define __BOUND(ret,name,params)\n"
    "#endif\n"
    "#define __BOTH(ret,name,params) __BUILTINBC(ret,name,params)__BOUND(ret,name,params)\n"
    "#define __BUILTIN(ret,name,params) ret __builtin_##name params __attribute__((alias(\"\"#name)));\n"
    "__BOTH(void*,memcpy,(void*,const void*,__SIZE_TYPE__))\n"
    "__BOTH(void*,memmove,(void*,const void*,__SIZE_TYPE__))\n"
    "__BOTH(void*,memset,(void*,int,__SIZE_TYPE__))\n"
    "__BOTH(int,memcmp,(const void*,const void*,__SIZE_TYPE__))\n"
    "__BOTH(__SIZE_TYPE__,strlen,(const char*))\n"
    "__BOTH(char*,strcpy,(char*,const char*))\n"
    "__BOTH(char*,strncpy,(char*,const char*,__SIZE_TYPE__))\n"
    "__BOTH(int,strcmp,(const char*,const char*))\n"
    "__BOTH(int,strncmp,(const char*,const char*,__SIZE_TYPE__))\n"
    "__BOTH(char*,strcat,(char*,const char*))\n"
    "__BOTH(char*,strchr,(const char*,int))\n"
    "__BOTH(char*,strdup,(const char*))\n"



    "#define __MAYBE_REDIR __BUILTIN\n"

    "__MAYBE_REDIR(void*,malloc,(__SIZE_TYPE__))\n"
    "__MAYBE_REDIR(void*,realloc,(void*,__SIZE_TYPE__))\n"
    "__MAYBE_REDIR(void*,calloc,(__SIZE_TYPE__,__SIZE_TYPE__))\n"
    "__MAYBE_REDIR(void*,memalign,(__SIZE_TYPE__,__SIZE_TYPE__))\n"
    "__MAYBE_REDIR(void,free,(void*))\n"

    "__BOTH(void*,alloca,(__SIZE_TYPE__))\n"
# 3718 "../tinycc/tccpp.c"
    "__BUILTIN(void,abort,(void))\n"
    "__BOUND(int,longjmp,())\n"

    "__BOUND(void*,mmap,())\n"
    "__BOUND(void*,munmap,())\n"

    "#undef __BUILTINBC\n"
    "#undef __BUILTIN\n"
    "#undef __BOUND\n"
    "#undef __BOTH\n"
    "#undef __MAYBE_REDIR\n"
    , -1);
}

static void preprocess_start(TCCState *s1, int filetype)
{
    int is_asm = !!(filetype & (2|4));
    CString cstr;

    tccpp_new(s1);

    s1->include_stack_ptr = s1->include_stack;
    s1->ifdef_stack_ptr = s1->ifdef_stack;
    file->ifdef_stack_ptr = s1->ifdef_stack_ptr;
    pp_expr = 0;
    pp_counter = 0;
    pp_debug_tok = pp_debug_symv = 0;
    pp_once++;
    s1->pack_stack[0] = 0;
    s1->pack_stack_ptr = s1->pack_stack;

    set_idnum('$', !is_asm && s1->dollars_in_identifiers ? 2 : 0);
    set_idnum('.', is_asm ? 2 : 0);

    if (!(filetype & 2)) {
        cstr_new(&cstr);
        if (s1->cmdline_defs.size)
          cstr_cat(&cstr, s1->cmdline_defs.data, s1->cmdline_defs.size);
        cstr_printf(&cstr, "#define __BASE_FILE__ \"%s\"\n", file->filename);
        if (is_asm)
          cstr_printf(&cstr, "#define __ASSEMBLER__ 1\n");
        if (s1->output_type == 1)
          cstr_printf(&cstr, "#define __TCC_RUN__ 1\n");
        if (!is_asm && s1->output_type != 5)
          tcc_predefs(&cstr);
        if (s1->cmdline_incl.size)
          cstr_cat(&cstr, s1->cmdline_incl.data, s1->cmdline_incl.size);

        *s1->include_stack_ptr++ = file;
        tcc_open_bf(s1, "<command line>", cstr.size);
        memcpy(file->buffer, cstr.data, cstr.size);
        cstr_free(&cstr);
    }

    parse_flags = is_asm ? 0x0008 : 0;
    tok_flags = 0x0001 | 0x0002;
}


static void preprocess_end(TCCState *s1)
{
    while (macro_stack)
        end_macro();
    macro_ptr = ((void *)0);
    while (file)
        tcc_close();
    tccpp_delete(s1);
}

static void tccpp_new(TCCState *s)
{
    int i, c;
    const char *p, *r;


    for(i = (-1); i<128; i++)
        set_idnum(i,
            is_space(i) ? 1
            : isid(i) ? 2
            : isnum(i) ? 4
            : 0);

    for(i = 128; i<256; i++)
        set_idnum(i, 2);


    tal_new(&toksym_alloc, 256, (768 * 1024));
    tal_new(&tokstr_alloc, 128, (768 * 1024));

    memset(hash_ident, 0, 16384 * sizeof(TokenSym *));
    memset(s->cached_includes_hash, 0, sizeof s->cached_includes_hash);

    cstr_new(&cstr_buf);
    cstr_realloc(&cstr_buf, 1024);
    tok_str_new(&tokstr_buf);
    tok_str_realloc(&tokstr_buf, 256);

    tok_ident = 256;
    p = tcc_keywords;
    while (*p) {
        r = p;
        for(;;) {
            c = *r++;
            if (c == '\0')
                break;
        }
        tok_alloc(p, r - p - 1);
        p = r;
    }



    define_push(TOK___LINE__, 0, ((void *)0), ((void *)0));
    define_push(TOK___FILE__, 0, ((void *)0), ((void *)0));
    define_push(TOK___DATE__, 0, ((void *)0), ((void *)0));
    define_push(TOK___TIME__, 0, ((void *)0), ((void *)0));
    define_push(TOK___COUNTER__, 0, ((void *)0), ((void *)0));
}

static void tccpp_delete(TCCState *s)
{
    int i, n;

    dynarray_reset(&s->cached_includes, &s->nb_cached_includes);


    n = tok_ident - 256;
    if (n > tcc_state->total_idents)
        tcc_state->total_idents = n;
    for(i = 0; i < n; i++)
        tal_free_impl(toksym_alloc, table_ident[i]);
    tcc_free(table_ident);
    table_ident = ((void *)0);


    cstr_free(&tokcstr);
    cstr_free(&cstr_buf);
    cstr_free(&macro_equal_buf);
    tok_str_free_str(tokstr_buf.str);


    tal_delete(toksym_alloc);
    toksym_alloc = ((void *)0);
    tal_delete(tokstr_alloc);
    tokstr_alloc = ((void *)0);
}




static void tok_print(const char *msg, const int *str)
{
    FILE *fp;
    int t, s = 0;
    CValue cval;

    fp = tcc_state->ppfp;
    fprintf(fp, "%s", msg);
    while (str) {
	do { int _t = **(&str); if ((_t >= 0xc0 && _t <= 0xcf)) tok_get(&t, &str, &cval); else *(&t) = _t, ++*(&str); } while (0);
	if (!t)
	    break;
	fprintf(fp, &" %s"[s], get_tok_str(t, &cval)), s = 1;
    }
    fprintf(fp, "\n");
}

static void pp_line(TCCState *s1, BufferedFile *f, int level)
{
    int d = f->line_num - f->line_ref;

    if (s1->dflag & 4)
	return;

    if (s1->Pflag == LINE_MACRO_OUTPUT_FORMAT_NONE) {
        ;
    } else if (level == 0 && f->line_ref && d < 8) {
	while (d > 0)
	    fputs("\n", s1->ppfp), --d;
    } else if (s1->Pflag == LINE_MACRO_OUTPUT_FORMAT_STD) {
	fprintf(s1->ppfp, "#line %d \"%s\"\n", f->line_num, f->filename);
    } else {
	fprintf(s1->ppfp, "# %d \"%s\"%s\n", f->line_num, f->filename,
	    level > 0 ? " 1" : level < 0 ? " 2" : "");
    }
    f->line_ref = f->line_num;
}

static void define_print(TCCState *s1, int v)
{
    FILE *fp;
    Sym *s;

    s = define_find(v);
    if (((void *)0) == s || ((void *)0) == s->d)
        return;

    fp = s1->ppfp;
    fprintf(fp, "#define %s", get_tok_str(v, ((void *)0)));
    if (s->type.t == 1) {
        Sym *a = s->next;
        fprintf(fp,"(");
        if (a)
            for (;;) {
                fprintf(fp,"%s", get_tok_str(a->v & ~0x20000000, ((void *)0)));
                if (!(a = a->next))
                    break;
                fprintf(fp,",");
            }
        fprintf(fp,")");
    }
    tok_print("", s->d);
}

static void pp_debug_defines(TCCState *s1)
{
    int v, t;
    const char *vs;
    FILE *fp;

    t = pp_debug_tok;
    if (t == 0)
        return;

    file->line_num--;
    pp_line(s1, file, 0);
    file->line_ref = ++file->line_num;

    fp = s1->ppfp;
    v = pp_debug_symv;
    vs = get_tok_str(v, ((void *)0));
    if (t == TOK_DEFINE) {
        define_print(s1, v);
    } else if (t == TOK_UNDEF) {
        fprintf(fp, "#undef %s\n", vs);
    } else if (t == TOK_push_macro) {
        fprintf(fp, "#pragma push_macro(\"%s\")\n", vs);
    } else if (t == TOK_pop_macro) {
        fprintf(fp, "#pragma pop_macro(\"%s\")\n", vs);
    }
    pp_debug_tok = 0;
}

static void pp_debug_builtins(TCCState *s1)
{
    int v;
    for (v = 256; v < tok_ident; ++v)
        define_print(s1, v);
}


static int pp_need_space(int a, int b)
{
    return 'E' == a ? '+' == b || '-' == b
        : '+' == a ? 0x82 == b || '+' == b
        : '-' == a ? 0x80 == b || '-' == b
        : a >= 256 ? b >= 256
	: a == 0xcd ? b >= 256
        : 0;
}


static int pp_check_he0xE(int t, const char *p)
{
    if (t == 0xcd && toup(strchr(p, 0)[-1]) == 'E')
        return 'E';
    return t;
}


static int tcc_preprocess(TCCState *s1)
{
    BufferedFile **iptr;
    int token_seen, spcs, level;
    const char *p;
    char white[400];

    parse_flags = 0x0001
                | (parse_flags & 0x0008)
                | 0x0004
                | 0x0010
                | 0x0020
                ;



    if (s1->Pflag == LINE_MACRO_OUTPUT_FORMAT_P10)
        parse_flags |= 0x0002, s1->Pflag = 1;

    if (s1->do_bench) {

	do next(); while (tok != (-1));
	return 0;
    }

    if (s1->dflag & 1) {
        pp_debug_builtins(s1);
        s1->dflag &= ~1;
    }

    token_seen = 10, spcs = 0, level = 0;
    if (file->prev)
        pp_line(s1, file->prev, level++);
    pp_line(s1, file, level);
    for (;;) {
        iptr = s1->include_stack_ptr;
        next();
        if (tok == (-1))
            break;

        level = s1->include_stack_ptr - iptr;
        if (level) {
            if (level > 0)
                pp_line(s1, *iptr, 0);
            pp_line(s1, file, level);
        }
        if (s1->dflag & 7) {
            pp_debug_defines(s1);
            if (s1->dflag & 4)
                continue;
        }

        if (is_space(tok)) {
            if (spcs < sizeof white - 1)
                white[spcs++] = tok;
            continue;
        } else if (tok == 10) {
            spcs = 0;
            if (token_seen == 10)
                continue;
            ++file->line_ref;
        } else if (token_seen == 10) {
            pp_line(s1, file, 0);
        } else if (spcs == 0 && pp_need_space(token_seen, tok)) {
            white[spcs++] = ' ';
        }

        white[spcs] = 0, fputs(white, s1->ppfp), spcs = 0;
        fputs(p = get_tok_str(tok, &tokc), s1->ppfp);
        token_seen = pp_check_he0xE(tok, p);
    }
    return 0;
}
# 23 "../tinycc/libtcc.c" 2
# 1 "../tinycc/tccgen.c" 1
# 22 "../tinycc/tccgen.c"
# 1 "../tinycc/tcc.h" 1
# 23 "../tinycc/tccgen.c" 2
# 32 "../tinycc/tccgen.c"
static int rsym, anon_sym, ind, loc;

static Sym *global_stack;
static Sym *local_stack;
static Sym *define_stack;
static Sym *global_label_stack;
static Sym *local_label_stack;

static Sym *sym_free_first;
static void **sym_pools;
static int nb_sym_pools;

static Sym *all_cleanups, *pending_gotos;
static int local_scope;
static int in_sizeof;
static int in_generic;
static int section_sym;

static SValue *vtop;
static SValue _vstack[1 + 256];


static int const_wanted;
static int nocode_wanted;
# 65 "../tinycc/tccgen.c"
static void gsym(int t) { if (t) { gsym_addr(t, ind); (nocode_wanted &= ~0x20000000); }}
static int gind(void) { (nocode_wanted &= ~0x20000000); return ind; }


static void gjmp_addr_acs(int t) { gjmp_addr(t); (nocode_wanted |= 0x20000000); }
static int gjmp_acs(int t) { t = gjmp(t); (nocode_wanted |= 0x20000000); return t; }






static int global_expr;
static CType func_vt;
static int func_var;
static int func_vc;
static int last_line_num, new_file, func_ind;
static const char *funcname;
static CType int_type, func_old_type, char_type, char_pointer_type;
static CString initstr;
# 97 "../tinycc/tccgen.c"
static struct switch_t {
    struct case_t {
        int64_t v1, v2;
	int sym;
    } **p; int n;
    int def_sym;
    int *bsym;
    struct scope *scope;
    struct switch_t *prev;
    SValue sv;
} *cur_switch;



static struct temp_local_variable {
	int location;
	short size;
	short align;
} arr_temp_local_vars[8];
short nb_temp_local_vars;

static struct scope {
    struct scope *prev;
    struct { int loc, num; } vla;
    struct { Sym *s; int n; } cl;
    int *bsym, *csym;
    Sym *lstk, *llstk;
} *cur_scope, *loop_scope, *root_scope;




static const struct {
  int type;
  const char *name;
} default_debug[] = {
    {   3, "int:t1=r1;-2147483648;2147483647;" },
    {   1, "char:t2=r2;0;127;" },



    {   4 | 0x0800, "long int:t3=r3;-9223372036854775808;9223372036854775807;" },

    {   3 | 0x0010, "unsigned int:t4=r4;0;037777777777;" },




    {   4 | 0x0800 | 0x0010, "long unsigned int:t5=r5;0;01777777777777777777777;" },

    {   13, "__int128:t6=r6;0;-1;" },
    {   13 | 0x0010, "__int128 unsigned:t7=r7;0;-1;" },
    {   4, "long long int:t8=r8;-9223372036854775808;9223372036854775807;" },
    {   4 | 0x0010, "long long unsigned int:t9=r9;0;01777777777777777777777;" },
    {   2, "short int:t10=r10;-32768;32767;" },
    {   2 | 0x0010, "short unsigned int:t11=r11;0;65535;" },
    {   1 | 0x0020, "signed char:t12=r12;-128;127;" },
    {   1 | 0x0020 | 0x0010, "unsigned char:t13=r13;0;255;" },
    {   8, "float:t14=r1;4;0;" },
    {   9, "double:t15=r1;8;0;" },
    {   10, "long double:t16=r1;16;0;" },
    {   -1, "_Float32:t17=r1;4;0;" },
    {   -1, "_Float64:t18=r1;8;0;" },
    {   -1, "_Float128:t19=r1;16;0;" },
    {   -1, "_Float32x:t20=r1;8;0;" },
    {   -1, "_Float64x:t21=r1;16;0;" },
    {   -1, "_Decimal32:t22=r1;4;0;" },
    {   -1, "_Decimal64:t23=r1;8;0;" },
    {   -1, "_Decimal128:t24=r1;16;0;" },

    {   1 | 0x0010, "unsigned char:t25=r25;0;255;" },

    {   11, "bool:t26=r26;0;255;" },
    {   0, "void:t27=27" },
};

static int debug_next_type;

static struct debug_hash {
    int debug_type;
    Sym *type;
} *debug_hash;

static int n_debug_hash;

static struct debug_info {
    int start;
    int end;
    int n_sym;
    struct debug_sym {
        int type;
        unsigned long value;
        char *str;
        Section *sec;
        int sym_index;
    } *sym;
    struct debug_info *child, *next, *last, *parent;
} *debug_info, *debug_info_root;




static void init_prec(void);
# 214 "../tinycc/tccgen.c"
static void gen_cast(CType *type);
static void gen_cast_s(int t);
static inline CType *pointed_type(CType *type);
static int is_compatible_types(CType *type1, CType *type2);
static int parse_btype(CType *type, AttributeDef *ad);
static CType *type_decl(CType *type, AttributeDef *ad, int *v, int td);
static void parse_expr_type(CType *type);
static void init_putv(CType *type, Section *sec, unsigned long c);
static void decl_initializer(CType *type, Section *sec, unsigned long c, int flags);
static void block(int is_expr);
static void decl_initializer_alloc(CType *type, AttributeDef *ad, int r, int has_init, int v, int scope);
static void decl(int l);
static int decl0(int l, int is_for_loop_init, Sym *);
static void expr_eq(void);
static void vla_runtime_type_size(CType *type, int *a);
static int is_compatible_unqualified_types(CType *type1, CType *type2);
static inline int64_t expr_const64(void);
static void vpush64(int ty, unsigned long long v);
static void vpush(CType *type);
static int gvtst(int inv, int t);
static void gen_inline_functions(TCCState *s);
static void free_inline_functions(TCCState *s);
static void skip_or_save_block(TokenString **str);
static void gv_dup(void);
static int get_temp_local_var(int size,int align);
static void clear_temp_local_var_list();
static void cast_error(CType *st, CType *dt);

static inline int is_float(int t)
{
    int bt = t & 0x000f;
    return bt == 10
        || bt == 9
        || bt == 8
        || bt == 14;
}

static inline int is_integer_btype(int bt)
{
    return bt == 1
        || bt == 11
        || bt == 2
        || bt == 3
        || bt == 4;
}

static int btype_size(int bt)
{
    return bt == 1 || bt == 11 ? 1 :
        bt == 2 ? 2 :
        bt == 3 ? 4 :
        bt == 4 ? 8 :
        bt == 5 ? 8 : 0;
}


static int R_RET(int t)
{
    if (!is_float(t))
        return TREG_RAX;

    if ((t & 0x000f) == 10)
        return TREG_ST0;




    return TREG_XMM0;
}


static int R2_RET(int t)
{
    t &= 0x000f;




    if (t == 13)
        return TREG_RDX;
    if (t == 14)
        return TREG_XMM1;




    return 0x0030;
}





static void PUT_R_RET(SValue *sv, int t)
{
    sv->r = R_RET(t), sv->r2 = R2_RET(t);
}


static int RC_RET(int t)
{
    return reg_classes[R_RET(t)] & ~(0x0002 | 0x0001);
}


static int RC_TYPE(int t)
{
    if (!is_float(t))
        return 0x0001;

    if ((t & 0x000f) == 10)
        return 0x0080;
    if ((t & 0x000f) == 14)
        return 0x1000;




    return 0x0002;
}


static int RC2_TYPE(int t, int rc)
{
    if (!(R2_RET(t) != 0x0030))
        return 0;

    if (rc == 0x0004)
        return 0x0010;


    if (rc == 0x1000)
        return 0x2000;

    if (rc & 0x0002)
        return 0x0002;
    return 0x0001;
}




static int ieee_finite(double d)
{
    int p[4];
    memcpy(p, &d, sizeof(double));
    return ((unsigned)((p[1] | 0x800fffff) + 1)) >> 31;
}







static void test_lvalue(void)
{
    if (!(vtop->r & 0x0100))
        expect("lvalue");
}

static void check_vstack(void)
{
    if (vtop != (_vstack + 1) - 1)
        _tcc_error("internal compiler error: vstack leak (%d)",
                  (int)(vtop - (_vstack + 1) + 1));
}
# 399 "../tinycc/tccgen.c"
static void tcc_debug_start(TCCState *s1)
{
    if (s1->do_debug) {
        int i;
        char buf[512];


        section_sym = put_elf_sym(tcc_state->symtab_section, 0, 0,
                                  ((((0)) << 4) + (((3)) & 0xf)), 0,
                                  tcc_state->text_section->sh_num, ((void *)0));
        getcwd(buf, sizeof(buf));



        pstrcat(buf, sizeof(buf), "/");
        put_stabs_r(s1, buf, N_SO, 0, 0,
                    tcc_state->text_section->data_offset, tcc_state->text_section, section_sym);
        put_stabs_r(s1, file->prev->filename, N_SO, 0, 0,
                    tcc_state->text_section->data_offset, tcc_state->text_section, section_sym);
        for (i = 0; i < sizeof (default_debug) / sizeof (default_debug[0]); i++)
            put_stabs(s1, default_debug[i].name, N_LSYM, 0, 0, 0);

        new_file = last_line_num = 0;
        func_ind = -1;
        debug_next_type = sizeof(default_debug) / sizeof(default_debug[0]);
        debug_hash = ((void *)0);
        n_debug_hash = 0;


        tcc_debug_bincl(s1);
    }



    put_elf_sym(tcc_state->symtab_section, 0, 0,
                ((((0)) << 4) + (((4)) & 0xf)), 0,
                0xfff1, file->filename);
}

static void tcc_debug_stabs (TCCState *s1, const char *str, int type, unsigned long value,
                             Section *sec, int sym_index)
{
    struct debug_sym *s;

    if (debug_info) {
        debug_info->sym =
            (struct debug_sym *)tcc_realloc (debug_info->sym,
                                             sizeof(struct debug_sym) *
                                             (debug_info->n_sym + 1));
        s = debug_info->sym + debug_info->n_sym++;
        s->type = type;
        s->value = value;
        s->str = tcc_strdup(str);
        s->sec = sec;
        s->sym_index = sym_index;
    }
    else if (sec)
        put_stabs_r (s1, str, type, 0, 0, value, sec, sym_index);
    else
        put_stabs (s1, str, type, 0, 0, value);
}

static void tcc_debug_stabn(int type, int value)
{
    if (type == N_LBRAC) {
        struct debug_info *info =
            (struct debug_info *) tcc_mallocz(sizeof (*info));

        info->start = value;
        info->parent = debug_info;
        if (debug_info) {
            if (debug_info->child) {
                if (debug_info->child->last)
                    debug_info->child->last->next = info;
                else
                    debug_info->child->next = info;
                debug_info->child->last = info;
            }
            else
                debug_info->child = info;
        }
        else
            debug_info_root = info;
        debug_info = info;
    }
    else {
        debug_info->end = value;
        debug_info = debug_info->parent;
    }
}

static void tcc_get_debug_info(TCCState *s1, Sym *s, CString *result)
{
    int type;
    int n = 0;
    int debug_type = -1;
    Sym *t = s;
    CString str;

    for (;;) {
        type = t->type.t & ~(0x00001000 | 0x00002000 | 0x0100 | 0x0200);
        if ((type & 0x000f) != 1)
            type &= ~0x0020;
        if (type == 5 || type == (5 | 0x0040))
            n++, t = t->type.ref;
        else
            break;
    }
    if ((type & 0x000f) == 7) {
        int i;

        t = t->type.ref;
        for (i = 0; i < n_debug_hash; i++) {
            if (t == debug_hash[i].type) {
                debug_type = debug_hash[i].debug_type;
                break;
            }
        }
        if (debug_type == -1) {
            debug_type = ++debug_next_type;
            debug_hash = (struct debug_hash *)
                tcc_realloc (debug_hash,
                             (n_debug_hash + 1) * sizeof(*debug_hash));
            debug_hash[n_debug_hash].debug_type = debug_type;
            debug_hash[n_debug_hash++].type = t;
            cstr_new (&str);
            cstr_printf (&str, "%s:T%d=%c%d",
                         (t->v & ~0x40000000) >= 0x10000000
                         ? "" : get_tok_str(t->v & ~0x40000000, ((void *)0)),
                         debug_type,
                         ((t->type.t & ((((1U << (6+6)) - 1) << 20 | 0x0080)|0x000f)) == (1 << 20 | 7)) ? 'u' : 's',
                         t->c);
            while (t->next) {
                int pos, size, align;

                t = t->next;
                cstr_printf (&str, "%s:",
                             (t->v & ~0x20000000) >= 0x10000000
                             ? "" : get_tok_str(t->v & ~0x20000000, ((void *)0)));
                tcc_get_debug_info (s1, t, &str);
                if (t->type.t & 0x0080) {
                    pos = t->c * 8 + (((t->type.t) >> 20) & 0x3f);
                    size = (((t->type.t) >> (20 + 6)) & 0x3f);
                }
                else {
                    pos = t->c * 8;
                    size = type_size(&t->type, &align) * 8;
                }
                cstr_printf (&str, ",%d,%d;", pos, size);
            }
            cstr_printf (&str, ";");
            tcc_debug_stabs(s1, str.data, N_LSYM, 0, ((void *)0), 0);
            cstr_free (&str);
        }
    }
    else if (((type & (((1U << (6+6)) - 1) << 20 | 0x0080)) == (2 << 20))) {
        Sym *e = t = t->type.ref;

        debug_type = ++debug_next_type;
        cstr_new (&str);
        cstr_printf (&str, "%s:T%d=e",
                     (t->v & ~0x40000000) >= 0x10000000
                     ? "" : get_tok_str(t->v & ~0x40000000, ((void *)0)),
                     debug_type);
        while (t->next) {
            t = t->next;
            cstr_printf (&str, "%s:",
                         (t->v & ~0x20000000) >= 0x10000000
                         ? "" : get_tok_str(t->v & ~0x20000000, ((void *)0)));
            cstr_printf (&str, e->type.t & 0x0010 ? "%u," : "%d,",
                         (int)t->enum_val);
        }
        cstr_printf (&str, ";");
        tcc_debug_stabs(s1, str.data, N_LSYM, 0, ((void *)0), 0);
        cstr_free (&str);
    }
    else if ((type & 0x000f) != 6) {
        type &= ~(((1U << (6+6)) - 1) << 20 | 0x0080);
        for (debug_type = 1;
             debug_type <= sizeof(default_debug) / sizeof(default_debug[0]);
             debug_type++)
            if (default_debug[debug_type - 1].type == type)
                break;
        if (debug_type > sizeof(default_debug) / sizeof(default_debug[0]))
            return;
    }
    if (n > 0)
        cstr_printf (result, "%d=", ++debug_next_type);
    t = s;
    for (;;) {
        type = t->type.t & ~(0x00001000 | 0x00002000 | 0x0100 | 0x0200);
        if ((type & 0x000f) != 1)
            type &= ~0x0020;
        if (type == 5)
            cstr_printf (result, "%d=*", ++debug_next_type);
        else if (type == (5 | 0x0040))
            cstr_printf (result, "%d=ar1;0;%d;",
                         ++debug_next_type, t->type.ref->c - 1);
        else if (type == 6) {
            cstr_printf (result, "%d=f", ++debug_next_type);
            tcc_get_debug_info (s1, t->type.ref, result);
            return;
        }
        else
            break;
        t = t->type.ref;
    }
    cstr_printf (result, "%d", debug_type);
}

static void tcc_debug_finish (TCCState *s1, struct debug_info *cur)
{
    while (cur) {
        int i;
        struct debug_info *next = cur->next;

        for (i = 0; i < cur->n_sym; i++) {
            struct debug_sym *s = &cur->sym[i];

            if (s->sec)
                put_stabs_r(s1, s->str, s->type, 0, 0, s->value,
                            s->sec, s->sym_index);
            else
                put_stabs(s1, s->str, s->type, 0, 0, s->value);
            tcc_free (s->str);
        }
        tcc_free (cur->sym);
        put_stabn(s1, N_LBRAC, 0, 0, cur->start);
        tcc_debug_finish (s1, cur->child);
        put_stabn(s1, N_RBRAC, 0, 0, cur->end);
        tcc_free (cur);
        cur = next;
    }
}

static void tcc_add_debug_info(TCCState *s1, int param, Sym *s, Sym *e)
{
    CString debug_str;
    cstr_new (&debug_str);
    for (; s != e; s = s->prev) {
        if (!s->v || (s->r & 0x003f) != 0x0032)
            continue;
        cstr_reset (&debug_str);
        cstr_printf (&debug_str, "%s:%s", get_tok_str(s->v, ((void *)0)), param ? "p" : "");
        tcc_get_debug_info(s1, s, &debug_str);
        tcc_debug_stabs(s1, debug_str.data, param ? N_PSYM : N_LSYM, s->c, ((void *)0), 0);
    }
    cstr_free (&debug_str);
}

static void tcc_debug_extern_sym(TCCState *s1, Sym *sym, int sh_num, int sym_bind)
{
    Section *s = s1->sections[sh_num];
    CString str;

    cstr_new (&str);
    cstr_printf (&str, "%s:%c",
        get_tok_str(sym->v, ((void *)0)),
        sym_bind == 1 ? 'G' : local_scope ? 'V' : 'S'
        );
    tcc_get_debug_info(s1, sym, &str);
    if (sym_bind == 1)
        tcc_debug_stabs(s1, str.data, N_GSYM, 0, ((void *)0), 0);
    else
        tcc_debug_stabs(s1, str.data,
            (sym->type.t & 0x00002000) && tcc_state->data_section == s
            ? N_STSYM : N_LCSYM, 0, s, sym->c);
    cstr_free (&str);
}


static void tcc_debug_end(TCCState *s1)
{
    if (!s1->do_debug)
        return;
    put_stabs_r(s1, ((void *)0), N_SO, 0, 0,
        tcc_state->text_section->data_offset, tcc_state->text_section, section_sym);
    tcc_free(debug_hash);
}

static BufferedFile* put_new_file(TCCState *s1)
{
    BufferedFile *f = file;

    if (f->filename[0] == ':')
        f = f->prev;
    if (f && new_file) {
        put_stabs_r(s1, f->filename, N_SOL, 0, 0, ind, tcc_state->text_section, section_sym);
        new_file = last_line_num = 0;
    }
    return f;
}


static void tcc_debug_line(TCCState *s1)
{
    BufferedFile *f;
    if (!s1->do_debug
        || tcc_state->cur_text_section != tcc_state->text_section
        || !(f = put_new_file(s1))
        || last_line_num == f->line_num)
        return;
    if (func_ind != -1) {
        put_stabn(s1, N_SLINE, 0, f->line_num, ind - func_ind);
    } else {

        put_stabs_r(s1, ((void *)0), N_SLINE, 0, f->line_num, ind, tcc_state->text_section, section_sym);
    }
    last_line_num = f->line_num;
}


static void tcc_debug_funcstart(TCCState *s1, Sym *sym)
{
    CString debug_str;
    BufferedFile *f;
    if (!s1->do_debug)
        return;
    debug_info_root = ((void *)0);
    debug_info = ((void *)0);
    tcc_debug_stabn(N_LBRAC, ind - func_ind);
    if (!(f = put_new_file(s1)))
        return;
    cstr_new (&debug_str);
    cstr_printf(&debug_str, "%s:%c", funcname, sym->type.t & 0x00002000 ? 'f' : 'F');
    tcc_get_debug_info(s1, sym->type.ref, &debug_str);
    put_stabs_r(s1, debug_str.data, N_FUN, 0, f->line_num, 0, tcc_state->cur_text_section, sym->c);
    cstr_free (&debug_str);

    tcc_debug_line(s1);
}


static void tcc_debug_funcend(TCCState *s1, int size)
{
    if (!s1->do_debug)
        return;
    tcc_debug_stabn(N_RBRAC, size);
    tcc_debug_finish (s1, debug_info_root);
}


static void tcc_debug_putfile(TCCState *s1, const char *filename)
{
    if (0 == strcmp(file->filename, filename))
        return;
    pstrcpy(file->filename, sizeof(file->filename), filename);
    new_file = 1;
}


static void tcc_debug_bincl(TCCState *s1)
{
    if (!s1->do_debug)
        return;
    put_stabs(s1, file->filename, N_BINCL, 0, 0, 0);
    new_file = 1;
}


static void tcc_debug_eincl(TCCState *s1)
{
    if (!s1->do_debug)
        return;
    put_stabn(s1, N_EINCL, 0, 0, 0);
    new_file = 1;
}



static void tccgen_init(TCCState *s1)
{
    vtop = (_vstack + 1) - 1;
    memset(vtop, 0, sizeof *vtop);


    int_type.t = 3;

    char_type.t = 1;
    if (s1->char_is_unsigned)
        char_type.t |= 0x0010;
    char_pointer_type = char_type;
    mk_pointer(&char_pointer_type);

    func_old_type.t = 6;
    func_old_type.ref = sym_push(0x20000000, &int_type, 0, 0);
    func_old_type.ref->f.func_call = 0;
    func_old_type.ref->f.func_type = 2;

    init_prec();

    cstr_new(&initstr);
}

static int tccgen_compile(TCCState *s1)
{
    tcc_state->cur_text_section = ((void *)0);
    funcname = "";
    anon_sym = 0x10000000;
    section_sym = 0;
    const_wanted = 0;
    nocode_wanted = 0x80000000;
    local_scope = 0;

    tcc_debug_start(s1);






    parse_flags = 0x0001 | 0x0002 | 0x0040;
    next();
    decl(0x0030);
    gen_inline_functions(s1);
    check_vstack();

    tcc_debug_end(s1);
    return 0;
}

static void tccgen_finish(TCCState *s1)
{
    cstr_free(&initstr);
    free_inline_functions(s1);
    sym_pop(&global_stack, ((void *)0), 0);
    sym_pop(&local_stack, ((void *)0), 0);

    free_defines(((void *)0));

    dynarray_reset(&sym_pools, &nb_sym_pools);
    sym_free_first = ((void *)0);
}


static Elf64_Sym *elfsym(Sym *s)
{
  if (!s || !s->c)
    return ((void *)0);
  return &((Elf64_Sym *)tcc_state->symtab_section->data)[s->c];
}


static void update_storage(Sym *sym)
{
    Elf64_Sym *esym;
    int sym_bind, old_sym_bind;

    esym = elfsym(sym);
    if (!esym)
        return;

    if (sym->a.visibility)
        esym->st_other = (esym->st_other & ~((-1) & 0x03))
            | sym->a.visibility;

    if (sym->type.t & (0x00002000 | 0x00008000))
        sym_bind = 0;
    else if (sym->a.weak)
        sym_bind = 2;
    else
        sym_bind = 1;
    old_sym_bind = (((unsigned char) (esym->st_info)) >> 4);
    if (sym_bind != old_sym_bind) {
        esym->st_info = ((((sym_bind)) << 4) + (((((esym->st_info) & 0xf))) & 0xf));
    }
# 882 "../tinycc/tccgen.c"
}





static void put_extern_sym2(Sym *sym, int sh_num,
                            Elf64_Addr value, unsigned long size,
                            int can_add_underscore)
{
    int sym_type, sym_bind, info, other, t;
    Elf64_Sym *esym;
    const char *name;
    char buf1[256];

    if (!sym->c) {
        name = get_tok_str(sym->v, ((void *)0));
        t = sym->type.t;
        if ((t & 0x000f) == 6) {
            sym_type = 2;
        } else if ((t & 0x000f) == 0) {
            sym_type = 0;
        } else {
            sym_type = 1;
        }
        if (t & (0x00002000 | 0x00008000))
            sym_bind = 0;
        else
            sym_bind = 1;
        other = 0;
# 928 "../tinycc/tccgen.c"
        if (sym->asm_label) {
            name = get_tok_str(sym->asm_label & ~0x20000000, ((void *)0));

            if (!(sym->asm_label & 0x20000000))
                can_add_underscore = 0;
        }

        if (tcc_state->leading_underscore && can_add_underscore) {
            buf1[0] = '_';
            pstrcpy(buf1 + 1, sizeof(buf1) - 1, name);
            name = buf1;
        }

        info = ((((sym_bind)) << 4) + (((sym_type)) & 0xf));
        sym->c = put_elf_sym(tcc_state->symtab_section, value, size, info, other, sh_num, name);

        if (tcc_state->do_debug
            && sym_type != 2
            && sym->v < 0x10000000)
            tcc_debug_extern_sym(tcc_state, sym, sh_num, sym_bind);

    } else {
        esym = elfsym(sym);
        esym->st_value = value;
        esym->st_size = size;
        esym->st_shndx = sh_num;
    }
    update_storage(sym);
}

static void put_extern_sym(Sym *sym, Section *section,
                           Elf64_Addr value, unsigned long size)
{
    int sh_num = section ? section->sh_num : 0;
    put_extern_sym2(sym, sh_num, value, size, 1);
}


static void greloca(Section *s, Sym *sym, unsigned long offset, int type,
                     Elf64_Addr addend)
{
    int c = 0;

    if (nocode_wanted && s == tcc_state->cur_text_section)
        return;

    if (sym) {
        if (0 == sym->c)
            put_extern_sym(sym, ((void *)0), 0, 0);
        c = sym->c;
    }


    put_elf_reloca(tcc_state->symtab_section, s, offset, type, c, addend);
}
# 993 "../tinycc/tccgen.c"
static Sym *__sym_malloc(void)
{
    Sym *sym_pool, *sym, *last_sym;
    int i;

    sym_pool = tcc_malloc((8192 / sizeof(Sym)) * sizeof(Sym));
    dynarray_add(&sym_pools, &nb_sym_pools, sym_pool);

    last_sym = sym_free_first;
    sym = sym_pool;
    for(i = 0; i < (8192 / sizeof(Sym)); i++) {
        sym->next = last_sym;
        last_sym = sym;
        sym++;
    }
    sym_free_first = last_sym;
    return last_sym;
}

static inline Sym *sym_malloc(void)
{
    Sym *sym;

    sym = sym_free_first;
    if (!sym)
        sym = __sym_malloc();
    sym_free_first = sym->next;
    return sym;




}

static inline void sym_free(Sym *sym)
{

    sym->next = sym_free_first;
    sym_free_first = sym;



}


static Sym *sym_push2(Sym **ps, int v, int t, int c)
{
    Sym *s;

    s = sym_malloc();
    memset(s, 0, sizeof *s);
    s->v = v;
    s->type.t = t;
    s->c = c;

    s->prev = *ps;
    *ps = s;
    return s;
}



static Sym *sym_find2(Sym *s, int v)
{
    while (s) {
        if (s->v == v)
            return s;
        else if (s->v == -1)
            return ((void *)0);
        s = s->prev;
    }
    return ((void *)0);
}


static inline Sym *struct_find(int v)
{
    v -= 256;
    if ((unsigned)v >= (unsigned)(tok_ident - 256))
        return ((void *)0);
    return table_ident[v]->sym_struct;
}


static inline Sym *sym_find(int v)
{
    v -= 256;
    if ((unsigned)v >= (unsigned)(tok_ident - 256))
        return ((void *)0);
    return table_ident[v]->sym_identifier;
}

static int sym_scope(Sym *s)
{
  if (((s->type.t & (((1U << (6+6)) - 1) << 20 | 0x0080)) == (3 << 20)))
    return s->type.ref->sym_scope;
  else
    return s->sym_scope;
}


static Sym *sym_push(int v, CType *type, int r, int c)
{
    Sym *s, **ps;
    TokenSym *ts;

    if (local_stack)
        ps = &local_stack;
    else
        ps = &global_stack;
    s = sym_push2(ps, v, type->t, c);
    s->type.ref = type->ref;
    s->r = r;


    if (!(v & 0x20000000) && (v & ~0x40000000) < 0x10000000) {

        ts = table_ident[(v & ~0x40000000) - 256];
        if (v & 0x40000000)
            ps = &ts->sym_struct;
        else
            ps = &ts->sym_identifier;
        s->prev_tok = *ps;
        *ps = s;
        s->sym_scope = local_scope;
        if (s->prev_tok && sym_scope(s->prev_tok) == s->sym_scope)
            _tcc_error("redeclaration of '%s'",
                get_tok_str(v & ~0x40000000, ((void *)0)));
    }
    return s;
}


static Sym *global_identifier_push(int v, int t, int c)
{
    Sym *s, **ps;
    s = sym_push2(&global_stack, v, t, c);
    s->r = 0x0030 | 0x0200;

    if (v < 0x10000000) {
        ps = &table_ident[v - 256]->sym_identifier;


        while (*ps != ((void *)0) && (*ps)->sym_scope)
            ps = &(*ps)->prev_tok;
        s->prev_tok = *ps;
        *ps = s;
    }
    return s;
}



static void sym_pop(Sym **ptop, Sym *b, int keep)
{
    Sym *s, *ss, **ps;
    TokenSym *ts;
    int v;

    s = *ptop;
    while(s != b) {
        ss = s->prev;
        v = s->v;


        if (!(v & 0x20000000) && (v & ~0x40000000) < 0x10000000) {
            ts = table_ident[(v & ~0x40000000) - 256];
            if (v & 0x40000000)
                ps = &ts->sym_struct;
            else
                ps = &ts->sym_identifier;
            *ps = s->prev_tok;
        }
	if (!keep)
	    sym_free(s);
        s = ss;
    }
    if (!keep)
	*ptop = b;
}


static void vcheck_cmp(void)
{
# 1189 "../tinycc/tccgen.c"
    if (vtop->r == 0x0033 && !nocode_wanted)
        gv(0x0001);
}

static void vsetc(CType *type, int r, CValue *vc)
{
    if (vtop >= (_vstack + 1) + (256 - 1))
        _tcc_error("memory full (vstack)");
    vcheck_cmp();
    vtop++;
    vtop->type = *type;
    vtop->r = r;
    vtop->r2 = 0x0030;
    vtop->c = *vc;
    vtop->sym = ((void *)0);
}

static void vswap(void)
{
    SValue tmp;

    vcheck_cmp();
    tmp = vtop[0];
    vtop[0] = vtop[-1];
    vtop[-1] = tmp;
}


static void vpop(void)
{
    int v;
    v = vtop->r & 0x003f;


    if (v == TREG_ST0) {
        o(0xd8dd);
    } else

    if (v == 0x0033) {

        gsym(vtop->jtrue);
        gsym(vtop->jfalse);
    }
    vtop--;
}


static void vpush(CType *type)
{
    vset(type, 0x0030, 0);
}


static void vpush64(int ty, unsigned long long v)
{
    CValue cval;
    CType ctype;
    ctype.t = ty;
    ctype.ref = ((void *)0);
    cval.i = v;
    vsetc(&ctype, 0x0030, &cval);
}


static void vpushi(int v)
{
    vpush64(3, v);
}


static void vpushs(Elf64_Addr v)
{
    vpush64((0x0800 | 4 | 0x0010), v);
}


static inline void vpushll(long long v)
{
    vpush64(4, v);
}

static void vset(CType *type, int r, int v)
{
    CValue cval;
    cval.i = v;
    vsetc(type, r, &cval);
}

static void vseti(int r, int v)
{
    CType type;
    type.t = 3;
    type.ref = ((void *)0);
    vset(&type, r, v);
}

static void vpushv(SValue *v)
{
    if (vtop >= (_vstack + 1) + (256 - 1))
        _tcc_error("memory full (vstack)");
    vtop++;
    *vtop = *v;
}

static void vdup(void)
{
    vpushv(vtop);
}




static void vrotb(int n)
{
    int i;
    SValue tmp;

    vcheck_cmp();
    tmp = vtop[-n + 1];
    for(i=-n+1;i!=0;i++)
        vtop[i] = vtop[i+1];
    vtop[0] = tmp;
}




static void vrote(SValue *e, int n)
{
    int i;
    SValue tmp;

    vcheck_cmp();
    tmp = *e;
    for(i = 0;i < n - 1; i++)
        e[-i] = e[-i - 1];
    e[-n + 1] = tmp;
}




static void vrott(int n)
{
    vrote(vtop, n);
}





static void vset_VT_CMP(int op)
{
    vtop->r = 0x0033;
    vtop->cmp_op = op;
    vtop->jfalse = 0;
    vtop->jtrue = 0;
}


static void vset_VT_JMP(void)
{
    int op = vtop->cmp_op;

    if (vtop->jtrue || vtop->jfalse) {

        int inv = op & (op < 2);
        vseti(0x0034+inv, gvtst(inv, 0));
    } else {

        vtop->c.i = op;
        if (op < 2)
            vtop->r = 0x0030;
    }
}


static void gvtst_set(int inv, int t)
{
    int *p;

    if (vtop->r != 0x0033) {
        vpushi(0);
        gen_op(0x95);
        if (vtop->r != 0x0033)
            vset_VT_CMP(vtop->c.i != 0);
    }

    p = inv ? &vtop->jfalse : &vtop->jtrue;
    *p = gjmp_append(*p, t);
}




static int gvtst(int inv, int t)
{
    int op, x, u;

    gvtst_set(inv, t);
    t = vtop->jtrue, u = vtop->jfalse;
    if (inv)
        x = u, u = t, t = x;
    op = vtop->cmp_op;


    if (op > 1)
        t = gjmp_cond(op ^ inv, t);
    else if (op != inv)
        t = gjmp_acs(t);

    gsym(u);

    vtop--;
    return t;
}


static void gen_test_zero(int op)
{
    if (vtop->r == 0x0033) {
        int j;
        if (op == 0x94) {
            j = vtop->jfalse;
            vtop->jfalse = vtop->jtrue;
            vtop->jtrue = j;
            vtop->cmp_op ^= 1;
        }
    } else {
        vpushi(0);
        gen_op(op);
    }
}



static inline void vpushsym(CType *type, Sym *sym)
{
    CValue cval;
    cval.i = 0;
    vsetc(type, 0x0030 | 0x0200, &cval);
    vtop->sym = sym;
}


static Sym *get_sym_ref(CType *type, Section *sec, unsigned long offset, unsigned long size)
{
    int v;
    Sym *sym;

    v = anon_sym++;
    sym = sym_push(v, type, 0x0030 | 0x0200, 0);
    sym->type.t |= 0x00002000;
    put_extern_sym(sym, sec, offset, size);
    return sym;
}


static void vpush_ref(CType *type, Section *sec, unsigned long offset, unsigned long size)
{
    vpushsym(type, get_sym_ref(type, sec, offset, size));
}


static Sym *external_global_sym(int v, CType *type)
{
    Sym *s;

    s = sym_find(v);
    if (!s) {

        s = global_identifier_push(v, type->t | 0x00001000, 0);
        s->type.ref = type->ref;
    } else if ((((s)->type.t & (0x000f | (0 | 0x0010))) == (0 | 0x0010))) {
        s->type.t = type->t | (s->type.t & 0x00001000);
        s->type.ref = type->ref;
        update_storage(s);
    }
    return s;
}


static void merge_symattr(struct SymAttr *sa, struct SymAttr *sa1)
{
    if (sa1->aligned && !sa->aligned)
      sa->aligned = sa1->aligned;
    sa->packed |= sa1->packed;
    sa->weak |= sa1->weak;
    if (sa1->visibility != 0) {
	int vis = sa->visibility;
	if (vis == 0
	    || vis > sa1->visibility)
	  vis = sa1->visibility;
	sa->visibility = vis;
    }
    sa->dllexport |= sa1->dllexport;
    sa->nodecorate |= sa1->nodecorate;
    sa->dllimport |= sa1->dllimport;
}


static void merge_funcattr(struct FuncAttr *fa, struct FuncAttr *fa1)
{
    if (fa1->func_call && !fa->func_call)
      fa->func_call = fa1->func_call;
    if (fa1->func_type && !fa->func_type)
      fa->func_type = fa1->func_type;
    if (fa1->func_args && !fa->func_args)
      fa->func_args = fa1->func_args;
    if (fa1->func_noreturn)
      fa->func_noreturn = 1;
    if (fa1->func_ctor)
      fa->func_ctor = 1;
    if (fa1->func_dtor)
      fa->func_dtor = 1;
}


static void merge_attr(AttributeDef *ad, AttributeDef *ad1)
{
    merge_symattr(&ad->a, &ad1->a);
    merge_funcattr(&ad->f, &ad1->f);

    if (ad1->section)
      ad->section = ad1->section;
    if (ad1->asm_label)
      ad->asm_label = ad1->asm_label;
    if (ad1->attr_mode)
      ad->attr_mode = ad1->attr_mode;
}


static void patch_type(Sym *sym, CType *type)
{
    if (!(type->t & 0x00001000) || ((sym->type.t & (((1U << (6+6)) - 1) << 20 | 0x0080)) == (3 << 20))) {
        if (!(sym->type.t & 0x00001000))
            _tcc_error("redefinition of '%s'", get_tok_str(sym->v, ((void *)0)));
        sym->type.t &= ~0x00001000;
    }

    if ((((sym)->type.t & (0x000f | (0 | 0x0010))) == (0 | 0x0010))) {

        sym->type.t = type->t & (sym->type.t | ~0x00002000);
        sym->type.ref = type->ref;
    }

    if (!is_compatible_types(&sym->type, type)) {
        _tcc_error("incompatible types for redefinition of '%s'",
                  get_tok_str(sym->v, ((void *)0)));

    } else if ((sym->type.t & 0x000f) == 6) {
        int static_proto = sym->type.t & 0x00002000;

        if ((type->t & 0x00002000) && !static_proto



            && !((type->t | sym->type.t) & 0x00008000))
            _tcc_warning("static storage ignored for redefinition of '%s'",
                get_tok_str(sym->v, ((void *)0)));


        if ((type->t | sym->type.t) & 0x00008000) {
            if (!((type->t ^ sym->type.t) & 0x00008000)
             || ((type->t | sym->type.t) & 0x00002000))
                static_proto |= 0x00008000;
        }

        if (0 == (type->t & 0x00001000)) {
            struct FuncAttr f = sym->type.ref->f;

            sym->type.t = (type->t & ~(0x00002000|0x00008000)) | static_proto;
            sym->type.ref = type->ref;
            merge_funcattr(&sym->type.ref->f, &f);
        } else {
            sym->type.t &= ~0x00008000 | static_proto;
        }

        if (sym->type.ref->f.func_type == 2
             && type->ref->f.func_type != 2) {
            sym->type.ref = type->ref;
        }

    } else {
        if ((sym->type.t & 0x0040) && type->ref->c >= 0) {

            sym->type.ref->c = type->ref->c;
        }
        if ((type->t ^ sym->type.t) & 0x00002000)
            _tcc_warning("storage mismatch for redefinition of '%s'",
                get_tok_str(sym->v, ((void *)0)));
    }
}


static void patch_storage(Sym *sym, AttributeDef *ad, CType *type)
{
    if (type)
        patch_type(sym, type);






    merge_symattr(&sym->a, &ad->a);
    if (ad->asm_label)
        sym->asm_label = ad->asm_label;
    update_storage(sym);
}


static Sym *sym_copy(Sym *s0, Sym **ps)
{
    Sym *s;
    s = sym_malloc(), *s = *s0;
    s->prev = *ps, *ps = s;
    if (s->v < 0x10000000) {
        ps = &table_ident[s->v - 256]->sym_identifier;
        s->prev_tok = *ps, *ps = s;
    }
    return s;
}


static void sym_copy_ref(Sym *s, Sym **ps)
{
    int bt = s->type.t & 0x000f;
    if (bt == 6 || bt == 5) {
        Sym **sp = &s->type.ref;
        for (s = *sp, *sp = ((void *)0); s; s = s->next) {
            Sym *s2 = sym_copy(s, ps);
            sp = &(*sp = s2)->next;
            sym_copy_ref(s2, ps);
        }
    }
}


static Sym *external_sym(int v, CType *type, int r, AttributeDef *ad)
{
    Sym *s;


    s = sym_find(v);
    while (s && s->sym_scope)
        s = s->prev_tok;

    if (!s) {

        s = global_identifier_push(v, type->t, 0);
        s->r |= r;
        s->a = ad->a;
        s->asm_label = ad->asm_label;
        s->type.ref = type->ref;

        if (local_stack)
            sym_copy_ref(s, &global_stack);
    } else {
        patch_storage(s, ad, type);
    }

    if (local_stack && (s->type.t & 0x000f) != 6)
        s = sym_copy(s, &local_stack);
    return s;
}


static void vpush_global_sym(CType *type, int v)
{
    vpushsym(type, external_global_sym(v, type));
}


static void save_regs(int n)
{
    SValue *p, *p1;
    for(p = (_vstack + 1), p1 = vtop - n; p <= p1; p++)
        save_reg(p->r);
}


static void save_reg(int r)
{
    save_reg_upstack(r, 0);
}



static void save_reg_upstack(int r, int n)
{
    int l, size, align, bt;
    SValue *p, *p1, sv;

    if ((r &= 0x003f) >= 0x0030)
        return;
    if (nocode_wanted)
        return;
    l = 0;
    for(p = (_vstack + 1), p1 = vtop - n; p <= p1; p++) {
        if ((p->r & 0x003f) == r || p->r2 == r) {

            if (!l) {
                bt = p->type.t & 0x000f;
                if (bt == 0)
                    continue;
                if ((p->r & 0x0100) || bt == 6)
                    bt = 5;
                sv.type.t = bt;
                size = type_size(&sv.type, &align);
                l = get_temp_local_var(size,align);
                sv.r = 0x0032 | 0x0100;
                sv.c.i = l;
                store(p->r & 0x003f, &sv);


                if (r == TREG_ST0) {
                    o(0xd8dd);
                }


                if (p->r2 < 0x0030 && (R2_RET(bt) != 0x0030)) {
                    sv.c.i += 8;
                    store(p->r2, &sv);
                }
            }

            if (p->r & 0x0100) {



                p->r = (p->r & ~(0x003f | 0x8000)) | 0x0031;
            } else {
                p->r = 0x0100 | 0x0032;
            }
            p->r2 = 0x0030;
            p->c.i = l;
        }
    }
}
# 1756 "../tinycc/tccgen.c"
static int get_reg(int rc)
{
    int r;
    SValue *p;


    for(r=0;r<25;r++) {
        if (reg_classes[r] & rc) {
            if (nocode_wanted)
                return r;
            for(p=(_vstack + 1);p<=vtop;p++) {
                if ((p->r & 0x003f) == r ||
                    p->r2 == r)
                    goto notfound;
            }
            return r;
        }
    notfound: ;
    }




    for(p=(_vstack + 1);p<=vtop;p++) {

        r = p->r2;
        if (r < 0x0030 && (reg_classes[r] & rc))
            goto save_found;
        r = p->r & 0x003f;
        if (r < 0x0030 && (reg_classes[r] & rc)) {
        save_found:
            save_reg(r);
            return r;
        }
    }

    return -1;
}


static int get_temp_local_var(int size,int align){
	int i;
	struct temp_local_variable *temp_var;
	int found_var;
	SValue *p;
	int r;
	char free;
	char found;
	found=0;
	for(i=0;i<nb_temp_local_vars;i++){
		temp_var=&arr_temp_local_vars[i];
		if(temp_var->size<size||align!=temp_var->align){
			continue;
		}

		free=1;
		for(p=(_vstack + 1);p<=vtop;p++) {
			r=p->r&0x003f;
			if(r==0x0032||r==0x0031){
				if(p->c.i==temp_var->location){
					free=0;
					break;
				}
			}
		}
		if(free){
			found_var=temp_var->location;
			found=1;
			break;
		}
	}
	if(!found){
		loc = (loc - size) & -align;
		if(nb_temp_local_vars<8){
			temp_var=&arr_temp_local_vars[i];
			temp_var->location=loc;
			temp_var->size=size;
			temp_var->align=align;
			nb_temp_local_vars++;
		}
		found_var=loc;
	}
	return found_var;
}

static void clear_temp_local_var_list(){
	nb_temp_local_vars=0;
}



static void move_reg(int r, int s, int t)
{
    SValue sv;

    if (r != s) {
        save_reg(r);
        sv.type.t = t;
        sv.type.ref = ((void *)0);
        sv.r = s;
        sv.c.i = 0;
        load(r, &sv);
    }
}


static void gaddrof(void)
{
    vtop->r &= ~0x0100;

    if ((vtop->r & 0x003f) == 0x0031)
        vtop->r = (vtop->r & ~0x003f) | 0x0032 | 0x0100;
}



static void gen_bounded_ptr_add(void)
{
    int save = (vtop[-1].r & 0x003f) == 0x0032;
    if (save) {
      vpushv(&vtop[-1]);
      vrott(3);
    }
    vpush_global_sym(&func_old_type, TOK___bound_ptr_add);
    vrott(3);
    gfunc_call(2);
    vtop -= save;
    vpushi(0);

    vtop->r = TREG_RAX | 0x8000;
    if (nocode_wanted)
        return;

    vtop->c.i = (tcc_state->cur_text_section->reloc->data_offset - sizeof(Elf64_Rela));
}



static void gen_bounded_ptr_deref(void)
{
    Elf64_Addr func;
    int size, align;
    Elf64_Rela *rel;
    Sym *sym;

    if (nocode_wanted)
        return;

    size = type_size(&vtop->type, &align);
    switch(size) {
    case  1: func = TOK___bound_ptr_indir1; break;
    case  2: func = TOK___bound_ptr_indir2; break;
    case  4: func = TOK___bound_ptr_indir4; break;
    case  8: func = TOK___bound_ptr_indir8; break;
    case 12: func = TOK___bound_ptr_indir12; break;
    case 16: func = TOK___bound_ptr_indir16; break;
    default:

        return;
    }
    sym = external_global_sym(func, &func_old_type);
    if (!sym->c)
        put_extern_sym(sym, ((void *)0), 0, 0);


    rel = (Elf64_Rela *)(tcc_state->cur_text_section->reloc->data + vtop->c.i);
    rel->r_info = ((((Elf64_Xword) (sym->c)) << 32) + (((rel->r_info) & 0xffffffff)));
}


static void gbound(void)
{
    CType type1;

    vtop->r &= ~0x4000;

    if (vtop->r & 0x0100) {

        if (!(vtop->r & 0x8000)) {

            type1 = vtop->type;
            vtop->type.t = 5;
            gaddrof();
            vpushi(0);
            gen_bounded_ptr_add();
            vtop->r |= 0x0100;
            vtop->type = type1;
        }

        gen_bounded_ptr_deref();
    }
}



static void gbound_args(int nb_args)
{
    int i, v;
    SValue *sv;

    for (i = 1; i <= nb_args; ++i)
        if (vtop[1 - i].r & 0x4000) {
            vrotb(i);
            gbound();
            vrott(i);
        }

    sv = vtop - nb_args;
    if (sv->r & 0x0200) {
        v = sv->sym->v;
        if (v == TOK_setjmp
          || v == TOK__setjmp

          || v == TOK_sigsetjmp
          || v == TOK___sigsetjmp

          ) {
            vpush_global_sym(&func_old_type, TOK___bound_setjmp);
            vpushv(sv + 1);
            gfunc_call(1);
            func_bound_add_epilog = 1;
        }

        if (v == TOK_alloca)
            func_bound_add_epilog = 1;

    }
}


static void add_local_bounds(Sym *s, Sym *e)
{
    for (; s != e; s = s->prev) {
        if (!s->v || (s->r & 0x003f) != 0x0032)
          continue;

        if ((s->type.t & 0x0040)
            || (s->type.t & 0x000f) == 7
            || s->a.addrtaken) {

            int align, size = type_size(&s->type, &align);
            Elf64_Addr *bounds_ptr = section_ptr_add(tcc_state->lbounds_section,
                                                 2 * sizeof(Elf64_Addr));
            bounds_ptr[0] = s->c;
            bounds_ptr[1] = size;
        }
    }
}



static void pop_local_syms(Sym **ptop, Sym *b, int keep, int ellipsis)
{

    if (tcc_state->do_bounds_check && !ellipsis && !keep)
        add_local_bounds(*ptop, b);

    if (tcc_state->do_debug)
        tcc_add_debug_info (tcc_state, !local_scope, *ptop, b);
    sym_pop(ptop, b, keep);
}

static void incr_bf_adr(int o)
{
    vtop->type = char_pointer_type;
    gaddrof();
    vpushs(o);
    gen_op('+');
    vtop->type.t = 1 | 0x0010;
    vtop->r |= 0x0100;
}


static void load_packed_bf(CType *type, int bit_pos, int bit_size)
{
    int n, o, bits;
    save_reg_upstack(vtop->r, 1);
    vpush64(type->t & 0x000f, 0);
    bits = 0, o = bit_pos >> 3, bit_pos &= 7;
    do {
        vswap();
        incr_bf_adr(o);
        vdup();
        n = 8 - bit_pos;
        if (n > bit_size)
            n = bit_size;
        if (bit_pos)
            vpushi(bit_pos), gen_op(0x8b), bit_pos = 0;
        if (n < 8)
            vpushi((1 << n) - 1), gen_op('&');
        gen_cast(type);
        if (bits)
            vpushi(bits), gen_op('<');
        vrotb(3);
        gen_op('|');
        bits += n, bit_size -= n, o = 1;
    } while (bit_size);
    vswap(), vpop();
    if (!(type->t & 0x0010)) {
        n = ((type->t & 0x000f) == 4 ? 64 : 32) - bits;
        vpushi(n), gen_op('<');
        vpushi(n), gen_op('>');
    }
}


static void store_packed_bf(int bit_pos, int bit_size)
{
    int bits, n, o, m, c;

    c = (vtop->r & (0x003f | 0x0100 | 0x0200)) == 0x0030;
    vswap();
    save_reg_upstack(vtop->r, 1);
    bits = 0, o = bit_pos >> 3, bit_pos &= 7;
    do {
        incr_bf_adr(o);
        vswap();
        c ? vdup() : gv_dup();
        vrott(3);
        if (bits)
            vpushi(bits), gen_op(0x8b);
        if (bit_pos)
            vpushi(bit_pos), gen_op('<');
        n = 8 - bit_pos;
        if (n > bit_size)
            n = bit_size;
        if (n < 8) {
            m = ((1 << n) - 1) << bit_pos;
            vpushi(m), gen_op('&');
            vpushv(vtop-1);
            vpushi(m & 0x80 ? ~m & 0x7f : ~m);
            gen_op('&');
            gen_op('|');
        }
        vdup(), vtop[-1] = vtop[-2];
        vstore(), vpop();
        bits += n, bit_size -= n, bit_pos = 0, o = 1;
    } while (bit_size);
    vpop(), vpop();
}

static int adjust_bf(SValue *sv, int bit_pos, int bit_size)
{
    int t;
    if (0 == sv->type.ref)
        return 0;
    t = sv->type.ref->auxtype;
    if (t != -1 && t != 7) {
        sv->type.t = (sv->type.t & ~(0x000f | 0x0800)) | t;
        sv->r |= 0x0100;
    }
    return t;
}




static int gv(int rc)
{
    int r, r2, r_ok, r2_ok, rc2, bt;
    int bit_pos, bit_size, size, align;


    if (vtop->type.t & 0x0080) {
        CType type;

        bit_pos = (((vtop->type.t) >> 20) & 0x3f);
        bit_size = (((vtop->type.t) >> (20 + 6)) & 0x3f);

        vtop->type.t &= ~(((1U << (6+6)) - 1) << 20 | 0x0080);

        type.ref = ((void *)0);
        type.t = vtop->type.t & 0x0010;
        if ((vtop->type.t & 0x000f) == 11)
            type.t |= 0x0010;

        r = adjust_bf(vtop, bit_pos, bit_size);

        if ((vtop->type.t & 0x000f) == 4)
            type.t |= 4;
        else
            type.t |= 3;

        if (r == 7) {
            load_packed_bf(&type, bit_pos, bit_size);
        } else {
            int bits = (type.t & 0x000f) == 4 ? 64 : 32;

            gen_cast(&type);

            vpushi(bits - (bit_pos + bit_size));
            gen_op('<');
            vpushi(bits - bit_size);

            gen_op('>');
        }
        r = gv(rc);
    } else {
        if (is_float(vtop->type.t) &&
            (vtop->r & (0x003f | 0x0100)) == 0x0030) {
            unsigned long offset;


            size = type_size(&vtop->type, &align);
            if ((nocode_wanted > 0))
                size = 0, align = 1;
            offset = section_add(tcc_state->data_section, size, align);
            vpush_ref(&vtop->type, tcc_state->data_section, offset, size);
	    vswap();
	    init_putv(&vtop->type, tcc_state->data_section, offset);
	    vtop->r |= 0x0100;
        }

        if (vtop->r & 0x4000)
            gbound();


        bt = vtop->type.t & 0x000f;






        rc2 = RC2_TYPE(bt, rc);





        r = vtop->r & 0x003f;
        r_ok = !(vtop->r & 0x0100) && (r < 0x0030) && (reg_classes[r] & rc);
        r2_ok = !rc2 || ((vtop->r2 < 0x0030) && (reg_classes[vtop->r2] & rc2));

        if (!r_ok || !r2_ok) {
            if (!r_ok)
                r = get_reg(rc);
            if (rc2) {
                int load_type = (bt == 14) ? 9 : (0x0800 | 4);
                int original_type = vtop->type.t;



                if ((vtop->r & (0x003f | 0x0100)) == 0x0030) {

                    unsigned long long ll = vtop->c.i;
                    vtop->c.i = ll;
                    load(r, vtop);
                    vtop->r = r;
                    vpushi(ll >> 32);
                } else if (vtop->r & 0x0100) {


                    save_reg_upstack(vtop->r, 1);

                    vtop->type.t = load_type;
                    load(r, vtop);
                    vdup();
                    vtop[-1].r = r;

                    vtop->type.t = (0x0800 | 4);
                    gaddrof();
                    vpushs(8);
                    gen_op('+');
                    vtop->r |= 0x0100;
                    vtop->type.t = load_type;
                } else {

                    if (!r_ok)
                        load(r, vtop);
                    if (r2_ok && vtop->r2 < 0x0030)
                        goto done;
                    vdup();
                    vtop[-1].r = r;
                    vtop->r = vtop[-1].r2;
                }


                r2 = get_reg(rc2);
                load(r2, vtop);
                vpop();

                vtop->r2 = r2;
            done:
                vtop->type.t = original_type;
            } else {
                if (vtop->r == 0x0033)
                    vset_VT_JMP();

                load(r, vtop);
            }
        }
        vtop->r = r;





    }
    return r;
}


static void gv2(int rc1, int rc2)
{



    if (vtop->r != 0x0033 && rc1 <= rc2) {
        vswap();
        gv(rc1);
        vswap();
        gv(rc2);

        if ((vtop[-1].r & 0x003f) >= 0x0030) {
            vswap();
            gv(rc1);
            vswap();
        }
    } else {
        gv(rc2);
        vswap();
        gv(rc1);
        vswap();

        if ((vtop[0].r & 0x003f) >= 0x0030) {
            gv(rc2);
        }
    }
}
# 2323 "../tinycc/tccgen.c"
static void gv_dup(void)
{
    int t, rc, r;

    t = vtop->type.t;
# 2351 "../tinycc/tccgen.c"
    rc = RC_TYPE(t);
    gv(rc);
    r = get_reg(rc);
    vdup();
    load(r, vtop);
    vtop->r = r;
}
# 2592 "../tinycc/tccgen.c"
static uint64_t gen_opic_sdiv(uint64_t a, uint64_t b)
{
    uint64_t x = (a >> 63 ? -a : a) / (b >> 63 ? -b : b);
    return (a ^ b) >> 63 ? -x : x;
}

static int gen_opic_lt(uint64_t a, uint64_t b)
{
    return (a ^ (uint64_t)1 << 63) < (b ^ (uint64_t)1 << 63);
}



static void gen_opic(int op)
{
    SValue *v1 = vtop - 1;
    SValue *v2 = vtop;
    int t1 = v1->type.t & 0x000f;
    int t2 = v2->type.t & 0x000f;
    int c1 = (v1->r & (0x003f | 0x0100 | 0x0200)) == 0x0030;
    int c2 = (v2->r & (0x003f | 0x0100 | 0x0200)) == 0x0030;
    uint64_t l1 = c1 ? v1->c.i : 0;
    uint64_t l2 = c2 ? v2->c.i : 0;
    int shm = (t1 == 4) ? 63 : 31;

    if (t1 != 4 && (8 != 8 || t1 != 5))
        l1 = ((uint32_t)l1 |
              (v1->type.t & 0x0010 ? 0 : -(l1 & 0x80000000)));
    if (t2 != 4 && (8 != 8 || t2 != 5))
        l2 = ((uint32_t)l2 |
              (v2->type.t & 0x0010 ? 0 : -(l2 & 0x80000000)));

    if (c1 && c2) {
        switch(op) {
        case '+': l1 += l2; break;
        case '-': l1 -= l2; break;
        case '&': l1 &= l2; break;
        case '^': l1 ^= l2; break;
        case '|': l1 |= l2; break;
        case '*': l1 *= l2; break;

        case 0x85:
        case '/':
        case '%':
        case 0x83:
        case 0x84:

            if (l2 == 0) {
                if (const_wanted && !(nocode_wanted & 0xffff))
                    _tcc_error("division by zero in constant");
                goto general_case;
            }
            switch(op) {
            default: l1 = gen_opic_sdiv(l1, l2); break;
            case '%': l1 = l1 - l2 * gen_opic_sdiv(l1, l2); break;
            case 0x83: l1 = l1 / l2; break;
            case 0x84: l1 = l1 % l2; break;
            }
            break;
        case '<': l1 <<= (l2 & shm); break;
        case 0x8b: l1 >>= (l2 & shm); break;
        case '>':
            l1 = (l1 >> 63) ? ~(~l1 >> (l2 & shm)) : l1 >> (l2 & shm);
            break;

        case 0x92: l1 = l1 < l2; break;
        case 0x93: l1 = l1 >= l2; break;
        case 0x94: l1 = l1 == l2; break;
        case 0x95: l1 = l1 != l2; break;
        case 0x96: l1 = l1 <= l2; break;
        case 0x97: l1 = l1 > l2; break;
        case 0x9c: l1 = gen_opic_lt(l1, l2); break;
        case 0x9d: l1 = !gen_opic_lt(l1, l2); break;
        case 0x9e: l1 = !gen_opic_lt(l2, l1); break;
        case 0x9f: l1 = gen_opic_lt(l2, l1); break;

        case 0x90: l1 = l1 && l2; break;
        case 0x91: l1 = l1 || l2; break;
        default:
            goto general_case;
        }
	if (t1 != 4 && (8 != 8 || t1 != 5))
	    l1 = ((uint32_t)l1 |
		(v1->type.t & 0x0010 ? 0 : -(l1 & 0x80000000)));
        v1->c.i = l1;
        vtop--;
    } else {

        if (c1 && (op == '+' || op == '&' || op == '^' ||
                   op == '|' || op == '*' || op == 0x94 || op == 0x95)) {
            vswap();
            c2 = c1;
            l2 = l1;
        }
        if (!const_wanted &&
            c1 && ((l1 == 0 &&
                    (op == '<' || op == 0x8b || op == '>')) ||
                   (l1 == -1 && op == '>'))) {

            vtop--;
        } else if (!const_wanted &&
                   c2 && ((l2 == 0 && (op == '&' || op == '*')) ||
                          (op == '|' &&
                            (l2 == -1 || (l2 == 0xFFFFFFFF && t2 != 4))) ||
                          (l2 == 1 && (op == '%' || op == 0x84)))) {

            if (l2 == 1)
                vtop->c.i = 0;
            vswap();
            vtop--;
        } else if (c2 && (((op == '*' || op == '/' || op == 0x83 ||
                          op == 0x85) &&
                           l2 == 1) ||
                          ((op == '+' || op == '-' || op == '|' || op == '^' ||
                            op == '<' || op == 0x8b || op == '>') &&
                           l2 == 0) ||
                          (op == '&' &&
                            (l2 == -1 || (l2 == 0xFFFFFFFF && t2 != 4))))) {

            vtop--;
        } else if (c2 && (op == '*' || op == 0x85 || op == 0x83)) {

            if (l2 > 0 && (l2 & (l2 - 1)) == 0) {
                int n = -1;
                while (l2) {
                    l2 >>= 1;
                    n++;
                }
                vtop->c.i = n;
                if (op == '*')
                    op = '<';
                else if (op == 0x85)
                    op = '>';
                else
                    op = 0x8b;
            }
            goto general_case;
        } else if (c2 && (op == '+' || op == '-') &&
                   (((vtop[-1].r & (0x003f | 0x0100 | 0x0200)) == (0x0030 | 0x0200))
                    || (vtop[-1].r & (0x003f | 0x0100)) == 0x0032)) {

            if (op == '-')
                l2 = -l2;
	    l2 += vtop[-1].c.i;


	    if ((int)l2 != l2)
	        goto general_case;
            vtop--;
            vtop->c.i = l2;
        } else {
        general_case:

                if (t1 == 4 || t2 == 4 ||
                    (8 == 8 && (t1 == 5 || t2 == 5)))
                    gen_opl(op);
                else
                    gen_opi(op);
        }
    }
}


static void gen_opif(int op)
{
    int c1, c2;
    SValue *v1, *v2;




    long double f1, f2;

    v1 = vtop - 1;
    v2 = vtop;

    c1 = (v1->r & (0x003f | 0x0100 | 0x0200)) == 0x0030;
    c2 = (v2->r & (0x003f | 0x0100 | 0x0200)) == 0x0030;
    if (c1 && c2) {
        if (v1->type.t == 8) {
            f1 = v1->c.f;
            f2 = v2->c.f;
        } else if (v1->type.t == 9) {
            f1 = v1->c.d;
            f2 = v2->c.d;
        } else {
            f1 = v1->c.ld;
            f2 = v2->c.ld;
        }



        if (!ieee_finite(f1) || !ieee_finite(f2))
            goto general_case;

        switch(op) {
        case '+': f1 += f2; break;
        case '-': f1 -= f2; break;
        case '*': f1 *= f2; break;
        case '/':
            if (f2 == 0.0) {


                if (!const_wanted)
                    goto general_case;
            }
            f1 /= f2;
            break;

        default:
            goto general_case;
        }

        if (v1->type.t == 8) {
            v1->c.f = f1;
        } else if (v1->type.t == 9) {
            v1->c.d = f1;
        } else {
            v1->c.ld = f1;
        }
        vtop--;
    } else {
    general_case:
        gen_opf(op);
    }
}





static void type_to_str(char *buf, int buf_size,
                 CType *type, const char *varstr)
{
    int bt, v, t;
    Sym *s, *sa;
    char buf1[256];
    const char *tstr;

    t = type->t;
    bt = t & 0x000f;
    buf[0] = '\0';

    if (t & 0x00001000)
        pstrcat(buf, buf_size, "extern ");
    if (t & 0x00002000)
        pstrcat(buf, buf_size, "static ");
    if (t & 0x00004000)
        pstrcat(buf, buf_size, "typedef ");
    if (t & 0x00008000)
        pstrcat(buf, buf_size, "inline ");
    if (t & 0x0200)
        pstrcat(buf, buf_size, "volatile ");
    if (t & 0x0100)
        pstrcat(buf, buf_size, "const ");

    if (((t & 0x0020) && bt == 1)
        || ((t & 0x0010)
            && (bt == 2 || bt == 3 || bt == 4)
            && !((t & (((1U << (6+6)) - 1) << 20 | 0x0080)) == (2 << 20))
            ))
        pstrcat(buf, buf_size, (t & 0x0010) ? "unsigned " : "signed ");

    buf_size -= strlen(buf);
    buf += strlen(buf);

    switch(bt) {
    case 0:
        tstr = "void";
        goto add_tstr;
    case 11:
        tstr = "_Bool";
        goto add_tstr;
    case 1:
        tstr = "char";
        goto add_tstr;
    case 2:
        tstr = "short";
        goto add_tstr;
    case 3:
        tstr = "int";
        goto maybe_long;
    case 4:
        tstr = "long long";
    maybe_long:
        if (t & 0x0800)
            tstr = "long";
        if (!((t & (((1U << (6+6)) - 1) << 20 | 0x0080)) == (2 << 20)))
            goto add_tstr;
        tstr = "enum ";
        goto tstruct;
    case 8:
        tstr = "float";
        goto add_tstr;
    case 9:
        tstr = "double";
        if (!(t & 0x0800))
            goto add_tstr;
    case 10:
        tstr = "long double";
    add_tstr:
        pstrcat(buf, buf_size, tstr);
        break;
    case 7:
        tstr = "struct ";
        if (((t & ((((1U << (6+6)) - 1) << 20 | 0x0080)|0x000f)) == (1 << 20 | 7)))
            tstr = "union ";
    tstruct:
        pstrcat(buf, buf_size, tstr);
        v = type->ref->v & ~0x40000000;
        if (v >= 0x10000000)
            pstrcat(buf, buf_size, "<anonymous>");
        else
            pstrcat(buf, buf_size, get_tok_str(v, ((void *)0)));
        break;
    case 6:
        s = type->ref;
        buf1[0]=0;
        if (varstr && '*' == *varstr) {
            pstrcat(buf1, sizeof(buf1), "(");
            pstrcat(buf1, sizeof(buf1), varstr);
            pstrcat(buf1, sizeof(buf1), ")");
        }
        pstrcat(buf1, buf_size, "(");
        sa = s->next;
        while (sa != ((void *)0)) {
            char buf2[256];
            type_to_str(buf2, sizeof(buf2), &sa->type, ((void *)0));
            pstrcat(buf1, sizeof(buf1), buf2);
            sa = sa->next;
            if (sa)
                pstrcat(buf1, sizeof(buf1), ", ");
        }
        if (s->f.func_type == 3)
            pstrcat(buf1, sizeof(buf1), ", ...");
        pstrcat(buf1, sizeof(buf1), ")");
        type_to_str(buf, buf_size, &s->type, buf1);
        goto no_var;
    case 5:
        s = type->ref;
        if (t & 0x0040) {
            if (varstr && '*' == *varstr)
                snprintf(buf1, sizeof(buf1), "(%s)[%d]", varstr, s->c);
            else
                snprintf(buf1, sizeof(buf1), "%s[%d]", varstr ? varstr : "", s->c);
            type_to_str(buf, buf_size, &s->type, buf1);
            goto no_var;
        }
        pstrcpy(buf1, sizeof(buf1), "*");
        if (t & 0x0100)
            pstrcat(buf1, buf_size, "const ");
        if (t & 0x0200)
            pstrcat(buf1, buf_size, "volatile ");
        if (varstr)
            pstrcat(buf1, sizeof(buf1), varstr);
        type_to_str(buf, buf_size, &s->type, buf1);
        goto no_var;
    }
    if (varstr) {
        pstrcat(buf, buf_size, " ");
        pstrcat(buf, buf_size, varstr);
    }
 no_var: ;
}

static void type_incompatibility_error(CType* st, CType* dt, const char* fmt)
{
    char buf1[256], buf2[256];
    type_to_str(buf1, sizeof(buf1), st, ((void *)0));
    type_to_str(buf2, sizeof(buf2), dt, ((void *)0));
    _tcc_error(fmt, buf1, buf2);
}

static void type_incompatibility_warning(CType* st, CType* dt, const char* fmt)
{
    char buf1[256], buf2[256];
    type_to_str(buf1, sizeof(buf1), st, ((void *)0));
    type_to_str(buf2, sizeof(buf2), dt, ((void *)0));
    _tcc_warning(fmt, buf1, buf2);
}

static int pointed_size(CType *type)
{
    int align;
    return type_size(pointed_type(type), &align);
}

static void vla_runtime_pointed_size(CType *type)
{
    int align;
    vla_runtime_type_size(pointed_type(type), &align);
}

static inline int is_null_pointer(SValue *p)
{
    if ((p->r & (0x003f | 0x0100 | 0x0200)) != 0x0030)
        return 0;
    return ((p->type.t & 0x000f) == 3 && (uint32_t)p->c.i == 0) ||
        ((p->type.t & 0x000f) == 4 && p->c.i == 0) ||
        ((p->type.t & 0x000f) == 5 &&
         (8 == 4 ? (uint32_t)p->c.i == 0 : p->c.i == 0) &&
         ((pointed_type(&p->type)->t & 0x000f) == 0) &&
         0 == (pointed_type(&p->type)->t & (0x0100 | 0x0200))
         );
}


static int is_compatible_func(CType *type1, CType *type2)
{
    Sym *s1, *s2;

    s1 = type1->ref;
    s2 = type2->ref;
    if (s1->f.func_call != s2->f.func_call)
        return 0;
    if (s1->f.func_type != s2->f.func_type
        && s1->f.func_type != 2
        && s2->f.func_type != 2)
        return 0;



    if (s1->f.func_type == 2 && !s1->next)
        return 1;
    if (s2->f.func_type == 2 && !s2->next)
        return 1;
    for (;;) {
        if (!is_compatible_unqualified_types(&s1->type, &s2->type))
            return 0;
        s1 = s1->next;
        s2 = s2->next;
        if (!s1)
            return !s2;
        if (!s2)
            return 0;
    }
}




static int compare_types(CType *type1, CType *type2, int unqualified)
{
    int bt1, t1, t2;

    t1 = type1->t & (~((0x00001000 | 0x00002000 | 0x00004000 | 0x00008000)|(((1U << (6+6)) - 1) << 20 | 0x0080)));
    t2 = type2->t & (~((0x00001000 | 0x00002000 | 0x00004000 | 0x00008000)|(((1U << (6+6)) - 1) << 20 | 0x0080)));
    if (unqualified) {

        t1 &= ~(0x0100 | 0x0200);
        t2 &= ~(0x0100 | 0x0200);
    }


    if ((t1 & 0x000f) != 1) {
        t1 &= ~0x0020;
        t2 &= ~0x0020;
    }

    if (t1 != t2)
        return 0;

    if ((t1 & 0x0040)
        && !(type1->ref->c < 0
          || type2->ref->c < 0
          || type1->ref->c == type2->ref->c))
            return 0;


    bt1 = t1 & 0x000f;
    if (bt1 == 5) {
        type1 = pointed_type(type1);
        type2 = pointed_type(type2);
        return is_compatible_types(type1, type2);
    } else if (bt1 == 7) {
        return (type1->ref == type2->ref);
    } else if (bt1 == 6) {
        return is_compatible_func(type1, type2);
    } else if (((type1->t & (((1U << (6+6)) - 1) << 20 | 0x0080)) == (2 << 20)) && ((type2->t & (((1U << (6+6)) - 1) << 20 | 0x0080)) == (2 << 20))) {


        return type1->ref == type2->ref;
    } else {
        return 1;
    }
}



static int combine_types(CType *dest, SValue *op1, SValue *op2, int op)
{
    CType *type1 = &op1->type, *type2 = &op2->type, type;
    int t1 = type1->t, t2 = type2->t, bt1 = t1 & 0x000f, bt2 = t2 & 0x000f;
    int ret = 1;

    type.t = 0;
    type.ref = ((void *)0);

    if (bt1 == 0 || bt2 == 0) {
        ret = op == '?' ? 1 : 0;

        type.t = 0;
    } else if (bt1 == 5 || bt2 == 5) {
        if (op == '+') ;


        else if (is_null_pointer (op2)) type = *type1;
        else if (is_null_pointer (op1)) type = *type2;
        else if (bt1 != bt2) {


            if ((op == '?' || (op >= 0x90 && op <= 0x9f))
                && (is_integer_btype(bt1) || is_integer_btype(bt2)))
              _tcc_warning("pointer/integer mismatch in %s",
                          op == '?' ? "conditional expression" : "comparison");
            else if (op != '-' || !is_integer_btype(bt2))
              ret = 0;
            type = *(bt1 == 5 ? type1 : type2);
        } else {
            CType *pt1 = pointed_type(type1);
            CType *pt2 = pointed_type(type2);
            int pbt1 = pt1->t & 0x000f;
            int pbt2 = pt2->t & 0x000f;
            int newquals, copied = 0;
            if (pbt1 != 0 && pbt2 != 0
                && !compare_types(pt1, pt2, 1 )) {
                if (op != '?' && !(op >= 0x90 && op <= 0x9f))
                  ret = 0;
                else
                  type_incompatibility_warning(type1, type2,
                    op == '?'
                     ? "pointer type mismatch in conditional expression ('%s' and '%s')"
                     : "pointer type mismatch in comparison('%s' and '%s')");
            }
            if (op == '?') {


                type = *((pbt1 == 0) ? type1 : type2);

                newquals = ((pt1->t | pt2->t) & (0x0100 | 0x0200));
                if ((~pointed_type(&type)->t & (0x0100 | 0x0200))
                    & newquals)
                  {

                    type.ref = sym_push(0x20000000, &type.ref->type,
                                        0, type.ref->c);
                    copied = 1;
                    pointed_type(&type)->t |= newquals;
                  }


                if (pt1->t & 0x0040
                    && pt2->t & 0x0040
                    && pointed_type(&type)->ref->c < 0
                    && (pt1->ref->c > 0 || pt2->ref->c > 0))
                  {
                    if (!copied)
                      type.ref = sym_push(0x20000000, &type.ref->type,
                                          0, type.ref->c);
                    pointed_type(&type)->ref =
                        sym_push(0x20000000, &pointed_type(&type)->ref->type,
                                 0, pointed_type(&type)->ref->c);
                    pointed_type(&type)->ref->c =
                        0 < pt1->ref->c ? pt1->ref->c : pt2->ref->c;
                  }
            }
        }
        if ((op >= 0x90 && op <= 0x9f))
          type.t = (0x0800 | 4 | 0x0010);
    } else if (bt1 == 7 || bt2 == 7) {
        if (op != '?' || !compare_types(type1, type2, 1))
          ret = 0;
        type = *type1;
    } else if (is_float(bt1) || is_float(bt2)) {
        if (bt1 == 10 || bt2 == 10) {
            type.t = 10;
        } else if (bt1 == 9 || bt2 == 9) {
            type.t = 9;
        } else {
            type.t = 8;
        }
    } else if (bt1 == 4 || bt2 == 4) {

        type.t = 4 | 0x0800;
        if (bt1 == 4)
          type.t &= t1;
        if (bt2 == 4)
          type.t &= t2;

        if ((t1 & (0x000f | 0x0010 | 0x0080)) == (4 | 0x0010) ||
            (t2 & (0x000f | 0x0010 | 0x0080)) == (4 | 0x0010))
          type.t |= 0x0010;
    } else {

        type.t = 3 | (0x0800 & (t1 | t2));

        if ((t1 & (0x000f | 0x0010 | 0x0080)) == (3 | 0x0010) ||
            (t2 & (0x000f | 0x0010 | 0x0080)) == (3 | 0x0010))
          type.t |= 0x0010;
    }
    if (dest)
      *dest = type;
    return ret;
}


static void gen_op(int op)
{
    int u, t1, t2, bt1, bt2, t;
    CType type1, combtype;

redo:
    t1 = vtop[-1].type.t;
    t2 = vtop[0].type.t;
    bt1 = t1 & 0x000f;
    bt2 = t2 & 0x000f;

    if (bt1 == 6 || bt2 == 6) {
	if (bt2 == 6) {
	    mk_pointer(&vtop->type);
	    gaddrof();
	}
	if (bt1 == 6) {
	    vswap();
	    mk_pointer(&vtop->type);
	    gaddrof();
	    vswap();
	}
	goto redo;
    } else if (!combine_types(&combtype, vtop - 1, vtop, op)) {
        _tcc_error_noabort("invalid operand types for binary operation");
        vpop();
    } else if (bt1 == 5 || bt2 == 5) {


        if ((op >= 0x90 && op <= 0x9f))
            goto std_op;

        if (bt1 == 5 && bt2 == 5) {
            if (op != '-')
                _tcc_error("cannot use pointers here");
            if (vtop[-1].type.t & 0x0400) {
                vla_runtime_pointed_size(&vtop[-1].type);
            } else {
                vpushi(pointed_size(&vtop[-1].type));
            }
            vrott(3);
            gen_opic(op);
            vtop->type.t = (0x0800 | 4);
            vswap();
            gen_op(0x85);
        } else {

            if (op != '-' && op != '+')
                _tcc_error("cannot use pointers here");

            if (bt2 == 5) {
                vswap();
                t = t1, t1 = t2, t2 = t;
            }





            type1 = vtop[-1].type;
            if (vtop[-1].type.t & 0x0400)
                vla_runtime_pointed_size(&vtop[-1].type);
            else {
                u = pointed_size(&vtop[-1].type);
                if (u < 0)
                    _tcc_error("unknown array element size");

                vpushll(u);




            }
            gen_op('*');

            if (tcc_state->do_bounds_check && !const_wanted) {


                if (op == '-') {
                    vpushi(0);
                    vswap();
                    gen_op('-');
                }
                gen_bounded_ptr_add();
            } else

            {
                gen_opic(op);
            }
            type1.t &= ~0x0040;

            vtop->type = type1;
        }
    } else {

        if (is_float(combtype.t)
            && op != '+' && op != '-' && op != '*' && op != '/'
            && !(op >= 0x90 && op <= 0x9f))
            _tcc_error("invalid operands for binary operation");
        else if (op == 0x8b || op == '>' || op == '<') {
            t = bt1 == 4 ? 4 : 3;
            if ((t1 & (0x000f | 0x0010 | 0x0080)) == (t | 0x0010))
              t |= 0x0010;
            t |= (0x0800 & t1);
            combtype.t = t;
        }
    std_op:
        t = t2 = combtype.t;


        if (t & 0x0010) {
            if (op == '>')
                op = 0x8b;
            else if (op == '/')
                op = 0x83;
            else if (op == '%')
                op = 0x84;
            else if (op == 0x9c)
                op = 0x92;
            else if (op == 0x9f)
                op = 0x97;
            else if (op == 0x9e)
                op = 0x96;
            else if (op == 0x9d)
                op = 0x93;
        }
        vswap();
        gen_cast_s(t);
        vswap();


        if (op == 0x8b || op == '>' || op == '<')
            t2 = 3;
        gen_cast_s(t2);
        if (is_float(t))
            gen_opif(op);
        else
            gen_opic(op);
        if ((op >= 0x90 && op <= 0x9f)) {

            vtop->type.t = 3;
        } else {
            vtop->type.t = t;
        }
    }

    if (vtop->r & 0x0100)
        gv(is_float(vtop->type.t & 0x000f) ? 0x0002 : 0x0001);
}





static void gen_cvt_itof1(int t)
{
    if ((vtop->type.t & (0x000f | 0x0010)) ==
        (4 | 0x0010)) {

        if (t == 8)
            vpush_global_sym(&func_old_type, TOK___floatundisf);

        else if (t == 10)
            vpush_global_sym(&func_old_type, TOK___floatundixf);

        else
            vpush_global_sym(&func_old_type, TOK___floatundidf);
        vrott(2);
        gfunc_call(1);
        vpushi(0);
        PUT_R_RET(vtop, t);
    } else {
        gen_cvt_itof(t);
    }
}






static void gen_cvt_ftoi1(int t)
{
    int st;
    if (t == (4 | 0x0010)) {

        st = vtop->type.t & 0x000f;
        if (st == 8)
            vpush_global_sym(&func_old_type, TOK___fixunssfdi);

        else if (st == 10)
            vpush_global_sym(&func_old_type, TOK___fixunsxfdi);

        else
            vpush_global_sym(&func_old_type, TOK___fixunsdfdi);
        vrott(2);
        gfunc_call(1);
        vpushi(0);
        PUT_R_RET(vtop, t);
    } else {
        gen_cvt_ftoi(t);
    }
}



static void force_charshort_cast(void)
{
    int sbt = (((vtop->r) & (0x0C00)) / ((unsigned)((0x0C00) & ~((0x0C00) << 1)) * (1))) == 2 ? 4 : 3;
    int dbt = vtop->type.t;
    vtop->r &= ~0x0C00;
    vtop->type.t = sbt;
    gen_cast_s(dbt == 11 ? 1|0x0010 : dbt);
    vtop->type.t = dbt;
}

static void gen_cast_s(int t)
{
    CType type;
    type.t = t;
    type.ref = ((void *)0);
    gen_cast(&type);
}


static void gen_cast(CType *type)
{
    int sbt, dbt, sf, df, c;
    int dbt_bt, sbt_bt, ds, ss, bits, trunc;


    if (vtop->r & 0x0C00)
        force_charshort_cast();


    if (vtop->type.t & 0x0080)
        gv(0x0001);

    dbt = type->t & (0x000f | 0x0010);
    sbt = vtop->type.t & (0x000f | 0x0010);
    if (sbt == 6)
        sbt = 5;

again:
    if (sbt != dbt) {
        sf = is_float(sbt);
        df = is_float(dbt);
        dbt_bt = dbt & 0x000f;
        sbt_bt = sbt & 0x000f;

        c = (vtop->r & (0x003f | 0x0100 | 0x0200)) == 0x0030;



        if (c) {


            if (sbt == 8)
                vtop->c.ld = vtop->c.f;
            else if (sbt == 9)
                vtop->c.ld = vtop->c.d;

            if (df) {
                if (sbt_bt == 4) {
                    if ((sbt & 0x0010) || !(vtop->c.i >> 63))
                        vtop->c.ld = vtop->c.i;
                    else
                        vtop->c.ld = -(long double)-vtop->c.i;
                } else if(!sf) {
                    if ((sbt & 0x0010) || !(vtop->c.i >> 31))
                        vtop->c.ld = (uint32_t)vtop->c.i;
                    else
                        vtop->c.ld = -(long double)-(uint32_t)vtop->c.i;
                }

                if (dbt == 8)
                    vtop->c.f = (float)vtop->c.ld;
                else if (dbt == 9)
                    vtop->c.d = (double)vtop->c.ld;
            } else if (sf && dbt == 11) {
                vtop->c.i = (vtop->c.ld != 0);
            } else {
                if(sf)
                    vtop->c.i = vtop->c.ld;
                else if (sbt_bt == 4 || (8 == 8 && sbt == 5))
                    ;
                else if (sbt & 0x0010)
                    vtop->c.i = (uint32_t)vtop->c.i;
                else
                    vtop->c.i = ((uint32_t)vtop->c.i | -(vtop->c.i & 0x80000000));

                if (dbt_bt == 4 || (8 == 8 && dbt == 5))
                    ;
                else if (dbt == 11)
                    vtop->c.i = (vtop->c.i != 0);
                else {
                    uint32_t m = dbt_bt == 1 ? 0xff :
                                 dbt_bt == 2 ? 0xffff :
                                  0xffffffff;
                    vtop->c.i &= m;
                    if (!(dbt & 0x0010))
                        vtop->c.i |= -(vtop->c.i & ((m >> 1) + 1));
                }
            }
            goto done;

        } else if (dbt == 11
            && (vtop->r & (0x003f | 0x0100 | 0x0200))
                == (0x0030 | 0x0200)) {

            vtop->r = 0x0030;
            vtop->c.i = 1;
            goto done;
        }


        if ((nocode_wanted & 0xC0000000))
            goto done;


        if (dbt == 11) {
            gen_test_zero(0x95);
            goto done;
        }

        if (sf || df) {
            if (sf && df) {

                gen_cvt_ftof(dbt);
            } else if (df) {

                gen_cvt_itof1(dbt);
            } else {

                sbt = dbt;
                if (dbt_bt != 4 && dbt_bt != 3)
                    sbt = 3;
                gen_cvt_ftoi1(sbt);
                goto again;
            }
            goto done;
        }

        ds = btype_size(dbt_bt);
        ss = btype_size(sbt_bt);
        if (ds == 0 || ss == 0) {
            if (dbt_bt == 0)
                goto done;
            cast_error(&vtop->type, type);
        }
        if (((type->t & (((1U << (6+6)) - 1) << 20 | 0x0080)) == (2 << 20)) && type->ref->c < 0)
            _tcc_error("cast to incomplete type");


        if (ds == ss && ds >= 4)
            goto done;
        if (dbt_bt == 5 || sbt_bt == 5) {
            _tcc_warning("cast between pointer and integer of different size");
            if (sbt_bt == 5) {

                vtop->type.t = (8 == 8 ? 4 : 3);
            }
        }






        if (1 && (vtop->r & 0x0100)) {

            if (ds <= ss)
                goto done;

            if (ds <= 4 && !(dbt == (2 | 0x0010) && sbt == 1)) {
                gv(0x0001);
                goto done;
            }
        }
        gv(0x0001);

        trunc = 0;
# 3600 "../tinycc/tccgen.c"
        if (ds == 8) {

            if (sbt & 0x0010) {





                goto done;

            } else {
                gen_cvt_sxtw();
                goto done;
            }
            ss = ds, ds = 4, dbt = sbt;
        } else if (ss == 8) {




            trunc = 32;

        } else {
            ss = 4;
        }


        if (ds >= ss)
            goto done;

        if (ss == 4) {
            gen_cvt_csti(dbt);
            goto done;
        }

        bits = (ss - ds) * 8;

        vtop->type.t = (ss == 8 ? 4 : 3) | (dbt & 0x0010);
        vpushi(bits);
        gen_op('<');
        vpushi(bits - trunc);
        gen_op('>');
        vpushi(trunc);
        gen_op(0x8b);
    }
done:
    vtop->type = *type;
    vtop->type.t &= ~ ( 0x0100 | 0x0200 | 0x0040 );
}


static int type_size(CType *type, int *a)
{
    Sym *s;
    int bt;

    bt = type->t & 0x000f;
    if (bt == 7) {

        s = type->ref;
        *a = s->r;
        return s->c;
    } else if (bt == 5) {
        if (type->t & 0x0040) {
            int ts;

            s = type->ref;
            ts = type_size(&s->type, a);

            if (ts < 0 && s->c < 0)
                ts = -ts;

            return ts * s->c;
        } else {
            *a = 8;
            return 8;
        }
    } else if (((type->t & (((1U << (6+6)) - 1) << 20 | 0x0080)) == (2 << 20)) && type->ref->c < 0) {
        return -1;
    } else if (bt == 10) {
        *a = 16;
        return 16;
    } else if (bt == 9 || bt == 4) {
# 3696 "../tinycc/tccgen.c"
        *a = 8;

        return 8;
    } else if (bt == 3 || bt == 8) {
        *a = 4;
        return 4;
    } else if (bt == 2) {
        *a = 2;
        return 2;
    } else if (bt == 13 || bt == 14) {
        *a = 8;
        return 16;
    } else {

        *a = 1;
        return 1;
    }
}



static void vla_runtime_type_size(CType *type, int *a)
{
    if (type->t & 0x0400) {
        type_size(&type->ref->type, a);
        vset(&int_type, 0x0032|0x0100, type->ref->c);
    } else {
        vpushi(type_size(type, a));
    }
}


static inline CType *pointed_type(CType *type)
{
    return &type->ref->type;
}


static void mk_pointer(CType *type)
{
    Sym *s;
    s = sym_push(0x20000000, type, 0, -1);
    type->t = 5 | (type->t & (0x00001000 | 0x00002000 | 0x00004000 | 0x00008000));
    type->ref = s;
}




static int is_compatible_types(CType *type1, CType *type2)
{
    return compare_types(type1,type2,0);
}



static int is_compatible_unqualified_types(CType *type1, CType *type2)
{
    return compare_types(type1,type2,1);
}

static void cast_error(CType *st, CType *dt)
{
    type_incompatibility_error(st, dt, "cannot convert '%s' to '%s'");
}


static void verify_assign_cast(CType *dt)
{
    CType *st, *type1, *type2;
    int dbt, sbt, qualwarn, lvl;

    st = &vtop->type;
    dbt = dt->t & 0x000f;
    sbt = st->t & 0x000f;
    if (dt->t & 0x0100)
        _tcc_warning("assignment of read-only location");
    switch(dbt) {
    case 0:
        if (sbt != dbt)
            _tcc_error("assignment to void expression");
        break;
    case 5:


        if (is_null_pointer(vtop))
            break;

        if (is_integer_btype(sbt)) {
            _tcc_warning("assignment makes pointer from integer without a cast");
            break;
        }
        type1 = pointed_type(dt);
        if (sbt == 5)
            type2 = pointed_type(st);
        else if (sbt == 6)
            type2 = st;
        else
            goto error;
        if (is_compatible_types(type1, type2))
            break;
        for (qualwarn = lvl = 0;; ++lvl) {
            if (((type2->t & 0x0100) && !(type1->t & 0x0100)) ||
                ((type2->t & 0x0200) && !(type1->t & 0x0200)))
                qualwarn = 1;
            dbt = type1->t & (0x000f|0x0800);
            sbt = type2->t & (0x000f|0x0800);
            if (dbt != 5 || sbt != 5)
                break;
            type1 = pointed_type(type1);
            type2 = pointed_type(type2);
        }
        if (!is_compatible_unqualified_types(type1, type2)) {
            if ((dbt == 0 || sbt == 0) && lvl == 0) {

            } else if (dbt == sbt
                && is_integer_btype(sbt & 0x000f)
                && ((type1->t & (((1U << (6+6)) - 1) << 20 | 0x0080)) == (2 << 20)) + ((type2->t & (((1U << (6+6)) - 1) << 20 | 0x0080)) == (2 << 20))
                    + !!((type1->t ^ type2->t) & 0x0010) < 2) {




            } else {
                _tcc_warning("assignment from incompatible pointer type");
                break;
            }
        }
        if (qualwarn)
            _tcc_warning("assignment discards qualifiers from pointer target type");
        break;
    case 1:
    case 2:
    case 3:
    case 4:
        if (sbt == 5 || sbt == 6) {
            _tcc_warning("assignment makes integer from pointer without a cast");
        } else if (sbt == 7) {
            goto case_VT_STRUCT;
        }

        break;
    case 7:
    case_VT_STRUCT:
        if (!is_compatible_unqualified_types(dt, st)) {
    error:
            cast_error(st, dt);
        }
        break;
    }
}

static void gen_assign_cast(CType *dt)
{
    verify_assign_cast(dt);
    gen_cast(dt);
}


static void vstore(void)
{
    int sbt, dbt, ft, r, size, align, bit_size, bit_pos, delayed_cast;

    ft = vtop[-1].type.t;
    sbt = vtop->type.t & 0x000f;
    dbt = ft & 0x000f;

    verify_assign_cast(&vtop[-1].type);

    if (sbt == 7) {



            size = type_size(&vtop->type, &align);


            vswap();

            if (vtop->r & 0x4000)
                gbound();

            vtop->type.t = 5;
            gaddrof();
# 3889 "../tinycc/tccgen.c"
            vpush_global_sym(&func_old_type, TOK_memmove);

            vswap();

            vpushv(vtop - 2);

            if (vtop->r & 0x4000)
                gbound();

            vtop->type.t = 5;
            gaddrof();

            vpushi(size);
            gfunc_call(3);


    } else if (ft & 0x0080) {



        vdup(), vtop[-1] = vtop[-2];

        bit_pos = (((ft) >> 20) & 0x3f);
        bit_size = (((ft) >> (20 + 6)) & 0x3f);

        vtop[-1].type.t = ft & ~(((1U << (6+6)) - 1) << 20 | 0x0080);

        if (dbt == 11) {
            gen_cast(&vtop[-1].type);
            vtop[-1].type.t = (vtop[-1].type.t & ~0x000f) | (1 | 0x0010);
        }
        r = adjust_bf(vtop - 1, bit_pos, bit_size);
        if (dbt != 11) {
            gen_cast(&vtop[-1].type);
            dbt = vtop[-1].type.t & 0x000f;
        }
        if (r == 7) {
            store_packed_bf(bit_pos, bit_size);
        } else {
            unsigned long long mask = (1ULL << bit_size) - 1;
            if (dbt != 11) {

                if (dbt == 4)
                    vpushll(mask);
                else
                    vpushi((unsigned)mask);
                gen_op('&');
            }

            vpushi(bit_pos);
            gen_op('<');
            vswap();

            vdup();
            vrott(3);

            if (dbt == 4)
                vpushll(~(mask << bit_pos));
            else
                vpushi(~((unsigned)mask << bit_pos));
            gen_op('&');
            gen_op('|');

            vstore();

            vpop();
        }
    } else if (dbt == 0) {
        --vtop;
    } else {

            delayed_cast = 0;
            if ((dbt == 1 || dbt == 2)
                && is_integer_btype(sbt)
                ) {
                if ((vtop->r & 0x0C00)
                    && btype_size(dbt) > btype_size(sbt)
                    )
                    force_charshort_cast();
                delayed_cast = 1;
            } else {
                gen_cast(&vtop[-1].type);
            }



            if (vtop[-1].r & 0x4000) {
                vswap();
                gbound();
                vswap();
            }

            gv(RC_TYPE(dbt));

            if (delayed_cast) {
                vtop->r |= ((unsigned)((0x0C00) & ~((0x0C00) << 1)) * ((sbt == 4) + 1));

                vtop->type.t = ft & (~((0x00001000 | 0x00002000 | 0x00004000 | 0x00008000)|(((1U << (6+6)) - 1) << 20 | 0x0080)));
            }


            if ((vtop[-1].r & 0x003f) == 0x0031) {
                SValue sv;
                r = get_reg(0x0001);
                sv.type.t = (0x0800 | 4);
                sv.r = 0x0032 | 0x0100;
                sv.c.i = vtop[-1].c.i;
                load(r, &sv);
                vtop[-1].r = r | 0x0100;
            }

            r = vtop->r & 0x003f;


            if ((R2_RET(dbt) != 0x0030)) {
                int load_type = (dbt == 14) ? 9 : (0x0800 | 4);
                vtop[-1].type.t = load_type;
                store(r, vtop - 1);
                vswap();

                vtop->type.t = (0x0800 | 4);
                gaddrof();
                vpushs(8);
                gen_op('+');
                vtop->r |= 0x0100;
                vswap();
                vtop[-1].type.t = load_type;

                store(vtop->r2, vtop - 1);
            } else {

                store(r, vtop - 1);
            }
        vswap();
        vtop--;
    }
}


static void inc(int post, int c)
{
    test_lvalue();
    vdup();
    if (post) {
        gv_dup();
        vrotb(3);
        vrotb(3);
    }

    vpushi(c - 0x81);
    gen_op('+');
    vstore();
    if (post)
        vpop();
}

static void parse_mult_str (CString *astr, const char *msg)
{

    if (tok != 0xc8)
        expect(msg);
    cstr_new(astr);
    while (tok == 0xc8) {

        cstr_cat(astr, tokc.str.data, -1);
        next();
    }
    cstr_ccat(astr, '\0');
}



static int exact_log2p1(int i)
{
  int ret;
  if (!i)
    return 0;
  for (ret = 1; i >= 1 << 8; ret += 8)
    i >>= 8;
  if (i >= 1 << 4)
    ret += 4, i >>= 4;
  if (i >= 1 << 2)
    ret += 2, i >>= 2;
  if (i >= 1 << 1)
    ret++;
  return ret;
}


static void parse_attribute(AttributeDef *ad)
{
    int t, n;
    CString astr;

redo:
    if (tok != TOK_ATTRIBUTE1 && tok != TOK_ATTRIBUTE2)
        return;
    next();
    skip('(');
    skip('(');
    while (tok != ')') {
        if (tok < 256)
            expect("attribute name");
        t = tok;
        next();
        switch(t) {
	case TOK_CLEANUP1:
	case TOK_CLEANUP2:
	{
	    Sym *s;

	    skip('(');
	    s = sym_find(tok);
	    if (!s) {
	      _tcc_warning("implicit declaration of function '%s'",
			  get_tok_str(tok, &tokc));
	      s = external_global_sym(tok, &func_old_type);
            } else if ((s->type.t & 0x000f) != 6)
                _tcc_error("'%s' is not declared as function", get_tok_str(tok, &tokc));
	    ad->cleanup_func = s;
	    next();
            skip(')');
	    break;
	}
        case TOK_CONSTRUCTOR1:
        case TOK_CONSTRUCTOR2:
            ad->f.func_ctor = 1;
            break;
        case TOK_DESTRUCTOR1:
        case TOK_DESTRUCTOR2:
            ad->f.func_dtor = 1;
            break;
        case TOK_ALWAYS_INLINE1:
        case TOK_ALWAYS_INLINE2:
            ad->f.func_alwinl = 1;
            break;
        case TOK_SECTION1:
        case TOK_SECTION2:
            skip('(');
	    parse_mult_str(&astr, "section name");
            ad->section = find_section(tcc_state, (char *)astr.data);
            skip(')');
	    cstr_free(&astr);
            break;
        case TOK_ALIAS1:
        case TOK_ALIAS2:
            skip('(');
	    parse_mult_str(&astr, "alias(\"target\")");
            ad->asm_label =
                tok_alloc((char*)astr.data, astr.size-1)->tok | 0x20000000;
            skip(')');
	    cstr_free(&astr);
            break;
	case TOK_VISIBILITY1:
	case TOK_VISIBILITY2:
            skip('(');
	    parse_mult_str(&astr,
			   "visibility(\"default|hidden|internal|protected\")");
	    if (!strcmp (astr.data, "default"))
	        ad->a.visibility = 0;
	    else if (!strcmp (astr.data, "hidden"))
	        ad->a.visibility = 2;
	    else if (!strcmp (astr.data, "internal"))
	        ad->a.visibility = 1;
	    else if (!strcmp (astr.data, "protected"))
	        ad->a.visibility = 3;
	    else
                expect("visibility(\"default|hidden|internal|protected\")");
            skip(')');
	    cstr_free(&astr);
            break;
        case TOK_ALIGNED1:
        case TOK_ALIGNED2:
            if (tok == '(') {
                next();
                n = expr_const();
                if (n <= 0 || (n & (n - 1)) != 0)
                    _tcc_error("alignment must be a positive power of two");
                skip(')');
            } else {
                n = 16;
            }
            ad->a.aligned = exact_log2p1(n);
	    if (n != 1 << (ad->a.aligned - 1))
	      _tcc_error("alignment of %d is larger than implemented", n);
            break;
        case TOK_PACKED1:
        case TOK_PACKED2:
            ad->a.packed = 1;
            break;
        case TOK_WEAK1:
        case TOK_WEAK2:
            ad->a.weak = 1;
            break;
        case TOK_UNUSED1:
        case TOK_UNUSED2:


            break;
        case TOK_NORETURN1:
        case TOK_NORETURN2:
            ad->f.func_noreturn = 1;
            break;
        case TOK_CDECL1:
        case TOK_CDECL2:
        case TOK_CDECL3:
            ad->f.func_call = 0;
            break;
        case TOK_STDCALL1:
        case TOK_STDCALL2:
        case TOK_STDCALL3:
            ad->f.func_call = 1;
            break;
# 4221 "../tinycc/tccgen.c"
        case TOK_MODE:
            skip('(');
            switch(tok) {
                case TOK_MODE_DI:
                    ad->attr_mode = 4 + 1;
                    break;
                case TOK_MODE_QI:
                    ad->attr_mode = 1 + 1;
                    break;
                case TOK_MODE_HI:
                    ad->attr_mode = 2 + 1;
                    break;
                case TOK_MODE_SI:
                case TOK_MODE_word:
                    ad->attr_mode = 3 + 1;
                    break;
                default:
                    _tcc_warning("__mode__(%s) not supported\n", get_tok_str(tok, ((void *)0)));
                    break;
            }
            next();
            skip(')');
            break;
        case TOK_DLLEXPORT:
            ad->a.dllexport = 1;
            break;
        case TOK_NODECORATE:
            ad->a.nodecorate = 1;
            break;
        case TOK_DLLIMPORT:
            ad->a.dllimport = 1;
            break;
        default:
            if (tcc_state->warn_unsupported)
                _tcc_warning("'%s' attribute ignored", get_tok_str(t, ((void *)0)));

            if (tok == '(') {
                int parenthesis = 0;
                do {
                    if (tok == '(')
                        parenthesis++;
                    else if (tok == ')')
                        parenthesis--;
                    next();
                } while (parenthesis && tok != -1);
            }
            break;
        }
        if (tok != ',')
            break;
        next();
    }
    skip(')');
    skip(')');
    goto redo;
}

static Sym * find_field (CType *type, int v, int *cumofs)
{
    Sym *s = type->ref;
    v |= 0x20000000;
    while ((s = s->next) != ((void *)0)) {
	if ((s->v & 0x20000000) &&
	    (s->type.t & 0x000f) == 7 &&
	    (s->v & ~0x20000000) >= 0x10000000) {
	    Sym *ret = find_field (&s->type, v, cumofs);
	    if (ret) {
                *cumofs += s->c;
	        return ret;
            }
	}
	if (s->v == v)
	  break;
    }
    return s;
}

static void struct_layout(CType *type, AttributeDef *ad)
{
    int size, align, maxalign, offset, c, bit_pos, bit_size;
    int packed, a, bt, prevbt, prev_bit_size;
    int pcc = !tcc_state->ms_bitfields;
    int pragma_pack = *tcc_state->pack_stack_ptr;
    Sym *f;

    maxalign = 1;
    offset = 0;
    c = 0;
    bit_pos = 0;
    prevbt = 7;
    prev_bit_size = 0;



    for (f = type->ref->next; f; f = f->next) {
        if (f->type.t & 0x0080)
            bit_size = (((f->type.t) >> (20 + 6)) & 0x3f);
        else
            bit_size = -1;
        size = type_size(&f->type, &align);
        a = f->a.aligned ? 1 << (f->a.aligned - 1) : 0;
        packed = 0;

        if (pcc && bit_size == 0) {


        } else {

            if (pcc && (f->a.packed || ad->a.packed))
                align = packed = 1;


            if (pragma_pack) {
                packed = 1;
                if (pragma_pack < align)
                    align = pragma_pack;

                if (pcc && pragma_pack < a)
                    a = 0;
            }
        }

        if (a)
            align = a;

        if (type->ref->type.t == (1 << 20 | 7)) {
	    if (pcc && bit_size >= 0)
	        size = (bit_size + 7) >> 3;
	    offset = 0;
	    if (size > c)
	        c = size;

	} else if (bit_size < 0) {
            if (pcc)
                c += (bit_pos + 7) >> 3;
	    c = (c + align - 1) & -align;
	    offset = c;
	    if (size > 0)
	        c += size;
	    bit_pos = 0;
	    prevbt = 7;
	    prev_bit_size = 0;

	} else {


            if (pcc) {






                if (bit_size == 0) {
            new_field:
		    c = (c + ((bit_pos + 7) >> 3) + align - 1) & -align;
		    bit_pos = 0;
                } else if (f->a.aligned) {
                    goto new_field;
                } else if (!packed) {
                    int a8 = align * 8;
	            int ofs = ((c * 8 + bit_pos) % a8 + bit_size + a8 - 1) / a8;
                    if (ofs > size / align)
                        goto new_field;
                }


                if (size == 8 && bit_size <= 32)
                    f->type.t = (f->type.t & ~0x000f) | 3, size = 4;

                while (bit_pos >= align * 8)
                    c += align, bit_pos -= align * 8;
                offset = c;




		if (f->v & 0x10000000

                    )
		    align = 1;

	    } else {
		bt = f->type.t & 0x000f;
		if ((bit_pos + bit_size > size * 8)
                    || (bit_size > 0) == (bt != prevbt)
                    ) {
		    c = (c + align - 1) & -align;
		    offset = c;
		    bit_pos = 0;




		    if (bit_size || prev_bit_size)
		        c += size;
		}




		if (bit_size == 0 && prevbt != bt)
		    align = 1;
		prevbt = bt;
                prev_bit_size = bit_size;
	    }

	    f->type.t = (f->type.t & ~(0x3f << 20))
		        | (bit_pos << 20);
	    bit_pos += bit_size;
	}
	if (align > maxalign)
	    maxalign = align;
# 4447 "../tinycc/tccgen.c"
        f->c = offset;
	f->r = 0;
    }

    if (pcc)
        c += (bit_pos + 7) >> 3;


    a = bt = ad->a.aligned ? 1 << (ad->a.aligned - 1) : 1;
    if (a < maxalign)
        a = maxalign;
    type->ref->r = a;
    if (pragma_pack && pragma_pack < maxalign && 0 == pcc) {


        a = pragma_pack;
        if (a < bt)
            a = bt;
    }
    c = (c + a - 1) & -a;
    type->ref->c = c;






    for (f = type->ref->next; f; f = f->next) {
        int s, px, cx, c0;
        CType t;

        if (0 == (f->type.t & 0x0080))
            continue;
        f->type.ref = f;
        f->auxtype = -1;
        bit_size = (((f->type.t) >> (20 + 6)) & 0x3f);
        if (bit_size == 0)
            continue;
        bit_pos = (((f->type.t) >> 20) & 0x3f);
        size = type_size(&f->type, &align);
        if (bit_pos + bit_size <= size * 8 && f->c + size <= c)
            continue;


        c0 = -1, s = align = 1;
        t.t = 1;
        for (;;) {
            px = f->c * 8 + bit_pos;
            cx = (px >> 3) & -align;
            px = px - (cx << 3);
            if (c0 == cx)
                break;
            s = (px + bit_size + 7) >> 3;
            if (s > 4) {
                t.t = 4;
            } else if (s > 2) {
                t.t = 3;
            } else if (s > 1) {
                t.t = 2;
            } else {
                t.t = 1;
            }
            s = type_size(&t, &align);
            c0 = cx;
        }

        if (px + bit_size <= s * 8 && cx + s <= c) {

            f->c = cx;
            bit_pos = px;
	    f->type.t = (f->type.t & ~(0x3f << 20))
		        | (bit_pos << 20);
            if (s != size)
                f->auxtype = t.t;






        } else {

            f->auxtype = 7;




        }
    }
}


static void struct_decl(CType *type, int u)
{
    int v, c, size, align, flexible;
    int bit_size, bsize, bt;
    Sym *s, *ss, **ps;
    AttributeDef ad, ad1;
    CType type1, btype;

    memset(&ad, 0, sizeof ad);
    next();
    parse_attribute(&ad);
    if (tok != '{') {
        v = tok;
        next();

        if (v < 256)
            expect("struct/union/enum name");
        s = struct_find(v);
        if (s && (s->sym_scope == local_scope || tok != '{')) {
            if (u == s->type.t)
                goto do_decl;
            if (u == (2 << 20) && ((s->type.t & (((1U << (6+6)) - 1) << 20 | 0x0080)) == (2 << 20)))
                goto do_decl;
            _tcc_error("redefinition of '%s'", get_tok_str(v, ((void *)0)));
        }
    } else {
        v = anon_sym++;
    }

    type1.t = u == (2 << 20) ? u | 3 | 0x0010 : u;
    type1.ref = ((void *)0);

    s = sym_push(v | 0x40000000, &type1, 0, -1);
    s->r = 0;
do_decl:
    type->t = s->type.t;
    type->ref = s;

    if (tok == '{') {
        next();
        if (s->c != -1)
            _tcc_error("struct/union/enum already defined");
        s->c = -2;


        ps = &s->next;
        if (u == (2 << 20)) {
            long long ll = 0, pl = 0, nl = 0;
	    CType t;
            t.ref = s;

            t.t = 3|0x00002000|(3 << 20);
            for(;;) {
                v = tok;
                if (v < TOK_DEFINE)
                    expect("identifier");
                ss = sym_find(v);
                if (ss && !local_stack)
                    _tcc_error("redefinition of enumerator '%s'",
                              get_tok_str(v, ((void *)0)));
                next();
                if (tok == '=') {
                    next();
		    ll = expr_const64();
                }
                ss = sym_push(v, &t, 0x0030, 0);
                ss->enum_val = ll;
                *ps = ss, ps = &ss->next;
                if (ll < nl)
                    nl = ll;
                if (ll > pl)
                    pl = ll;
                if (tok != ',')
                    break;
                next();
                ll++;

                if (tok == '}')
                    break;
            }
            skip('}');

            t.t = 3;
            if (nl >= 0) {
                if (pl != (unsigned)pl)
                    t.t = (8==8 ? 4|0x0800 : 4);
                t.t |= 0x0010;
            } else if (pl != (int)pl || nl != (int)nl)
                t.t = (8==8 ? 4|0x0800 : 4);
            s->type.t = type->t = t.t | (2 << 20);
            s->c = 0;

            for (ss = s->next; ss; ss = ss->next) {
                ll = ss->enum_val;
                if (ll == (int)ll)
                    continue;
                if (t.t & 0x0010) {
                    ss->type.t |= 0x0010;
                    if (ll == (unsigned)ll)
                        continue;
                }
                ss->type.t = (ss->type.t & ~0x000f)
                    | (8==8 ? 4|0x0800 : 4);
            }
        } else {
            c = 0;
            flexible = 0;
            while (tok != '}') {
                if (!parse_btype(&btype, &ad1)) {
		    skip(';');
		    continue;
		}
                while (1) {
		    if (flexible)
		        _tcc_error("flexible array member '%s' not at the end of struct",
                              get_tok_str(v, ((void *)0)));
                    bit_size = -1;
                    v = 0;
                    type1 = btype;
                    if (tok != ':') {
			if (tok != ';')
                            type_decl(&type1, &ad1, &v, 2);
                        if (v == 0) {
                    	    if ((type1.t & 0x000f) != 7)
                        	expect("identifier");
                    	    else {
				int v = btype.ref->v;
				if (!(v & 0x20000000) && (v & ~0x40000000) < 0x10000000) {
				    if (tcc_state->ms_extensions == 0)
                        		expect("identifier");
				}
                    	    }
                        }
                        if (type_size(&type1, &align) < 0) {
			    if ((u == 7) && (type1.t & 0x0040) && c)
			        flexible = 1;
			    else
			        _tcc_error("field '%s' has incomplete type",
                                      get_tok_str(v, ((void *)0)));
                        }
                        if ((type1.t & 0x000f) == 6 ||
			    (type1.t & 0x000f) == 0 ||
                            (type1.t & (0x00001000 | 0x00002000 | 0x00004000 | 0x00008000)))
                            _tcc_error("invalid type for '%s'",
                                  get_tok_str(v, ((void *)0)));
                    }
                    if (tok == ':') {
                        next();
                        bit_size = expr_const();

                        if (bit_size < 0)
                            _tcc_error("negative width in bit-field '%s'",
                                  get_tok_str(v, ((void *)0)));
                        if (v && bit_size == 0)
                            _tcc_error("zero width for bit-field '%s'",
                                  get_tok_str(v, ((void *)0)));
			parse_attribute(&ad1);
                    }
                    size = type_size(&type1, &align);
                    if (bit_size >= 0) {
                        bt = type1.t & 0x000f;
                        if (bt != 3 &&
                            bt != 1 &&
                            bt != 2 &&
                            bt != 11 &&
                            bt != 4)
                            _tcc_error("bitfields must have scalar type");
                        bsize = size * 8;
                        if (bit_size > bsize) {
                            _tcc_error("width of '%s' exceeds its type",
                                  get_tok_str(v, ((void *)0)));
                        } else if (bit_size == bsize
                                    && !ad.a.packed && !ad1.a.packed) {

                            ;
                        } else if (bit_size == 64) {
                            _tcc_error("field width 64 not implemented");
                        } else {
                            type1.t = (type1.t & ~(((1U << (6+6)) - 1) << 20 | 0x0080))
                                | 0x0080
                                | (bit_size << (20 + 6));
                        }
                    }
                    if (v != 0 || (type1.t & 0x000f) == 7) {


			c = 1;
                    }


                    if (v == 0 &&
			((type1.t & 0x000f) == 7 ||
			 bit_size >= 0)) {
		        v = anon_sym++;
		    }
                    if (v) {
                        ss = sym_push(v | 0x20000000, &type1, 0, 0);
                        ss->a = ad1.a;
                        *ps = ss;
                        ps = &ss->next;
                    }
                    if (tok == ';' || tok == (-1))
                        break;
                    skip(',');
                }
                skip(';');
            }
            skip('}');
	    parse_attribute(&ad);
            if (ad.cleanup_func) {
                _tcc_warning("attribute '__cleanup__' ignored on type");
            }
            struct_layout(type, &ad);
        }
    }
}

static void sym_to_attr(AttributeDef *ad, Sym *s)
{
    merge_symattr(&ad->a, &s->a);
    merge_funcattr(&ad->f, &s->f);
}



static void parse_btype_qualify(CType *type, int qualifiers)
{
    while (type->t & 0x0040) {
        type->ref = sym_push(0x20000000, &type->ref->type, 0, type->ref->c);
        type = &type->ref->type;
    }
    type->t |= qualifiers;
}




static int parse_btype(CType *type, AttributeDef *ad)
{
    int t, u, bt, st, type_found, typespec_found, g, n;
    Sym *s;
    CType type1;

    memset(ad, 0, sizeof(AttributeDef));
    type_found = 0;
    typespec_found = 0;
    t = 3;
    bt = st = -1;
    type->ref = ((void *)0);

    while(1) {
        switch(tok) {
        case TOK_EXTENSION:

            next();
            continue;


        case TOK_CHAR:
            u = 1;
        basic_type:
            next();
        basic_type1:
            if (u == 2 || u == 0x0800) {
                if (st != -1 || (bt != -1 && bt != 3))
                    tmbt: _tcc_error("too many basic types");
                st = u;
            } else {
                if (bt != -1 || (st != -1 && u != 3))
                    goto tmbt;
                bt = u;
            }
            if (u != 3)
                t = (t & ~(0x000f|0x0800)) | u;
            typespec_found = 1;
            break;
        case TOK_VOID:
            u = 0;
            goto basic_type;
        case TOK_SHORT:
            u = 2;
            goto basic_type;
        case TOK_INT:
            u = 3;
            goto basic_type;
        case TOK_ALIGNAS:
            { int n;
              AttributeDef ad1;
              next();
              skip('(');
              memset(&ad1, 0, sizeof(AttributeDef));
              if (parse_btype(&type1, &ad1)) {
                  type_decl(&type1, &ad1, &n, 1);
                  if (ad1.a.aligned)
                    n = 1 << (ad1.a.aligned - 1);
                  else
                    type_size(&type1, &n);
              } else {
                  n = expr_const();
                  if (n <= 0 || (n & (n - 1)) != 0)
                    _tcc_error("alignment must be a positive power of two");
              }
              skip(')');
              ad->a.aligned = exact_log2p1(n);
            }
            continue;
        case TOK_LONG:
            if ((t & 0x000f) == 9) {
                t = (t & ~(0x000f|0x0800)) | 10;
            } else if ((t & (0x000f|0x0800)) == 0x0800) {
                t = (t & ~(0x000f|0x0800)) | 4;
            } else {
                u = 0x0800;
                goto basic_type;
            }
            next();
            break;







        case TOK_BOOL:
            u = 11;
            goto basic_type;
        case TOK_FLOAT:
            u = 8;
            goto basic_type;
        case TOK_DOUBLE:
            if ((t & (0x000f|0x0800)) == 0x0800) {
                t = (t & ~(0x000f|0x0800)) | 10;
            } else {
                u = 9;
                goto basic_type;
            }
            next();
            break;
        case TOK_ENUM:
            struct_decl(&type1, (2 << 20));
        basic_type2:
            u = type1.t;
            type->ref = type1.ref;
            goto basic_type1;
        case TOK_STRUCT:
            struct_decl(&type1, 7);
            goto basic_type2;
        case TOK_UNION:
            struct_decl(&type1, (1 << 20 | 7));
            goto basic_type2;


        case TOK_CONST1:
        case TOK_CONST2:
        case TOK_CONST3:
            type->t = t;
            parse_btype_qualify(type, 0x0100);
            t = type->t;
            next();
            break;
        case TOK_VOLATILE1:
        case TOK_VOLATILE2:
        case TOK_VOLATILE3:
            type->t = t;
            parse_btype_qualify(type, 0x0200);
            t = type->t;
            next();
            break;
        case TOK_SIGNED1:
        case TOK_SIGNED2:
        case TOK_SIGNED3:
            if ((t & (0x0020|0x0010)) == (0x0020|0x0010))
                _tcc_error("signed and unsigned modifier");
            t |= 0x0020;
            next();
            typespec_found = 1;
            break;
        case TOK_REGISTER:
        case TOK_AUTO:
        case TOK_RESTRICT1:
        case TOK_RESTRICT2:
        case TOK_RESTRICT3:
            next();
            break;
        case TOK_UNSIGNED:
            if ((t & (0x0020|0x0010)) == 0x0020)
                _tcc_error("signed and unsigned modifier");
            t |= 0x0020 | 0x0010;
            next();
            typespec_found = 1;
            break;


        case TOK_EXTERN:
            g = 0x00001000;
            goto storage;
        case TOK_STATIC:
            g = 0x00002000;
            goto storage;
        case TOK_TYPEDEF:
            g = 0x00004000;
            goto storage;
       storage:
            if (t & (0x00001000|0x00002000|0x00004000) & ~g)
                _tcc_error("multiple storage classes");
            t |= g;
            next();
            break;
        case TOK_INLINE1:
        case TOK_INLINE2:
        case TOK_INLINE3:
            t |= 0x00008000;
            next();
            break;
        case TOK_NORETURN3:
            next();
            ad->f.func_noreturn = 1;
            break;

        case TOK_ATTRIBUTE1:
        case TOK_ATTRIBUTE2:
            parse_attribute(ad);
            if (ad->attr_mode) {
                u = ad->attr_mode -1;
                t = (t & ~(0x000f|0x0800)) | u;
            }
            continue;

        case TOK_TYPEOF1:
        case TOK_TYPEOF2:
        case TOK_TYPEOF3:
            next();
            parse_expr_type(&type1);

            type1.t &= ~((0x00001000 | 0x00002000 | 0x00004000 | 0x00008000)&~0x00004000);
	    if (type1.ref)
                sym_to_attr(ad, type1.ref);
            goto basic_type2;
        default:
            if (typespec_found)
                goto the_end;
            s = sym_find(tok);
            if (!s || !(s->type.t & 0x00004000))
                goto the_end;

            n = tok, next();
            if (tok == ':' && !in_generic) {

                unget_tok(n);
                goto the_end;
            }

            t &= ~(0x000f|0x0800);
            u = t & ~(0x0100 | 0x0200), t ^= u;
            type->t = (s->type.t & ~0x00004000) | u;
            type->ref = s->type.ref;
            if (t)
                parse_btype_qualify(type, t);
            t = type->t;

            sym_to_attr(ad, s);
            typespec_found = 1;
            st = bt = -2;
            break;
        }
        type_found = 1;
    }
the_end:
    if (tcc_state->char_is_unsigned) {
        if ((t & (0x0020|0x000f)) == 1)
            t |= 0x0010;
    }

    bt = t & (0x000f|0x0800);
    if (bt == 0x0800)
        t |= 8 == 8 ? 4 : 3;




    type->t = t;
    return type_found;
}



static inline void convert_parameter_type(CType *pt)
{


    pt->t &= ~(0x0100 | 0x0200);

    pt->t &= ~0x0040;
    if ((pt->t & 0x000f) == 6) {
        mk_pointer(pt);
    }
}

static void parse_asm_str(CString *astr)
{
    skip('(');
    parse_mult_str(astr, "string constant");
}


static int asm_label_instr(void)
{
    int v;
    CString astr;

    next();
    parse_asm_str(&astr);
    skip(')');



    v = tok_alloc(astr.data, astr.size - 1)->tok;
    cstr_free(&astr);
    return v;
}

static int post_type(CType *type, AttributeDef *ad, int storage, int td)
{
    int n, l, t1, arg_size, align, unused_align;
    Sym **plast, *s, *first;
    AttributeDef ad1;
    CType pt;

    if (tok == '(') {

        next();
	if (td && !(td & 1))
	  return 0;
	if (tok == ')')
	  l = 0;
	else if (parse_btype(&pt, &ad1))
	  l = 1;
	else if (td) {
	    merge_attr (ad, &ad1);
	    return 0;
	} else
	  l = 2;
        first = ((void *)0);
        plast = &first;
        arg_size = 0;
        if (l) {
            for(;;) {

                if (l != 2) {
                    if ((pt.t & 0x000f) == 0 && tok == ')')
                        break;
                    type_decl(&pt, &ad1, &n, 2 | 1);
                    if ((pt.t & 0x000f) == 0)
                        _tcc_error("parameter declared as void");
                } else {
                    n = tok;
                    if (n < TOK_DEFINE)
                        expect("identifier");
                    pt.t = 0;
                    pt.ref = ((void *)0);
                    next();
                }
                convert_parameter_type(&pt);
                arg_size += (type_size(&pt, &align) + 8 - 1) / 8;
                s = sym_push(n | 0x20000000, &pt, 0, 0);
                *plast = s;
                plast = &s->next;
                if (tok == ')')
                    break;
                skip(',');
                if (l == 1 && tok == 0xa1) {
                    l = 3;
                    next();
                    break;
                }
		if (l == 1 && !parse_btype(&pt, &ad1))
		    _tcc_error("invalid type");
            }
        } else

            l = 2;
        skip(')');


        type->t &= ~0x0100;



        if (tok == '[') {
            next();
            skip(']');
            mk_pointer(type);
        }

        ad->f.func_args = arg_size;
        ad->f.func_type = l;
        s = sym_push(0x20000000, type, 0, 0);
        s->a = ad->a;
        s->f = ad->f;
        s->next = first;
        type->t = 6;
        type->ref = s;
    } else if (tok == '[') {
	int saved_nocode_wanted = nocode_wanted;

        next();
	while (1) {



	    switch (tok) {
	    case TOK_RESTRICT1: case TOK_RESTRICT2: case TOK_RESTRICT3:
	    case TOK_CONST1:
	    case TOK_VOLATILE1:
	    case TOK_STATIC:
	    case '*':
		next();
		continue;
	    default:
		break;
	    }
	    break;
	}
        n = -1;
        t1 = 0;
        if (tok != ']') {
            if (!local_stack || (storage & 0x00002000))
                vpushi(expr_const());
            else {




		nocode_wanted = 0;
		gexpr();
	    }
            if ((vtop->r & (0x003f | 0x0100 | 0x0200)) == 0x0030) {
                n = vtop->c.i;
                if (n < 0)
                    _tcc_error("invalid array size");
            } else {
                if (!is_integer_btype(vtop->type.t & 0x000f))
                    _tcc_error("size of variable length array should be an integer");
                n = 0;
                t1 = 0x0400;
            }
        }
        skip(']');

        post_type(type, ad, storage, 0);

        if ((type->t & 0x000f) == 6)
            _tcc_error("declaration of an array of functions");
        if ((type->t & 0x000f) == 0
            || type_size(type, &unused_align) < 0)
            _tcc_error("declaration of an array of incomplete type elements");

        t1 |= type->t & 0x0400;

        if (t1 & 0x0400) {
            if (n < 0)
              _tcc_error("need explicit inner array size in VLAs");
            loc -= type_size(&int_type, &align);
            loc &= -align;
            n = loc;

            vla_runtime_type_size(type, &align);
            gen_op('*');
            vset(&int_type, 0x0032|0x0100, n);
            vswap();
            vstore();
        }
        if (n != -1)
            vpop();
	nocode_wanted = saved_nocode_wanted;



        s = sym_push(0x20000000, type, 0, n);
        type->t = (t1 ? 0x0400 : 0x0040) | 5;
        type->ref = s;
    }
    return 1;
}
# 5232 "../tinycc/tccgen.c"
static CType *type_decl(CType *type, AttributeDef *ad, int *v, int td)
{
    CType *post, *ret;
    int qualifiers, storage;


    storage = type->t & (0x00001000 | 0x00002000 | 0x00004000 | 0x00008000);
    type->t &= ~(0x00001000 | 0x00002000 | 0x00004000 | 0x00008000);
    post = ret = type;

    while (tok == '*') {
        qualifiers = 0;
    redo:
        next();
        switch(tok) {
        case TOK_CONST1:
        case TOK_CONST2:
        case TOK_CONST3:
            qualifiers |= 0x0100;
            goto redo;
        case TOK_VOLATILE1:
        case TOK_VOLATILE2:
        case TOK_VOLATILE3:
            qualifiers |= 0x0200;
            goto redo;
        case TOK_RESTRICT1:
        case TOK_RESTRICT2:
        case TOK_RESTRICT3:
            goto redo;

	case TOK_ATTRIBUTE1:
	case TOK_ATTRIBUTE2:
	    parse_attribute(ad);
	    break;
        }
        mk_pointer(type);
        type->t |= qualifiers;
	if (ret == type)

	    ret = pointed_type(type);
    }

    if (tok == '(') {


	if (!post_type(type, ad, 0, td)) {




	    parse_attribute(ad);
	    post = type_decl(type, ad, v, td);
	    skip(')');
	} else
	  goto abstract;
    } else if (tok >= 256 && (td & 2)) {

	*v = tok;
	next();
    } else {
  abstract:
	if (!(td & 1))
	  expect("identifier");
	*v = 0;
    }
    post_type(post, ad, storage, 0);
    parse_attribute(ad);
    type->t |= storage;
    return ret;
}


static void indir(void)
{
    if ((vtop->type.t & 0x000f) != 5) {
        if ((vtop->type.t & 0x000f) == 6)
            return;
        expect("pointer");
    }
    if (vtop->r & 0x0100)
        gv(0x0001);
    vtop->type = *pointed_type(&vtop->type);

    if (!(vtop->type.t & (0x0040 | 0x0400))
        && (vtop->type.t & 0x000f) != 6) {
        vtop->r |= 0x0100;


        if (tcc_state->do_bounds_check)
            vtop->r |= 0x4000;

    }
}


static void gfunc_param_typed(Sym *func, Sym *arg)
{
    int func_type;
    CType type;

    func_type = func->f.func_type;
    if (func_type == 2 ||
        (func_type == 3 && arg == ((void *)0))) {

        if ((vtop->type.t & 0x000f) == 8) {
            gen_cast_s(9);
        } else if (vtop->type.t & 0x0080) {
            type.t = vtop->type.t & (0x000f | 0x0010);
	    type.ref = vtop->type.ref;
            gen_cast(&type);
        } else if (vtop->r & 0x0C00) {
            force_charshort_cast();
        }
    } else if (arg == ((void *)0)) {
        _tcc_error("too many arguments to function");
    } else {
        type = arg->type;
        type.t &= ~0x0100;
        gen_assign_cast(&type);
    }
}


static void expr_type(CType *type, void (*expr_fn)(void))
{
    nocode_wanted++;
    expr_fn();
    *type = vtop->type;
    vpop();
    nocode_wanted--;
}



static void parse_expr_type(CType *type)
{
    int n;
    AttributeDef ad;

    skip('(');
    if (parse_btype(type, &ad)) {
        type_decl(type, &ad, &n, 1);
    } else {
        expr_type(type, gexpr);
    }
    skip(')');
}

static void parse_type(CType *type)
{
    AttributeDef ad;
    int n;

    if (!parse_btype(type, &ad)) {
        expect("type");
    }
    type_decl(type, &ad, &n, 1);
}

static void parse_builtin_params(int nc, const char *args)
{
    char c, sep = '(';
    CType type;
    if (nc)
        nocode_wanted++;
    next();
    if (*args == 0)
	skip(sep);
    while ((c = *args++)) {
	skip(sep);
	sep = ',';
        if (c == 't') {
            parse_type(&type);
	    vpush(&type);
	    continue;
        }
        expr_eq();
        type.ref = ((void *)0);
        type.t = 0;
	switch (c) {
	    case 'e':
		continue;
	    case 'V':
                type.t = 0x0100;
	    case 'v':
                type.t |= 0;
                mk_pointer (&type);
                break;
	    case 'S':
                type.t = 0x0100;
	    case 's':
                type.t |= char_type.t;
                mk_pointer (&type);
                break;
	    case 'i':
                type.t = 3;
                break;
	    case 'l':
                type.t = (0x0800 | 4 | 0x0010);
                break;
	    default:
                _tcc_error("internal error");
	}
        gen_assign_cast(&type);
    }
    skip(')');
    if (nc)
        nocode_wanted--;
}

static void unary(void)
{
    int n, t, align, size, r, sizeof_caller;
    CType type;
    Sym *s;
    AttributeDef ad;


    if (tcc_state->do_debug)
        tcc_debug_line(tcc_state);

    sizeof_caller = in_sizeof;
    in_sizeof = 0;
    type.ref = ((void *)0);


 tok_next:
    switch(tok) {
    case TOK_EXTENSION:
        next();
        goto tok_next;
    case 0xc1:




    case 0xc2:
    case 0xc0:
	t = 3;
 push_tokc:
	type.t = t;
	vsetc(&type, 0x0030, &tokc);
        next();
        break;
    case 0xc3:
        t = 3 | 0x0010;
        goto push_tokc;
    case 0xc4:
        t = 4;
	goto push_tokc;
    case 0xc5:
        t = 4 | 0x0010;
	goto push_tokc;
    case 0xca:
        t = 8;
	goto push_tokc;
    case 0xcb:
        t = 9;
	goto push_tokc;
    case 0xcc:
        t = 10;
	goto push_tokc;
    case 0xc6:
        t = (8 == 8 ? 4 : 3) | 0x0800;
	goto push_tokc;
    case 0xc7:
        t = (8 == 8 ? 4 : 3) | 0x0800 | 0x0010;
	goto push_tokc;
    case TOK___FUNCTION__:
        if (!tcc_state->gnu_ext)
            goto tok_identifier;

    case TOK___FUNC__:
        {
            void *ptr;
            int len;

            len = strlen(funcname) + 1;

            type.t = 1;
            mk_pointer(&type);
            type.t |= 0x0040;
            type.ref->c = len;
            vpush_ref(&type, tcc_state->data_section, tcc_state->data_section->data_offset, len);
            if (!(nocode_wanted > 0)) {
                ptr = section_ptr_add(tcc_state->data_section, len);
                memcpy(ptr, funcname, len);
            }
            next();
        }
        break;
    case 0xc9:



        t = 3;

        goto str_init;
    case 0xc8:

        t = 1;
        if (tcc_state->char_is_unsigned)
            t = 1 | 0x0010;
    str_init:
        if (tcc_state->warn_write_strings)
            t |= 0x0100;
        type.t = t;
        mk_pointer(&type);
        type.t |= 0x0040;
        memset(&ad, 0, sizeof(AttributeDef));
        decl_initializer_alloc(&type, &ad, 0x0030, 2, 0, 0);
        break;
    case '(':
        next();

        if (parse_btype(&type, &ad)) {
            type_decl(&type, &ad, &n, 1);
            skip(')');

            if (tok == '{') {

                if (global_expr)
                    r = 0x0030;
                else
                    r = 0x0032;

                if (!(type.t & 0x0040))
                    r |= 0x0100;
                memset(&ad, 0, sizeof(AttributeDef));
                decl_initializer_alloc(&type, &ad, r, 1, 0, 0);
            } else {
                if (sizeof_caller) {
                    vpush(&type);
                    return;
                }
                unary();
                gen_cast(&type);
            }
        } else if (tok == '{') {
	    int saved_nocode_wanted = nocode_wanted;
            if (const_wanted && !(nocode_wanted & 0xffff))
                _tcc_error("expected constant");

            save_regs(0);





            block(1);
	    nocode_wanted = saved_nocode_wanted;
            skip(')');
        } else {
            gexpr();
            skip(')');
        }
        break;
    case '*':
        next();
        unary();
        indir();
        break;
    case '&':
        next();
        unary();





        if ((vtop->type.t & 0x000f) != 6 &&
            !(vtop->type.t & 0x0040))
            test_lvalue();
        if (vtop->sym)
          vtop->sym->a.addrtaken = 1;
        mk_pointer(&vtop->type);
        gaddrof();
        break;
    case '!':
        next();
        unary();
        gen_test_zero(0x94);
        break;
    case '~':
        next();
        unary();
        vpushi(-1);
        gen_op('^');
        break;
    case '+':
        next();
        unary();
        if ((vtop->type.t & 0x000f) == 5)
            _tcc_error("pointer not accepted for unary plus");



	if (!is_float(vtop->type.t)) {
	    vpushi(0);
	    gen_op('+');
	}
        break;
    case TOK_SIZEOF:
    case TOK_ALIGNOF1:
    case TOK_ALIGNOF2:
    case TOK_ALIGNOF3:
        t = tok;
        next();
        in_sizeof++;
        expr_type(&type, unary);
        s = ((void *)0);
        if (vtop[1].r & 0x0200)
            s = vtop[1].sym;
        size = type_size(&type, &align);
        if (s && s->a.aligned)
            align = 1 << (s->a.aligned - 1);
        if (t == TOK_SIZEOF) {
            if (!(type.t & 0x0400)) {
                if (size < 0)
                    _tcc_error("sizeof applied to an incomplete type");
                vpushs(size);
            } else {
                vla_runtime_type_size(&type, &align);
            }
        } else {
            vpushs(align);
        }
        vtop->type.t |= 0x0010;
        break;

    case TOK_builtin_expect:

	parse_builtin_params(0, "ee");
	vpop();
        break;
    case TOK_builtin_types_compatible_p:
	parse_builtin_params(0, "tt");
	vtop[-1].type.t &= ~(0x0100 | 0x0200);
	vtop[0].type.t &= ~(0x0100 | 0x0200);
	n = is_compatible_types(&vtop[-1].type, &vtop[0].type);
	vtop -= 2;
	vpushi(n);
        break;
    case TOK_builtin_choose_expr:
	{
	    int64_t c;
	    next();
	    skip('(');
	    c = expr_const64();
	    skip(',');
	    if (!c) {
		nocode_wanted++;
	    }
	    expr_eq();
	    if (!c) {
		vpop();
		nocode_wanted--;
	    }
	    skip(',');
	    if (c) {
		nocode_wanted++;
	    }
	    expr_eq();
	    if (c) {
		vpop();
		nocode_wanted--;
	    }
	    skip(')');
	}
        break;
    case TOK_builtin_constant_p:
	parse_builtin_params(1, "e");
	n = (vtop->r & (0x003f | 0x0100 | 0x0200)) == 0x0030;
	vtop--;
	vpushi(n);
        break;
    case TOK_builtin_frame_address:
    case TOK_builtin_return_address:
        {
            int tok1 = tok;
            int level;
            next();
            skip('(');
            if (tok != 0xc2) {
                _tcc_error("%s only takes positive integers",
                          tok1 == TOK_builtin_return_address ?
                          "__builtin_return_address" :
                          "__builtin_frame_address");
            }
            level = (uint32_t)tokc.i;
            next();
            skip(')');
            type.t = 0;
            mk_pointer(&type);
            vset(&type, 0x0032, 0);
            while (level--) {




                mk_pointer(&vtop->type);
                indir();
            }
            if (tok1 == TOK_builtin_return_address) {
# 5744 "../tinycc/tccgen.c"
                vpushi(8);
                gen_op('+');

                mk_pointer(&vtop->type);
                indir();
            }
        }
        break;
# 5779 "../tinycc/tccgen.c"
    case TOK_builtin_va_arg_types:
	parse_builtin_params(0, "t");
	vpushi(classify_x86_64_va_arg(&vtop->type));
	vswap();
	vpop();
	break;
# 5816 "../tinycc/tccgen.c"
    case 0x82:
    case 0x80:
        t = tok;
        next();
        unary();
        inc(0, t);
        break;
    case '-':
        next();
        unary();
        t = vtop->type.t & 0x000f;
	if (is_float(t)) {


	    vpush(&vtop->type);
	    if (t == 8)
	        vtop->c.f = -1.0 * 0.0;
	    else if (t == 9)
	        vtop->c.d = -1.0 * 0.0;
            else
	        vtop->c.ld = -1.0 * 0.0;
	} else
	    vpushi(0);
	vswap();
	gen_op('-');
        break;
    case 0x90:
        if (!tcc_state->gnu_ext)
            goto tok_identifier;
        next();

        if (tok < TOK_DEFINE)
            expect("label identifier");
        s = label_find(tok);
        if (!s) {
            s = label_push(&global_label_stack, tok, 1);
        } else {
            if (s->r == 2)
                s->r = 1;
        }
        if (!s->type.t) {
            s->type.t = 0;
            mk_pointer(&s->type);
            s->type.t |= 0x00002000;
        }
        vpushsym(&s->type, s);
        next();
        break;

    case TOK_GENERIC:
    {
	CType controlling_type;
	int has_default = 0;
	int has_match = 0;
	int learn = 0;
	TokenString *str = ((void *)0);
	int saved_const_wanted = const_wanted;

	next();
	skip('(');
	const_wanted = 0;
	expr_type(&controlling_type, expr_eq);
	controlling_type.t &= ~(0x0100 | 0x0200 | 0x0040);
	if ((controlling_type.t & 0x000f) == 6)
	  mk_pointer(&controlling_type);
	const_wanted = saved_const_wanted;
	for (;;) {
	    learn = 0;
	    skip(',');
	    if (tok == TOK_DEFAULT) {
		if (has_default)
		    _tcc_error("too many 'default'");
		has_default = 1;
		if (!has_match)
		    learn = 1;
		next();
	    } else {
	        AttributeDef ad_tmp;
		int itmp;
	        CType cur_type;

                in_generic++;
		parse_btype(&cur_type, &ad_tmp);
                in_generic--;

		type_decl(&cur_type, &ad_tmp, &itmp, 1);
		if (compare_types(&controlling_type, &cur_type, 0)) {
		    if (has_match) {
		      _tcc_error("type match twice");
		    }
		    has_match = 1;
		    learn = 1;
		}
	    }
	    skip(':');
	    if (learn) {
		if (str)
		    tok_str_free(str);
		skip_or_save_block(&str);
	    } else {
		skip_or_save_block(((void *)0));
	    }
	    if (tok == ')')
		break;
	}
	if (!str) {
	    char buf[60];
	    type_to_str(buf, sizeof buf, &controlling_type, ((void *)0));
	    _tcc_error("type '%s' does not match any association", buf);
	}
	begin_macro(str, 1);
	next();
	expr_eq();
	if (tok != (-1))
	    expect(",");
	end_macro();
        next();
	break;
    }

    case TOK___NAN__:
        n = 0x7fc00000;
special_math_val:
	vpushi(n);
	vtop->type.t = 8;
        next();
        break;
    case TOK___SNAN__:
	n = 0x7f800001;
	goto special_math_val;
    case TOK___INF__:
	n = 0x7f800000;
	goto special_math_val;

    default:
    tok_identifier:
        t = tok;
        next();
        if (t < TOK_DEFINE)
            expect("identifier");
        s = sym_find(t);
        if (!s || (((s)->type.t & (0x000f | (0 | 0x0010))) == (0 | 0x0010))) {
            const char *name = get_tok_str(t, ((void *)0));
            if (tok != '(')
                _tcc_error("'%s' undeclared", name);


            if (tcc_state->warn_implicit_function_declaration





            )
                _tcc_warning("implicit declaration of function '%s'", name);
            s = external_global_sym(t, &func_old_type);
        }

        r = s->r;


        if ((r & 0x003f) < 0x0030)
            r = (r & ~0x003f) | 0x0032;

        vset(&s->type, r, s->c);



	vtop->sym = s;

        if (r & 0x0200) {
            vtop->c.i = 0;
        } else if (r == 0x0030 && ((s->type.t & (((1U << (6+6)) - 1) << 20 | 0x0080)) == (3 << 20))) {
            vtop->c.i = s->enum_val;
        }
        break;
    }


    while (1) {
        if (tok == 0x82 || tok == 0x80) {
            inc(1, tok);
            next();
        } else if (tok == '.' || tok == 0xa0 || tok == 0xcb) {
            int qualifiers, cumofs = 0;

            if (tok == 0xa0)
                indir();
            qualifiers = vtop->type.t & (0x0100 | 0x0200);
            test_lvalue();
            gaddrof();

            if ((vtop->type.t & 0x000f) != 7)
                expect("struct or union");
            if (tok == 0xcb)
                expect("field name");
            next();
            if (tok == 0xc2 || tok == 0xc3)
                expect("field name");
	    s = find_field(&vtop->type, tok, &cumofs);
            if (!s)
                _tcc_error("field not found: %s",  get_tok_str(tok & ~0x20000000, &tokc));

            vtop->type = char_pointer_type;
            vpushi(cumofs + s->c);
            gen_op('+');

            vtop->type = s->type;
            vtop->type.t |= qualifiers;

            if (!(vtop->type.t & 0x0040)) {
                vtop->r |= 0x0100;


                if (tcc_state->do_bounds_check)
                    vtop->r |= 0x4000;

            }
            next();
        } else if (tok == '[') {
            next();
            gexpr();
            gen_op('+');
            indir();
            skip(']');
        } else if (tok == '(') {
            SValue ret;
            Sym *sa;
            int nb_args, ret_nregs, ret_align, regsize, variadic;


            if ((vtop->type.t & 0x000f) != 6) {

                if ((vtop->type.t & (0x000f | 0x0040)) == 5) {
                    vtop->type = *pointed_type(&vtop->type);
                    if ((vtop->type.t & 0x000f) != 6)
                        goto error_func;
                } else {
                error_func:
                    expect("function pointer");
                }
            } else {
                vtop->r &= ~0x0100;
            }

            s = vtop->type.ref;
            next();
            sa = s->next;
            nb_args = regsize = 0;
            ret.r2 = 0x0030;

            if ((s->type.t & 0x000f) == 7) {
                variadic = (s->f.func_type == 3);
                ret_nregs = gfunc_sret(&s->type, variadic, &ret.type,
                                       &ret_align, &regsize);
                if (ret_nregs <= 0) {

                    size = type_size(&s->type, &align);
# 6083 "../tinycc/tccgen.c"
                    loc = (loc - size) & -align;
                    ret.type = s->type;
                    ret.r = 0x0032 | 0x0100;


                    vseti(0x0032, loc);
                    ret.c = vtop->c;
                    if (ret_nregs < 0)
                      vtop--;
                    else
                      nb_args++;
                }
            } else {
                ret_nregs = 1;
                ret.type = s->type;
            }

            if (ret_nregs > 0) {

                ret.c.i = 0;
                PUT_R_RET(&ret, ret.type.t);
            }
            if (tok != ')') {
                for(;;) {
                    expr_eq();
                    gfunc_param_typed(s, sa);
                    nb_args++;
                    if (sa)
                        sa = sa->next;
                    if (tok == ')')
                        break;
                    skip(',');
                }
            }
            if (sa)
                _tcc_error("too few arguments to function");
            skip(')');
            gfunc_call(nb_args);

            if (ret_nregs < 0) {
                vsetc(&ret.type, ret.r, &ret.c);



            } else {

                for (r = ret.r + ret_nregs + !ret_nregs; r-- > ret.r;) {
                    vsetc(&ret.type, r, &ret.c);
                    vtop->r2 = ret.r2;
                }


                if (((s->type.t & 0x000f) == 7) && ret_nregs) {
                    int addr, offset;

                    size = type_size(&s->type, &align);


                    if (regsize > align)
                      align = regsize;
                    loc = (loc - size) & -align;
                    addr = loc;
                    offset = 0;
                    for (;;) {
                        vset(&ret.type, 0x0032 | 0x0100, addr + offset);
                        vswap();
                        vstore();
                        vtop--;
                        if (--ret_nregs == 0)
                          break;
                        offset += regsize;
                    }
                    vset(&s->type, 0x0032 | 0x0100, addr);
                }






                t = s->type.t & 0x000f;
                if (t == 1 || t == 2 || t == 11) {

                    vtop->r |= ((unsigned)((0x0C00) & ~((0x0C00) << 1)) * (1));



                }
            }
            if (s->f.func_noreturn)
                (nocode_wanted |= 0x20000000);
        } else {
            break;
        }
    }
}
# 6294 "../tinycc/tccgen.c"
static int precedence(int tok)
{
    switch (tok) {
        case 0x91: return 1;
        case 0x90: return 2;
	case '|': return 3;
	case '^': return 4;
	case '&': return 5;
	case 0x94: case 0x95: return 6;
 relat: case 0x92: case 0x93: return 7;
	case '<': case '>': return 8;
	case '+': case '-': return 9;
	case '*': case '/': case '%': return 10;
	default:
	    if (tok >= 0x96 && tok <= 0x9f)
	        goto relat;
	    return 0;
    }
}
static unsigned char prec[256];
static void init_prec(void)
{
    int i;
    for (i = 0; i < 256; i++)
	prec[i] = precedence(i);
}


static void expr_landor(int op);

static void expr_infix(int p)
{
    int t = tok, p2;
    while ((p2 = ((unsigned)t < 256 ? prec[t] : 0)) >= p) {
        if (t == 0x91 || t == 0x90) {
            expr_landor(t);
        } else {
            next();
            unary();
            if (((unsigned)tok < 256 ? prec[tok] : 0) > p2)
              expr_infix(p2 + 1);
            gen_op(t);
        }
        t = tok;
    }
}





static int condition_3way(void)
{
    int c = -1;
    if ((vtop->r & (0x003f | 0x0100)) == 0x0030 &&
	(!(vtop->r & 0x0200) || !vtop->sym->a.weak)) {
	vdup();
        gen_cast_s(11);
	c = vtop->c.i;
	vpop();
    }
    return c;
}

static void expr_landor(int op)
{
    int t = 0, cc = 1, f = 0, i = op == 0x90, c;
    for(;;) {
        c = f ? i : condition_3way();
        if (c < 0)
            save_regs(1), cc = 0;
        else if (c != i)
            nocode_wanted++, f = 1;
        if (tok != op)
            break;
        if (c < 0)
            t = gvtst(i, t);
        else
            vpop();
        next();
        unary(), expr_infix(((unsigned)op < 256 ? prec[op] : 0) + 1);
    }
    if (cc || f) {
        vpop();
        vpushi(i ^ f);
        gsym(t);
        nocode_wanted -= f;
    } else {
        gvtst_set(i, t);
    }
}

static int is_cond_bool(SValue *sv)
{
    if ((sv->r & (0x003f | 0x0100 | 0x0200)) == 0x0030
        && (sv->type.t & 0x000f) == 3)
        return (unsigned)sv->c.i < 2;
    if (sv->r == 0x0033)
        return 1;
    return 0;
}

static void expr_cond(void)
{
    int tt, u, r1, r2, rc, t1, t2, islv, c, g;
    SValue sv;
    CType type;
    int ncw_prev;

    unary(), expr_infix(1);
    if (tok == '?') {
        next();
	c = condition_3way();
        g = (tok == ':' && tcc_state->gnu_ext);
        tt = 0;
        if (!g) {
            if (c < 0) {
                save_regs(1);
                tt = gvtst(1, 0);
            } else {
                vpop();
            }
        } else if (c < 0) {


            save_regs(1);
            gv_dup();
            tt = gvtst(0, 0);
        }

        ncw_prev = nocode_wanted;
        if (c == 0)
          nocode_wanted++;
        if (!g)
          gexpr();

        if (c < 0 && vtop->r == 0x0033) {
            t1 = gvtst(0, 0);
            vpushi(0);
            gvtst_set(0, t1);
            gv(0x0001);
        }

        if ((vtop->type.t & 0x000f) == 6)
          mk_pointer(&vtop->type);
        sv = *vtop;
        vtop--;

        if (g) {
            u = tt;
        } else if (c < 0) {
            u = gjmp_acs(0);
            gsym(tt);
        } else
          u = 0;

        nocode_wanted = ncw_prev;
        if (c == 1)
          nocode_wanted++;
        skip(':');
        expr_cond();

        if (c < 0 && is_cond_bool(vtop) && is_cond_bool(&sv)) {
            if (sv.r == 0x0033) {
                t1 = sv.jtrue;
                t2 = u;
            } else {
                t1 = gvtst(0, 0);
                t2 = gjmp_acs(0);
                gsym(u);
                vpushv(&sv);
            }
            gvtst_set(0, t1);
            gvtst_set(1, t2);
            nocode_wanted = ncw_prev;

            return;
        }

        if ((vtop->type.t & 0x000f) == 6)
          mk_pointer(&vtop->type);


        if (!combine_types(&type, &sv, vtop, '?'))
          type_incompatibility_error(&sv.type, &vtop->type,
            "type mismatch in conditional expression (have '%s' and '%s')");


        islv = (vtop->r & 0x0100) && (sv.r & 0x0100) && 7 == (type.t & 0x000f);


        if (c != 1) {
            gen_cast(&type);
            if (islv) {
                mk_pointer(&vtop->type);
                gaddrof();
            } else if (7 == (vtop->type.t & 0x000f))
              gaddrof();
        }

        rc = RC_TYPE(type.t);


        if ((R2_RET(type.t) != 0x0030))
          rc = RC_RET(type.t);

        tt = r2 = 0;
        if (c < 0) {
            r2 = gv(rc);
            tt = gjmp_acs(0);
        }
        gsym(u);
        nocode_wanted = ncw_prev;



        if (c != 0) {
            *vtop = sv;
            gen_cast(&type);
            if (islv) {
                mk_pointer(&vtop->type);
                gaddrof();
            } else if (7 == (vtop->type.t & 0x000f))
              gaddrof();
        }

        if (c < 0) {
            r1 = gv(rc);
            move_reg(r2, r1, islv ? 5 : type.t);
            vtop->r = r2;
            gsym(tt);
        }

        if (islv)
          indir();
    }
}

static void expr_eq(void)
{
    int t;

    expr_cond();
    if ((t = tok) == '=' || (t >= 0xb0 && t <= 0xb9)) {
        test_lvalue();
        next();
        if (t == '=') {
            expr_eq();
        } else {
            vdup();
            expr_eq();
            gen_op(("+-*/%&|^<>"[t - 0xb0]));
        }
        vstore();
    }
}

static void gexpr(void)
{
    while (1) {
        expr_eq();
        if (tok != ',')
            break;
        vpop();
        next();
    }
}


static void expr_const1(void)
{
    const_wanted++;
    nocode_wanted += 0xffff + 1;
    expr_cond();
    nocode_wanted -= 0xffff + 1;
    const_wanted--;
}


static inline int64_t expr_const64(void)
{
    int64_t c;
    expr_const1();
    if ((vtop->r & (0x003f | 0x0100 | 0x0200)) != 0x0030)
        expect("constant expression");
    c = vtop->c.i;
    vpop();
    return c;
}



static int expr_const(void)
{
    int c;
    int64_t wc = expr_const64();
    c = wc;
    if (c != wc && (unsigned)c != wc)
        _tcc_error("constant exceeds 32 bit");
    return c;
}





static void gfunc_return(CType *func_type)
{
    if ((func_type->t & 0x000f) == 7) {
        CType type, ret_type;
        int ret_align, ret_nregs, regsize;
        ret_nregs = gfunc_sret(func_type, func_var, &ret_type,
                               &ret_align, &regsize);
        if (ret_nregs < 0) {



        } else if (0 == ret_nregs) {


            type = *func_type;
            mk_pointer(&type);
            vset(&type, 0x0032 | 0x0100, func_vc);
            indir();
            vswap();

            vstore();
        } else {

            int size, addr, align, rc;
            size = type_size(func_type,&align);
            if ((vtop->r != (0x0032 | 0x0100) ||
                 (vtop->c.i & (ret_align-1)))
                && (align & (ret_align-1))) {
                loc = (loc - size) & -ret_align;
                addr = loc;
                type = *func_type;
                vset(&type, 0x0032 | 0x0100, addr);
                vswap();
                vstore();
                vpop();
                vset(&ret_type, 0x0032 | 0x0100, addr);
            }
            vtop->type = ret_type;
            rc = RC_RET(ret_type.t);
            if (ret_nregs == 1)
                gv(rc);
            else {
                for (;;) {
                    vdup();
                    gv(rc);
                    vpop();
                    if (--ret_nregs == 0)
                      break;



                    rc <<= 1;
                    vtop->c.i += regsize;
                }
            }
        }
    } else {
        gv(RC_RET(func_type->t));
    }
    vtop--;
}


static void check_func_return(void)
{
    if ((func_vt.t & 0x000f) == 0)
        return;
    if (!strcmp (funcname, "main")
        && (func_vt.t & 0x000f) == 3) {

        vpushi(0);
        gen_assign_cast(&func_vt);
        gfunc_return(&func_vt);
    } else {
        _tcc_warning("function might return no value: '%s'", funcname);
    }
}




static int case_cmpi(const void *pa, const void *pb)
{
    int64_t a = (*(struct case_t**) pa)->v1;
    int64_t b = (*(struct case_t**) pb)->v1;
    return a < b ? -1 : a > b;
}

static int case_cmpu(const void *pa, const void *pb)
{
    uint64_t a = (uint64_t)(*(struct case_t**) pa)->v1;
    uint64_t b = (uint64_t)(*(struct case_t**) pb)->v1;
    return a < b ? -1 : a > b;
}

static void gtst_addr(int t, int a)
{
    gsym_addr(gvtst(0, t), a);
}

static void gcase(struct case_t **base, int len, int *bsym)
{
    struct case_t *p;
    int e;
    int ll = (vtop->type.t & 0x000f) == 4;
    while (len > 8) {

        p = base[len/2];
        vdup();
	if (ll)
	    vpushll(p->v2);
	else
	    vpushi(p->v2);
        gen_op(0x9e);
        e = gvtst(1, 0);
        vdup();
	if (ll)
	    vpushll(p->v1);
	else
	    vpushi(p->v1);
        gen_op(0x9d);
        gtst_addr(0, p->sym);

        gcase(base, len/2, bsym);

        gsym(e);
        e = len/2 + 1;
        base += e; len -= e;
    }

    while (len--) {
        p = *base++;
        vdup();
	if (ll)
	    vpushll(p->v2);
	else
	    vpushi(p->v2);
        if (p->v1 == p->v2) {
            gen_op(0x94);
            gtst_addr(0, p->sym);
        } else {
            gen_op(0x9e);
            e = gvtst(1, 0);
            vdup();
	    if (ll)
	        vpushll(p->v1);
	    else
	        vpushi(p->v1);
            gen_op(0x9d);
            gtst_addr(0, p->sym);
            gsym(e);
        }
    }
    *bsym = gjmp_acs(*bsym);
}




static void try_call_scope_cleanup(Sym *stop)
{
    Sym *cls = cur_scope->cl.s;

    for (; cls != stop; cls = cls->ncl) {
	Sym *fs = cls->next;
	Sym *vs = cls->prev_tok;

	vpushsym(&fs->type, fs);
	vset(&vs->type, vs->r, vs->c);
	vtop->sym = vs;
        mk_pointer(&vtop->type);
	gaddrof();
	gfunc_call(1);
    }
}

static void try_call_cleanup_goto(Sym *cleanupstate)
{
    Sym *oc, *cc;
    int ocd, ccd;

    if (!cur_scope->cl.s)
	return;


    ocd = cleanupstate ? cleanupstate->v & ~0x20000000 : 0;
    for (ccd = cur_scope->cl.n, oc = cleanupstate; ocd > ccd; --ocd, oc = oc->ncl)
      ;
    for (cc = cur_scope->cl.s; ccd > ocd; --ccd, cc = cc->ncl)
      ;
    for (; cc != oc; cc = cc->ncl, oc = oc->ncl, --ccd)
      ;

    try_call_scope_cleanup(cc);
}


static void block_cleanup(struct scope *o)
{
    int jmp = 0;
    Sym *g, **pg;
    for (pg = &pending_gotos; (g = *pg) && g->c > o->cl.n;) {
        if (g->prev_tok->r & 1) {
            Sym *pcl = g->next;
            if (!jmp)
                jmp = gjmp_acs(0);
            gsym(pcl->jnext);
            try_call_scope_cleanup(o->cl.s);
            pcl->jnext = gjmp_acs(0);
            if (!o->cl.n)
                goto remove_pending;
            g->c = o->cl.n;
            pg = &g->prev;
        } else {
    remove_pending:
            *pg = g->prev;
            sym_free(g);
        }
    }
    gsym(jmp);
    try_call_scope_cleanup(o->cl.s);
}




static void vla_restore(int loc)
{
    if (loc)
        gen_vla_sp_restore(loc);
}

static void vla_leave(struct scope *o)
{
    if (o->vla.num < cur_scope->vla.num)
        vla_restore(o->vla.loc);
}




void new_scope(struct scope *o)
{

    *o = *cur_scope;
    o->prev = cur_scope;
    cur_scope = o;


    o->lstk = local_stack;
    o->llstk = local_label_stack;

    ++local_scope;

    if (tcc_state->do_debug)
        tcc_debug_stabn(N_LBRAC, ind - func_ind);
}

void prev_scope(struct scope *o, int is_expr)
{
    vla_leave(o->prev);

    if (o->cl.s != o->prev->cl.s)
        block_cleanup(o->prev);


    label_pop(&local_label_stack, o->llstk, is_expr);
# 6877 "../tinycc/tccgen.c"
    pop_local_syms(&local_stack, o->lstk, is_expr, 0);
    cur_scope = o->prev;
    --local_scope;

    if (tcc_state->do_debug)
        tcc_debug_stabn(N_RBRAC, ind - func_ind);
}


void leave_scope(struct scope *o)
{
    if (!o)
        return;
    try_call_scope_cleanup(o->cl.s);
    vla_leave(o);
}




static void lblock(int *bsym, int *csym)
{
    struct scope *lo = loop_scope, *co = cur_scope;
    int *b = co->bsym, *c = co->csym;
    if (csym) {
        co->csym = csym;
        loop_scope = co;
    }
    co->bsym = bsym;
    block(0);
    co->bsym = b;
    if (csym) {
        co->csym = c;
        loop_scope = lo;
    }
}

static void block(int is_expr)
{
    int a, b, c, d, e, t;
    struct scope o;
    Sym *s;

    if (is_expr) {

        vpushi(0);
        vtop->type.t = 0;
    }

again:
    t = tok, next();

    if (t == TOK_IF) {
        skip('(');
        gexpr();
        skip(')');
        a = gvtst(1, 0);
        block(0);
        if (tok == TOK_ELSE) {
            d = gjmp_acs(0);
            gsym(a);
            next();
            block(0);
            gsym(d);
        } else {
            gsym(a);
        }

    } else if (t == TOK_WHILE) {
        d = gind();
        skip('(');
        gexpr();
        skip(')');
        a = gvtst(1, 0);
        b = 0;
        lblock(&a, &b);
        gjmp_addr_acs(d);
        gsym_addr(b, d);
        gsym(a);

    } else if (t == '{') {
        new_scope(&o);


        while (tok == TOK_LABEL) {
            do {
                next();
                if (tok < TOK_DEFINE)
                    expect("label identifier");
                label_push(&local_label_stack, tok, 2);
                next();
            } while (tok == ',');
            skip(';');
        }

        while (tok != '}') {
	    decl(0x0032);
            if (tok != '}') {
                if (is_expr)
                    vpop();
                block(is_expr);
            }
        }

        prev_scope(&o, is_expr);
        if (local_scope)
            next();
        else if (!nocode_wanted)
            check_func_return();

    } else if (t == TOK_RETURN) {
        b = (func_vt.t & 0x000f) != 0;
        if (tok != ';') {
            gexpr();
            if (b) {
                gen_assign_cast(&func_vt);
            } else {
                if (vtop->type.t != 0)
                    _tcc_warning("void function returns a value");
                vtop--;
            }
        } else if (b) {
            _tcc_warning("'return' with no value");
            b = 0;
        }
        leave_scope(root_scope);
        if (b)
            gfunc_return(&func_vt);
        skip(';');

        if (tok != '}' || local_scope != 1)
            rsym = gjmp_acs(rsym);
        (nocode_wanted |= 0x20000000);

    } else if (t == TOK_BREAK) {

        if (!cur_scope->bsym)
            _tcc_error("cannot break");
        if (cur_switch && cur_scope->bsym == cur_switch->bsym)
            leave_scope(cur_switch->scope);
        else
            leave_scope(loop_scope);
        *cur_scope->bsym = gjmp_acs(*cur_scope->bsym);
        skip(';');

    } else if (t == TOK_CONTINUE) {

        if (!cur_scope->csym)
            _tcc_error("cannot continue");
        leave_scope(loop_scope);
        *cur_scope->csym = gjmp_acs(*cur_scope->csym);
        skip(';');

    } else if (t == TOK_FOR) {
        new_scope(&o);

        skip('(');
        if (tok != ';') {

            if (!decl0(0x0032, 1, ((void *)0))) {

                gexpr();
                vpop();
            }
        }
        skip(';');
        a = b = 0;
        c = d = gind();
        if (tok != ';') {
            gexpr();
            a = gvtst(1, 0);
        }
        skip(';');
        if (tok != ')') {
            e = gjmp_acs(0);
            d = gind();
            gexpr();
            vpop();
            gjmp_addr_acs(c);
            gsym(e);
        }
        skip(')');
        lblock(&a, &b);
        gjmp_addr_acs(d);
        gsym_addr(b, d);
        gsym(a);
        prev_scope(&o, 0);

    } else if (t == TOK_DO) {
        a = b = 0;
        d = gind();
        lblock(&a, &b);
        gsym(b);
        skip(TOK_WHILE);
        skip('(');
	gexpr();
        skip(')');
        skip(';');
	c = gvtst(0, 0);
	gsym_addr(c, d);
        gsym(a);

    } else if (t == TOK_SWITCH) {
        struct switch_t *sw;

        sw = tcc_mallocz(sizeof *sw);
        sw->bsym = &a;
        sw->scope = cur_scope;
        sw->prev = cur_switch;
        cur_switch = sw;

        skip('(');
        gexpr();
        skip(')');
        sw->sv = *vtop--;

        a = 0;
        b = gjmp_acs(0);
        lblock(&a, ((void *)0));
        a = gjmp_acs(a);

        gsym(b);

        if (sw->sv.type.t & 0x0010)
            qsort(sw->p, sw->n, sizeof(void*), case_cmpu);
        else
            qsort(sw->p, sw->n, sizeof(void*), case_cmpi);

        for (b = 1; b < sw->n; b++)
            if (sw->sv.type.t & 0x0010
                ? (uint64_t)sw->p[b - 1]->v2 >= (uint64_t)sw->p[b]->v1
                : sw->p[b - 1]->v2 >= sw->p[b]->v1)
                _tcc_error("duplicate case value");

        vpushv(&sw->sv);
        gv(0x0001);
        d = 0, gcase(sw->p, sw->n, &d);
        vpop();
        if (sw->def_sym)
            gsym_addr(d, sw->def_sym);
        else
            gsym(d);

        gsym(a);

        dynarray_reset(&sw->p, &sw->n);
        cur_switch = sw->prev;
        tcc_free(sw);

    } else if (t == TOK_CASE) {
        struct case_t *cr = tcc_malloc(sizeof(struct case_t));
        if (!cur_switch)
            expect("switch");
        cr->v1 = cr->v2 = expr_const64();
        if (tcc_state->gnu_ext && tok == 0xa1) {
            next();
            cr->v2 = expr_const64();
            if ((!(cur_switch->sv.type.t & 0x0010) && cr->v2 < cr->v1)
                || (cur_switch->sv.type.t & 0x0010 && (uint64_t)cr->v2 < (uint64_t)cr->v1))
                _tcc_warning("empty case range");
        }
        cr->sym = gind();
        dynarray_add(&cur_switch->p, &cur_switch->n, cr);
        skip(':');
        is_expr = 0;
        goto block_after_label;

    } else if (t == TOK_DEFAULT) {
        if (!cur_switch)
            expect("switch");
        if (cur_switch->def_sym)
            _tcc_error("too many 'default'");
        cur_switch->def_sym = gind();
        skip(':');
        is_expr = 0;
        goto block_after_label;

    } else if (t == TOK_GOTO) {
        vla_restore(root_scope->vla.loc);
        if (tok == '*' && tcc_state->gnu_ext) {

            next();
            gexpr();
            if ((vtop->type.t & 0x000f) != 5)
                expect("pointer");
            ggoto();

        } else if (tok >= TOK_DEFINE) {
	    s = label_find(tok);

            if (!s)
              s = label_push(&global_label_stack, tok, 1);
            else if (s->r == 2)
              s->r = 1;

	    if (s->r & 1) {

		if (cur_scope->cl.s && !nocode_wanted) {
                    sym_push2(&pending_gotos, 0x20000000, 0, cur_scope->cl.n);
                    pending_gotos->prev_tok = s;
                    s = sym_push2(&s->next, 0x20000000, 0, 0);
                    pending_gotos->next = s;
                }
		s->jnext = gjmp_acs(s->jnext);
	    } else {
		try_call_cleanup_goto(s->cleanupstate);
		gjmp_addr_acs(s->jnext);
	    }
	    next();

        } else {
            expect("label identifier");
        }
        skip(';');

    } else if (t == TOK_ASM1 || t == TOK_ASM2 || t == TOK_ASM3) {
        asm_instr();

    } else {
        if (tok == ':' && t >= TOK_DEFINE) {

	    next();
            s = label_find(t);
            if (s) {
                if (s->r == 0)
                    _tcc_error("duplicate label '%s'", get_tok_str(s->v, ((void *)0)));
                s->r = 0;
		if (s->next) {
		    Sym *pcl;
		    for (pcl = s->next; pcl; pcl = pcl->prev)
		      gsym(pcl->jnext);
		    sym_pop(&s->next, ((void *)0), 0);
		} else
		  gsym(s->jnext);
            } else {
                s = label_push(&global_label_stack, t, 0);
            }
            s->jnext = gind();
            s->cleanupstate = cur_scope->cl.s;

    block_after_label:
            vla_restore(cur_scope->vla.loc);

            if (tok == '}') {
                _tcc_warning("deprecated use of label at end of compound statement");
            } else {
                goto again;
            }

        } else {

            if (t != ';') {
                unget_tok(t);
                if (is_expr) {
                    vpop();
                    gexpr();
                } else {
                    gexpr();
                    vpop();
                }
                skip(';');
            }
        }
    }
}






static void skip_or_save_block(TokenString **str)
{
    int braces = tok == '{';
    int level = 0;
    if (str)
      *str = tok_str_alloc();

    while ((level > 0 || (tok != '}' && tok != ',' && tok != ';' && tok != ')'))) {
	int t;
	if (tok == (-1)) {
	     if (str || level > 0)
	       _tcc_error("unexpected end of file");
	     else
	       break;
	}
	if (str)
	  tok_str_add_tok(*str);
	t = tok;
	next();
	if (t == '{' || t == '(') {
	    level++;
	} else if (t == '}' || t == ')') {
	    level--;
	    if (level == 0 && braces && t == '}')
	      break;
	}
    }
    if (str) {
	tok_str_add(*str, -1);
	tok_str_add(*str, 0);
    }
}




static void parse_init_elem(int expr_type)
{
    int saved_global_expr;
    switch(expr_type) {
    case 1:

        saved_global_expr = global_expr;
        global_expr = 1;
        expr_const1();
        global_expr = saved_global_expr;


        if (((vtop->r & (0x003f | 0x0100)) != 0x0030
             && ((vtop->r & (0x0200|0x0100)) != (0x0200|0x0100)
                 || vtop->sym->v < 0x10000000))



           )
            _tcc_error("initializer element is not constant");
        break;
    case 2:
        expr_eq();
        break;
    }
}


static void init_putz(Section *sec, unsigned long c, int size)
{
    if (sec) {

    } else {
        vpush_global_sym(&func_old_type, TOK_memset);
        vseti(0x0032, c);




        vpushi(0);
        vpushs(size);

        gfunc_call(3);
    }
}
# 7340 "../tinycc/tccgen.c"
static int decl_designator(CType *type, Section *sec, unsigned long c,
                           Sym **cur_field, int flags, int al)
{
    Sym *s, *f;
    int index, index_last, align, l, nb_elems, elem_size;
    unsigned long corig = c;

    elem_size = 0;
    nb_elems = 1;

    if (flags & 4)
        goto no_designator;

    if (tcc_state->gnu_ext && tok >= TOK_DEFINE) {
        l = tok, next();
        if (tok == ':')
            goto struct_field;
        unget_tok(l);
    }


    while (nb_elems == 1 && (tok == '[' || tok == '.')) {
        if (tok == '[') {
            if (!(type->t & 0x0040))
                expect("array type");
            next();
            index = index_last = expr_const();
            if (tok == 0xa1 && tcc_state->gnu_ext) {
                next();
                index_last = expr_const();
            }
            skip(']');
            s = type->ref;
	    if (index < 0 || (s->c >= 0 && index_last >= s->c) ||
		index_last < index)
	        _tcc_error("invalid index");
            if (cur_field)
		(*cur_field)->c = index_last;
            type = pointed_type(type);
            elem_size = type_size(type, &align);
            c += index * elem_size;
            nb_elems = index_last - index + 1;
        } else {
            int cumofs;
            next();
            l = tok;
        struct_field:
            next();
            if ((type->t & 0x000f) != 7)
                expect("struct/union type");
            cumofs = 0;
	    f = find_field(type, l, &cumofs);
            if (!f)
                expect("field");
            if (cur_field)
                *cur_field = f;
	    type = &f->type;
            c += cumofs + f->c;
        }
        cur_field = ((void *)0);
    }
    if (!cur_field) {
        if (tok == '=') {
            next();
        } else if (!tcc_state->gnu_ext) {
	    expect("=");
        }
    } else {
    no_designator:
        if (type->t & 0x0040) {
	    index = (*cur_field)->c;
	    if (type->ref->c >= 0 && index >= type->ref->c)
	        _tcc_error("index too large");
            type = pointed_type(type);
            c += index * type_size(type, &align);
        } else {
            f = *cur_field;
	    while (f && (f->v & 0x10000000) && (f->type.t & 0x0080))
	        *cur_field = f = f->next;
            if (!f)
                _tcc_error("too many field init");
	    type = &f->type;
            c += f->c;
        }
    }


    if (!(flags & 2) && c - corig > al)
	init_putz(sec, corig + al, c - corig - al);
    decl_initializer(type, sec, c, flags & ~1);


    if (!(flags & 2) && nb_elems > 1) {
        unsigned long c_end;
        uint8_t *src, *dst;
        int i;

        if (!sec) {
	    vset(type, 0x0032|0x0100, c);
	    for (i = 1; i < nb_elems; i++) {
		vset(type, 0x0032|0x0100, c + elem_size * i);
		vswap();
		vstore();
	    }
	    vpop();
        } else if (!(nocode_wanted > 0)) {
	    c_end = c + nb_elems * elem_size;
	    if (c_end > sec->data_allocated)
	        section_realloc(sec, c_end);
	    src = sec->data + c;
	    dst = src;
	    for(i = 1; i < nb_elems; i++) {
		dst += elem_size;
		memcpy(dst, src, elem_size);
	    }
	}
    }
    c += nb_elems * type_size(type, &align);
    if (c - corig > al)
      al = c - corig;
    return al;
}


static void init_putv(CType *type, Section *sec, unsigned long c)
{
    int bt;
    void *ptr;
    CType dtype;

    dtype = *type;
    dtype.t &= ~0x0100;

    if (sec) {
	int size, align;


        gen_assign_cast(&dtype);
        bt = type->t & 0x000f;

        if ((vtop->r & 0x0200)
            && bt != 5
            && bt != 6
            && (bt != (8 == 8 ? 4 : 3)
                || (type->t & 0x0080))
            && !((vtop->r & 0x0030) && vtop->sym->v >= 0x10000000)
            )
            _tcc_error("initializer element is not computable at load time");

        if ((nocode_wanted > 0)) {
            vtop--;
            return;
        }

	size = type_size(type, &align);
	section_reserve(sec, c + size);
        ptr = sec->data + c;


	if ((vtop->r & (0x0200|0x0030)) == (0x0200|0x0030) &&
	    vtop->sym->v >= 0x10000000 &&
# 7511 "../tinycc/tccgen.c"
	    (vtop->type.t & 0x000f) != 5) {

	    Section *ssec;
	    Elf64_Sym *esym;
	    Elf64_Rela *rel;
	    esym = elfsym(vtop->sym);
	    ssec = tcc_state->sections[esym->st_shndx];
	    memmove (ptr, ssec->data + esym->st_value + (int)vtop->c.i, size);
	    if (ssec->reloc) {




		int num_relocs = ssec->reloc->data_offset / sizeof(*rel);
		rel = (Elf64_Rela*)(ssec->reloc->data + ssec->reloc->data_offset);
		while (num_relocs--) {
		    rel--;
		    if (rel->r_offset >= esym->st_value + size)
		      continue;
		    if (rel->r_offset < esym->st_value)
		      break;






		    put_elf_reloca(tcc_state->symtab_section, sec,
				   c + rel->r_offset - esym->st_value,
				   ((rel->r_info) & 0xffffffff),
				   ((rel->r_info) >> 32),

				   rel->r_addend



				  );
		}
	    }
	} else {
            if (type->t & 0x0080) {
                int bit_pos, bit_size, bits, n;
                unsigned char *p, v, m;
                bit_pos = (((vtop->type.t) >> 20) & 0x3f);
                bit_size = (((vtop->type.t) >> (20 + 6)) & 0x3f);
                p = (unsigned char*)ptr + (bit_pos >> 3);
                bit_pos &= 7, bits = 0;
                while (bit_size) {
                    n = 8 - bit_pos;
                    if (n > bit_size)
                        n = bit_size;
                    v = vtop->c.i >> bits << bit_pos;
                    m = ((1 << n) - 1) << bit_pos;
                    *p = (*p & ~m) | (v & m);
                    bits += n, bit_size -= n, bit_pos = 0, ++p;
                }
            } else
            switch(bt) {



	    case 11:
		vtop->c.i = vtop->c.i != 0;
	    case 1:
		*(char *)ptr |= vtop->c.i;
		break;
	    case 2:
		*(short *)ptr |= vtop->c.i;
		break;
	    case 8:
		*(float*)ptr = vtop->c.f;
		break;
	    case 9:
		*(double *)ptr = vtop->c.d;
		break;
	    case 10:

                if (sizeof (long double) >= 10)
                    memcpy(ptr, &vtop->c.ld, 10);

                else if (sizeof (long double) == sizeof (double))
                    __asm__("fldl %1\nfstpt %0\n" : "=m" (*ptr) : "m" (vtop->c.ld));

                else if (vtop->c.ld == 0.0)
                    ;
                else

                if (sizeof(long double) == 16)
		    *(long double*)ptr = vtop->c.ld;
                else if (sizeof(double) == 16)
		    *(double *)ptr = (double)vtop->c.ld;
                else
                    _tcc_error("can't cross compile long double constants");
		break;





	    case 4:

	    case 5:
		{
		    Elf64_Addr val = vtop->c.i;

		    if (vtop->r & 0x0200)
		      greloca(sec, vtop->sym, c, 1, val);
		    else
		      *(Elf64_Addr *)ptr |= val;





		    break;
		}
	    default:
		{
		    int val = vtop->c.i;

		    if (vtop->r & 0x0200)
		      greloca(sec, vtop->sym, c, 1, val);
		    else
		      *(int *)ptr |= val;





		    break;
		}
	    }
	}
        vtop--;
    } else {
        vset(&dtype, 0x0032|0x0100, c);
        vswap();
        vstore();
        vpop();
    }
}






static void decl_initializer(CType *type, Section *sec, unsigned long c,
                             int flags)
{
    int len, n, no_oblock, i;
    int size1, align1;
    Sym *s, *f;
    Sym indexsym;
    CType *t1;

    if (!(flags & 4) && tok != '{' &&



	tok != 0xc9 && tok != 0xc8 &&
	!(flags & 2)) {
	parse_init_elem(!sec ? 2 : 1);
        flags |= 4;
    }

    if ((flags & 4) &&
	!(type->t & 0x0040) &&



	is_compatible_unqualified_types(type, &vtop->type)) {
        init_putv(type, sec, c);
    } else if (type->t & 0x0040) {
        s = type->ref;
        n = s->c;
        t1 = pointed_type(type);
        size1 = type_size(t1, &align1);

        no_oblock = 1;
        if (((flags & 1) && tok != 0xc9 && tok != 0xc8) ||
            tok == '{') {
            if (tok != '{')
                _tcc_error("character array initializer must be a literal,"
                    " optionally enclosed in braces");
            skip('{');
            no_oblock = 0;
        }



        if ((tok == 0xc9 &&



             (t1->t & 0x000f) == 3

            ) || (tok == 0xc8 && (t1->t & 0x000f) == 1)) {
            int nb;
	    len = 0;
            cstr_reset(&initstr);
            if (size1 != (tok == 0xc8 ? 1 : sizeof(nwchar_t)))
              _tcc_error("unhandled string literal merging");
            while (tok == 0xc8 || tok == 0xc9) {
                if (initstr.size)
                  initstr.size -= size1;
                if (tok == 0xc8)
                  len += tokc.str.size;
                else
                  len += tokc.str.size / sizeof(nwchar_t);
                len--;
                cstr_cat(&initstr, tokc.str.data, tokc.str.size);
                next();
            }
            if (tok != ')' && tok != '}' && tok != ',' && tok != ';'
                && tok != (-1)) {

                unget_tok(size1 == 1 ? 0xc8 : 0xc9);
                tokc.str.size = initstr.size;
                tokc.str.data = initstr.data;
                indexsym.c = 0;
                f = &indexsym;
                goto do_init_list;
            }
            nb = len;
            if (n >= 0 && len > n)
              nb = n;
            if (!(flags & 2)) {
                if (sec && !(nocode_wanted > 0) &&
                    (c + nb > sec->data_allocated))
                  nb = sec->data_allocated - c;
                if (len > nb)
                  _tcc_warning("initializer-string for array is too long");



                if (sec && size1 == 1) {
                    if (!(nocode_wanted > 0))
                      memcpy(sec->data + c, initstr.data, nb);
                } else {
                    for(i=0;i<nb;i++) {
                        if (size1 == 1)
                          ch = ((unsigned char *)initstr.data)[i];
                        else
                          ch = ((nwchar_t *)initstr.data)[i];
                        vpushi(ch);
                        init_putv(t1, sec, c + i * size1);
                    }
                }
            }


            if (n < 0 || len < n) {
                if (!(flags & 2)) {
		    vpushi(0);
                    init_putv(t1, sec, c + (len * size1));
                }
                len++;
            }
	    len *= size1;
        } else {
	    indexsym.c = 0;
	    f = &indexsym;

          do_init_list:
	    len = 0;
	    while (tok != '}' || (flags & 4)) {
		len = decl_designator(type, sec, c, &f, flags, len);
		flags &= ~4;
		if (type->t & 0x0040) {
		    ++indexsym.c;



		    if (no_oblock && len >= n*size1)
		        break;
		} else {
		    if (s->type.t == (1 << 20 | 7))
		        f = ((void *)0);
		    else
		        f = f->next;
		    if (no_oblock && f == ((void *)0))
		        break;
		}

		if (tok == '}')
		    break;
		skip(',');
	    }
        }

	if (!(flags & 2) && len < n*size1)
	    init_putz(sec, c + len, n*size1 - len);
        if (!no_oblock)
            skip('}');

        if (n < 0)
            s->c = size1 == 1 ? len : ((len + size1 - 1)/size1);
    } else if ((type->t & 0x000f) == 7) {
	size1 = 1;
        no_oblock = 1;
        if ((flags & 1) || tok == '{') {
            skip('{');
            no_oblock = 0;
        }
        s = type->ref;
        f = s->next;
        n = s->c;
	goto do_init_list;
    } else if (tok == '{') {
        if (flags & 4)
          skip(';');
        next();
        decl_initializer(type, sec, c, flags & ~4);
        skip('}');
    } else if ((flags & 2)) {







        skip_or_save_block(((void *)0));
    } else {
	if (!(flags & 4)) {



	    if (tok != 0xc8 && tok != 0xc9)
	      expect("string constant");
	    parse_init_elem(!sec ? 2 : 1);
	}
        init_putv(type, sec, c);
    }
}
# 7855 "../tinycc/tccgen.c"
static void decl_initializer_alloc(CType *type, AttributeDef *ad, int r,
                                   int has_init, int v, int scope)
{
    int size, align, addr;
    TokenString *init_str = ((void *)0);

    Section *sec;
    Sym *flexible_array;
    Sym *sym = ((void *)0);
    int saved_nocode_wanted = nocode_wanted;

    int bcheck = tcc_state->do_bounds_check && !(nocode_wanted > 0);



    if (v && (r & 0x003f) == 0x0030)
        nocode_wanted |= 0x80000000;

    flexible_array = ((void *)0);
    if ((type->t & 0x000f) == 7) {
        Sym *field = type->ref->next;
        if (field) {
            while (field->next)
                field = field->next;
            if (field->type.t & 0x0040 && field->type.ref->c < 0)
                flexible_array = field;
        }
    }

    size = type_size(type, &align);






    if (size < 0 || (flexible_array && has_init)) {
        if (!has_init)
            _tcc_error("unknown type size");

        if (has_init == 2) {
	    init_str = tok_str_alloc();

            while (tok == 0xc8 || tok == 0xc9) {
                tok_str_add_tok(init_str);
                next();
            }
	    tok_str_add(init_str, -1);
	    tok_str_add(init_str, 0);
        } else {
	    skip_or_save_block(&init_str);
        }
        unget_tok(0);


        begin_macro(init_str, 1);
        next();
        decl_initializer(type, ((void *)0), 0, 1 | 2);

        macro_ptr = init_str->str;
        next();


        size = type_size(type, &align);
        if (size < 0)
            _tcc_error("unknown type size");
    }


    if (flexible_array &&
	flexible_array->type.ref->c > 0)
        size += flexible_array->type.ref->c
	        * pointed_size(&flexible_array->type);

    if (ad->a.aligned) {
	int speca = 1 << (ad->a.aligned - 1);
        if (speca > align)
            align = speca;
    } else if (ad->a.packed) {
        align = 1;
    }

    if (!v && (nocode_wanted > 0))
        size = 0, align = 1;

    if ((r & 0x003f) == 0x0032) {
        sec = ((void *)0);

        if (bcheck && v) {

            loc--;
        }

        loc = (loc - size) & -align;
        addr = loc;

        if (bcheck && v) {

            loc--;
        }

        if (v) {


	    if (ad->asm_label) {
		int reg = asm_parse_regvar(ad->asm_label);
		if (reg >= 0)
		    r = (r & ~0x003f) | reg;
	    }

            sym = sym_push(v, type, r, addr);
	    if (ad->cleanup_func) {
		Sym *cls = sym_push2(&all_cleanups,
                    0x20000000 | ++cur_scope->cl.n, 0, 0);
		cls->prev_tok = sym;
		cls->next = ad->cleanup_func;
		cls->ncl = cur_scope->cl.s;
		cur_scope->cl.s = cls;
	    }

            sym->a = ad->a;
        } else {

            vset(type, r, addr);
        }
    } else {
        if (v && scope == 0x0030) {

            sym = sym_find(v);
            if (sym) {
                patch_storage(sym, ad, type);

                if (!has_init && sym->c && elfsym(sym)->st_shndx != 0)
                    goto no_alloc;
            }
        }


        sec = ad->section;
        if (!sec) {
            if (has_init)
                sec = tcc_state->data_section;
            else if (tcc_state->nocommon)
                sec = tcc_state->bss_section;
        }

        if (sec) {
	    addr = section_add(sec, size, align);


            if (bcheck)
                section_add(sec, 1, 1);

        } else {
            addr = align;
	    sec = tcc_state->common_section;
        }

        if (v) {
            if (!sym) {
                sym = sym_push(v, type, r | 0x0200, 0);
                patch_storage(sym, ad, ((void *)0));
            }

	    put_extern_sym(sym, sec, addr, size);
        } else {

            vpush_ref(type, sec, addr, size);
            sym = vtop->sym;
	    vtop->r |= r;
        }




        if (bcheck) {
            Elf64_Addr *bounds_ptr;

            greloca(tcc_state->bounds_section, sym, tcc_state->bounds_section->data_offset, 1, 0);

            bounds_ptr = section_ptr_add(tcc_state->bounds_section, 2 * sizeof(Elf64_Addr));
            bounds_ptr[0] = 0;
            bounds_ptr[1] = size;
        }

    }

    if (type->t & 0x0400) {
        int a;

        if ((nocode_wanted > 0))
            goto no_alloc;


        if (root_scope->vla.loc == 0) {
            struct scope *v = cur_scope;
            gen_vla_sp_save(loc -= 8);
            do v->vla.loc = loc; while ((v = v->prev));
        }

        vla_runtime_type_size(type, &a);
        gen_vla_alloc(type, a);





        gen_vla_sp_save(addr);
        cur_scope->vla.loc = addr;
        cur_scope->vla.num++;
    } else if (has_init) {
	size_t oldreloc_offset = 0;
	if (sec && sec->reloc)
	  oldreloc_offset = sec->reloc->data_offset;
        decl_initializer(type, sec, addr, 1);
	if (sec && sec->reloc)
	  squeeze_multi_relocs(sec, oldreloc_offset);


        if (flexible_array)
            flexible_array->type.ref->c = -1;
    }

 no_alloc:

    if (init_str) {
        end_macro();
        next();
    }

    nocode_wanted = saved_nocode_wanted;
}



static void gen_function(Sym *sym)
{
    struct scope f = { 0 };
    cur_scope = root_scope = &f;
    nocode_wanted = 0;
    ind = tcc_state->cur_text_section->data_offset;
    if (sym->a.aligned) {
	size_t newoff = section_add(tcc_state->cur_text_section, 0,
				    1 << (sym->a.aligned - 1));
	gen_fill_nops(newoff - ind);
    }

    put_extern_sym(sym, tcc_state->cur_text_section, ind, 0);
    if (sym->type.ref->f.func_ctor)
        add_array (tcc_state, ".init_array", sym->c);
    if (sym->type.ref->f.func_dtor)
        add_array (tcc_state, ".fini_array", sym->c);

    funcname = get_tok_str(sym->v, ((void *)0));
    func_ind = ind;
    func_vt = sym->type.ref->type;
    func_var = sym->type.ref->f.func_type == 3;


    tcc_debug_funcstart(tcc_state, sym);

    sym_push2(&local_stack, 0x20000000, 0, 0);
    local_scope = 1;
    gfunc_prolog(sym);
    local_scope = 0;
    rsym = 0;
    clear_temp_local_var_list();
    block(0);
    gsym(rsym);
    nocode_wanted = 0;

    pop_local_syms(&local_stack, ((void *)0), 0, func_var);
    gfunc_epilog();
    tcc_state->cur_text_section->data_offset = ind;
    local_scope = 0;
    label_pop(&global_label_stack, ((void *)0), 0);
    sym_pop(&all_cleanups, ((void *)0), 0);

    elfsym(sym)->st_size = ind - func_ind;

    tcc_debug_funcend(tcc_state, ind - func_ind);

    tcc_state->cur_text_section = ((void *)0);
    funcname = "";
    func_vt.t = 0;
    func_var = 0;
    ind = 0;
    nocode_wanted = 0x80000000;
    check_vstack();

    next();
}

static void gen_inline_functions(TCCState *s)
{
    Sym *sym;
    int inline_generated, i;
    struct InlineFunc *fn;

    tcc_open_bf(s, ":inline:", 0);

    do {
        inline_generated = 0;
        for (i = 0; i < s->nb_inline_fns; ++i) {
            fn = s->inline_fns[i];
            sym = fn->sym;
            if (sym && (sym->c || !(sym->type.t & 0x00008000))) {


                fn->sym = ((void *)0);
                tcc_debug_putfile(s, fn->filename);
                begin_macro(fn->func_str, 1);
                next();
                tcc_state->cur_text_section = tcc_state->text_section;
                gen_function(sym);
                end_macro();

                inline_generated = 1;
            }
        }
    } while (inline_generated);
    tcc_close();
}

static void free_inline_functions(TCCState *s)
{
    int i;

    for (i = 0; i < s->nb_inline_fns; ++i) {
        struct InlineFunc *fn = s->inline_fns[i];
        if (fn->sym)
            tok_str_free(fn->func_str);
    }
    dynarray_reset(&s->inline_fns, &s->nb_inline_fns);
}



static int decl0(int l, int is_for_loop_init, Sym *func_sym)
{
    int v, has_init, r;
    CType type, btype;
    Sym *sym;
    AttributeDef ad, adbase;

    while (1) {
	if (tok == TOK_STATIC_ASSERT) {
	    CString error_str;
	    int c;

	    next();
	    skip('(');
	    c = expr_const();

	    if (tok == ')') {
		if (!c)
		    _tcc_error("_Static_assert fail");
		next();
		goto static_assert_out;
	    }

	    skip(',');
	    parse_mult_str(&error_str, "string constant");
	    if (c == 0)
		_tcc_error("%s", (char *)error_str.data);
	    cstr_free(&error_str);
	    skip(')');
	  static_assert_out:
            skip(';');
	    continue;
	}
        if (!parse_btype(&btype, &adbase)) {
            if (is_for_loop_init)
                return 0;

            if (tok == ';' && l != 0x0033) {
                next();
                continue;
            }
            if (l != 0x0030)
                break;
            if (tok == TOK_ASM1 || tok == TOK_ASM2 || tok == TOK_ASM3) {

                asm_global_instr();
                continue;
            }
            if (tok >= TOK_DEFINE) {


                btype.t = 3;
            } else {
                if (tok != (-1))
                    expect("declaration");
                break;
            }
        }
        if (tok == ';') {
	    if ((btype.t & 0x000f) == 7) {
		int v = btype.ref->v;
		if (!(v & 0x20000000) && (v & ~0x40000000) >= 0x10000000)
        	    _tcc_warning("unnamed struct/union that defines no instances");
                next();
                continue;
	    }
            if (((btype.t & (((1U << (6+6)) - 1) << 20 | 0x0080)) == (2 << 20))) {
                next();
                continue;
            }
        }
        while (1) {
            type = btype;





	    if ((type.t & 0x0040) && type.ref->c < 0) {
		type.ref = sym_push(0x20000000, &type.ref->type, 0, type.ref->c);
	    }
	    ad = adbase;
            type_decl(&type, &ad, &v, 2);







            if ((type.t & 0x000f) == 6) {
                if ((type.t & 0x00002000) && (l == 0x0032))
                    _tcc_error("function without file scope cannot be static");


                sym = type.ref;
                if (sym->f.func_type == 2 && l == 0x0030)
                    decl0(0x0033, 0, sym);

                if (sym->f.func_alwinl
                    && ((type.t & (0x00001000 | 0x00008000))
                        == (0x00001000 | 0x00008000))) {




                    type.t &= ~0x00001000;
                    type.t |= 0x00002000;
                }


                if (type.t & 0x00001000)
                    type.t &= ~0x00008000;
            }

            if (tcc_state->gnu_ext && (tok == TOK_ASM1 || tok == TOK_ASM2 || tok == TOK_ASM3)) {
                ad.asm_label = asm_label_instr();

                parse_attribute(&ad);






            }
# 8336 "../tinycc/tccgen.c"
            if (tok == '{') {
                if (l != 0x0030)
                    _tcc_error("cannot use local functions");
                if ((type.t & 0x000f) != 6)
                    expect("function definition");



                sym = type.ref;
                while ((sym = sym->next) != ((void *)0)) {
                    if (!(sym->v & ~0x20000000))
                        expect("identifier");
                    if (sym->type.t == 0)
                        sym->type = int_type;
                }


                merge_funcattr(&type.ref->f, &ad.f);


                type.t &= ~0x00001000;
                sym = external_sym(v, &type, 0, &ad);




                if (sym->type.t & 0x00008000) {
                    struct InlineFunc *fn;
                    fn = tcc_malloc(sizeof *fn + strlen(file->filename));
                    strcpy(fn->filename, file->filename);
                    fn->sym = sym;
		    skip_or_save_block(&fn->func_str);
                    dynarray_add(&tcc_state->inline_fns,
				 &tcc_state->nb_inline_fns, fn);
                } else {

                    tcc_state->cur_text_section = ad.section;
                    if (!tcc_state->cur_text_section)
                        tcc_state->cur_text_section = tcc_state->text_section;
                    gen_function(sym);
                }
                break;
            } else {
		if (l == 0x0033) {

		    for (sym = func_sym->next; sym; sym = sym->next)
			if ((sym->v & ~0x20000000) == v)
			    goto found;
		    _tcc_error("declaration for parameter '%s' but no such parameter",
			      get_tok_str(v, ((void *)0)));
found:
		    if (type.t & (0x00001000 | 0x00002000 | 0x00004000 | 0x00008000))
		        _tcc_error("storage class specified for '%s'",
				  get_tok_str(v, ((void *)0)));
		    if (sym->type.t != 0)
		        _tcc_error("redefinition of parameter '%s'",
				  get_tok_str(v, ((void *)0)));
		    convert_parameter_type(&type);
		    sym->type = type;
		} else if (type.t & 0x00004000) {


                    sym = sym_find(v);
                    if (sym && sym->sym_scope == local_scope) {
                        if (!is_compatible_types(&sym->type, &type)
                            || !(sym->type.t & 0x00004000))
                            _tcc_error("incompatible redefinition of '%s'",
                                get_tok_str(v, ((void *)0)));
                        sym->type = type;
                    } else {
                        sym = sym_push(v, &type, 0, 0);
                    }
                    sym->a = ad.a;
                    sym->f = ad.f;
		} else if ((type.t & 0x000f) == 0
			   && !(type.t & 0x00001000)) {
		    _tcc_error("declaration of void object");
                } else {
                    r = 0;
                    if ((type.t & 0x000f) == 6) {


                        type.ref->f = ad.f;
                    } else if (!(type.t & 0x0040)) {

                        r |= 0x0100;
                    }
                    has_init = (tok == '=');
                    if (has_init && (type.t & 0x0400))
                        _tcc_error("variable length array cannot be initialized");
                    if (((type.t & 0x00001000) && (!has_init || l != 0x0030))
		        || (type.t & 0x000f) == 6


                        || ((type.t & 0x0040) && !has_init
                            && l == 0x0030 && type.ref->c < 0)
                        ) {

                        type.t |= 0x00001000;
                        sym = external_sym(v, &type, r, &ad);
                    } else {
                        if (type.t & 0x00002000)
                            r |= 0x0030;
                        else
                            r |= l;
                        if (has_init)
                            next();
                        else if (l == 0x0030)

                            type.t |= 0x00001000;
                        decl_initializer_alloc(&type, &ad, r, has_init, v, l);
                    }
                }
                if (tok != ',') {
                    if (is_for_loop_init)
                        return 1;
                    skip(';');
                    break;
                }
                next();
            }
        }
    }
    return 0;
}

static void decl(int l)
{
    decl0(l, 0, ((void *)0));
}
# 24 "../tinycc/libtcc.c" 2
# 1 "../tinycc/tccelf.c" 1
# 21 "../tinycc/tccelf.c"
# 1 "../tinycc/tcc.h" 1
# 22 "../tinycc/tccelf.c" 2
# 30 "../tinycc/tccelf.c"
struct sym_version {
    char *lib;
    char *version;
    int out_index;
    int prev_same_lib;
};
# 52 "../tinycc/tccelf.c"
static void tccelf_new(TCCState *s)
{
    TCCState *s1 = s;

    dynarray_add(&s->sections, &s->nb_sections, ((void *)0));


    s1->text_section = new_section(s, ".text", 1, (1 << 1) | (1 << 2));
    s1->data_section = new_section(s, ".data", 1, (1 << 1) | (1 << 0));
    s1->bss_section = new_section(s, ".bss", 8, (1 << 1) | (1 << 0));
    s1->common_section = new_section(s, ".common", 8, 0x80000000);
    s1->common_section->sh_num = 0xfff2;


    s1->symtab_section = new_symtab(s, ".symtab", 2, 0,
                                ".strtab",
                                ".hashtab", 0x80000000);
    s->symtab = s1->symtab_section;


    s->dynsymtab_section = new_symtab(s, ".dynsymtab", 2, 0x80000000|0x40000000,
                                      ".dynstrtab",
                                      ".dynhashtab", 0x80000000);
    get_sym_attr(s, 0, 1);
}


static void tccelf_bounds_new(TCCState *s)
{
    TCCState *s1 = s;

    s1->bounds_section = new_section(s, ".bounds",
                                 1, (1 << 1));
    s1->lbounds_section = new_section(s, ".lbounds",
                                  1, (1 << 1));
}


static void tccelf_stab_new(TCCState *s)
{
    TCCState *s1 = s;
    int shf = 0;


    if (s->do_backtrace && s->output_type != 1)
        shf = (1 << 1);

    s1->stab_section = new_section(s, ".stab", 1, shf);
    s1->stab_section->sh_entsize = sizeof(Stab_Sym);
    s1->stab_section->sh_addralign = sizeof ((Stab_Sym*)0)->n_value;
    s1->stab_section->link = new_section(s, ".stabstr", 3, shf);

    put_stabs(s, "", 0, 0, 0, 0);
}

static void free_section(Section *s)
{
    tcc_free(s->data);
}

static void tccelf_delete(TCCState *s1)
{
    int i;
# 127 "../tinycc/tccelf.c"
    for(i = 1; i < s1->nb_sections; i++)
        free_section(s1->sections[i]);
    dynarray_reset(&s1->sections, &s1->nb_sections);

    for(i = 0; i < s1->nb_priv_sections; i++)
        free_section(s1->priv_sections[i]);
    dynarray_reset(&s1->priv_sections, &s1->nb_priv_sections);



    for ( i = 0; i < s1->nb_loaded_dlls; i++) {
        DLLReference *ref = s1->loaded_dlls[i];
        if ( ref->handle )



            dlclose(ref->handle);

    }


    dynarray_reset(&s1->loaded_dlls, &s1->nb_loaded_dlls);
    tcc_free(s1->sym_attrs);

    s1->symtab_section = ((void *)0);
}


static void tccelf_begin_file(TCCState *s1)
{
    Section *s; int i;
    for (i = 1; i < s1->nb_sections; i++) {
        s = s1->sections[i];
        s->sh_offset = s->data_offset;
    }

    s = s1->symtab, s->reloc = s->hash, s->hash = ((void *)0);



}



static void tccelf_end_file(TCCState *s1)
{
    Section *s = s1->symtab;
    int first_sym, nb_syms, *tr, i;

    first_sym = s->sh_offset / sizeof (Elf64_Sym);
    nb_syms = s->data_offset / sizeof (Elf64_Sym) - first_sym;
    s->data_offset = s->sh_offset;
    s->link->data_offset = s->link->sh_offset;
    s->hash = s->reloc, s->reloc = ((void *)0);
    tr = tcc_mallocz(nb_syms * sizeof *tr);

    for (i = 0; i < nb_syms; ++i) {
        Elf64_Sym *sym = (Elf64_Sym*)s->data + first_sym + i;
        if (sym->st_shndx == 0
            && (((unsigned char) (sym->st_info)) >> 4) == 0)
            sym->st_info = ((((1)) << 4) + (((((sym->st_info) & 0xf))) & 0xf));
        tr[i] = set_elf_sym(s, sym->st_value, sym->st_size, sym->st_info,
            sym->st_other, sym->st_shndx, (char*)s->link->data + sym->st_name);
    }

    for (i = 1; i < s1->nb_sections; i++) {
        Section *sr = s1->sections[i];
        if (sr->sh_type == 4 && sr->link == s) {
            Elf64_Rela *rel = (Elf64_Rela*)(sr->data + sr->sh_offset);
            Elf64_Rela *rel_end = (Elf64_Rela*)(sr->data + sr->data_offset);
            for (; rel < rel_end; ++rel) {
                int n = ((rel->r_info) >> 32) - first_sym;

                rel->r_info = ((((Elf64_Xword) (tr[n])) << 32) + (((rel->r_info) & 0xffffffff)));
            }
        }
    }
    tcc_free(tr);
}

static Section *new_section(TCCState *s1, const char *name, int sh_type, int sh_flags)
{
    Section *sec;

    sec = tcc_mallocz(sizeof(Section) + strlen(name));
    sec->s1 = s1;
    strcpy(sec->name, name);
    sec->sh_type = sh_type;
    sec->sh_flags = sh_flags;
    switch(sh_type) {
    case 0x6fffffff:
        sec->sh_addralign = 2;
        break;
    case 5:
    case 9:
    case 4:
    case 11:
    case 2:
    case 6:
    case 0x6ffffffe:
    case 0x6ffffffd:
        sec->sh_addralign = 8;
        break;
    case 3:
        sec->sh_addralign = 1;
        break;
    default:
        sec->sh_addralign =  8;
        break;
    }

    if (sh_flags & 0x80000000) {
        dynarray_add(&s1->priv_sections, &s1->nb_priv_sections, sec);
    } else {
        sec->sh_num = s1->nb_sections;
        dynarray_add(&s1->sections, &s1->nb_sections, sec);
    }

    return sec;
}

static Section *new_symtab(TCCState *s1,
                           const char *symtab_name, int sh_type, int sh_flags,
                           const char *strtab_name,
                           const char *hash_name, int hash_sh_flags)
{
    Section *symtab, *strtab, *hash;
    int *ptr, nb_buckets;

    symtab = new_section(s1, symtab_name, sh_type, sh_flags);
    symtab->sh_entsize = sizeof(Elf64_Sym);
    strtab = new_section(s1, strtab_name, 3, sh_flags);
    put_elf_str(strtab, "");
    symtab->link = strtab;
    put_elf_sym(symtab, 0, 0, 0, 0, 0, ((void *)0));

    nb_buckets = 1;

    hash = new_section(s1, hash_name, 5, hash_sh_flags);
    hash->sh_entsize = sizeof(int);
    symtab->hash = hash;
    hash->link = symtab;

    ptr = section_ptr_add(hash, (2 + nb_buckets + 1) * sizeof(int));
    ptr[0] = nb_buckets;
    ptr[1] = 1;
    memset(ptr + 2, 0, (nb_buckets + 1) * sizeof(int));
    return symtab;
}


static void section_realloc(Section *sec, unsigned long new_size)
{
    unsigned long size;
    unsigned char *data;

    size = sec->data_allocated;
    if (size == 0)
        size = 1;
    while (size < new_size)
        size = size * 2;
    data = tcc_realloc(sec->data, size);
    memset(data + sec->data_allocated, 0, size - sec->data_allocated);
    sec->data = data;
    sec->data_allocated = size;
}



static size_t section_add(Section *sec, Elf64_Addr size, int align)
{
    size_t offset, offset1;

    offset = (sec->data_offset + align - 1) & -align;
    offset1 = offset + size;
    if (sec->sh_type != 8 && offset1 > sec->data_allocated)
        section_realloc(sec, offset1);
    sec->data_offset = offset1;
    if (align > sec->sh_addralign)
        sec->sh_addralign = align;
    return offset;
}



static void *section_ptr_add(Section *sec, Elf64_Addr size)
{
    size_t offset = section_add(sec, size, 1);
    return sec->data + offset;
}


static void section_reserve(Section *sec, unsigned long size)
{
    if (size > sec->data_allocated)
        section_realloc(sec, size);
    if (size > sec->data_offset)
        sec->data_offset = size;
}

static Section *find_section_create (TCCState *s1, const char *name, int create)
{
    Section *sec;
    int i;
    for(i = 1; i < s1->nb_sections; i++) {
        sec = s1->sections[i];
        if (!strcmp(name, sec->name))
            return sec;
    }

    return create ? new_section(s1, name, 1, (1 << 1)) : ((void *)0);
}



static Section *find_section(TCCState *s1, const char *name)
{
    return find_section_create (s1, name, 1);
}



static int put_elf_str(Section *s, const char *sym)
{
    int offset, len;
    char *ptr;

    len = strlen(sym) + 1;
    offset = s->data_offset;
    ptr = section_ptr_add(s, len);
    memmove(ptr, sym, len);
    return offset;
}


static unsigned long elf_hash(const unsigned char *name)
{
    unsigned long h = 0, g;

    while (*name) {
        h = (h << 4) + *name++;
        g = h & 0xf0000000;
        if (g)
            h ^= g >> 24;
        h &= ~g;
    }
    return h;
}



static void rebuild_hash(Section *s, unsigned int nb_buckets)
{
    Elf64_Sym *sym;
    int *ptr, *hash, nb_syms, sym_index, h;
    unsigned char *strtab;

    strtab = s->link->data;
    nb_syms = s->data_offset / sizeof(Elf64_Sym);

    if (!nb_buckets)
        nb_buckets = ((int*)s->hash->data)[0];

    s->hash->data_offset = 0;
    ptr = section_ptr_add(s->hash, (2 + nb_buckets + nb_syms) * sizeof(int));
    ptr[0] = nb_buckets;
    ptr[1] = nb_syms;
    ptr += 2;
    hash = ptr;
    memset(hash, 0, (nb_buckets + 1) * sizeof(int));
    ptr += nb_buckets + 1;

    sym = (Elf64_Sym *)s->data + 1;
    for(sym_index = 1; sym_index < nb_syms; sym_index++) {
        if ((((unsigned char) (sym->st_info)) >> 4) != 0) {
            h = elf_hash(strtab + sym->st_name) % nb_buckets;
            *ptr = hash[h];
            hash[h] = sym_index;
        } else {
            *ptr = 0;
        }
        ptr++;
        sym++;
    }
}


static int put_elf_sym(Section *s, Elf64_Addr value, unsigned long size,
    int info, int other, int shndx, const char *name)
{
    int name_offset, sym_index;
    int nbuckets, h;
    Elf64_Sym *sym;
    Section *hs;

    sym = section_ptr_add(s, sizeof(Elf64_Sym));
    if (name && name[0])
        name_offset = put_elf_str(s->link, name);
    else
        name_offset = 0;

    sym->st_name = name_offset;
    sym->st_value = value;
    sym->st_size = size;
    sym->st_info = info;
    sym->st_other = other;
    sym->st_shndx = shndx;
    sym_index = sym - (Elf64_Sym *)s->data;
    hs = s->hash;
    if (hs) {
        int *ptr, *base;
        ptr = section_ptr_add(hs, sizeof(int));
        base = (int *)hs->data;

        if ((((unsigned char) (info)) >> 4) != 0) {

            nbuckets = base[0];
            h = elf_hash((unsigned char *)s->link->data + name_offset) % nbuckets;
            *ptr = base[2 + h];
            base[2 + h] = sym_index;
            base[1]++;

            hs->nb_hashed_syms++;
            if (hs->nb_hashed_syms > 2 * nbuckets) {
                rebuild_hash(s, 2 * nbuckets);
            }
        } else {
            *ptr = 0;
            base[1]++;
        }
    }
    return sym_index;
}

static int find_elf_sym(Section *s, const char *name)
{
    Elf64_Sym *sym;
    Section *hs;
    int nbuckets, sym_index, h;
    const char *name1;

    hs = s->hash;
    if (!hs)
        return 0;
    nbuckets = ((int *)hs->data)[0];
    h = elf_hash((unsigned char *) name) % nbuckets;
    sym_index = ((int *)hs->data)[2 + h];
    while (sym_index != 0) {
        sym = &((Elf64_Sym *)s->data)[sym_index];
        name1 = (char *) s->link->data + sym->st_name;
        if (!strcmp(name, name1))
            return sym_index;
        sym_index = ((int *)hs->data)[2 + nbuckets + sym_index];
    }
    return 0;
}



static Elf64_Addr get_sym_addr(TCCState *s1, const char *name, int err, int forc)
{
    int sym_index;
    Elf64_Sym *sym;
    char buf[256];
    if (forc && s1->leading_underscore




        ) {
        buf[0] = '_';
        pstrcpy(buf + 1, sizeof(buf) - 1, name);
        name = buf;
    }
    sym_index = find_elf_sym(s1->symtab, name);
    sym = &((Elf64_Sym *)s1->symtab->data)[sym_index];
    if (!sym_index || sym->st_shndx == 0) {
        if (err)
            (tcc_enter_state(s1),_tcc_error)("%s not defined", name);
        return (Elf64_Addr)-1;
    }
    return sym->st_value;
}


 void *tcc_get_symbol(TCCState *s, const char *name)
{
    Elf64_Addr addr = get_sym_addr(s, name, 0, 1);
    return addr == -1 ? ((void *)0) : (void*)(uintptr_t)addr;
}


static void list_elf_symbols(TCCState *s, void *ctx,
    void (*symbol_cb)(void *ctx, const char *name, const void *val))
{
    Elf64_Sym *sym;
    Section *symtab;
    int sym_index, end_sym;
    const char *name;
    unsigned char sym_vis, sym_bind;

    symtab = s->symtab;
    end_sym = symtab->data_offset / sizeof (Elf64_Sym);
    for (sym_index = 0; sym_index < end_sym; ++sym_index) {
        sym = &((Elf64_Sym *)symtab->data)[sym_index];
        if (sym->st_value) {
            name = (char *) symtab->link->data + sym->st_name;
            sym_bind = (((unsigned char) (sym->st_info)) >> 4);
            sym_vis = ((sym->st_other) & 0x03);
            if (sym_bind == 1 && sym_vis == 0)
                symbol_cb(ctx, name, (void*)(uintptr_t)sym->st_value);
        }
    }
}


 void tcc_list_symbols(TCCState *s, void *ctx,
    void (*symbol_cb)(void *ctx, const char *name, const void *val))
{
    list_elf_symbols(s, ctx, symbol_cb);
}
# 635 "../tinycc/tccelf.c"
static int set_elf_sym(Section *s, Elf64_Addr value, unsigned long size,
                       int info, int other, int shndx, const char *name)
{
    TCCState *s1 = s->s1;
    Elf64_Sym *esym;
    int sym_bind, sym_index, sym_type, esym_bind;
    unsigned char sym_vis, esym_vis, new_vis;

    sym_bind = (((unsigned char) (info)) >> 4);
    sym_type = ((info) & 0xf);
    sym_vis = ((other) & 0x03);

    if (sym_bind != 0) {

        sym_index = find_elf_sym(s, name);
        if (!sym_index)
            goto do_def;
        esym = &((Elf64_Sym *)s->data)[sym_index];
        if (esym->st_value == value && esym->st_size == size && esym->st_info == info
            && esym->st_other == other && esym->st_shndx == shndx)
            return sym_index;
        if (esym->st_shndx != 0) {
            esym_bind = (((unsigned char) (esym->st_info)) >> 4);


            esym_vis = ((esym->st_other) & 0x03);
            if (esym_vis == 0) {
                new_vis = sym_vis;
            } else if (sym_vis == 0) {
                new_vis = esym_vis;
            } else {
                new_vis = (esym_vis < sym_vis) ? esym_vis : sym_vis;
            }
            esym->st_other = (esym->st_other & ~((-1) & 0x03))
                             | new_vis;
            other = esym->st_other;
            if (shndx == 0) {


            } else if (sym_bind == 1 && esym_bind == 2) {

                goto do_patch;
            } else if (sym_bind == 2 && esym_bind == 1) {

            } else if (sym_bind == 2 && esym_bind == 2) {

            } else if (sym_vis == 2 || sym_vis == 1) {

            } else if ((esym->st_shndx == 0xfff2
                            || esym->st_shndx == s1->bss_section->sh_num)
                        && (shndx < 0xff00
                            && shndx != s1->bss_section->sh_num)) {

                goto do_patch;
            } else if (shndx == 0xfff2 || shndx == s1->bss_section->sh_num) {

            } else if (s->sh_flags & 0x40000000) {

	    } else if (esym->st_other & 0x04) {


		goto do_patch;
            } else {




                (tcc_enter_state(s1),_tcc_error_noabort)("'%s' defined twice", name);
            }
        } else {
        do_patch:
            esym->st_info = ((((sym_bind)) << 4) + (((sym_type)) & 0xf));
            esym->st_shndx = shndx;
            s1->new_undef_sym = 1;
            esym->st_value = value;
            esym->st_size = size;
            esym->st_other = other;
        }
    } else {
    do_def:
        sym_index = put_elf_sym(s, value, size,
                                ((((sym_bind)) << 4) + (((sym_type)) & 0xf)), other,
                                shndx, name);
    }
    return sym_index;
}


static void put_elf_reloca(Section *symtab, Section *s, unsigned long offset,
                            int type, int symbol, Elf64_Addr addend)
{
    TCCState *s1 = s->s1;
    char buf[256];
    Section *sr;
    Elf64_Rela *rel;

    sr = s->reloc;
    if (!sr) {

        snprintf(buf, sizeof(buf), ".rela%s", s->name);


        sr = new_section(s->s1, buf, 4, symtab->sh_flags);
        sr->sh_entsize = sizeof(Elf64_Rela);
        sr->link = symtab;
        sr->sh_info = s->sh_num;
        s->reloc = sr;
    }
    rel = section_ptr_add(sr, sizeof(Elf64_Rela));
    rel->r_offset = offset;
    rel->r_info = ((((Elf64_Xword) (symbol)) << 32) + (type));

    rel->r_addend = addend;

    if (4 != 4 && addend)
        (tcc_enter_state(s1),_tcc_error)("non-zero addend on REL architecture");
}

static void put_elf_reloc(Section *symtab, Section *s, unsigned long offset,
                           int type, int symbol)
{
    put_elf_reloca(symtab, s, offset, type, symbol, 0);
}




static void squeeze_multi_relocs(Section *s, size_t oldrelocoffset)
{
    Section *sr = s->reloc;
    Elf64_Rela *r, *dest;
    ssize_t a;
    Elf64_Addr addr;

    if (oldrelocoffset + sizeof(*r) >= sr->data_offset)
      return;




    for (a = oldrelocoffset + sizeof(*r); a < sr->data_offset; a += sizeof(*r)) {
	ssize_t i = a - sizeof(*r);
	addr = ((Elf64_Rela*)(sr->data + a))->r_offset;
	for (; i >= (ssize_t)oldrelocoffset &&
	       ((Elf64_Rela*)(sr->data + i))->r_offset > addr; i -= sizeof(*r)) {
	    Elf64_Rela tmp = *(Elf64_Rela*)(sr->data + a);
	    *(Elf64_Rela*)(sr->data + a) = *(Elf64_Rela*)(sr->data + i);
	    *(Elf64_Rela*)(sr->data + i) = tmp;
	}
    }

    r = (Elf64_Rela*)(sr->data + oldrelocoffset);
    dest = r;
    for (; r < (Elf64_Rela*)(sr->data + sr->data_offset); r++) {
	if (dest->r_offset != r->r_offset)
	  dest++;
	*dest = *r;
    }
    sr->data_offset = (unsigned char*)dest - sr->data + sizeof(*r);
}



static void put_stabs(TCCState *s1, const char *str, int type, int other, int desc,
                      unsigned long value)
{
    Stab_Sym *sym;

    unsigned offset;
    if (type == N_SLINE
        && (offset = s1->stab_section->data_offset)
        && (sym = (Stab_Sym*)(s1->stab_section->data + offset) - 1)
        && sym->n_type == type
        && sym->n_value == value) {

        sym->n_desc = desc;
        return;
    }

    sym = section_ptr_add(s1->stab_section, sizeof(Stab_Sym));
    if (str) {
        sym->n_strx = put_elf_str(s1->stab_section->link, str);
    } else {
        sym->n_strx = 0;
    }
    sym->n_type = type;
    sym->n_other = other;
    sym->n_desc = desc;
    sym->n_value = value;
}

static void put_stabs_r(TCCState *s1, const char *str, int type, int other, int desc,
                        unsigned long value, Section *sec, int sym_index)
{
    put_elf_reloc(s1->symtab_section, s1->stab_section,
                  s1->stab_section->data_offset + 8,
                  sizeof ((Stab_Sym*)0)->n_value == 8 ? 1 : 11,
                  sym_index);
    put_stabs(s1, str, type, other, desc, value);
}

static void put_stabn(TCCState *s1, int type, int other, int desc, int value)
{
    put_stabs(s1, ((void *)0), type, other, desc, value);
}

static struct sym_attr *get_sym_attr(TCCState *s1, int index, int alloc)
{
    int n;
    struct sym_attr *tab;

    if (index >= s1->nb_sym_attrs) {
        if (!alloc)
            return s1->sym_attrs;

        n = 1;
        while (index >= n)
            n *= 2;
        tab = tcc_realloc(s1->sym_attrs, n * sizeof(*s1->sym_attrs));
        s1->sym_attrs = tab;
        memset(s1->sym_attrs + s1->nb_sym_attrs, 0,
               (n - s1->nb_sym_attrs) * sizeof(*s1->sym_attrs));
        s1->nb_sym_attrs = n;
    }
    return &s1->sym_attrs[index];
}





static void sort_syms(TCCState *s1, Section *s)
{
    int *old_to_new_syms;
    Elf64_Sym *new_syms;
    int nb_syms, i;
    Elf64_Sym *p, *q;
    Elf64_Rela *rel;
    Section *sr;
    int type, sym_index;

    nb_syms = s->data_offset / sizeof(Elf64_Sym);
    new_syms = tcc_malloc(nb_syms * sizeof(Elf64_Sym));
    old_to_new_syms = tcc_malloc(nb_syms * sizeof(int));


    p = (Elf64_Sym *)s->data;
    q = new_syms;
    for(i = 0; i < nb_syms; i++) {
        if ((((unsigned char) (p->st_info)) >> 4) == 0) {
            old_to_new_syms[i] = q - new_syms;
            *q++ = *p;
        }
        p++;
    }

    if( s->sh_size )
        s->sh_info = q - new_syms;


    p = (Elf64_Sym *)s->data;
    for(i = 0; i < nb_syms; i++) {
        if ((((unsigned char) (p->st_info)) >> 4) != 0) {
            old_to_new_syms[i] = q - new_syms;
            *q++ = *p;
        }
        p++;
    }


    memcpy(s->data, new_syms, nb_syms * sizeof(Elf64_Sym));
    tcc_free(new_syms);


    for(i = 1; i < s1->nb_sections; i++) {
        sr = s1->sections[i];
        if (sr->sh_type == 4 && sr->link == s) {
            for (rel = (Elf64_Rela *) sr->data + 0; rel < (Elf64_Rela *) (sr->data + sr->data_offset); rel++) {
                sym_index = ((rel->r_info) >> 32);
                type = ((rel->r_info) & 0xffffffff);
                sym_index = old_to_new_syms[sym_index];
                rel->r_info = ((((Elf64_Xword) (sym_index)) << 32) + (type));
            }
        }
    }

    tcc_free(old_to_new_syms);
}



static void relocate_syms(TCCState *s1, Section *symtab, int do_resolve)
{
    Elf64_Sym *sym;
    int sym_bind, sh_num;
    const char *name;

    for (sym = (Elf64_Sym *) symtab->data + 1; sym < (Elf64_Sym *) (symtab->data + symtab->data_offset); sym++) {
        sh_num = sym->st_shndx;
        if (sh_num == 0) {
            name = (char *) s1->symtab->link->data + sym->st_name;

            if (do_resolve) {




                void *addr = dlsym(((void *)0), name + 1);



                if (addr) {
                    sym->st_value = (Elf64_Addr) addr;



                    goto found;
                }


            } else if (s1->dynsym && find_elf_sym(s1->dynsym, name))
                goto found;


            if (!strcmp(name, "_fp_hw"))
                goto found;


            sym_bind = (((unsigned char) (sym->st_info)) >> 4);
            if (sym_bind == 2)
                sym->st_value = 0;
            else
                (tcc_enter_state(s1),_tcc_error_noabort)("undefined symbol '%s'", name);
        } else if (sh_num < 0xff00) {

            sym->st_value += s1->sections[sym->st_shndx]->sh_addr;
        }
    found: ;
    }
}



static void relocate_section(TCCState *s1, Section *s)
{
    Section *sr = s->reloc;
    Elf64_Rela *rel;
    Elf64_Sym *sym;
    int type, sym_index;
    unsigned char *ptr;
    Elf64_Addr tgt, addr;

    s1->qrel = (Elf64_Rela *)sr->data;

    for (rel = (Elf64_Rela *) sr->data + 0; rel < (Elf64_Rela *) (sr->data + sr->data_offset); rel++) {
        ptr = s->data + rel->r_offset;
        sym_index = ((rel->r_info) >> 32);
        sym = &((Elf64_Sym *)s1->symtab_section->data)[sym_index];
        type = ((rel->r_info) & 0xffffffff);
        tgt = sym->st_value;

        tgt += rel->r_addend;

        addr = s->sh_addr + rel->r_offset;
        relocate(s1, rel, type, ptr, addr, tgt);
    }

    if (sr->sh_flags & (1 << 1)) {
        sr->link = s1->dynsym;
        if (s1->output_type == 3) {
            size_t r = (uint8_t*)s1->qrel - sr->data;
            if (sizeof ((Stab_Sym*)0)->n_value < 8
                && 0 == strcmp(s->name, ".stab"))
                r = 0;
            sr->data_offset = sr->sh_size = r;
        }
    }
}
# 1087 "../tinycc/tccelf.c"
static void build_got(TCCState *s1)
{

    s1->got = new_section(s1, ".got", 1, (1 << 1) | (1 << 0));
    s1->got->sh_entsize = 4;
    set_elf_sym(s1->symtab_section, 0, 4, ((((1)) << 4) + (((1)) & 0xf)),
                0, s1->got->sh_num, "_GLOBAL_OFFSET_TABLE_");

    section_ptr_add(s1->got, 3 * 8);
}





static struct sym_attr * put_got_entry(TCCState *s1, int dyn_reloc_type,
                                       int sym_index)
{
    int need_plt_entry;
    const char *name;
    Elf64_Sym *sym;
    struct sym_attr *attr;
    unsigned got_offset;
    char plt_name[100];
    int len;

    need_plt_entry = (dyn_reloc_type == 7);
    attr = get_sym_attr(s1, sym_index, 1);




    if (need_plt_entry ? attr->plt_offset : attr->got_offset)
        return attr;


    got_offset = s1->got->data_offset;
    section_ptr_add(s1->got, 8);
# 1134 "../tinycc/tccelf.c"
    sym = &((Elf64_Sym *) s1->symtab_section->data)[sym_index];
    name = (char *) s1->symtab_section->link->data + sym->st_name;

    if (s1->dynsym) {
	if ((((unsigned char) (sym->st_info)) >> 4) == 0) {
# 1153 "../tinycc/tccelf.c"
	    put_elf_reloc(s1->dynsym, s1->got, got_offset, 8,
			  sym_index);
	} else {
	    if (0 == attr->dyn_index)
                attr->dyn_index = set_elf_sym(s1->dynsym, sym->st_value,
                                              sym->st_size, sym->st_info, 0,
                                              sym->st_shndx, name);
	    put_elf_reloc(s1->dynsym, s1->got, got_offset, dyn_reloc_type,
			  attr->dyn_index);
	}
    } else {
        put_elf_reloc(s1->symtab_section, s1->got, got_offset, dyn_reloc_type,
                      sym_index);
    }

    if (need_plt_entry) {
        if (!s1->plt) {
    	    s1->plt = new_section(s1, ".plt", 1,
    			          (1 << 1) | (1 << 2));
    	    s1->plt->sh_entsize = 4;
        }

        attr->plt_offset = create_plt_entry(s1, got_offset, attr);


        len = strlen(name);
        if (len > sizeof plt_name - 5)
            len = sizeof plt_name - 5;
        memcpy(plt_name, name, len);
        strcpy(plt_name + len, "@plt");
        attr->plt_sym = put_elf_sym(s1->symtab, attr->plt_offset, sym->st_size,
            ((((1)) << 4) + (((2)) & 0xf)), 0, s1->plt->sh_num, plt_name);

    } else {
        attr->got_offset = got_offset;
    }

    return attr;
}


static void build_got_entries(TCCState *s1)
{
    Section *s;
    Elf64_Rela *rel;
    Elf64_Sym *sym;
    int i, type, gotplt_entry, reloc_type, sym_index;
    struct sym_attr *attr;

    for(i = 1; i < s1->nb_sections; i++) {
        s = s1->sections[i];
        if (s->sh_type != 4)
            continue;

        if (s->link != s1->symtab_section)
            continue;
        for (rel = (Elf64_Rela *) s->data + 0; rel < (Elf64_Rela *) (s->data + s->data_offset); rel++) {
            type = ((rel->r_info) & 0xffffffff);
            gotplt_entry = gotplt_entry_type(type);
            if (gotplt_entry == -1)
                (tcc_enter_state(s1),_tcc_error) ("Unknown relocation type for got: %d", type);
            sym_index = ((rel->r_info) >> 32);
            sym = &((Elf64_Sym *)s1->symtab_section->data)[sym_index];

            if (gotplt_entry == NO_GOTPLT_ENTRY) {
                continue;
            }





            if (gotplt_entry == AUTO_GOTPLT_ENTRY) {
                if (sym->st_shndx == 0) {
                    Elf64_Sym *esym;
		    int dynindex;
                    if (s1->output_type == 3 && ! 1)
                        continue;
# 1241 "../tinycc/tccelf.c"
		    if (s1->dynsym) {

			dynindex = get_sym_attr(s1, sym_index, 0)->dyn_index;
			esym = (Elf64_Sym *)s1->dynsym->data + dynindex;
			if (dynindex
			    && (((esym->st_info) & 0xf) == 2
				|| (((esym->st_info) & 0xf) == 0
				    && ((sym->st_info) & 0xf) == 2)))
			    goto jmp_slot;
		    }
                } else if (!(sym->st_shndx == 0xfff1

			&& 8 == 8

			))
                    continue;
            }


            if ((type == 4 || type == 2) &&
		sym->st_shndx != 0 &&
                (((sym->st_other) & 0x03) != 0 ||
		 (((unsigned char) (sym->st_info)) >> 4) == 0 ||
		 s1->output_type == 2)) {
                rel->r_info = ((((Elf64_Xword) (sym_index)) << 32) + (2));
                continue;
            }

            reloc_type = code_reloc(type);
            if (reloc_type == -1)
                (tcc_enter_state(s1),_tcc_error) ("Unknown relocation type: %d", type);
            else if (reloc_type != 0) {
            jmp_slot:
                reloc_type = 7;
            } else
                reloc_type = 6;

            if (!s1->got)
                build_got(s1);

            if (gotplt_entry == BUILD_GOT_ONLY)
                continue;

            attr = put_got_entry(s1, reloc_type, sym_index);

            if (reloc_type == 7)
                rel->r_info = ((((Elf64_Xword) (attr->plt_sym)) << 32) + (type));
        }
    }
}


static int set_global_sym(TCCState *s1, const char *name, Section *sec, Elf64_Addr offs)
{
    int shn = sec ? sec->sh_num : offs ? 0xfff1 : 0;
    if (sec && offs == -1)
        offs = sec->data_offset;
    return set_elf_sym(s1->symtab_section, offs, 0,
        ((((name ? 1 : 0)) << 4) + (((0)) & 0xf)), 0, shn, name);
}

static void add_init_array_defines(TCCState *s1, const char *section_name)
{
    Section *s;
    Elf64_Addr end_offset;
    char buf[1024];
    s = find_section(s1, section_name);
    if (!s) {
        end_offset = 0;
        s = s1->data_section;
    } else {
        end_offset = s->data_offset;
    }
    snprintf(buf, sizeof(buf), "__%s_start", section_name + 1);
    set_global_sym(s1, buf, s, 0);
    snprintf(buf, sizeof(buf), "__%s_end", section_name + 1);
    set_global_sym(s1, buf, s, end_offset);
}


static int tcc_add_support(TCCState *s1, const char *filename)
{
    char buf[1024];
    snprintf(buf, sizeof(buf), "%s/%s", s1->tcc_lib_path, filename);
    return tcc_add_file(s1, buf);
}


static void add_array (TCCState *s1, const char *sec, int c)
{
    Section *s;
    s = find_section(s1, sec);
    s->sh_flags |= (1 << 0);

    s->sh_type = sec[1] == 'i' ? 14 : 15;

    put_elf_reloc (s1->symtab, s, s->data_offset, 1, c);
    section_ptr_add(s, 8);
}


static void tcc_add_bcheck(TCCState *s1)
{
    if (0 == s1->do_bounds_check)
        return;
    section_ptr_add(s1->bounds_section, sizeof(Elf64_Addr));
}



static void put_ptr(TCCState *s1, Section *s, int offs)
{
    int c;
    c = set_global_sym(s1, ((void *)0), s, offs);
    s = s1->data_section;
    put_elf_reloc (s1->symtab, s, s->data_offset, 1, c);
    section_ptr_add(s, 8);
}



static void set_local_sym(TCCState *s1, const char *name, Section *s, int offset)
{
    int c = find_elf_sym(s1->symtab, name);
    if (c) {
        Elf64_Sym *esym = (Elf64_Sym*)s1->symtab->data + c;
        esym->st_info = ((((0)) << 4) + (((0)) & 0xf));
        esym->st_value = offset;
        esym->st_shndx = s->sh_num;
    }
}

static void tcc_add_btstub(TCCState *s1)
{
    Section *s;
    int n, o;
    CString cstr;

    s = s1->data_section;
    o = s->data_offset;

    put_ptr(s1, s1->stab_section, 0);
    put_ptr(s1, s1->stab_section, -1);
    put_ptr(s1, s1->stab_section->link, 0);
    section_ptr_add(s, 3 * 8);





    section_ptr_add(s, 8);
    n = 2 * 8;

    if (s1->do_bounds_check) {
        put_ptr(s1, s1->bounds_section, 0);
        n -= 8;
    }

    section_ptr_add(s, n);

    cstr_new(&cstr);
    cstr_printf(&cstr,
        " extern void __bt_init(),*__rt_info[],__bt_init_dll();"
        "__attribute__((constructor)) static void __bt_init_rt(){");
# 1413 "../tinycc/tccelf.c"
    cstr_printf(&cstr, "__bt_init(__rt_info,%d, 0);}",
        s1->output_type == 3 ? 0 : s1->rt_num_callers + 1);
    tcc_compile_string(s1, cstr.data);
    cstr_free(&cstr);
    set_local_sym(s1, &"___rt_info"[!s1->leading_underscore], s, o);
}




static void tcc_add_runtime(TCCState *s1)
{
    s1->filetype = 0;

    tcc_add_bcheck(s1);

    tcc_add_pragma_libs(s1);

    if (!s1->nostdlib) {
        if (s1->option_pthread)
            tcc_add_library_err(s1, "pthread");
        tcc_add_library_err(s1, "c");
# 1444 "../tinycc/tccelf.c"
        if (s1->do_bounds_check && s1->output_type != 3) {
            tcc_add_library_err(s1, "pthread");
            tcc_add_library_err(s1, "dl");
            tcc_add_support(s1, "bcheck.o");
        }


        if (s1->do_backtrace) {
            if (s1->output_type == 2)
                tcc_add_support(s1, "bt-exe.o");
            if (s1->output_type != 3)
                tcc_add_support(s1, "bt-log.o");
            if (s1->output_type != 1)
                tcc_add_btstub(s1);
        }



            tcc_add_support(s1, "x86_64-osx-libtcc1.a");






    }
}





static void tcc_add_linker_symbols(TCCState *s1)
{
    char buf[1024];
    int i;
    Section *s;

    set_global_sym(s1, "_etext", s1->text_section, -1);
    set_global_sym(s1, "_edata", s1->data_section, -1);
    set_global_sym(s1, "_end", s1->bss_section, -1);





    add_init_array_defines(s1, ".preinit_array");
    add_init_array_defines(s1, ".init_array");
    add_init_array_defines(s1, ".fini_array");


    for(i = 1; i < s1->nb_sections; i++) {
        s = s1->sections[i];
        if ((s->sh_flags & (1 << 1))
            && (s->sh_type == 1
                || s->sh_type == 3)) {
            const char *p;

            p = s->name;
            for(;;) {
                int c = *p;
                if (!c)
                    break;
                if (!isid(c) && !isnum(c))
                    goto next_sec;
                p++;
            }
            snprintf(buf, sizeof(buf), "__start_%s", s->name);
            set_global_sym(s1, buf, s, 0);
            snprintf(buf, sizeof(buf), "__stop_%s", s->name);
            set_global_sym(s1, buf, s, -1);
        }
    next_sec: ;
    }
}

static void resolve_common_syms(TCCState *s1)
{
    Elf64_Sym *sym;


    for (sym = (Elf64_Sym *) s1->symtab_section->data + 1; sym < (Elf64_Sym *) (s1->symtab_section->data + s1->symtab_section->data_offset); sym++) {
        if (sym->st_shndx == 0xfff2) {

	    sym->st_value = section_add(s1->bss_section, sym->st_size,
					sym->st_value);
            sym->st_shndx = s1->bss_section->sh_num;
        }
    }


    tcc_add_linker_symbols(s1);
}

static void tcc_output_binary(TCCState *s1, FILE *f,
                              const int *sec_order)
{
    Section *s;
    int i, offset, size;

    offset = 0;
    for(i=1;i<s1->nb_sections;i++) {
        s = s1->sections[sec_order[i]];
        if (s->sh_type != 8 &&
            (s->sh_flags & (1 << 1))) {
            while (offset < s->sh_offset) {
                fputc(0, f);
                offset++;
            }
            size = s->sh_size;
            fwrite(s->data, 1, size, f);
            offset += size;
        }
    }
}
# 1768 "../tinycc/tccelf.c"
static int alloc_sec_names(TCCState *s1, int file_type, Section *strsec)
{
    int i;
    Section *s;
    int textrel = 0;


    for(i = 1; i < s1->nb_sections; i++) {
        s = s1->sections[i];
# 1789 "../tinycc/tccelf.c"
        if ((s1->do_debug && s->sh_type != 4) ||
            file_type == 4 ||
            (s->sh_flags & (1 << 1)) ||
	    i == (s1->nb_sections - 1)



            ) {

            s->sh_size = s->data_offset;
        }







	if (s->sh_size || (s->sh_flags & (1 << 1)))
            s->sh_name = put_elf_str(strsec, s->name);
    }
    strsec->sh_size = strsec->data_offset;
    return textrel;
}


struct dyn_inf {
    Section *dynamic;
    Section *dynstr;
    unsigned long data_offset;
    Elf64_Addr rel_addr;
    Elf64_Addr rel_size;




};



static int layout_sections(TCCState *s1, Elf64_Phdr *phdr, int phnum,
                           Section *interp, Section* strsec,
                           struct dyn_inf *dyninf, int *sec_order)
{
    int i, j, k, file_type, sh_order_index, file_offset;
    unsigned long s_align;
    long long tmp;
    Elf64_Addr addr;
    Elf64_Phdr *ph;
    Section *s;

    file_type = s1->output_type;
    sh_order_index = 1;
    file_offset = 0;
    if (s1->output_format == 0)
        file_offset = sizeof(Elf64_Ehdr) + phnum * sizeof(Elf64_Phdr);
    s_align = 0x200000;
    if (s1->section_align)
        s_align = s1->section_align;

    if (phnum > 0) {
        if (s1->has_text_addr) {
            int a_offset, p_offset;
            addr = s1->text_addr;


            a_offset = (int) (addr & (s_align - 1));
            p_offset = file_offset & (s_align - 1);
            if (a_offset < p_offset)
                a_offset += s_align;
            file_offset += (a_offset - p_offset);
        } else {
            if (file_type == 3)
                addr = 0;
            else
                addr = 0x400000;

            addr += (file_offset & (s_align - 1));
        }

        ph = &phdr[0];



        if (interp)
            ph += 2;


        dyninf->rel_addr = dyninf->rel_size = 0;




        for(j = 0; j < (phnum == 6 ? 3 : 2); j++) {
            ph->p_type = j == 2 ? 7 : 1;
            if (j == 0)
                ph->p_flags = (1 << 2) | (1 << 0);
            else
                ph->p_flags = (1 << 2) | (1 << 1);
            ph->p_align = j == 2 ? 4 : s_align;






            for(k = 0; k < 5; k++) {
                for(i = 1; i < s1->nb_sections; i++) {
                    s = s1->sections[i];

                    if (j == 0) {
                        if ((s->sh_flags & ((1 << 1) | (1 << 0) | (1 << 10))) !=
                            (1 << 1))
                            continue;
                    } else if (j == 1) {
                        if ((s->sh_flags & ((1 << 1) | (1 << 0) | (1 << 10))) !=
                            ((1 << 1) | (1 << 0)))
                            continue;
                    } else  {
                        if ((s->sh_flags & ((1 << 1) | (1 << 0) | (1 << 10))) !=
                            ((1 << 1) | (1 << 0) | (1 << 10)))
                            continue;
                    }
                    if (s == interp) {
                        if (k != 0)
                            continue;
                    } else if ((s->sh_type == 11 ||
                                s->sh_type == 3 ||
                                s->sh_type == 5)
                               && !strstr(s->name, ".stab"))  {
                        if (k != 1)
                            continue;
                    } else if (s->sh_type == 4) {
                        if (k != 2)
                            continue;
                    } else if (s->sh_type == 8) {
                        if (k != 4)
                            continue;
                    } else {
                        if (k != 3)
                            continue;
                    }
                    sec_order[sh_order_index++] = i;


                    tmp = addr;
                    addr = (addr + s->sh_addralign - 1) &
                        ~(s->sh_addralign - 1);
                    file_offset += (int) ( addr - tmp );
                    s->sh_offset = file_offset;
                    s->sh_addr = addr;


                    if (ph->p_offset == 0) {
                        ph->p_offset = file_offset;
                        ph->p_vaddr = addr;
                        ph->p_paddr = ph->p_vaddr;
                    }

                    if (s->sh_type == 4) {
# 1959 "../tinycc/tccelf.c"
                        if (dyninf->rel_size == 0)
                            dyninf->rel_addr = addr;
                        dyninf->rel_size += s->sh_size;

                    }
                    addr += s->sh_size;
                    if (s->sh_type != 8)
                        file_offset += s->sh_size;
                }
            }
	    if (j == 0) {




		ph->p_offset &= ~(ph->p_align - 1);
		ph->p_vaddr &= ~(ph->p_align - 1);
		ph->p_paddr &= ~(ph->p_align - 1);
	    }
            ph->p_filesz = file_offset - ph->p_offset;
            ph->p_memsz = addr - ph->p_vaddr;
            ph++;
            if (j == 0) {
                if (s1->output_format == 0) {


                    if ((addr & (s_align - 1)) != 0)
                        addr += s_align;
                } else {
                    addr = (addr + s_align - 1) & ~(s_align - 1);
                    file_offset = (file_offset + s_align - 1) & ~(s_align - 1);
                }
            }
        }
    }


    for(i = 1; i < s1->nb_sections; i++) {
        s = s1->sections[i];
        if (phnum > 0 && (s->sh_flags & (1 << 1)))
            continue;
        sec_order[sh_order_index++] = i;

        file_offset = (file_offset + s->sh_addralign - 1) &
            ~(s->sh_addralign - 1);
        s->sh_offset = file_offset;
        if (s->sh_type != 8)
            file_offset += s->sh_size;
    }

    return file_offset;
}
# 2165 "../tinycc/tccelf.c"
static void tcc_output_elf(TCCState *s1, FILE *f, int phnum, Elf64_Phdr *phdr,
                           int file_offset, int *sec_order)
{
    int i, shnum, offset, size, file_type;
    Section *s;
    Elf64_Ehdr ehdr;
    Elf64_Shdr shdr, *sh;

    file_type = s1->output_type;
    shnum = s1->nb_sections;

    memset(&ehdr, 0, sizeof(ehdr));

    if (phnum > 0) {
        ehdr.e_phentsize = sizeof(Elf64_Phdr);
        ehdr.e_phnum = phnum;
        ehdr.e_phoff = sizeof(Elf64_Ehdr);
    }


    file_offset = (file_offset + 3) & -4;


    ehdr.e_ident[0] = 0x7f;
    ehdr.e_ident[1] = 'E';
    ehdr.e_ident[2] = 'L';
    ehdr.e_ident[3] = 'F';
    ehdr.e_ident[4] = 2;
    ehdr.e_ident[5] = 1;
    ehdr.e_ident[6] = 1;
# 2215 "../tinycc/tccelf.c"
    switch(file_type) {
    default:
    case 2:
        ehdr.e_type = 2;
        ehdr.e_entry = get_sym_addr(s1, "_start", 1, 0);
        break;
    case 3:
        ehdr.e_type = 3;
        ehdr.e_entry = s1->text_section->sh_addr;
        break;
    case 4:
        ehdr.e_type = 1;
        break;
    }
    ehdr.e_machine = 62;
    ehdr.e_version = 1;
    ehdr.e_shoff = file_offset;
    ehdr.e_ehsize = sizeof(Elf64_Ehdr);
    ehdr.e_shentsize = sizeof(Elf64_Shdr);
    ehdr.e_shnum = shnum;
    ehdr.e_shstrndx = shnum - 1;

    fwrite(&ehdr, 1, sizeof(Elf64_Ehdr), f);
    fwrite(phdr, 1, phnum * sizeof(Elf64_Phdr), f);
    offset = sizeof(Elf64_Ehdr) + phnum * sizeof(Elf64_Phdr);

    sort_syms(s1, s1->symtab_section);
    for(i = 1; i < s1->nb_sections; i++) {
        s = s1->sections[sec_order[i]];
        if (s->sh_type != 8) {
            while (offset < s->sh_offset) {
                fputc(0, f);
                offset++;
            }
            size = s->sh_size;
            if (size)
                fwrite(s->data, 1, size, f);
            offset += size;
        }
    }


    while (offset < ehdr.e_shoff) {
        fputc(0, f);
        offset++;
    }

    for(i = 0; i < s1->nb_sections; i++) {
        sh = &shdr;
        memset(sh, 0, sizeof(Elf64_Shdr));
        s = s1->sections[i];
        if (s) {
            sh->sh_name = s->sh_name;
            sh->sh_type = s->sh_type;
            sh->sh_flags = s->sh_flags;
            sh->sh_entsize = s->sh_entsize;
            sh->sh_info = s->sh_info;
            if (s->link)
                sh->sh_link = s->link->sh_num;
            sh->sh_addralign = s->sh_addralign;
            sh->sh_addr = s->sh_addr;
            sh->sh_offset = s->sh_offset;
            sh->sh_size = s->sh_size;
        }
        fwrite(sh, 1, sizeof(Elf64_Shdr), f);
    }
}


static int tcc_write_elf_file(TCCState *s1, const char *filename, int phnum,
                              Elf64_Phdr *phdr, int file_offset, int *sec_order)
{
    int fd, mode, file_type;
    FILE *f;

    file_type = s1->output_type;
    if (file_type == 4)
        mode = 0666;
    else
        mode = 0777;
    unlink(filename);
    fd = open(filename, 0x0001 | 0x0200 | 0x0400 | 0, mode);
    if (fd < 0) {
        (tcc_enter_state(s1),_tcc_error_noabort)("could not write '%s'", filename);
        return -1;
    }
    f = fdopen(fd, "wb");
    if (s1->verbose)
        printf("<- %s\n", filename);






    if (s1->output_format == 0)
        tcc_output_elf(s1, f, phnum, phdr, file_offset, sec_order);
    else
        tcc_output_binary(s1, f, sec_order);
    fclose(f);

    return 0;
}
# 2405 "../tinycc/tccelf.c"
static int elf_output_file(TCCState *s1, const char *filename)
{
    int ret, phnum, shnum, file_type, file_offset, *sec_order;
    struct dyn_inf dyninf = {0};
    Elf64_Phdr *phdr;
    Section *strsec, *interp, *dynamic, *dynstr;





    file_type = s1->output_type;
    s1->nb_errors = 0;
    ret = -1;
    phdr = ((void *)0);
    sec_order = ((void *)0);
    interp = dynamic = dynstr = ((void *)0);
# 2472 "../tinycc/tccelf.c"
    strsec = new_section(s1, ".shstrtab", 3, 0);
    put_elf_str(strsec, "");


    ret = alloc_sec_names(s1, file_type, strsec);
# 2515 "../tinycc/tccelf.c"
    if (file_type == 4)
        phnum = 0;
    else if (file_type == 3)
        phnum = 3;
    else if (s1->static_link)
        phnum = 2;
    else {
        int i;
        for (i = 1; i < s1->nb_sections &&
                    !(s1->sections[i]->sh_flags & (1 << 10)); i++);
        phnum = i < s1->nb_sections ? 6 : 5;
    }


    phdr = tcc_mallocz(phnum * sizeof(Elf64_Phdr));


    shnum = s1->nb_sections;


    sec_order = tcc_malloc(sizeof(int) * shnum);
    sec_order[0] = 0;


    file_offset = layout_sections(s1, phdr, phnum, interp, strsec, &dyninf,
                                  sec_order);
# 2583 "../tinycc/tccelf.c"
    ret = tcc_write_elf_file(s1, filename, phnum, phdr, file_offset, sec_order);
    s1->nb_sections = shnum;
    goto the_end;
 the_end:
    tcc_free(sec_order);
    tcc_free(phdr);
    return ret;
}

 int tcc_output_file(TCCState *s, const char *filename)
{
    int ret;





    if (s->output_type != 4) {
        ret = macho_output_file(s, filename);
    } else

        ret = elf_output_file(s, filename);
    return ret;
}

static ssize_t full_read(int fd, void *buf, size_t count) {
    char *cbuf = buf;
    size_t rnum = 0;
    while (1) {
        ssize_t num = read(fd, cbuf, count-rnum);
        if (num < 0) return num;
        if (num == 0) return rnum;
        rnum += num;
        cbuf += num;
    }
}

static void *load_data(int fd, unsigned long file_offset, unsigned long size)
{
    void *data;

    data = tcc_malloc(size);
    lseek(fd, file_offset, 0);
    full_read(fd, data, size);
    return data;
}

typedef struct SectionMergeInfo {
    Section *s;
    unsigned long offset;
    uint8_t new_section;
    uint8_t link_once;
} SectionMergeInfo;

static int tcc_object_type(int fd, Elf64_Ehdr *h)
{
    int size = full_read(fd, h, sizeof *h);
    if (size == sizeof *h && 0 == memcmp(h, "\177ELF", 4)) {
        if (h->e_type == 1)
            return 1;
        if (h->e_type == 3)
            return 2;
    } else if (size >= 8) {
        if (0 == memcmp(h, "!<arch>\012", 8))
            return 3;




    }
    return 0;
}



static int tcc_load_object_file(TCCState *s1,
                                int fd, unsigned long file_offset)
{
    Elf64_Ehdr ehdr;
    Elf64_Shdr *shdr, *sh;
    int size, i, j, offset, offseti, nb_syms, sym_index, ret, seencompressed;
    char *strsec, *strtab;
    int stab_index, stabstr_index;
    int *old_to_new_syms;
    char *sh_name, *name;
    SectionMergeInfo *sm_table, *sm;
    Elf64_Sym *sym, *symtab;
    Elf64_Rela *rel;
    Section *s;

    lseek(fd, file_offset, 0);
    if (tcc_object_type(fd, &ehdr) != 1)
        goto fail1;

    if (ehdr.e_ident[5] != 1 ||
        ehdr.e_machine != 62) {
    fail1:
        (tcc_enter_state(s1),_tcc_error_noabort)("invalid object file");
        return -1;
    }

    shdr = load_data(fd, file_offset + ehdr.e_shoff,
                     sizeof(Elf64_Shdr) * ehdr.e_shnum);
    sm_table = tcc_mallocz(sizeof(SectionMergeInfo) * ehdr.e_shnum);


    sh = &shdr[ehdr.e_shstrndx];
    strsec = load_data(fd, file_offset + sh->sh_offset, sh->sh_size);


    old_to_new_syms = ((void *)0);
    symtab = ((void *)0);
    strtab = ((void *)0);
    nb_syms = 0;
    seencompressed = 0;
    stab_index = stabstr_index = 0;

    for(i = 1; i < ehdr.e_shnum; i++) {
        sh = &shdr[i];
        if (sh->sh_type == 2) {
            if (symtab) {
                (tcc_enter_state(s1),_tcc_error_noabort)("object must contain only one symtab");
            fail:
                ret = -1;
                goto the_end;
            }
            nb_syms = sh->sh_size / sizeof(Elf64_Sym);
            symtab = load_data(fd, file_offset + sh->sh_offset, sh->sh_size);
            sm_table[i].s = s1->symtab_section;


            sh = &shdr[sh->sh_link];
            strtab = load_data(fd, file_offset + sh->sh_offset, sh->sh_size);
        }
	if (sh->sh_flags & (1 << 11))
	    seencompressed = 1;
    }



    for(i = 1; i < ehdr.e_shnum; i++) {

        if (i == ehdr.e_shstrndx)
            continue;
        sh = &shdr[i];
	if (sh->sh_type == 4)
	  sh = &shdr[sh->sh_info];

        if (sh->sh_type != 1 &&



            sh->sh_type != 8 &&
            sh->sh_type != 16 &&
            sh->sh_type != 14 &&
            sh->sh_type != 15 &&
            strcmp(strsec + sh->sh_name, ".stabstr")
            )
            continue;
	if (seencompressed
	    && !strncmp(strsec + sh->sh_name, ".debug_", sizeof(".debug_")-1))
	  continue;

	sh = &shdr[i];
        sh_name = strsec + sh->sh_name;
        if (sh->sh_addralign < 1)
            sh->sh_addralign = 1;

        for(j = 1; j < s1->nb_sections;j++) {
            s = s1->sections[j];
            if (!strcmp(s->name, sh_name)) {
                if (!strncmp(sh_name, ".gnu.linkonce",
                             sizeof(".gnu.linkonce") - 1)) {




                    sm_table[i].link_once = 1;
                    goto next;
                }
                if (s1->stab_section) {
                    if (s == s1->stab_section)
                        stab_index = i;
                    if (s == s1->stab_section->link)
                        stabstr_index = i;
                }
                goto found;
            }
        }

        s = new_section(s1, sh_name, sh->sh_type, sh->sh_flags & ~(1 << 9));


        s->sh_addralign = sh->sh_addralign;
        s->sh_entsize = sh->sh_entsize;
        sm_table[i].new_section = 1;
    found:
        if (sh->sh_type != s->sh_type) {
            (tcc_enter_state(s1),_tcc_error_noabort)("invalid section type");
            goto fail;
        }

        s->data_offset += -s->data_offset & (sh->sh_addralign - 1);
        if (sh->sh_addralign > s->sh_addralign)
            s->sh_addralign = sh->sh_addralign;
        sm_table[i].offset = s->data_offset;
        sm_table[i].s = s;

        size = sh->sh_size;
        if (sh->sh_type != 8) {
            unsigned char *ptr;
            lseek(fd, file_offset + sh->sh_offset, 0);
            ptr = section_ptr_add(s, size);
            full_read(fd, ptr, size);
        } else {
            s->data_offset += size;
        }
    next: ;
    }


    if (stab_index && stabstr_index) {
        Stab_Sym *a, *b;
        unsigned o;
        s = sm_table[stab_index].s;
        a = (Stab_Sym *)(s->data + sm_table[stab_index].offset);
        b = (Stab_Sym *)(s->data + s->data_offset);
        o = sm_table[stabstr_index].offset;
        while (a < b) {
            if (a->n_strx)
                a->n_strx += o;
            a++;
        }
    }



    for(i = 1; i < ehdr.e_shnum; i++) {
        s = sm_table[i].s;
        if (!s || !sm_table[i].new_section)
            continue;
        sh = &shdr[i];
        if (sh->sh_link > 0)
            s->link = sm_table[sh->sh_link].s;
        if (sh->sh_type == 4) {
            s->sh_info = sm_table[sh->sh_info].s->sh_num;

            s1->sections[s->sh_info]->reloc = s;
        }
    }


    old_to_new_syms = tcc_mallocz(nb_syms * sizeof(int));

    sym = symtab + 1;
    for(i = 1; i < nb_syms; i++, sym++) {
        if (sym->st_shndx != 0 &&
            sym->st_shndx < 0xff00) {
            sm = &sm_table[sym->st_shndx];
            if (sm->link_once) {



                if ((((unsigned char) (sym->st_info)) >> 4) != 0) {
                    name = strtab + sym->st_name;
                    sym_index = find_elf_sym(s1->symtab_section, name);
                    if (sym_index)
                        old_to_new_syms[i] = sym_index;
                }
                continue;
            }

            if (!sm->s)
                continue;

            sym->st_shndx = sm->s->sh_num;

            sym->st_value += sm->offset;
        }

        name = strtab + sym->st_name;
        sym_index = set_elf_sym(s1->symtab_section, sym->st_value, sym->st_size,
                                sym->st_info, sym->st_other,
                                sym->st_shndx, name);
        old_to_new_syms[i] = sym_index;
    }


    for(i = 1; i < ehdr.e_shnum; i++) {
        s = sm_table[i].s;
        if (!s)
            continue;
        sh = &shdr[i];
        offset = sm_table[i].offset;
        switch(s->sh_type) {
        case 4:

            offseti = sm_table[sh->sh_info].offset;
            for (rel = (Elf64_Rela *) s->data + (offset / sizeof(*rel)); rel < (Elf64_Rela *) (s->data + s->data_offset); rel++) {
                int type;
                unsigned sym_index;

                type = ((rel->r_info) & 0xffffffff);
                sym_index = ((rel->r_info) >> 32);

                if (sym_index >= nb_syms)
                    goto invalid_reloc;
                sym_index = old_to_new_syms[sym_index];

                if (!sym_index && !sm_table[sh->sh_info].link_once






                   ) {
                invalid_reloc:
                    (tcc_enter_state(s1),_tcc_error_noabort)("Invalid relocation entry [%2d] '%s' @ %.8x",
                        i, strsec + sh->sh_name, (int)rel->r_offset);
                    goto fail;
                }
                rel->r_info = ((((Elf64_Xword) (sym_index)) << 32) + (type));

                rel->r_offset += offseti;
# 2920 "../tinycc/tccelf.c"
            }
            break;
        default:
            break;
        }
    }

    ret = 0;
 the_end:
    tcc_free(symtab);
    tcc_free(strtab);
    tcc_free(old_to_new_syms);
    tcc_free(sm_table);
    tcc_free(strsec);
    tcc_free(shdr);
    return ret;
}

typedef struct ArchiveHeader {
    char ar_name[16];
    char ar_date[12];
    char ar_uid[6];
    char ar_gid[6];
    char ar_mode[8];
    char ar_size[10];
    char ar_fmag[2];
} ArchiveHeader;



static unsigned long long get_be(const uint8_t *b, int n)
{
    unsigned long long ret = 0;
    while (n)
        ret = (ret << 8) | *b++, --n;
    return ret;
}

static int read_ar_header(int fd, int offset, ArchiveHeader *hdr)
{
    char *p, *e;
    int len;
    lseek(fd, offset, 0);
    len = full_read(fd, hdr, sizeof(ArchiveHeader));
    if (len != sizeof(ArchiveHeader))
        return len ? -1 : 0;
    p = hdr->ar_name;
    for (e = p + sizeof hdr->ar_name; e > p && e[-1] == ' ';)
        --e;
    *e = '\0';
    hdr->ar_size[sizeof hdr->ar_size-1] = 0;
    return len;
}


static int tcc_load_alacarte(TCCState *s1, int fd, int size, int entrysize)
{
    int i, bound, nsyms, sym_index, len, ret = -1;
    unsigned long long off;
    uint8_t *data;
    const char *ar_names, *p;
    const uint8_t *ar_index;
    Elf64_Sym *sym;
    ArchiveHeader hdr;

    data = tcc_malloc(size);
    if (full_read(fd, data, size) != size)
        goto the_end;
    nsyms = get_be(data, entrysize);
    ar_index = data + entrysize;
    ar_names = (char *) ar_index + nsyms * entrysize;

    do {
        bound = 0;
        for (p = ar_names, i = 0; i < nsyms; i++, p += strlen(p)+1) {
            Section *s = s1->symtab_section;
            sym_index = find_elf_sym(s, p);
            if (!sym_index)
                continue;
            sym = &((Elf64_Sym *)s->data)[sym_index];
            if(sym->st_shndx != 0)
                continue;
            off = get_be(ar_index + i * entrysize, entrysize);
            len = read_ar_header(fd, off, &hdr);
            if (len <= 0 || memcmp(hdr.ar_fmag, "`\n", 2)) {
                (tcc_enter_state(s1),_tcc_error_noabort)("invalid archive");
                goto the_end;
            }
            off += len;
            if (s1->verbose == 2)
                printf("   -> %s\n", hdr.ar_name);
            if (tcc_load_object_file(s1, fd, off) < 0)
                goto the_end;
            ++bound;
        }
    } while(bound);
    ret = 0;
 the_end:
    tcc_free(data);
    return ret;
}


static int tcc_load_archive(TCCState *s1, int fd, int alacarte)
{
    ArchiveHeader hdr;

    int size, len;
    unsigned long file_offset;
    Elf64_Ehdr ehdr;



    file_offset = sizeof "!<arch>\012" - 1;

    for(;;) {
        len = read_ar_header(fd, file_offset, &hdr);
        if (len == 0)
            return 0;
        if (len < 0) {
            (tcc_enter_state(s1),_tcc_error_noabort)("invalid archive");
            return -1;
        }
        file_offset += len;
        size = strtol(hdr.ar_size, ((void *)0), 0);

        size = (size + 1) & ~1;
        if (alacarte) {

            if (!strcmp(hdr.ar_name, "/"))
                return tcc_load_alacarte(s1, fd, size, 4);
            if (!strcmp(hdr.ar_name, "/SYM64/"))
                return tcc_load_alacarte(s1, fd, size, 8);
        } else if (tcc_object_type(fd, &ehdr) == 1) {
            if (s1->verbose == 2)
                printf("   -> %s\n", hdr.ar_name);
            if (tcc_load_object_file(s1, fd, file_offset) < 0)
                return -1;
        }
        file_offset += size;
    }
}
# 25 "../tinycc/libtcc.c" 2
# 1 "../tinycc/tccrun.c" 1
# 21 "../tinycc/tccrun.c"
# 1 "../tinycc/tcc.h" 1
# 22 "../tinycc/tccrun.c" 2





typedef struct rt_context
{

    Stab_Sym *stab_sym, *stab_sym_end;
    char *stab_str;
    Elf64_Sym *esym_start, *esym_end;
    char *elf_str;
    Elf64_Addr prog_base;
    void *bounds_start;
    struct rt_context *next;

    int num_callers;
    Elf64_Addr ip, fp, sp;
    void *top_func;
    jmp_buf jmp_buf;
    char do_jmp;
} rt_context;

static rt_context g_rtctxt;
static void set_exception_handler(void);
static int _rt_error(void *fp, void *ip, const char *fmt, va_list ap);
static void rt_exit(int code);






# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/mman.h" 1
# 218 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/mman.h"
int     mlockall(int);
int     munlockall(void);

int     mlock(const void *, size_t);



void *  mmap(void *, size_t, int, int, int, off_t) __asm("_" "mmap" );


int     mprotect(void *, size_t, int) __asm("_" "mprotect" );

int     msync(void *, size_t, int) __asm("_" "msync" );

int     munlock(const void *, size_t);

int     munmap(void *, size_t) __asm("_" "munmap" );

int     shm_open(const char *, int, ...);
int     shm_unlink(const char *);

int     posix_madvise(void *, size_t, int);


int     madvise(void *, size_t, int);
int     mincore(const void *, size_t, char *);
int     minherit(void *, size_t, int);
# 56 "../tinycc/tccrun.c" 2


static void set_pages_executable(TCCState *s1, void *ptr, unsigned long length);
static int tcc_relocate_ex(TCCState *s1, void *ptr, Elf64_Addr ptr_diff);
# 70 "../tinycc/tccrun.c"
 int tcc_relocate(TCCState *s1, void *ptr)
{
    int size;
    Elf64_Addr ptr_diff = 0;

    if ((void*)1 != ptr)
        return tcc_relocate_ex(s1, ptr, 0);

    size = tcc_relocate_ex(s1, ((void *)0), 0);
    if (size < 0)
        return -1;
# 101 "../tinycc/tccrun.c"
    ptr = tcc_malloc(size);

    tcc_relocate_ex(s1, ptr, ptr_diff);
    dynarray_add(&s1->runtime_mem, &s1->nb_runtime_mem, ptr);
    return 0;
}

static void tcc_run_free(TCCState *s1)
{
    int i;

    for (i = 0; i < s1->nb_runtime_mem; ++i) {
# 121 "../tinycc/tccrun.c"
        tcc_free(s1->runtime_mem[i]);

    }
    tcc_free(s1->runtime_mem);
}

static void run_cdtors(TCCState *s1, const char *start, const char *end,
                       int argc, char **argv, char **envp)
{
    void **a = (void **)get_sym_addr(s1, start, 0, 0);
    void **b = (void **)get_sym_addr(s1, end, 0, 0);
    while (a != b)
        ((void(*)(int, char **, char **))*a++)(argc, argv, envp);
}


 int tcc_run(TCCState *s1, int argc, char **argv)
{
    int (*prog_main)(int, char **, char **), ret;

    rt_context *rc = &g_rtctxt;


    char **envp = ((void *)0);




    s1->runtime_main = s1->nostdlib ? "_start" : "main";
    if ((s1->dflag & 16) && (Elf64_Addr)-1 == get_sym_addr(s1, s1->runtime_main, 0, 1))
        return 0;

    if (s1->do_debug)
        tcc_add_symbol(s1, "exit", rt_exit);

    if (tcc_relocate(s1, (void*)1) < 0)
        return -1;
    prog_main = (void*)get_sym_addr(s1, s1->runtime_main, 1, 1);


    memset(rc, 0, sizeof *rc);
    if (s1->do_debug) {
        void *p;
        rc->stab_sym = (Stab_Sym *)s1->stab_section->data;
        rc->stab_sym_end = (Stab_Sym *)(s1->stab_section->data + s1->stab_section->data_offset);
        rc->stab_str = (char *)s1->stab_section->link->data;
        rc->esym_start = (Elf64_Sym *)(s1->symtab_section->data);
        rc->esym_end = (Elf64_Sym *)(s1->symtab_section->data + s1->symtab_section->data_offset);
        rc->elf_str = (char *)s1->symtab_section->link->data;

        rc->prog_base = s1->text_section->sh_addr & 0xffffffff00000000ULL;

        rc->top_func = tcc_get_symbol(s1, "main");
        rc->num_callers = s1->rt_num_callers;
        rc->do_jmp = 1;
        if ((p = tcc_get_symbol(s1, "__rt_error")))
            *(void**)p = _rt_error;

        if (s1->do_bounds_check) {
            if ((p = tcc_get_symbol(s1, "__bound_init")))
                ((void(*)(void*, int))p)(s1->bounds_section->data, 1);
        }

        set_exception_handler();
    }


    (*__error()) = 0;
    fflush(__stdoutp);
    fflush(__stderrp);

    run_cdtors(s1, "__init_array_start", "__init_array_end", argc, argv, envp);

    if (!rc->do_jmp || !(ret = setjmp(rc->jmp_buf)))

    {
        ret = prog_main(argc, argv, envp);
    }
    run_cdtors(s1, "__fini_array_start", "__fini_array_end", 0, ((void *)0), ((void *)0));
    if ((s1->dflag & 16) && ret)
        fprintf(s1->ppfp, "[returns %d]\n", ret), fflush(s1->ppfp);
    return ret;
}
# 216 "../tinycc/tccrun.c"
static int tcc_relocate_ex(TCCState *s1, void *ptr, Elf64_Addr ptr_diff)
{
    Section *s;
    unsigned offset, length, align, max_align, i, k, f;
    Elf64_Addr mem, addr;

    if (((void *)0) == ptr) {
        s1->nb_errors = 0;



        tcc_add_runtime(s1);
	resolve_common_syms(s1);
        build_got_entries(s1);

        if (s1->nb_errors)
            return -1;
    }

    offset = max_align = 0, mem = (Elf64_Addr)ptr;



    for (k = 0; k < 2; ++k) {
        f = 0, addr = k ? mem : mem + ptr_diff;
        for(i = 1; i < s1->nb_sections; i++) {
            s = s1->sections[i];
            if (0 == (s->sh_flags & (1 << 1)))
                continue;
            if (k != !(s->sh_flags & (1 << 2)))
                continue;
            align = s->sh_addralign - 1;
            if (++f == 1 && align < 63)
                align = 63;
            if (max_align < align)
                max_align = align;
            offset += -(addr + offset) & align;
            s->sh_addr = mem ? addr + offset : 0;
            offset += s->data_offset;





        }
    }


    relocate_syms(s1, s1->symtab, !(s1->nostdlib));
    if (s1->nb_errors)
        return -1;

    if (0 == mem)
        return offset + max_align;






    for(i = 1; i < s1->nb_sections; i++) {
        s = s1->sections[i];
        if (s->reloc)
            relocate_section(s1, s);
    }

    relocate_plt(s1);


    for(i = 1; i < s1->nb_sections; i++) {
        s = s1->sections[i];
        if (0 == (s->sh_flags & (1 << 1)))
            continue;
        length = s->data_offset;
        ptr = (void*)s->sh_addr;
        if (s->sh_flags & (1 << 2))
            ptr = (char*)((Elf64_Addr)ptr - ptr_diff);
        if (((void *)0) == s->data || s->sh_type == 8)
            memset(ptr, 0, length);
        else
            memcpy(ptr, s->data, length);

        if (s->sh_flags & (1 << 2))
            set_pages_executable(s1, (char*)((Elf64_Addr)ptr + ptr_diff), length);
    }





    return 0;
}




static void set_pages_executable(TCCState *s1, void *ptr, unsigned long length)
{




    void __clear_cache(void *beginning, void *end);

    Elf64_Addr start, end;



    start = (Elf64_Addr)ptr & ~(4096 - 1);
    end = (Elf64_Addr)ptr + length;
    end = (end + 4096 - 1) & ~(4096 - 1);
    if (mprotect((void *)start, end - start, 0x01 | 0x02 | 0x04))
        (tcc_enter_state(s1),_tcc_error)("mprotect failed: did you mean to configure --with-selinux?");





}
# 363 "../tinycc/tccrun.c"
static int rt_vprintf(const char *fmt, va_list ap)
{
    int ret = vfprintf(__stderrp, fmt, ap);
    fflush(__stderrp);
    return ret;
}

static int rt_printf(const char *fmt, ...)
{
    va_list ap;
    int r;
    __builtin_va_start(ap, fmt);
    r = rt_vprintf(fmt, ap);
    __builtin_va_end(ap);
    return r;
}





static Elf64_Addr rt_printline (rt_context *rc, Elf64_Addr wanted_pc,
    const char *msg, const char *skip)
{
    char func_name[128];
    Elf64_Addr func_addr, last_pc, pc;
    const char *incl_files[32];
    int incl_index, last_incl_index, len, last_line_num, i;
    const char *str, *p;
    Elf64_Sym *esym;
    Stab_Sym *sym;

next:
    func_name[0] = '\0';
    func_addr = 0;
    incl_index = 0;
    last_pc = (Elf64_Addr)-1;
    last_line_num = 1;
    last_incl_index = 0;

    for (sym = rc->stab_sym + 1; sym < rc->stab_sym_end; ++sym) {
        str = rc->stab_str + sym->n_strx;
        pc = sym->n_value;

        switch(sym->n_type) {
        case N_SLINE:
            if (func_addr)
                goto rel_pc;
        case N_SO:
        case N_SOL:
            goto abs_pc;
        case N_FUN:
            if (sym->n_strx == 0)
                goto rel_pc;
        abs_pc:


            pc += rc->prog_base;

            goto check_pc;
        rel_pc:
            pc += func_addr;
        check_pc:
            if (pc >= wanted_pc && wanted_pc >= last_pc)
                goto found;
            break;
        }

        switch(sym->n_type) {

        case N_FUN:
            if (sym->n_strx == 0)
                goto reset_func;
            p = strchr(str, ':');
            if (0 == p || (len = p - str + 1, len > sizeof func_name))
                len = sizeof func_name;
            pstrcpy(func_name, len, str);
            func_addr = pc;
            break;

        case N_SLINE:
            last_pc = pc;
            last_line_num = sym->n_desc;
            last_incl_index = incl_index;
            break;

        case N_BINCL:
            if (incl_index < 32)
                incl_files[incl_index++] = str;
            break;
        case N_EINCL:
            if (incl_index > 1)
                incl_index--;
            break;

        case N_SO:
            incl_index = 0;
            if (sym->n_strx) {

                len = strlen(str);
                if (len > 0 && str[len - 1] != '/')
                    incl_files[incl_index++] = str;
            }
        reset_func:
            func_name[0] = '\0';
            func_addr = 0;
            last_pc = (Elf64_Addr)-1;
            break;

        case N_SOL:
            if (incl_index)
                incl_files[incl_index-1] = str;
            break;
        }
    }

    func_name[0] = '\0';
    func_addr = 0;
    last_incl_index = 0;


    for (esym = rc->esym_start + 1; esym < rc->esym_end; ++esym) {
        int type = ((esym->st_info) & 0xf);
        if (type == 2 || type == 10) {
            if (wanted_pc >= esym->st_value &&
                wanted_pc < esym->st_value + esym->st_size) {
                pstrcpy(func_name, sizeof(func_name),
                    rc->elf_str + esym->st_name);
                func_addr = esym->st_value;
                goto found;
            }
        }
    }

    if ((rc = rc->next))
        goto next;

found:
    i = last_incl_index;
    if (i > 0) {
        str = incl_files[--i];
        if (skip[0] && strstr(str, skip))
            return (Elf64_Addr)-1;
        rt_printf("%s:%d: ", str, last_line_num);
    } else
        rt_printf("%08llx : ", (long long)wanted_pc);
    rt_printf("%s %s", msg, func_name[0] ? func_name : "???");
# 522 "../tinycc/tccrun.c"
    return func_addr;
}

static int rt_get_caller_pc(Elf64_Addr *paddr, rt_context *rc, int level);

static int _rt_error(void *fp, void *ip, const char *fmt, va_list ap)
{
    rt_context *rc = &g_rtctxt;
    Elf64_Addr pc = 0;
    char skip[100];
    int i, level, ret, n;
    const char *a, *b, *msg;

    if (fp) {

        rc->fp = (Elf64_Addr)fp;
        rc->ip = (Elf64_Addr)ip;
        msg = "";
    } else {

        msg = "RUNTIME ERROR: ";
    }

    skip[0] = 0;

    if (fmt[0] == '^' && (b = strchr(a = fmt + 1, fmt[0]))) {
        memcpy(skip, a, b - a), skip[b - a] = 0;
        fmt = b + 1;
    }

    n = rc->num_callers ? rc->num_callers : 6;
    for (i = level = 0; level < n; i++) {
        ret = rt_get_caller_pc(&pc, rc, i);
        a = "%s";
        if (ret != -1) {
            pc = rt_printline(rc, pc, level ? "by" : "at", skip);
            if (pc == (Elf64_Addr)-1)
                continue;
            a = ": %s";
        }
        if (level == 0) {
            rt_printf(a, msg);
            rt_vprintf(fmt, ap);
        } else if (ret == -1)
            break;
        rt_printf("\n");
        if (ret == -1 || (pc == (Elf64_Addr)rc->top_func && pc))
            break;
        ++level;
    }

    rc->ip = rc->fp = 0;
    return 0;
}


static int rt_error(const char *fmt, ...)
{
    va_list ap;
    int ret;
    __builtin_va_start(ap, fmt);
    ret = _rt_error(0, 0, fmt, ap);
    __builtin_va_end(ap);
    return ret;
}

static void rt_exit(int code)
{
    rt_context *rc = &g_rtctxt;
    if (rc->do_jmp)
        longjmp(rc->jmp_buf, code ? code : 256);
    exit(code);
}




# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/signal.h" 1
# 66 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/signal.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_t.h"
typedef __darwin_pthread_t pthread_t;
# 67 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/signal.h" 2


extern const char *const sys_signame[32];
extern const char *const sys_siglist[32];



int	raise(int);




void	(*  bsd_signal(int, void (* )(int)))(int);
int	kill(pid_t, int) __asm("_" "kill" );
int	killpg(pid_t, int) __asm("_" "killpg" );
int	pthread_kill(pthread_t, int);
int	pthread_sigmask(int, const sigset_t *, sigset_t *) __asm("_" "pthread_sigmask" );
int	sigaction(int, const struct sigaction * restrict,
	    struct sigaction * restrict);
int	sigaddset(sigset_t *, int);
int	sigaltstack(const stack_t * restrict, stack_t * restrict)  __asm("_" "sigaltstack" )  ;
int	sigdelset(sigset_t *, int);
int	sigemptyset(sigset_t *);
int	sigfillset(sigset_t *);
int	sighold(int);
int	sigignore(int);
int	siginterrupt(int, int);
int	sigismember(const sigset_t *, int);
int	sigpause(int) __asm("_" "sigpause" );
int	sigpending(sigset_t *);
int	sigprocmask(int, const sigset_t * restrict, sigset_t * restrict);
int	sigrelse(int);
void    (*  sigset(int, void (* )(int)))(int);
int	sigsuspend(const sigset_t *) __asm("_" "sigsuspend" );
int	sigwait(const sigset_t * restrict, int * restrict) __asm("_" "sigwait" );

void	psignal(unsigned int, const char *);
int	sigblock(int);
int	sigsetmask(int);
int	sigvec(int, struct sigvec *, struct sigvec *);






extern __inline __attribute__ ((__always_inline__)) int
__sigbits(int __signo)
{
    return __signo > 32 ? 0 : (1 << (__signo - 1));
}
# 600 "../tinycc/tccrun.c" 2

# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/ucontext.h" 1
# 35 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/ucontext.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_mcontext.h" 1
# 36 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/ucontext.h" 2
# 602 "../tinycc/tccrun.c" 2






static void rt_getcontext(ucontext_t *uc, rt_context *rc)
{
# 643 "../tinycc/tccrun.c"
    rc->ip = uc->uc_mcontext->__ss.__rip;
    rc->fp = uc->uc_mcontext->__ss.__rbp;
# 665 "../tinycc/tccrun.c"
}




static void sig_error(int signum, siginfo_t *siginf, void *puc)
{
    rt_context *rc = &g_rtctxt;
    rt_getcontext(puc, rc);

    switch(signum) {
    case 8:
        switch(siginf->si_code) {
        case 7:
        case 1:
            rt_error("division by zero");
            break;
        default:
            rt_error("floating point exception");
            break;
        }
        break;
    case 10:
    case 11:
        rt_error("invalid memory access");
        break;
    case 4:
        rt_error("illegal instruction");
        break;
    case 6:
        rt_error("abort() called");
        break;
    default:
        rt_error("caught signal %d", signum);
        break;
    }
    rt_exit(255);
}






static void set_exception_handler(void)
{
    struct sigaction sigact;


    sigact.sa_flags = 0x0040 | 0x0004;



    sigact.__sigaction_u.__sa_sigaction = sig_error;
    (*(&sigact.sa_mask) = 0, 0);
    sigaction(8, &sigact, ((void *)0));
    sigaction(4, &sigact, ((void *)0));
    sigaction(11, &sigact, ((void *)0));
    sigaction(10, &sigact, ((void *)0));
    sigaction(6, &sigact, ((void *)0));
# 737 "../tinycc/tccrun.c"
}
# 783 "../tinycc/tccrun.c"
static int rt_get_caller_pc(Elf64_Addr *paddr, rt_context *rc, int level)
{
    Elf64_Addr ip, fp;
    if (level == 0) {
        ip = rc->ip;
    } else {
        ip = 0;
        fp = rc->fp;
        while (--level) {

            if (fp <= 0x1000)
                break;
            fp = ((Elf64_Addr *)fp)[0];
        }
        if (fp > 0x1000)
            ip = ((Elf64_Addr *)fp)[1];
    }
    if (ip <= 0x1000)
        return -1;
    *paddr = ip;
    return 0;
}
# 26 "../tinycc/libtcc.c" 2
# 43 "../tinycc/libtcc.c"
# 1 "../tinycc/x86_64-gen.c" 1
# 112 "../tinycc/x86_64-gen.c"
# 1 "../tinycc/tcc.h" 1
# 113 "../tinycc/x86_64-gen.c" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/assert.h" 1
# 76 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/assert.h"
void __assert_rtn(const char *, const char *, int, const char *) __attribute__((__noreturn__))  ;
# 114 "../tinycc/x86_64-gen.c" 2

static const int reg_classes[25] = {
      0x0001 | 0x0004,
      0x0001 | 0x0008,
      0x0001 | 0x0010,
    0,
    0,
    0,
    0,
    0,
    0x0100,
    0x0200,
    0x0400,
    0x0800,
    0,
    0,
    0,
    0,
      0x0002 | 0x1000,
      0x0002 | 0x2000,
      0x0002 | 0x4000,
      0x0002 | 0x8000,
      0x0002 | 0x10000,
      0x0002 | 0x20000,



    0x40000,
    0x80000,
      0x0080
};

static unsigned long func_sub_sp_offset;
static int func_ret_sub;


static Elf64_Addr func_bound_offset;
static unsigned long func_bound_ind;
static int func_bound_add_epilog;







static void g(int c)
{
    int ind1;
    if (nocode_wanted)
        return;
    ind1 = ind + 1;
    if (ind1 > tcc_state->cur_text_section->data_allocated)
        section_realloc(tcc_state->cur_text_section, ind1);
    tcc_state->cur_text_section->data[ind] = c;
    ind = ind1;
}

static void o(unsigned int c)
{
    while (c) {
        g(c);
        c = c >> 8;
    }
}

static void gen_le16(int v)
{
    g(v);
    g(v >> 8);
}

static void gen_le32(int c)
{
    g(c);
    g(c >> 8);
    g(c >> 16);
    g(c >> 24);
}

static void gen_le64(int64_t c)
{
    g(c);
    g(c >> 8);
    g(c >> 16);
    g(c >> 24);
    g(c >> 32);
    g(c >> 40);
    g(c >> 48);
    g(c >> 56);
}

static void orex(int ll, int r, int r2, int b)
{
    if ((r & 0x003f) >= 0x0030)
        r = 0;
    if ((r2 & 0x003f) >= 0x0030)
        r2 = 0;
    if (ll || (((r) >> 3) & 1) || (((r2) >> 3) & 1))
        o(0x40 | (((r) >> 3) & 1) | ((((r2) >> 3) & 1) << 2) | (ll << 3));
    o(b);
}


static void gsym_addr(int t, int a)
{
    while (t) {
        unsigned char *ptr = tcc_state->cur_text_section->data + t;
        uint32_t n = read32le(ptr);
        write32le(ptr, a < 0 ? -a : a - t - 4);
        t = n;
    }
}

static int is64_type(int t)
{
    return ((t & 0x000f) == 5 ||
            (t & 0x000f) == 6 ||
            (t & 0x000f) == 4);
}


static int oad(int c, int s)
{
    int t;
    if (nocode_wanted)
        return s;
    o(c);
    t = ind;
    gen_le32(s);
    return t;
}




static void gen_addr32(int r, Sym *sym, int c)
{
    if (r & 0x0200)
        greloca(tcc_state->cur_text_section, sym, ind, 11, c), c=0;
    gen_le32(c);
}


static void gen_addr64(int r, Sym *sym, int64_t c)
{
    if (r & 0x0200)
        greloca(tcc_state->cur_text_section, sym, ind, 1, c), c=0;
    gen_le64(c);
}


static void gen_addrpc32(int r, Sym *sym, int c)
{
    if (r & 0x0200)
        greloca(tcc_state->cur_text_section, sym, ind, 2, c-4), c=4;
    gen_le32(c-4);
}


static void gen_gotpcrel(int r, Sym *sym, int c)
{
# 284 "../tinycc/x86_64-gen.c"
    greloca(tcc_state->cur_text_section, sym, ind, 9, -4);
    gen_le32(0);
    if (c) {

        orex(1, r, 0, 0x81);
        o(0xc0 + ((r) & 7));
        gen_le32(c);
    }
}

static void gen_modrm_impl(int op_reg, int r, Sym *sym, int c, int is_got)
{
    op_reg = ((op_reg) & 7) << 3;
    if ((r & 0x003f) == 0x0030) {

	if (!(r & 0x0200)) {

	    o(0x04 | op_reg);
	    oad(0x25, c);
	} else {
	    o(0x05 | op_reg);
	    if (is_got) {
		gen_gotpcrel(r, sym, c);
	    } else {
		gen_addrpc32(r, sym, c);
	    }
	}
    } else if ((r & 0x003f) == 0x0032) {

        if (c == (char)c) {

            o(0x45 | op_reg);
            g(c);
        } else {
            oad(0x85 | op_reg, c);
        }
    } else if ((r & 0x003f) >= TREG_MEM) {
        if (c) {
            g(0x80 | op_reg | ((r) & 7));
            gen_le32(c);
        } else {
            g(0x00 | op_reg | ((r) & 7));
        }
    } else {
        g(0x00 | op_reg | ((r) & 7));
    }
}



static void gen_modrm(int op_reg, int r, Sym *sym, int c)
{
    gen_modrm_impl(op_reg, r, sym, c, 0);
}



static void gen_modrm64(int opcode, int op_reg, int r, Sym *sym, int c)
{
    int is_got;
    is_got = (op_reg & TREG_MEM) && !(sym->type.t & 0x00002000);
    orex(1, r, op_reg, opcode);
    gen_modrm_impl(op_reg, r, sym, c, is_got);
}



void load(int r, SValue *sv)
{
    int v, t, ft, fc, fr;
    SValue v1;






    fr = sv->r;
    ft = sv->type.t & ~0x0020;
    fc = sv->c.i;
    if (fc != sv->c.i && (fr & 0x0200))
      _tcc_error("64 bit addend in load");

    ft &= ~(0x0200 | 0x0100);



    if ((fr & 0x003f) == 0x0030 && (fr & 0x0200) &&
        (fr & 0x0100) && !(sv->sym->type.t & 0x00002000)) {

        int tr = r | TREG_MEM;
        if (is_float(ft)) {

            tr = get_reg(0x0001) | TREG_MEM;
        }
        gen_modrm64(0x8b, tr, fr, sv->sym, 0);


        fr = tr | 0x0100;
    }


    v = fr & 0x003f;
    if (fr & 0x0100) {
        int b, ll;
        if (v == 0x0031) {
            v1.type.t = 5;
            v1.r = 0x0032 | 0x0100;
            v1.c.i = fc;
            fr = r;
            if (!(reg_classes[fr] & (0x0001|0x0800)))
                fr = get_reg(0x0001);
            load(fr, &v1);
        }
	if (fc != sv->c.i) {



	    v1.type.t = 4;
	    v1.r = 0x0030;
	    v1.c.i = sv->c.i;
	    fr = r;
	    if (!(reg_classes[fr] & (0x0001|0x0800)))
	        fr = get_reg(0x0001);
	    load(fr, &v1);
	    fc = 0;
	}
        ll = 0;




	if ((ft & 0x000f) == 7) {
	    int align;
	    switch (type_size(&sv->type, &align)) {
		case 1: ft = 1; break;
		case 2: ft = 2; break;
		case 4: ft = 3; break;
		case 8: ft = 4; break;
		default:
		    _tcc_error("invalid aggregate type for register load");
		    break;
	    }
	}
        if ((ft & 0x000f) == 8) {
            b = 0x6e0f66;
            r = ((r) & 7);
        } else if ((ft & 0x000f) == 9) {
            b = 0x7e0ff3;
            r = ((r) & 7);
        } else if ((ft & 0x000f) == 10) {
            b = 0xdb, r = 5;
        } else if ((ft & (~((0x00001000 | 0x00002000 | 0x00004000 | 0x00008000)|(((1U << (6+6)) - 1) << 20 | 0x0080)))) == 1 || (ft & (~((0x00001000 | 0x00002000 | 0x00004000 | 0x00008000)|(((1U << (6+6)) - 1) << 20 | 0x0080)))) == 11) {
            b = 0xbe0f;
        } else if ((ft & (~((0x00001000 | 0x00002000 | 0x00004000 | 0x00008000)|(((1U << (6+6)) - 1) << 20 | 0x0080)))) == (1 | 0x0010)) {
            b = 0xb60f;
        } else if ((ft & (~((0x00001000 | 0x00002000 | 0x00004000 | 0x00008000)|(((1U << (6+6)) - 1) << 20 | 0x0080)))) == 2) {
            b = 0xbf0f;
        } else if ((ft & (~((0x00001000 | 0x00002000 | 0x00004000 | 0x00008000)|(((1U << (6+6)) - 1) << 20 | 0x0080)))) == (2 | 0x0010)) {
            b = 0xb70f;
        } else if ((ft & (~((0x00001000 | 0x00002000 | 0x00004000 | 0x00008000)|(((1U << (6+6)) - 1) << 20 | 0x0080)))) == (0)) {

            return;
        } else {




            (__builtin_expect(!(((ft & 0x000f) == 3) || ((ft & 0x000f) == 4) || ((ft & 0x000f) == 5) || ((ft & 0x000f) == 6)), 0) ? __assert_rtn(__func__, "../tinycc/x86_64-gen.c", 452, "((ft & VT_BTYPE) == VT_INT) || ((ft & VT_BTYPE) == VT_LLONG) || ((ft & VT_BTYPE) == VT_PTR) || ((ft & VT_BTYPE) == VT_FUNC)") : (void)0);
            ll = is64_type(ft);
            b = 0x8b;
        }
        if (ll) {
            gen_modrm64(b, r, fr, sv->sym, fc);
        } else {
            orex(ll, fr, r, b);
            gen_modrm(r, fr, sv->sym, fc);
        }
    } else {
        if (v == 0x0030) {
            if (fr & 0x0200) {





                if (sv->sym->type.t & 0x00002000) {
                    orex(1,0,r,0x8d);
                    o(0x05 + ((r) & 7) * 8);
                    gen_addrpc32(fr, sv->sym, fc);
                } else {
                    orex(1,0,r,0x8b);
                    o(0x05 + ((r) & 7) * 8);
                    gen_gotpcrel(r, sv->sym, fc);
                }

            } else if (is64_type(ft)) {
                orex(1,r,0, 0xb8 + ((r) & 7));
                gen_le64(sv->c.i);
            } else {
                orex(0,r,0, 0xb8 + ((r) & 7));
                gen_le32(fc);
            }
        } else if (v == 0x0032) {
            orex(1,0,r,0x8d);
            gen_modrm(r, 0x0032, sv->sym, fc);
        } else if (v == 0x0033) {
	    if (fc & 0x100)
	      {
                v = vtop->cmp_r;
                fc &= ~0x100;



                orex(0, r, 0, 0xb0 + ((r) & 7));
                g(v ^ fc ^ (v == 0x95));
                o(0x037a + ((((r) >> 3) & 1) << 8));
              }
            orex(0,r,0, 0x0f);
            o(fc);
            o(0xc0 + ((r) & 7));
            orex(0,r,0, 0x0f);
            o(0xc0b6 + ((r) & 7) * 0x900);
        } else if (v == 0x0034 || v == 0x0035) {
            t = v & 1;
            orex(0,r,0,0);
            oad(0xb8 + ((r) & 7), t);
            o(0x05eb + ((((r) >> 3) & 1) << 8));
            gsym(fc);
            orex(0,r,0,0);
            oad(0xb8 + ((r) & 7), t ^ 1);
        } else if (v != r) {
            if ((r >= TREG_XMM0) && (r <= TREG_XMM7)) {
                if (v == TREG_ST0) {

                    o(0xf0245cdd);

                    o(0x100ff2);
                    o(0x44 + ((r) & 7)*8);
                    o(0xf024);
                } else {
                    (__builtin_expect(!((v >= TREG_XMM0) && (v <= TREG_XMM7)), 0) ? __assert_rtn(__func__, "../tinycc/x86_64-gen.c", 525, "(v >= TREG_XMM0) && (v <= TREG_XMM7)") : (void)0);
                    if ((ft & 0x000f) == 8) {
                        o(0x100ff3);
                    } else {
                        (__builtin_expect(!((ft & 0x000f) == 9), 0) ? __assert_rtn(__func__, "../tinycc/x86_64-gen.c", 529, "(ft & VT_BTYPE) == VT_DOUBLE") : (void)0);
                        o(0x100ff2);
                    }
                    o(0xc0 + ((v) & 7) + ((r) & 7)*8);
                }
            } else if (r == TREG_ST0) {
                (__builtin_expect(!((v >= TREG_XMM0) && (v <= TREG_XMM7)), 0) ? __assert_rtn(__func__, "../tinycc/x86_64-gen.c", 535, "(v >= TREG_XMM0) && (v <= TREG_XMM7)") : (void)0);


                o(0x110ff2);
                o(0x44 + ((r) & 7)*8);
                o(0xf024);
                o(0xf02444dd);
            } else {
                orex(is64_type(ft), r, v, 0x89);
                o(0xc0 + ((r) & 7) + ((v) & 7) * 8);
            }
        }
    }
}


void store(int r, SValue *v)
{
    int fr, bt, ft, fc;
    int op64 = 0;

    int pic = 0;






    fr = v->r & 0x003f;
    ft = v->type.t;
    fc = v->c.i;
    if (fc != v->c.i && (fr & 0x0200))
      _tcc_error("64 bit addend in store");
    ft &= ~(0x0200 | 0x0100);
    bt = ft & 0x000f;



    if (fr == 0x0030 && (v->r & 0x0200)) {

        o(0x1d8b4c);
        gen_gotpcrel(TREG_R11, v->sym, v->c.i);
        pic = is64_type(bt) ? 0x49 : 0x41;
    }



    if (bt == 8) {
        o(0x66);
        o(pic);
        o(0x7e0f);
        r = ((r) & 7);
    } else if (bt == 9) {
        o(0x66);
        o(pic);
        o(0xd60f);
        r = ((r) & 7);
    } else if (bt == 10) {
        o(0xc0d9);
        o(pic);
        o(0xdb);
        r = 7;
    } else {
        if (bt == 2)
            o(0x66);
        o(pic);
        if (bt == 1 || bt == 11)
            orex(0, 0, r, 0x88);
        else if (is64_type(bt))
            op64 = 0x89;
        else
            orex(0, 0, r, 0x89);
    }
    if (pic) {

        if (op64)
            o(op64);
        o(3 + (r << 3));
    } else if (op64) {
        if (fr == 0x0030 || fr == 0x0032 || (v->r & 0x0100)) {
            gen_modrm64(op64, r, v->r, v->sym, fc);
        } else if (fr != r) {
            orex(1, fr, r, op64);
            o(0xc0 + fr + r * 8);
        }
    } else {
        if (fr == 0x0030 || fr == 0x0032 || (v->r & 0x0100)) {
            gen_modrm(r, v->r, v->sym, fc);
        } else if (fr != r) {
            o(0xc0 + fr + r * 8);
        }
    }
}


static void gcall_or_jmp(int is_jmp)
{
    int r;
    if ((vtop->r & (0x003f | 0x0100)) == 0x0030 &&
	((vtop->r & 0x0200) && (vtop->c.i-4) == (int)(vtop->c.i-4))) {




        greloca(tcc_state->cur_text_section, vtop->sym, ind + 1, 4, (int)(vtop->c.i-4));

        oad(0xe8 + is_jmp, 0);
    } else {

        r = TREG_R11;
        load(r, vtop);
        o(0x41);
        o(0xff);
        o(0xd0 + ((r) & 7) + (is_jmp << 4));
    }
}



static void gen_bounds_call(int v)
{
    Sym *sym = external_global_sym(v, &func_old_type);
    oad(0xe8, 0);



    greloca(tcc_state->cur_text_section, sym, ind-4, 4, -4);

}







static void gen_bounds_prolog(void)
{

    func_bound_offset = tcc_state->lbounds_section->data_offset;
    func_bound_ind = ind;
    func_bound_add_epilog = 0;
    o(0xb848 + TREG_RDI * 0x100);
    gen_le64 (0);
    oad(0xb8, 0);
}

static void gen_bounds_epilog(void)
{
    Elf64_Addr saved_ind;
    Elf64_Addr *bounds_ptr;
    Sym *sym_data;
    int offset_modified = func_bound_offset != tcc_state->lbounds_section->data_offset;

    if (!offset_modified && !func_bound_add_epilog)
        return;


    bounds_ptr = section_ptr_add(tcc_state->lbounds_section, sizeof(Elf64_Addr));
    *bounds_ptr = 0;

    sym_data = get_sym_ref(&char_pointer_type, tcc_state->lbounds_section,
                           func_bound_offset, tcc_state->lbounds_section->data_offset);


    if (offset_modified) {
        saved_ind = ind;
        ind = func_bound_ind;
        greloca(tcc_state->cur_text_section, sym_data, ind + 2, 1, 0);
        ind = ind + 10;
        gen_bounds_call(TOK___bound_local_new);
        ind = saved_ind;
    }


    o(0x5250);
    greloca(tcc_state->cur_text_section, sym_data, ind + 2, 1, 0);
    o(0xb848 + TREG_RDI * 0x100);
    gen_le64 (0);
    gen_bounds_call(TOK___bound_local_delete);
    o(0x585a);
}
# 1046 "../tinycc/x86_64-gen.c"
static void gadd_sp(int val)
{
    if (val == (char)val) {
        o(0xc48348);
        g(val);
    } else {
        oad(0xc48148, val);
    }
}

typedef enum X86_64_Mode {
  x86_64_mode_none,
  x86_64_mode_memory,
  x86_64_mode_integer,
  x86_64_mode_sse,
  x86_64_mode_x87
} X86_64_Mode;

static X86_64_Mode classify_x86_64_merge(X86_64_Mode a, X86_64_Mode b)
{
    if (a == b)
        return a;
    else if (a == x86_64_mode_none)
        return b;
    else if (b == x86_64_mode_none)
        return a;
    else if ((a == x86_64_mode_memory) || (b == x86_64_mode_memory))
        return x86_64_mode_memory;
    else if ((a == x86_64_mode_integer) || (b == x86_64_mode_integer))
        return x86_64_mode_integer;
    else if ((a == x86_64_mode_x87) || (b == x86_64_mode_x87))
        return x86_64_mode_memory;
    else
        return x86_64_mode_sse;
}

static X86_64_Mode classify_x86_64_inner(CType *ty)
{
    X86_64_Mode mode;
    Sym *f;

    switch (ty->t & 0x000f) {
    case 0: return x86_64_mode_none;

    case 3:
    case 1:
    case 2:
    case 4:
    case 11:
    case 5:
    case 6:
        return x86_64_mode_integer;

    case 8:
    case 9: return x86_64_mode_sse;

    case 10: return x86_64_mode_x87;

    case 7:
        f = ty->ref;

        mode = x86_64_mode_none;
        for (f = f->next; f; f = f->next)
            mode = classify_x86_64_merge(mode, classify_x86_64_inner(&f->type));

        return mode;
    }
    (__builtin_expect(!(0), 0) ? __assert_rtn(__func__, "../tinycc/x86_64-gen.c", 1113, "0") : (void)0);
    return 0;
}

static X86_64_Mode classify_x86_64_arg(CType *ty, CType *ret, int *psize, int *palign, int *reg_count)
{
    X86_64_Mode mode;
    int size, align, ret_t = 0;

    if (ty->t & (0x0080|0x0040)) {
        *psize = 8;
        *palign = 8;
        *reg_count = 1;
        ret_t = ty->t;
        mode = x86_64_mode_integer;
    } else {
        size = type_size(ty, &align);
        *psize = (size + 7) & ~7;
        *palign = (align + 7) & ~7;

        if (size > 16) {
            mode = x86_64_mode_memory;
        } else {
            mode = classify_x86_64_inner(ty);
            switch (mode) {
            case x86_64_mode_integer:
                if (size > 8) {
                    *reg_count = 2;
                    ret_t = 13;
                } else {
                    *reg_count = 1;
                    if (size > 4)
                        ret_t = 4;
                    else if (size > 2)
                        ret_t = 3;
                    else if (size > 1)
                        ret_t = 2;
                    else
                        ret_t = 1;
                    if ((ty->t & 0x000f) == 7 || (ty->t & 0x0010))
                        ret_t |= 0x0010;
                }
                break;

            case x86_64_mode_x87:
                *reg_count = 1;
                ret_t = 10;
                break;

            case x86_64_mode_sse:
                if (size > 8) {
                    *reg_count = 2;
                    ret_t = 14;
                } else {
                    *reg_count = 1;
                    ret_t = (size > 4) ? 9 : 8;
                }
                break;
            default: break;
            }
        }
    }

    if (ret) {
        ret->ref = ((void *)0);
        ret->t = ret_t;
    }

    return mode;
}

static int classify_x86_64_va_arg(CType *ty)
{

    enum __va_arg_type {
        __va_gen_reg, __va_float_reg, __va_stack
    };
    int size, align, reg_count;
    X86_64_Mode mode = classify_x86_64_arg(ty, ((void *)0), &size, &align, &reg_count);
    switch (mode) {
    default: return __va_stack;
    case x86_64_mode_integer: return __va_gen_reg;
    case x86_64_mode_sse: return __va_float_reg;
    }
}



static int gfunc_sret(CType *vt, int variadic, CType *ret, int *ret_align, int *regsize)
{
    int size, align, reg_count;
    *ret_align = 1;
    *regsize = 8;
    return (classify_x86_64_arg(vt, ret, &size, &align, &reg_count) != x86_64_mode_memory);
}


static const uint8_t arg_regs[6] = {
    TREG_RDI, TREG_RSI, TREG_RDX, TREG_RCX, TREG_R8, TREG_R9
};

static int arg_prepare_reg(int idx) {
  if (idx == 2 || idx == 3)

      return idx + 8;
  else
      return arg_regs[idx];
}




void gfunc_call(int nb_args)
{
    X86_64_Mode mode;
    CType type;
    int size, align, r, args_size, stack_adjust, i, reg_count, k;
    int nb_reg_args = 0;
    int nb_sse_args = 0;
    int sse_reg, gen_reg;
    char *onstack = tcc_malloc((nb_args + 1) * sizeof (char));


    if (tcc_state->do_bounds_check)
        gbound_args(nb_args);






    stack_adjust = 0;
    for(i = nb_args - 1; i >= 0; i--) {
        mode = classify_x86_64_arg(&vtop[-i].type, ((void *)0), &size, &align, &reg_count);
        if (mode == x86_64_mode_sse && nb_sse_args + reg_count <= 8) {
            nb_sse_args += reg_count;
	    onstack[i] = 0;
	} else if (mode == x86_64_mode_integer && nb_reg_args + reg_count <= 6) {
            nb_reg_args += reg_count;
	    onstack[i] = 0;
	} else if (mode == x86_64_mode_none) {
	    onstack[i] = 0;
	} else {
	    if (align == 16 && (stack_adjust &= 15)) {
		onstack[i] = 2;
		stack_adjust = 0;
	    } else
	      onstack[i] = 1;
	    stack_adjust += size;
	}
    }

    if (nb_sse_args && tcc_state->nosse)
      _tcc_error("SSE disabled but floating point arguments passed");


    if ((vtop->r & 0x003f) == 0x0033)
      gv(0x0001);




    gen_reg = nb_reg_args;
    sse_reg = nb_sse_args;
    args_size = 0;
    stack_adjust &= 15;
    for (i = k = 0; i < nb_args;) {
	mode = classify_x86_64_arg(&vtop[-i].type, ((void *)0), &size, &align, &reg_count);
	if (!onstack[i + k]) {
	    ++i;
	    continue;
	}




        if (stack_adjust) {
	    o(0x50);
            args_size += 8;
	    stack_adjust = 0;
        }
	if (onstack[i + k] == 2)
	  stack_adjust = 1;

	vrotb(i+1);

	switch (vtop->type.t & 0x000f) {
	    case 7:

		o(0x48);
		oad(0xec81, size);

		r = get_reg(0x0001);
		orex(1, r, 0, 0x89);
		o(0xe0 + ((r) & 7));
		vset(&vtop->type, r | 0x0100, 0);
		vswap();
		vstore();
		break;

	    case 10:
                gv(0x0080);
                oad(0xec8148, size);
                o(0x7cdb);
                g(0x24);
                g(0x00);
		break;

	    case 8:
	    case 9:
		(__builtin_expect(!(mode == x86_64_mode_sse), 0) ? __assert_rtn(__func__, "../tinycc/x86_64-gen.c", 1323, "mode == x86_64_mode_sse") : (void)0);
		r = gv(0x0002);
		o(0x50);

		o(0xd60f66);
		o(0x04 + ((r) & 7)*8);
		o(0x24);
		break;

	    default:
		(__builtin_expect(!(mode == x86_64_mode_integer), 0) ? __assert_rtn(__func__, "../tinycc/x86_64-gen.c", 1333, "mode == x86_64_mode_integer") : (void)0);


		r = gv(0x0001);
		orex(0,r,0,0x50 + ((r) & 7));
		break;
	}
	args_size += size;

	vpop();
	--nb_args;
	k++;
    }

    tcc_free(onstack);


    save_regs(0);





    (__builtin_expect(!(gen_reg <= 6), 0) ? __assert_rtn(__func__, "../tinycc/x86_64-gen.c", 1356, "gen_reg <= REGN") : (void)0);
    (__builtin_expect(!(sse_reg <= 8), 0) ? __assert_rtn(__func__, "../tinycc/x86_64-gen.c", 1357, "sse_reg <= 8") : (void)0);
    for(i = 0; i < nb_args; i++) {
        mode = classify_x86_64_arg(&vtop->type, &type, &size, &align, &reg_count);

        vtop->type = type;
        if (mode == x86_64_mode_sse) {
            if (reg_count == 2) {
                sse_reg -= 2;
                gv(0x1000);
                if (sse_reg) {

                    o(0x280f);
                    o(0xc1 + ((sse_reg+1) << 3));

                    o(0x280f);
                    o(0xc0 + (sse_reg << 3));
                }
            } else {
                (__builtin_expect(!(reg_count == 1), 0) ? __assert_rtn(__func__, "../tinycc/x86_64-gen.c", 1375, "reg_count == 1") : (void)0);
                --sse_reg;

                gv(0x1000 << sse_reg);
            }
        } else if (mode == x86_64_mode_integer) {


            int d;
            gen_reg -= reg_count;
            r = gv(0x0001);
            d = arg_prepare_reg(gen_reg);
            orex(1,d,r,0x89);
            o(0xc0 + ((r) & 7) * 8 + ((d) & 7));
            if (reg_count == 2) {
                d = arg_prepare_reg(gen_reg+1);
                orex(1,d,vtop->r2,0x89);
                o(0xc0 + ((vtop->r2) & 7) * 8 + ((d) & 7));
            }
        }
        vtop--;
    }
    (__builtin_expect(!(gen_reg == 0), 0) ? __assert_rtn(__func__, "../tinycc/x86_64-gen.c", 1397, "gen_reg == 0") : (void)0);
    (__builtin_expect(!(sse_reg == 0), 0) ? __assert_rtn(__func__, "../tinycc/x86_64-gen.c", 1398, "sse_reg == 0") : (void)0);





    save_regs(0);


    if (nb_reg_args > 2) {
        o(0xd2894c);
        if (nb_reg_args > 3) {
            o(0xd9894c);
        }
    }

    if (vtop->type.ref->f.func_type != 1)
        oad(0xb8, nb_sse_args < 8 ? nb_sse_args : 8);
    gcall_or_jmp(0);
    if (args_size)
        gadd_sp(args_size);
    vtop--;
}



static void push_arg_reg(int i) {
    loc -= 8;
    gen_modrm64(0x89, arg_regs[i], 0x0032, ((void *)0), loc);
}


void gfunc_prolog(Sym *func_sym)
{
    CType *func_type = &func_sym->type;
    X86_64_Mode mode;
    int i, addr, align, size, reg_count;
    int param_addr = 0, reg_param_index, sse_param_index;
    Sym *sym;
    CType *type;

    sym = func_type->ref;
    addr = 8 * 2;
    loc = 0;
    ind += 11;
    func_sub_sp_offset = ind;
    func_ret_sub = 0;

    if (func_var) {
        int seen_reg_num, seen_sse_num, seen_stack_size;
        seen_reg_num = seen_sse_num = 0;

        seen_stack_size = 8 * 2;

        sym = func_type->ref;
        while ((sym = sym->next) != ((void *)0)) {
            type = &sym->type;
            mode = classify_x86_64_arg(type, ((void *)0), &size, &align, &reg_count);
            switch (mode) {
            default:
            stack_arg:
                seen_stack_size = ((seen_stack_size + align - 1) & -align) + size;
                break;

            case x86_64_mode_integer:
                if (seen_reg_num + reg_count > 6)
		    goto stack_arg;
		seen_reg_num += reg_count;
                break;

            case x86_64_mode_sse:
                if (seen_sse_num + reg_count > 8)
		    goto stack_arg;
		seen_sse_num += reg_count;
                break;
            }
        }

        loc -= 24;

        o(0xe845c7);
        gen_le32(seen_reg_num * 8);

        o(0xec45c7);
        gen_le32(seen_sse_num * 16 + 48);

	o(0x9d8d4c);
	gen_le32(seen_stack_size);

	o(0xf05d894c);

	o(0x9d8d4c);
	gen_le32(-176 - 24);

	o(0xf85d894c);


        for (i = 0; i < 8; i++) {
            loc -= 16;
	    if (!tcc_state->nosse) {
		o(0xd60f66);
		gen_modrm(7 - i, 0x0032, ((void *)0), loc);
	    }

            o(0x85c748);
            gen_le32(loc + 8);
            gen_le32(0);
        }
        for (i = 0; i < 6; i++) {
            push_arg_reg(6-1-i);
        }
    }

    sym = func_type->ref;
    reg_param_index = 0;
    sse_param_index = 0;



    mode = classify_x86_64_arg(&func_vt, ((void *)0), &size, &align, &reg_count);
    if (mode == x86_64_mode_memory) {
        push_arg_reg(reg_param_index);
        func_vc = loc;
        reg_param_index++;
    }

    while ((sym = sym->next) != ((void *)0)) {
        type = &sym->type;
        mode = classify_x86_64_arg(type, ((void *)0), &size, &align, &reg_count);
        switch (mode) {
        case x86_64_mode_sse:
	    if (tcc_state->nosse)
	        _tcc_error("SSE disabled but floating point arguments used");
            if (sse_param_index + reg_count <= 8) {

                loc -= reg_count * 8;
                param_addr = loc;
                for (i = 0; i < reg_count; ++i) {
                    o(0xd60f66);
                    gen_modrm(sse_param_index, 0x0032, ((void *)0), param_addr + i*8);
                    ++sse_param_index;
                }
            } else {
                addr = (addr + align - 1) & -align;
                param_addr = addr;
                addr += size;
            }
            break;

        case x86_64_mode_memory:
        case x86_64_mode_x87:
            addr = (addr + align - 1) & -align;
            param_addr = addr;
            addr += size;
            break;

        case x86_64_mode_integer: {
            if (reg_param_index + reg_count <= 6) {

                loc -= reg_count * 8;
                param_addr = loc;
                for (i = 0; i < reg_count; ++i) {
                    gen_modrm64(0x89, arg_regs[reg_param_index], 0x0032, ((void *)0), param_addr + i*8);
                    ++reg_param_index;
                }
            } else {
                addr = (addr + align - 1) & -align;
                param_addr = addr;
                addr += size;
            }
            break;
        }
	default: break;
        }
        sym_push(sym->v & ~0x20000000, type,
                 0x0032 | 0x0100, param_addr);
    }


    if (tcc_state->do_bounds_check)
        gen_bounds_prolog();

}


void gfunc_epilog(void)
{
    int v, saved_ind;


    if (tcc_state->do_bounds_check)
        gen_bounds_epilog();

    o(0xc9);
    if (func_ret_sub == 0) {
        o(0xc3);
    } else {
        o(0xc2);
        g(func_ret_sub);
        g(func_ret_sub >> 8);
    }

    v = (-loc + 15) & -16;
    saved_ind = ind;
    ind = func_sub_sp_offset - 11;
    o(0xe5894855);
    o(0xec8148);
    gen_le32(v);
    ind = saved_ind;
}



static void gen_fill_nops(int bytes)
{
    while (bytes--)
      g(0x90);
}


int gjmp(int t)
{
    return oad(0xe9,t);
}


void gjmp_addr(int a)
{
    int r;
    r = a - ind - 2;
    if (r == (char)r) {
        g(0xeb);
        g(r);
    } else {
        oad(0xe9, a - ind - 5);
    }
}

static int gjmp_append(int n, int t)
{
    void *p;

    if (n) {
        uint32_t n1 = n, n2;
        while ((n2 = read32le(p = tcc_state->cur_text_section->data + n1)))
            n1 = n2;
        write32le(p, t);
        t = n;
    }
    return t;
}

static int gjmp_cond(int op, int t)
{
        if (op & 0x100)
	  {







            int v = vtop->cmp_r;
            op &= ~0x100;
            if (op ^ v ^ (v != 0x95))
              o(0x067a);
	    else
	      {
	        g(0x0f);
		t = oad(0x8a,t);
	      }
	  }
        g(0x0f);
        t = oad(op - 16,t);
        return t;
}


void gen_opi(int op)
{
    int r, fr, opc, c;
    int ll, uu, cc;

    ll = is64_type(vtop[-1].type.t);
    uu = (vtop[-1].type.t & 0x0010) != 0;
    cc = (vtop->r & (0x003f | 0x0100 | 0x0200)) == 0x0030;

    switch(op) {
    case '+':
    case 0x87:
        opc = 0;
    gen_op8:
        if (cc && (!ll || (int)vtop->c.i == vtop->c.i)) {

            vswap();
            r = gv(0x0001);
            vswap();
            c = vtop->c.i;
            if (c == (char)c) {

                orex(ll, r, 0, 0x83);
                o(0xc0 | (opc << 3) | ((r) & 7));
                g(c);
            } else {
                orex(ll, r, 0, 0x81);
                oad(0xc0 | (opc << 3) | ((r) & 7), c);
            }
        } else {
            gv2(0x0001, 0x0001);
            r = vtop[-1].r;
            fr = vtop[0].r;
            orex(ll, r, fr, (opc << 3) | 0x01);
            o(0xc0 + ((r) & 7) + ((fr) & 7) * 8);
        }
        vtop--;
        if (op >= 0x92 && op <= 0x9f)
            vset_VT_CMP(op);
        break;
    case '-':
    case 0x89:
        opc = 5;
        goto gen_op8;
    case 0x88:
        opc = 2;
        goto gen_op8;
    case 0x8a:
        opc = 3;
        goto gen_op8;
    case '&':
        opc = 4;
        goto gen_op8;
    case '^':
        opc = 6;
        goto gen_op8;
    case '|':
        opc = 1;
        goto gen_op8;
    case '*':
        gv2(0x0001, 0x0001);
        r = vtop[-1].r;
        fr = vtop[0].r;
        orex(ll, fr, r, 0xaf0f);
        o(0xc0 + ((fr) & 7) + ((r) & 7) * 8);
        vtop--;
        break;
    case '<':
        opc = 4;
        goto gen_shift;
    case 0x8b:
        opc = 5;
        goto gen_shift;
    case '>':
        opc = 7;
    gen_shift:
        opc = 0xc0 | (opc << 3);
        if (cc) {

            vswap();
            r = gv(0x0001);
            vswap();
            orex(ll, r, 0, 0xc1);
            o(opc | ((r) & 7));
            g(vtop->c.i & (ll ? 63 : 31));
        } else {

            gv2(0x0001, 0x0008);
            r = vtop[-1].r;
            orex(ll, r, 0, 0xd3);
            o(opc | ((r) & 7));
        }
        vtop--;
        break;
    case 0x83:
    case 0x84:
        uu = 1;
        goto divmod;
    case '/':
    case '%':
    case 0x85:
        uu = 0;
    divmod:


        gv2(0x0004, 0x0008);
        r = vtop[-1].r;
        fr = vtop[0].r;
        vtop--;
        save_reg(TREG_RDX);
        orex(ll, 0, 0, uu ? 0xd231 : 0x99);
        orex(ll, fr, 0, 0xf7);
        o((uu ? 0xf0 : 0xf8) + ((fr) & 7));
        if (op == '%' || op == 0x84)
            r = TREG_RDX;
        else
            r = TREG_RAX;
        vtop->r = r;
        break;
    default:
        opc = 7;
        goto gen_op8;
    }
}

void gen_opl(int op)
{
    gen_opi(op);
}




void gen_opf(int op)
{
    int a, ft, fc, swapped, r;
    int float_type =
        (vtop->type.t & 0x000f) == 10 ? 0x0080 : 0x0002;


    if ((vtop[-1].r & (0x003f | 0x0100)) == 0x0030) {
        vswap();
        gv(float_type);
        vswap();
    }
    if ((vtop[0].r & (0x003f | 0x0100)) == 0x0030)
        gv(float_type);


    if ((vtop[-1].r & 0x0100) &&
        (vtop[0].r & 0x0100)) {
        vswap();
        gv(float_type);
        vswap();
    }
    swapped = 0;


    if (vtop[-1].r & 0x0100) {
        vswap();
        swapped = 1;
    }
    if ((vtop->type.t & 0x000f) == 10) {
        if (op >= 0x92 && op <= 0x9f) {

            load(TREG_ST0, vtop);
            save_reg(TREG_RAX);
            if (op == 0x9d || op == 0x9f)
                swapped = !swapped;
            else if (op == 0x94 || op == 0x95)
                swapped = 0;
            if (swapped)
                o(0xc9d9);
            if (op == 0x94 || op == 0x95)
                o(0xe9da);
            else
                o(0xd9de);
            o(0xe0df);
            if (op == 0x94) {
                o(0x45e480);
                o(0x40fC80);
            } else if (op == 0x95) {
                o(0x45e480);
                o(0x40f480);
                op = 0x95;
            } else if (op == 0x9d || op == 0x9e) {
                o(0x05c4f6);
                op = 0x94;
            } else {
                o(0x45c4f6);
                op = 0x94;
            }
            vtop--;
            vset_VT_CMP(op);
        } else {

            load(TREG_ST0, vtop);
            swapped = !swapped;

            switch(op) {
            default:
            case '+':
                a = 0;
                break;
            case '-':
                a = 4;
                if (swapped)
                    a++;
                break;
            case '*':
                a = 1;
                break;
            case '/':
                a = 6;
                if (swapped)
                    a++;
                break;
            }
            ft = vtop->type.t;
            fc = vtop->c.i;
            o(0xde);
            o(0xc1 + (a << 3));
            vtop--;
        }
    } else {
        if (op >= 0x92 && op <= 0x9f) {

            r = vtop->r;
            fc = vtop->c.i;
            if ((r & 0x003f) == 0x0031) {
                SValue v1;
                r = get_reg(0x0001);
                v1.type.t = 5;
                v1.r = 0x0032 | 0x0100;
                v1.c.i = fc;
                load(r, &v1);
                fc = 0;
                vtop->r = r = r | 0x0100;
            }

            if (op == 0x94 || op == 0x95) {
                swapped = 0;
            } else {
                if (op == 0x9e || op == 0x9c)
                    swapped = !swapped;
                if (op == 0x9e || op == 0x9d) {
                    op = 0x93;
                } else {
                    op = 0x97;
                }
            }

            if (swapped) {
                gv(0x0002);
                vswap();
            }
            (__builtin_expect(!(!(vtop[-1].r & 0x0100)), 0) ? __assert_rtn(__func__, "../tinycc/x86_64-gen.c", 1933, "!(vtop[-1].r & VT_LVAL)") : (void)0);

            if ((vtop->type.t & 0x000f) == 9)
                o(0x66);
            if (op == 0x94 || op == 0x95)
                o(0x2e0f);
            else
                o(0x2f0f);

            if (vtop->r & 0x0100) {
                gen_modrm(vtop[-1].r, r, vtop->sym, fc);
            } else {
                o(0xc0 + ((vtop[0].r) & 7) + ((vtop[-1].r) & 7)*8);
            }

            vtop--;
            vset_VT_CMP(op | 0x100);
            vtop->cmp_r = op;
        } else {
            (__builtin_expect(!((vtop->type.t & 0x000f) != 10), 0) ? __assert_rtn(__func__, "../tinycc/x86_64-gen.c", 1952, "(vtop->type.t & VT_BTYPE) != VT_LDOUBLE") : (void)0);
            switch(op) {
            default:
            case '+':
                a = 0;
                break;
            case '-':
                a = 4;
                break;
            case '*':
                a = 1;
                break;
            case '/':
                a = 6;
                break;
            }
            ft = vtop->type.t;
            fc = vtop->c.i;
            (__builtin_expect(!((ft & 0x000f) != 10), 0) ? __assert_rtn(__func__, "../tinycc/x86_64-gen.c", 1970, "(ft & VT_BTYPE) != VT_LDOUBLE") : (void)0);

            r = vtop->r;

            if ((vtop->r & 0x003f) == 0x0031) {
                SValue v1;
                r = get_reg(0x0001);
                v1.type.t = 5;
                v1.r = 0x0032 | 0x0100;
                v1.c.i = fc;
                load(r, &v1);
                fc = 0;
                vtop->r = r = r | 0x0100;
            }

            (__builtin_expect(!(!(vtop[-1].r & 0x0100)), 0) ? __assert_rtn(__func__, "../tinycc/x86_64-gen.c", 1985, "!(vtop[-1].r & VT_LVAL)") : (void)0);
            if (swapped) {
                (__builtin_expect(!(vtop->r & 0x0100), 0) ? __assert_rtn(__func__, "../tinycc/x86_64-gen.c", 1987, "vtop->r & VT_LVAL") : (void)0);
                gv(0x0002);
                vswap();
            }

            if ((ft & 0x000f) == 9) {
                o(0xf2);
            } else {
                o(0xf3);
            }
            o(0x0f);
            o(0x58 + a);

            if (vtop->r & 0x0100) {
                gen_modrm(vtop[-1].r, r, vtop->sym, fc);
            } else {
                o(0xc0 + ((vtop[0].r) & 7) + ((vtop[-1].r) & 7)*8);
            }

            vtop--;
        }
    }
}



void gen_cvt_itof(int t)
{
    if ((t & 0x000f) == 10) {
        save_reg(TREG_ST0);
        gv(0x0001);
        if ((vtop->type.t & 0x000f) == 4) {


            o(0x50 + (vtop->r & 0x003f));
            o(0x242cdf);
            o(0x08c48348);
        } else if ((vtop->type.t & (0x000f | 0x0010)) ==
                   (3 | 0x0010)) {

            o(0x6a);
            g(0x00);
            o(0x50 + (vtop->r & 0x003f));
            o(0x242cdf);
            o(0x10c48348);
        } else {

            o(0x50 + (vtop->r & 0x003f));
            o(0x2404db);
            o(0x08c48348);
        }
        vtop->r = TREG_ST0;
    } else {
        int r = get_reg(0x0002);
        gv(0x0001);
        o(0xf2 + ((t & 0x000f) == 8?1:0));
        if ((vtop->type.t & (0x000f | 0x0010)) ==
            (3 | 0x0010) ||
            (vtop->type.t & 0x000f) == 4) {
            o(0x48);
        }
        o(0x2a0f);
        o(0xc0 + (vtop->r & 0x003f) + ((r) & 7)*8);
        vtop->r = r;
    }
}


void gen_cvt_ftof(int t)
{
    int ft, bt, tbt;

    ft = vtop->type.t;
    bt = ft & 0x000f;
    tbt = t & 0x000f;

    if (bt == 8) {
        gv(0x0002);
        if (tbt == 9) {
            o(0x140f);
            o(0xc0 + ((vtop->r) & 7)*9);
            o(0x5a0f);
            o(0xc0 + ((vtop->r) & 7)*9);
        } else if (tbt == 10) {
            save_reg(0x0080);

            o(0x110ff3);
            o(0x44 + ((vtop->r) & 7)*8);
            o(0xf024);
            o(0xf02444d9);
            vtop->r = TREG_ST0;
        }
    } else if (bt == 9) {
        gv(0x0002);
        if (tbt == 8) {
            o(0x140f66);
            o(0xc0 + ((vtop->r) & 7)*9);
            o(0x5a0f66);
            o(0xc0 + ((vtop->r) & 7)*9);
        } else if (tbt == 10) {
            save_reg(0x0080);

            o(0x110ff2);
            o(0x44 + ((vtop->r) & 7)*8);
            o(0xf024);
            o(0xf02444dd);
            vtop->r = TREG_ST0;
        }
    } else {
        int r;
        gv(0x0080);
        r = get_reg(0x0002);
        if (tbt == 9) {
            o(0xf0245cdd);

            o(0x100ff2);
            o(0x44 + ((r) & 7)*8);
            o(0xf024);
            vtop->r = r;
        } else if (tbt == 8) {
            o(0xf0245cd9);

            o(0x100ff3);
            o(0x44 + ((r) & 7)*8);
            o(0xf024);
            vtop->r = r;
        }
    }
}


void gen_cvt_ftoi(int t)
{
    int ft, bt, size, r;
    ft = vtop->type.t;
    bt = ft & 0x000f;
    if (bt == 10) {
        gen_cvt_ftof(9);
        bt = 9;
    }

    gv(0x0002);
    if (t != 3)
        size = 8;
    else
        size = 4;

    r = get_reg(0x0001);
    if (bt == 8) {
        o(0xf3);
    } else if (bt == 9) {
        o(0xf2);
    } else {
        (__builtin_expect(!(0), 0) ? __assert_rtn(__func__, "../tinycc/x86_64-gen.c", 2140, "0") : (void)0);
    }
    orex(size == 8, r, 0, 0x2c0f);
    o(0xc0 + ((vtop->r) & 7) + ((r) & 7)*8);
    vtop->r = r;
}


static void gen_cvt_sxtw(void)
{
    int r = gv(0x0001);

    o(0x6348);
    o(0xc0 + (((r) & 7) << 3) + ((r) & 7));
}


static void gen_cvt_csti(int t)
{
    int r, sz, xl, ll;
    r = gv(0x0001);
    sz = !(t & 0x0010);
    xl = (t & 0x000f) == 2;
    ll = (vtop->type.t & 0x000f) == 4;
    orex(ll, r, 0, 0xc0b60f
        | (sz << 3 | xl) << 8
        | (((r) & 7) << 3 | ((r) & 7)) << 16
        );
}


void ggoto(void)
{
    gcall_or_jmp(1);
    vtop--;
}


static void gen_vla_sp_save(int addr) {

    gen_modrm64(0x89, TREG_RSP, 0x0032, ((void *)0), addr);
}


static void gen_vla_sp_restore(int addr) {
    gen_modrm64(0x8b, TREG_RSP, 0x0032, ((void *)0), addr);
}
# 2197 "../tinycc/x86_64-gen.c"
static void gen_vla_alloc(CType *type, int align) {
    int use_call = 0;


    use_call = tcc_state->do_bounds_check;




    if (use_call)
    {
        vpush_global_sym(&func_old_type, TOK_alloca);
        vswap();
        gfunc_call(1);
    }
    else {
        int r;
        r = gv(0x0001);

        o(0x2b48);
        o(0xe0 | ((r) & 7));


        o(0xf0e48348);
        vpop();
    }
}
# 44 "../tinycc/libtcc.c" 2
# 1 "../tinycc/x86_64-link.c" 1
# 23 "../tinycc/x86_64-link.c"
# 1 "../tinycc/tcc.h" 1
# 24 "../tinycc/x86_64-link.c" 2




int code_reloc (int reloc_type)
{
    switch (reloc_type) {
        case 10:
        case 11:
        case 1:
        case 26:
        case 29:
        case 9:
        case 41:
        case 42:
        case 22:
        case 3:
        case 27:
        case 6:
        case 5:
        case 8:
        case 25:
        case 19:
        case 20:
        case 21:
        case 23:
            return 0;

        case 2:
        case 24:
        case 4:
        case 31:
        case 7:
            return 1;
    }
    return -1;
}




int gotplt_entry_type (int reloc_type)
{
    switch (reloc_type) {
        case 6:
        case 7:
        case 5:
        case 8:
            return NO_GOTPLT_ENTRY;




        case 10:
        case 11:
        case 1:
        case 2:
        case 24:
            return AUTO_GOTPLT_ENTRY;

        case 22:
            return BUILD_GOT_ONLY;

        case 3:
        case 27:
        case 26:
        case 29:
        case 25:
        case 9:
        case 41:
        case 19:
        case 20:
        case 21:
        case 23:
        case 42:
        case 4:
        case 31:
            return ALWAYS_GOTPLT_ENTRY;
    }

    return -1;
}


static unsigned create_plt_entry(TCCState *s1, unsigned got_offset, struct sym_attr *attr)
{
    Section *plt = s1->plt;
    uint8_t *p;
    int modrm;
    unsigned plt_offset, relofs;

    modrm = 0x25;




    if (plt->data_offset == 0) {
        p = section_ptr_add(plt, 16);
        p[0] = 0xff;
        p[1] = modrm + 0x10;
        write32le(p + 2, 8);
        p[6] = 0xff;
        p[7] = modrm;
        write32le(p + 8, 8 * 2);
    }
    plt_offset = plt->data_offset;




    relofs = s1->got->reloc ? s1->got->reloc->data_offset : 0;


    p = section_ptr_add(plt, 16);
    p[0] = 0xff;
    p[1] = modrm;
    write32le(p + 2, got_offset);
    p[6] = 0x68;

    write32le(p + 7, relofs / sizeof (Elf64_Rela));
    p[11] = 0xe9;
    write32le(p + 12, -(plt->data_offset));
    return plt_offset;
}



static void relocate_plt(TCCState *s1)
{
    uint8_t *p, *p_end;

    if (!s1->plt)
      return;

    p = s1->plt->data;
    p_end = p + s1->plt->data_offset;

    if (p < p_end) {
        int x = s1->got->sh_addr - s1->plt->sh_addr - 6;
        add32le(p + 2, x);
        add32le(p + 8, x - 6);
        p += 16;
        while (p < p_end) {
            add32le(p + 2, x + (s1->plt->data - p));
            p += 16;
        }
    }
}



void relocate(TCCState *s1, Elf64_Rela *rel, int type, unsigned char *ptr, Elf64_Addr addr, Elf64_Addr val)
{
    int sym_index, esym_index;

    sym_index = ((rel->r_info) >> 32);

    switch (type) {
        case 1:
            if (s1->output_type == 3) {
                esym_index = get_sym_attr(s1, sym_index, 0)->dyn_index;
                s1->qrel->r_offset = rel->r_offset;
                if (esym_index) {
                    s1->qrel->r_info = ((((Elf64_Xword) (esym_index)) << 32) + (1));
                    s1->qrel->r_addend = rel->r_addend;
                    s1->qrel++;
                    break;
                } else {
                    s1->qrel->r_info = ((((Elf64_Xword) (0)) << 32) + (8));
                    s1->qrel->r_addend = read64le(ptr) + val;
                    s1->qrel++;
                }
            }
            add64le(ptr, val);
            break;
        case 10:
        case 11:
            if (s1->output_type == 3) {


                s1->qrel->r_offset = rel->r_offset;
                s1->qrel->r_info = ((((Elf64_Xword) (0)) << 32) + (8));

                s1->qrel->r_addend = (int)read32le(ptr) + val;
                s1->qrel++;
            }
            add32le(ptr, val);
            break;

        case 2:
            if (s1->output_type == 3) {

                esym_index = get_sym_attr(s1, sym_index, 0)->dyn_index;
                if (esym_index) {
                    s1->qrel->r_offset = rel->r_offset;
                    s1->qrel->r_info = ((((Elf64_Xword) (esym_index)) << 32) + (2));

                    s1->qrel->r_addend = (int)read32le(ptr) + rel->r_addend;
                    s1->qrel++;
                    break;
                }
            }
            goto plt32pc32;

        case 4:


        plt32pc32:
        {
            long long diff;
            diff = (long long)val - addr;
            if (diff < -2147483648LL || diff > 2147483647LL) {
                (tcc_enter_state(s1),_tcc_error)("internal error: relocation failed");
            }
            add32le(ptr, diff);
        }
            break;

        case 31:
            add64le(ptr, val - s1->got->sh_addr + rel->r_addend);
            break;

        case 24:
            if (s1->output_type == 3) {

                esym_index = get_sym_attr(s1, sym_index, 0)->dyn_index;
                if (esym_index) {
                    s1->qrel->r_offset = rel->r_offset;
                    s1->qrel->r_info = ((((Elf64_Xword) (esym_index)) << 32) + (24));
                    s1->qrel->r_addend = read64le(ptr) + rel->r_addend;
                    s1->qrel++;
                    break;
                }
            }
            add64le(ptr, val - addr);
            break;

        case 6:
        case 7:

            write64le(ptr, val - rel->r_addend);
            break;
        case 9:
        case 41:
        case 42:
            add32le(ptr, s1->got->sh_addr - addr +
                         get_sym_attr(s1, sym_index, 0)->got_offset - 4);
            break;
        case 26:
            add32le(ptr, s1->got->sh_addr - addr + rel->r_addend);
            break;
        case 29:
            add64le(ptr, s1->got->sh_addr - addr + rel->r_addend);
            break;
        case 22:
            add32le(ptr, val - s1->got->sh_addr);
            break;
        case 3:

            add32le(ptr, get_sym_attr(s1, sym_index, 0)->got_offset);
            break;
        case 27:

            add64le(ptr, get_sym_attr(s1, sym_index, 0)->got_offset);
            break;
        case 25:
            add64le(ptr, val - s1->got->sh_addr);
            break;
        case 19:
            {
                static const unsigned char expect[] = {

                    0x66, 0x48, 0x8d, 0x3d, 0x00, 0x00, 0x00, 0x00,

                    0x66, 0x66, 0x48, 0xe8, 0x00, 0x00, 0x00, 0x00 };
                static const unsigned char replace[] = {

                    0x64, 0x48, 0x8b, 0x04, 0x25, 0x00, 0x00, 0x00, 0x00,

                    0x48, 0x8d, 0x80, 0x00, 0x00, 0x00, 0x00 };

                if (memcmp (ptr-4, expect, sizeof(expect)) == 0) {
                    Elf64_Sym *sym;
                    Section *sec;
                    int32_t x;

                    memcpy(ptr-4, replace, sizeof(replace));
                    rel[1].r_info = ((((Elf64_Xword) (0)) << 32) + (0));
                    sym = &((Elf64_Sym *)s1->symtab_section->data)[sym_index];
                    sec = s1->sections[sym->st_shndx];
                    x = sym->st_value - sec->sh_addr - sec->data_offset;
                    add32le(ptr + 8, x);
                }
                else
                    (tcc_enter_state(s1),_tcc_error)("unexpected R_X86_64_TLSGD pattern");
            }
            break;
        case 20:
            {
                static const unsigned char expect[] = {

                    0x48, 0x8d, 0x3d, 0x00, 0x00, 0x00, 0x00,

                    0xe8, 0x00, 0x00, 0x00, 0x00 };
                static const unsigned char replace[] = {

                    0x66, 0x66, 0x66, 0x64, 0x48, 0x8b, 0x04, 0x25,
                    0x00, 0x00, 0x00, 0x00 };

                if (memcmp (ptr-3, expect, sizeof(expect)) == 0) {
                    memcpy(ptr-3, replace, sizeof(replace));
                    rel[1].r_info = ((((Elf64_Xword) (0)) << 32) + (0));
                }
                else
                    (tcc_enter_state(s1),_tcc_error)("unexpected R_X86_64_TLSLD pattern");
            }
            break;
        case 21:
        case 23:
            {
                Elf64_Sym *sym;
                Section *sec;
                int32_t x;

                sym = &((Elf64_Sym *)s1->symtab_section->data)[sym_index];
                sec = s1->sections[sym->st_shndx];
                x = val - sec->sh_addr - sec->data_offset;
                add32le(ptr, x);
            }
            break;
        case 0:
            break;
        case 8:




            break;
    }
}
# 45 "../tinycc/libtcc.c" 2
# 1 "../tinycc/i386-asm.c" 1
# 23 "../tinycc/i386-asm.c"
# 1 "../tinycc/tcc.h" 1
# 24 "../tinycc/i386-asm.c" 2
# 61 "../tinycc/i386-asm.c"
enum {
    OPT_REG8=0,
    OPT_REG16,
    OPT_REG32,

    OPT_REG64,

    OPT_MMX,
    OPT_SSE,
    OPT_CR,
    OPT_TR,
    OPT_DB,
    OPT_SEG,
    OPT_ST,

    OPT_REG8_LOW,


    OPT_IM8,
    OPT_IM8S,
    OPT_IM16,
    OPT_IM32,

    OPT_IM64,

    OPT_EAX,
    OPT_ST0,
    OPT_CL,
    OPT_DX,
    OPT_ADDR,
    OPT_INDIR,

    OPT_COMPOSITE_FIRST,
    OPT_IM,
    OPT_REG,
    OPT_REGW,
    OPT_IMW,
    OPT_MMXSSE,
    OPT_DISP,
    OPT_DISP8,

    OPT_EA = 0x80
};
# 150 "../tinycc/i386-asm.c"
typedef struct ASMInstr {
    uint16_t sym;
    uint16_t opcode;
    uint16_t instr_type;
    uint8_t nb_ops;
    uint8_t op_type[3];
} ASMInstr;

typedef struct Operand {
    uint32_t type;
    int8_t  reg;
    int8_t  reg2;
    uint8_t shift;
    ExprValue e;
} Operand;

static const uint8_t reg_to_size[9] = {
# 175 "../tinycc/i386-asm.c"
    0, 0, 1, 0, 2, 0, 0, 0, 3
};



static const uint8_t test_bits[30] = {
 0x00,
 0x01,
 0x02,
 0x02,
 0x02,
 0x03,
 0x03,
 0x03,
 0x04,
 0x04,
 0x05,
 0x05,
 0x06,
 0x06,
 0x07,
 0x07,
 0x08,
 0x09,
 0x0a,
 0x0a,
 0x0b,
 0x0b,
 0x0c,
 0x0c,
 0x0d,
 0x0d,
 0x0e,
 0x0e,
 0x0f,
 0x0f,
};

static const uint8_t segment_prefixes[] = {
 0x26,
 0x2e,
 0x36,
 0x3e,
 0x64,
 0x65
};

static const ASMInstr asm_instrs[] = {
# 234 "../tinycc/i386-asm.c"
# 1 "../tinycc/x86_64-asm.h" 1
# 41 "../tinycc/x86_64-asm.h"
{ TOK_ASM_cmpsb, ((uint64_t) ((((0xa6) & 0xff00) == 0x0f00) ? ((((0xa6) >> 8) & ~0xff) | ((0xa6) & 0xff)) : (0xa6))), (((0x01 | 0x1000)) | ((0) << 13) | ((((0xa6) & 0xff00) == 0x0f00) ? 0x100 : 0)), 0, { 0 } },
{ TOK_ASM_scmpb, ((uint64_t) ((((0xa6) & 0xff00) == 0x0f00) ? ((((0xa6) >> 8) & ~0xff) | ((0xa6) & 0xff)) : (0xa6))), (((0x01 | 0x1000)) | ((0) << 13) | ((((0xa6) & 0xff00) == 0x0f00) ? 0x100 : 0)), 0, { 0 } },

{ TOK_ASM_insb, ((uint64_t) ((((0x6c) & 0xff00) == 0x0f00) ? ((((0x6c) >> 8) & ~0xff) | ((0x6c) & 0xff)) : (0x6c))), (((0x01 | 0x02)) | ((0) << 13) | ((((0x6c) & 0xff00) == 0x0f00) ? 0x100 : 0)), 0, { 0 } },
{ TOK_ASM_outsb, ((uint64_t) ((((0x6e) & 0xff00) == 0x0f00) ? ((((0x6e) >> 8) & ~0xff) | ((0x6e) & 0xff)) : (0x6e))), (((0x01 | 0x02)) | ((0) << 13) | ((((0x6e) & 0xff00) == 0x0f00) ? 0x100 : 0)), 0, { 0 } },

{ TOK_ASM_lodsb, ((uint64_t) ((((0xac) & 0xff00) == 0x0f00) ? ((((0xac) >> 8) & ~0xff) | ((0xac) & 0xff)) : (0xac))), (((0x01 | 0x1000)) | ((0) << 13) | ((((0xac) & 0xff00) == 0x0f00) ? 0x100 : 0)), 0, { 0 } },
{ TOK_ASM_slodb, ((uint64_t) ((((0xac) & 0xff00) == 0x0f00) ? ((((0xac) >> 8) & ~0xff) | ((0xac) & 0xff)) : (0xac))), (((0x01 | 0x1000)) | ((0) << 13) | ((((0xac) & 0xff00) == 0x0f00) ? 0x100 : 0)), 0, { 0 } },

{ TOK_ASM_movsb, ((uint64_t) ((((0xa4) & 0xff00) == 0x0f00) ? ((((0xa4) >> 8) & ~0xff) | ((0xa4) & 0xff)) : (0xa4))), (((0x01 | 0x1000)) | ((0) << 13) | ((((0xa4) & 0xff00) == 0x0f00) ? 0x100 : 0)), 0, { 0 } },
{ TOK_ASM_smovb, ((uint64_t) ((((0xa4) & 0xff00) == 0x0f00) ? ((((0xa4) >> 8) & ~0xff) | ((0xa4) & 0xff)) : (0xa4))), (((0x01 | 0x1000)) | ((0) << 13) | ((((0xa4) & 0xff00) == 0x0f00) ? 0x100 : 0)), 0, { 0 } },

{ TOK_ASM_scasb, ((uint64_t) ((((0xae) & 0xff00) == 0x0f00) ? ((((0xae) >> 8) & ~0xff) | ((0xae) & 0xff)) : (0xae))), (((0x01 | 0x1000)) | ((0) << 13) | ((((0xae) & 0xff00) == 0x0f00) ? 0x100 : 0)), 0, { 0 } },
{ TOK_ASM_sscab, ((uint64_t) ((((0xae) & 0xff00) == 0x0f00) ? ((((0xae) >> 8) & ~0xff) | ((0xae) & 0xff)) : (0xae))), (((0x01 | 0x1000)) | ((0) << 13) | ((((0xae) & 0xff00) == 0x0f00) ? 0x100 : 0)), 0, { 0 } },

{ TOK_ASM_stosb, ((uint64_t) ((((0xaa) & 0xff00) == 0x0f00) ? ((((0xaa) >> 8) & ~0xff) | ((0xaa) & 0xff)) : (0xaa))), (((0x01 | 0x1000)) | ((0) << 13) | ((((0xaa) & 0xff00) == 0x0f00) ? 0x100 : 0)), 0, { 0 } },
{ TOK_ASM_sstob, ((uint64_t) ((((0xaa) & 0xff00) == 0x0f00) ? ((((0xaa) >> 8) & ~0xff) | ((0xaa) & 0xff)) : (0xaa))), (((0x01 | 0x1000)) | ((0) << 13) | ((((0xaa) & 0xff00) == 0x0f00) ? 0x100 : 0)), 0, { 0 } },



{ TOK_ASM_bsfw, ((uint64_t) ((((0x0fbc) & 0xff00) == 0x0f00) ? ((((0x0fbc) >> 8) & ~0xff) | ((0x0fbc) & 0xff)) : (0x0fbc))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x0fbc) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REGW | OPT_EA, OPT_REGW }},
{ TOK_ASM_bsrw, ((uint64_t) ((((0x0fbd) & 0xff00) == 0x0f00) ? ((((0x0fbd) >> 8) & ~0xff) | ((0x0fbd) & 0xff)) : (0x0fbd))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x0fbd) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REGW | OPT_EA, OPT_REGW }},

{ TOK_ASM_btw, ((uint64_t) ((((0x0fa3) & 0xff00) == 0x0f00) ? ((((0x0fa3) >> 8) & ~0xff) | ((0x0fa3) & 0xff)) : (0x0fa3))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x0fa3) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REGW, OPT_REGW | OPT_EA }},
{ TOK_ASM_btw, ((uint64_t) ((((0x0fba) & 0xff00) == 0x0f00) ? ((((0x0fba) >> 8) & ~0xff) | ((0x0fba) & 0xff)) : (0x0fba))), ((0x08 | 0x1000) | ((4) << 13) | ((((0x0fba) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IM8, OPT_REGW | OPT_EA }},

{ TOK_ASM_btsw, ((uint64_t) ((((0x0fab) & 0xff00) == 0x0f00) ? ((((0x0fab) >> 8) & ~0xff) | ((0x0fab) & 0xff)) : (0x0fab))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x0fab) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REGW, OPT_REGW | OPT_EA }},
{ TOK_ASM_btsw, ((uint64_t) ((((0x0fba) & 0xff00) == 0x0f00) ? ((((0x0fba) >> 8) & ~0xff) | ((0x0fba) & 0xff)) : (0x0fba))), ((0x08 | 0x1000) | ((5) << 13) | ((((0x0fba) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IM8, OPT_REGW | OPT_EA }},

{ TOK_ASM_btrw, ((uint64_t) ((((0x0fb3) & 0xff00) == 0x0f00) ? ((((0x0fb3) >> 8) & ~0xff) | ((0x0fb3) & 0xff)) : (0x0fb3))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x0fb3) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REGW, OPT_REGW | OPT_EA }},
{ TOK_ASM_btrw, ((uint64_t) ((((0x0fba) & 0xff00) == 0x0f00) ? ((((0x0fba) >> 8) & ~0xff) | ((0x0fba) & 0xff)) : (0x0fba))), ((0x08 | 0x1000) | ((6) << 13) | ((((0x0fba) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IM8, OPT_REGW | OPT_EA }},

{ TOK_ASM_btcw, ((uint64_t) ((((0x0fbb) & 0xff00) == 0x0f00) ? ((((0x0fbb) >> 8) & ~0xff) | ((0x0fbb) & 0xff)) : (0x0fbb))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x0fbb) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REGW, OPT_REGW | OPT_EA }},
{ TOK_ASM_btcw, ((uint64_t) ((((0x0fba) & 0xff00) == 0x0f00) ? ((((0x0fba) >> 8) & ~0xff) | ((0x0fba) & 0xff)) : (0x0fba))), ((0x08 | 0x1000) | ((7) << 13) | ((((0x0fba) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IM8, OPT_REGW | OPT_EA }},
# 94 "../tinycc/x86_64-asm.h"
     { TOK_ASM_sysretq, ((uint64_t) ((((0x480f07) & 0xff00) == 0x0f00) ? ((((0x480f07) >> 8) & ~0xff) | ((0x480f07) & 0xff)) : (0x480f07))), ((0) | ((0) << 13) | ((((0x480f07) & 0xff00) == 0x0f00) ? 0x100 : 0)), 0, { 0 } },







{ TOK_ASM_movb, ((uint64_t) ((((0x88) & 0xff00) == 0x0f00) ? ((((0x88) >> 8) & ~0xff) | ((0x88) & 0xff)) : (0x88))), ((0x08 | (0x01 | 0x1000)) | ((0) << 13) | ((((0x88) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REG, OPT_EA | OPT_REG }},
{ TOK_ASM_movb, ((uint64_t) ((((0x8a) & 0xff00) == 0x0f00) ? ((((0x8a) >> 8) & ~0xff) | ((0x8a) & 0xff)) : (0x8a))), ((0x08 | (0x01 | 0x1000)) | ((0) << 13) | ((((0x8a) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_REG, OPT_REG }},




{ TOK_ASM_movb, ((uint64_t) ((((0xb0) & 0xff00) == 0x0f00) ? ((((0xb0) >> 8) & ~0xff) | ((0xb0) & 0xff)) : (0xb0))), ((0x04 | (0x01 | 0x1000)) | ((0) << 13) | ((((0xb0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IM, OPT_REG }},
{ TOK_ASM_mov, ((uint64_t) ((((0xb8) & 0xff00) == 0x0f00) ? ((((0xb8) >> 8) & ~0xff) | ((0xb8) & 0xff)) : (0xb8))), ((0x04) | ((0) << 13) | ((((0xb8) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IM64, OPT_REG64 }},
{ TOK_ASM_movq, ((uint64_t) ((((0xb8) & 0xff00) == 0x0f00) ? ((((0xb8) >> 8) & ~0xff) | ((0xb8) & 0xff)) : (0xb8))), ((0x04) | ((0) << 13) | ((((0xb8) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IM64, OPT_REG64 }},
{ TOK_ASM_movb, ((uint64_t) ((((0xc6) & 0xff00) == 0x0f00) ? ((((0xc6) >> 8) & ~0xff) | ((0xc6) & 0xff)) : (0xc6))), ((0x08 | (0x01 | 0x1000)) | ((0) << 13) | ((((0xc6) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IM, OPT_REG | OPT_EA }},

{ TOK_ASM_movw, ((uint64_t) ((((0x8c) & 0xff00) == 0x0f00) ? ((((0x8c) >> 8) & ~0xff) | ((0x8c) & 0xff)) : (0x8c))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x8c) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_SEG, OPT_EA | OPT_REG }},
{ TOK_ASM_movw, ((uint64_t) ((((0x8e) & 0xff00) == 0x0f00) ? ((((0x8e) >> 8) & ~0xff) | ((0x8e) & 0xff)) : (0x8e))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x8e) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_REG, OPT_SEG }},

{ TOK_ASM_movw, ((uint64_t) ((((0x0f20) & 0xff00) == 0x0f00) ? ((((0x0f20) >> 8) & ~0xff) | ((0x0f20) & 0xff)) : (0x0f20))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x0f20) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_CR, OPT_REG64 }},
{ TOK_ASM_movw, ((uint64_t) ((((0x0f21) & 0xff00) == 0x0f00) ? ((((0x0f21) >> 8) & ~0xff) | ((0x0f21) & 0xff)) : (0x0f21))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x0f21) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_DB, OPT_REG64 }},
{ TOK_ASM_movw, ((uint64_t) ((((0x0f22) & 0xff00) == 0x0f00) ? ((((0x0f22) >> 8) & ~0xff) | ((0x0f22) & 0xff)) : (0x0f22))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x0f22) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REG64, OPT_CR }},
{ TOK_ASM_movw, ((uint64_t) ((((0x0f23) & 0xff00) == 0x0f00) ? ((((0x0f23) >> 8) & ~0xff) | ((0x0f23) & 0xff)) : (0x0f23))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x0f23) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REG64, OPT_DB }},

{ TOK_ASM_movsbw, ((uint64_t) ((((0x660fbe) & 0xff00) == 0x0f00) ? ((((0x660fbe) >> 8) & ~0xff) | ((0x660fbe) & 0xff)) : (0x660fbe))), ((0x08) | ((0) << 13) | ((((0x660fbe) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REG8 | OPT_EA, OPT_REG16 }},
{ TOK_ASM_movsbl, ((uint64_t) ((((0x0fbe) & 0xff00) == 0x0f00) ? ((((0x0fbe) >> 8) & ~0xff) | ((0x0fbe) & 0xff)) : (0x0fbe))), ((0x08) | ((0) << 13) | ((((0x0fbe) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REG8 | OPT_EA, OPT_REG32 }},
{ TOK_ASM_movsbq, ((uint64_t) ((((0x0fbe) & 0xff00) == 0x0f00) ? ((((0x0fbe) >> 8) & ~0xff) | ((0x0fbe) & 0xff)) : (0x0fbe))), ((0x08) | ((0) << 13) | ((((0x0fbe) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REG8 | OPT_EA, OPT_REGW }},
{ TOK_ASM_movswl, ((uint64_t) ((((0x0fbf) & 0xff00) == 0x0f00) ? ((((0x0fbf) >> 8) & ~0xff) | ((0x0fbf) & 0xff)) : (0x0fbf))), ((0x08) | ((0) << 13) | ((((0x0fbf) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REG16 | OPT_EA, OPT_REG32 }},
{ TOK_ASM_movswq, ((uint64_t) ((((0x0fbf) & 0xff00) == 0x0f00) ? ((((0x0fbf) >> 8) & ~0xff) | ((0x0fbf) & 0xff)) : (0x0fbf))), ((0x08) | ((0) << 13) | ((((0x0fbf) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REG16 | OPT_EA, OPT_REG }},
{ TOK_ASM_movslq, ((uint64_t) ((((0x63) & 0xff00) == 0x0f00) ? ((((0x63) >> 8) & ~0xff) | ((0x63) & 0xff)) : (0x63))), ((0x08) | ((0) << 13) | ((((0x63) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REG32 | OPT_EA, OPT_REG }},
{ TOK_ASM_movzbw, ((uint64_t) ((((0x0fb6) & 0xff00) == 0x0f00) ? ((((0x0fb6) >> 8) & ~0xff) | ((0x0fb6) & 0xff)) : (0x0fb6))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x0fb6) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REG8 | OPT_EA, OPT_REGW }},
{ TOK_ASM_movzwl, ((uint64_t) ((((0x0fb7) & 0xff00) == 0x0f00) ? ((((0x0fb7) >> 8) & ~0xff) | ((0x0fb7) & 0xff)) : (0x0fb7))), ((0x08) | ((0) << 13) | ((((0x0fb7) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REG16 | OPT_EA, OPT_REG32 }},
{ TOK_ASM_movzwq, ((uint64_t) ((((0x0fb7) & 0xff00) == 0x0f00) ? ((((0x0fb7) >> 8) & ~0xff) | ((0x0fb7) & 0xff)) : (0x0fb7))), ((0x08) | ((0) << 13) | ((((0x0fb7) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REG16 | OPT_EA, OPT_REG }},

{ TOK_ASM_pushq, ((uint64_t) ((((0x6a) & 0xff00) == 0x0f00) ? ((((0x6a) >> 8) & ~0xff) | ((0x6a) & 0xff)) : (0x6a))), ((0) | ((0) << 13) | ((((0x6a) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_IM8S }},
{ TOK_ASM_push, ((uint64_t) ((((0x6a) & 0xff00) == 0x0f00) ? ((((0x6a) >> 8) & ~0xff) | ((0x6a) & 0xff)) : (0x6a))), ((0) | ((0) << 13) | ((((0x6a) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_IM8S }},
{ TOK_ASM_pushw, ((uint64_t) ((((0x666a) & 0xff00) == 0x0f00) ? ((((0x666a) >> 8) & ~0xff) | ((0x666a) & 0xff)) : (0x666a))), ((0) | ((0) << 13) | ((((0x666a) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_IM8S }},
{ TOK_ASM_pushw, ((uint64_t) ((((0x50) & 0xff00) == 0x0f00) ? ((((0x50) >> 8) & ~0xff) | ((0x50) & 0xff)) : (0x50))), ((0x04 | 0x1000) | ((0) << 13) | ((((0x50) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REG64 }},
{ TOK_ASM_pushw, ((uint64_t) ((((0x50) & 0xff00) == 0x0f00) ? ((((0x50) >> 8) & ~0xff) | ((0x50) & 0xff)) : (0x50))), ((0x04 | 0x1000) | ((0) << 13) | ((((0x50) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REG16 }},
{ TOK_ASM_pushw, ((uint64_t) ((((0xff) & 0xff00) == 0x0f00) ? ((((0xff) >> 8) & ~0xff) | ((0xff) & 0xff)) : (0xff))), ((0x08 | 0x1000) | ((6) << 13) | ((((0xff) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REG64 | OPT_EA }},
{ TOK_ASM_pushw, ((uint64_t) ((((0x6668) & 0xff00) == 0x0f00) ? ((((0x6668) >> 8) & ~0xff) | ((0x6668) & 0xff)) : (0x6668))), ((0) | ((0) << 13) | ((((0x6668) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_IM16 }},
{ TOK_ASM_pushw, ((uint64_t) ((((0x68) & 0xff00) == 0x0f00) ? ((((0x68) >> 8) & ~0xff) | ((0x68) & 0xff)) : (0x68))), ((0x1000) | ((0) << 13) | ((((0x68) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_IM32 }},
{ TOK_ASM_pushw, ((uint64_t) ((((0x06) & 0xff00) == 0x0f00) ? ((((0x06) >> 8) & ~0xff) | ((0x06) & 0xff)) : (0x06))), ((0x1000) | ((0) << 13) | ((((0x06) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_SEG }},

{ TOK_ASM_popw, ((uint64_t) ((((0x58) & 0xff00) == 0x0f00) ? ((((0x58) >> 8) & ~0xff) | ((0x58) & 0xff)) : (0x58))), ((0x04 | 0x1000) | ((0) << 13) | ((((0x58) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REG64 }},
{ TOK_ASM_popw, ((uint64_t) ((((0x58) & 0xff00) == 0x0f00) ? ((((0x58) >> 8) & ~0xff) | ((0x58) & 0xff)) : (0x58))), ((0x04 | 0x1000) | ((0) << 13) | ((((0x58) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REG16 }},
{ TOK_ASM_popw, ((uint64_t) ((((0x8f) & 0xff00) == 0x0f00) ? ((((0x8f) >> 8) & ~0xff) | ((0x8f) & 0xff)) : (0x8f))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x8f) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REGW | OPT_EA }},
{ TOK_ASM_popw, ((uint64_t) ((((0x07) & 0xff00) == 0x0f00) ? ((((0x07) >> 8) & ~0xff) | ((0x07) & 0xff)) : (0x07))), ((0x1000) | ((0) << 13) | ((((0x07) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_SEG }},

{ TOK_ASM_xchgw, ((uint64_t) ((((0x90) & 0xff00) == 0x0f00) ? ((((0x90) >> 8) & ~0xff) | ((0x90) & 0xff)) : (0x90))), ((0x04 | 0x1000) | ((0) << 13) | ((((0x90) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REGW, OPT_EAX }},
{ TOK_ASM_xchgw, ((uint64_t) ((((0x90) & 0xff00) == 0x0f00) ? ((((0x90) >> 8) & ~0xff) | ((0x90) & 0xff)) : (0x90))), ((0x04 | 0x1000) | ((0) << 13) | ((((0x90) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EAX, OPT_REGW }},
{ TOK_ASM_xchgb, ((uint64_t) ((((0x86) & 0xff00) == 0x0f00) ? ((((0x86) >> 8) & ~0xff) | ((0x86) & 0xff)) : (0x86))), ((0x08 | (0x01 | 0x1000)) | ((0) << 13) | ((((0x86) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REG, OPT_EA | OPT_REG }},
{ TOK_ASM_xchgb, ((uint64_t) ((((0x86) & 0xff00) == 0x0f00) ? ((((0x86) >> 8) & ~0xff) | ((0x86) & 0xff)) : (0x86))), ((0x08 | (0x01 | 0x1000)) | ((0) << 13) | ((((0x86) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_REG, OPT_REG }},

{ TOK_ASM_inb, ((uint64_t) ((((0xe4) & 0xff00) == 0x0f00) ? ((((0xe4) >> 8) & ~0xff) | ((0xe4) & 0xff)) : (0xe4))), (((0x01 | 0x02)) | ((0) << 13) | ((((0xe4) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IM8, OPT_EAX }},
{ TOK_ASM_inb, ((uint64_t) ((((0xe4) & 0xff00) == 0x0f00) ? ((((0xe4) >> 8) & ~0xff) | ((0xe4) & 0xff)) : (0xe4))), (((0x01 | 0x02)) | ((0) << 13) | ((((0xe4) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_IM8 }},
{ TOK_ASM_inb, ((uint64_t) ((((0xec) & 0xff00) == 0x0f00) ? ((((0xec) >> 8) & ~0xff) | ((0xec) & 0xff)) : (0xec))), (((0x01 | 0x02)) | ((0) << 13) | ((((0xec) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_DX, OPT_EAX }},
{ TOK_ASM_inb, ((uint64_t) ((((0xec) & 0xff00) == 0x0f00) ? ((((0xec) >> 8) & ~0xff) | ((0xec) & 0xff)) : (0xec))), (((0x01 | 0x02)) | ((0) << 13) | ((((0xec) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_DX }},

{ TOK_ASM_outb, ((uint64_t) ((((0xe6) & 0xff00) == 0x0f00) ? ((((0xe6) >> 8) & ~0xff) | ((0xe6) & 0xff)) : (0xe6))), (((0x01 | 0x02)) | ((0) << 13) | ((((0xe6) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EAX, OPT_IM8 }},
{ TOK_ASM_outb, ((uint64_t) ((((0xe6) & 0xff00) == 0x0f00) ? ((((0xe6) >> 8) & ~0xff) | ((0xe6) & 0xff)) : (0xe6))), (((0x01 | 0x02)) | ((0) << 13) | ((((0xe6) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_IM8 }},
{ TOK_ASM_outb, ((uint64_t) ((((0xee) & 0xff00) == 0x0f00) ? ((((0xee) >> 8) & ~0xff) | ((0xee) & 0xff)) : (0xee))), (((0x01 | 0x02)) | ((0) << 13) | ((((0xee) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EAX, OPT_DX }},
{ TOK_ASM_outb, ((uint64_t) ((((0xee) & 0xff00) == 0x0f00) ? ((((0xee) >> 8) & ~0xff) | ((0xee) & 0xff)) : (0xee))), (((0x01 | 0x02)) | ((0) << 13) | ((((0xee) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_DX }},

{ TOK_ASM_leaw, ((uint64_t) ((((0x8d) & 0xff00) == 0x0f00) ? ((((0x8d) >> 8) & ~0xff) | ((0x8d) & 0xff)) : (0x8d))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x8d) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA, OPT_REG }},

{ TOK_ASM_les, ((uint64_t) ((((0xc4) & 0xff00) == 0x0f00) ? ((((0xc4) >> 8) & ~0xff) | ((0xc4) & 0xff)) : (0xc4))), ((0x08) | ((0) << 13) | ((((0xc4) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA, OPT_REG32 }},
{ TOK_ASM_lds, ((uint64_t) ((((0xc5) & 0xff00) == 0x0f00) ? ((((0xc5) >> 8) & ~0xff) | ((0xc5) & 0xff)) : (0xc5))), ((0x08) | ((0) << 13) | ((((0xc5) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA, OPT_REG32 }},
{ TOK_ASM_lss, ((uint64_t) ((((0x0fb2) & 0xff00) == 0x0f00) ? ((((0x0fb2) >> 8) & ~0xff) | ((0x0fb2) & 0xff)) : (0x0fb2))), ((0x08) | ((0) << 13) | ((((0x0fb2) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA, OPT_REG32 }},
{ TOK_ASM_lfs, ((uint64_t) ((((0x0fb4) & 0xff00) == 0x0f00) ? ((((0x0fb4) >> 8) & ~0xff) | ((0x0fb4) & 0xff)) : (0x0fb4))), ((0x08) | ((0) << 13) | ((((0x0fb4) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA, OPT_REG32 }},
{ TOK_ASM_lgs, ((uint64_t) ((((0x0fb5) & 0xff00) == 0x0f00) ? ((((0x0fb5) >> 8) & ~0xff) | ((0x0fb5) & 0xff)) : (0x0fb5))), ((0x08) | ((0) << 13) | ((((0x0fb5) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA, OPT_REG32 }},


{ TOK_ASM_addb, ((uint64_t) ((((0x00) & 0xff00) == 0x0f00) ? ((((0x00) >> 8) & ~0xff) | ((0x00) & 0xff)) : (0x00))), ((0x30 | 0x08 | (0x01 | 0x1000)) | ((0) << 13) | ((((0x00) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REG, OPT_EA | OPT_REG }},
{ TOK_ASM_addb, ((uint64_t) ((((0x02) & 0xff00) == 0x0f00) ? ((((0x02) >> 8) & ~0xff) | ((0x02) & 0xff)) : (0x02))), ((0x30 | 0x08 | (0x01 | 0x1000)) | ((0) << 13) | ((((0x02) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_REG, OPT_REG }},
{ TOK_ASM_addb, ((uint64_t) ((((0x04) & 0xff00) == 0x0f00) ? ((((0x04) >> 8) & ~0xff) | ((0x04) & 0xff)) : (0x04))), ((0x30 | (0x01 | 0x1000)) | ((0) << 13) | ((((0x04) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IM, OPT_EAX }},
{ TOK_ASM_addw, ((uint64_t) ((((0x83) & 0xff00) == 0x0f00) ? ((((0x83) >> 8) & ~0xff) | ((0x83) & 0xff)) : (0x83))), ((0x30 | 0x08 | 0x1000) | ((0) << 13) | ((((0x83) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IM8S, OPT_EA | OPT_REGW }},
{ TOK_ASM_addb, ((uint64_t) ((((0x80) & 0xff00) == 0x0f00) ? ((((0x80) >> 8) & ~0xff) | ((0x80) & 0xff)) : (0x80))), ((0x30 | 0x08 | (0x01 | 0x1000)) | ((0) << 13) | ((((0x80) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IM, OPT_EA | OPT_REG }},

{ TOK_ASM_testb, ((uint64_t) ((((0x84) & 0xff00) == 0x0f00) ? ((((0x84) >> 8) & ~0xff) | ((0x84) & 0xff)) : (0x84))), ((0x08 | (0x01 | 0x1000)) | ((0) << 13) | ((((0x84) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REG, OPT_EA | OPT_REG }},
{ TOK_ASM_testb, ((uint64_t) ((((0x84) & 0xff00) == 0x0f00) ? ((((0x84) >> 8) & ~0xff) | ((0x84) & 0xff)) : (0x84))), ((0x08 | (0x01 | 0x1000)) | ((0) << 13) | ((((0x84) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_REG, OPT_REG }},
{ TOK_ASM_testb, ((uint64_t) ((((0xa8) & 0xff00) == 0x0f00) ? ((((0xa8) >> 8) & ~0xff) | ((0xa8) & 0xff)) : (0xa8))), (((0x01 | 0x1000)) | ((0) << 13) | ((((0xa8) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IM, OPT_EAX }},
{ TOK_ASM_testb, ((uint64_t) ((((0xf6) & 0xff00) == 0x0f00) ? ((((0xf6) >> 8) & ~0xff) | ((0xf6) & 0xff)) : (0xf6))), ((0x08 | (0x01 | 0x1000)) | ((0) << 13) | ((((0xf6) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IM, OPT_EA | OPT_REG }},

{ TOK_ASM_incb, ((uint64_t) ((((0xfe) & 0xff00) == 0x0f00) ? ((((0xfe) >> 8) & ~0xff) | ((0xfe) & 0xff)) : (0xfe))), ((0x08 | (0x01 | 0x1000)) | ((0) << 13) | ((((0xfe) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REG | OPT_EA }},
{ TOK_ASM_decb, ((uint64_t) ((((0xfe) & 0xff00) == 0x0f00) ? ((((0xfe) >> 8) & ~0xff) | ((0xfe) & 0xff)) : (0xfe))), ((0x08 | (0x01 | 0x1000)) | ((1) << 13) | ((((0xfe) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REG | OPT_EA }},

{ TOK_ASM_notb, ((uint64_t) ((((0xf6) & 0xff00) == 0x0f00) ? ((((0xf6) >> 8) & ~0xff) | ((0xf6) & 0xff)) : (0xf6))), ((0x08 | (0x01 | 0x1000)) | ((2) << 13) | ((((0xf6) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REG | OPT_EA }},
{ TOK_ASM_negb, ((uint64_t) ((((0xf6) & 0xff00) == 0x0f00) ? ((((0xf6) >> 8) & ~0xff) | ((0xf6) & 0xff)) : (0xf6))), ((0x08 | (0x01 | 0x1000)) | ((3) << 13) | ((((0xf6) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REG | OPT_EA }},

{ TOK_ASM_mulb, ((uint64_t) ((((0xf6) & 0xff00) == 0x0f00) ? ((((0xf6) >> 8) & ~0xff) | ((0xf6) & 0xff)) : (0xf6))), ((0x08 | (0x01 | 0x1000)) | ((4) << 13) | ((((0xf6) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REG | OPT_EA }},
{ TOK_ASM_imulb, ((uint64_t) ((((0xf6) & 0xff00) == 0x0f00) ? ((((0xf6) >> 8) & ~0xff) | ((0xf6) & 0xff)) : (0xf6))), ((0x08 | (0x01 | 0x1000)) | ((5) << 13) | ((((0xf6) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REG | OPT_EA }},

{ TOK_ASM_imulw, ((uint64_t) ((((0x0faf) & 0xff00) == 0x0f00) ? ((((0x0faf) >> 8) & ~0xff) | ((0x0faf) & 0xff)) : (0x0faf))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x0faf) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REG | OPT_EA, OPT_REG }},
{ TOK_ASM_imulw, ((uint64_t) ((((0x6b) & 0xff00) == 0x0f00) ? ((((0x6b) >> 8) & ~0xff) | ((0x6b) & 0xff)) : (0x6b))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x6b) & 0xff00) == 0x0f00) ? 0x100 : 0)), 3, { OPT_IM8S, OPT_REGW | OPT_EA, OPT_REGW }},
{ TOK_ASM_imulw, ((uint64_t) ((((0x6b) & 0xff00) == 0x0f00) ? ((((0x6b) >> 8) & ~0xff) | ((0x6b) & 0xff)) : (0x6b))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x6b) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IM8S, OPT_REGW }},
{ TOK_ASM_imulw, ((uint64_t) ((((0x69) & 0xff00) == 0x0f00) ? ((((0x69) >> 8) & ~0xff) | ((0x69) & 0xff)) : (0x69))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x69) & 0xff00) == 0x0f00) ? 0x100 : 0)), 3, { OPT_IMW, OPT_REGW | OPT_EA, OPT_REGW }},
{ TOK_ASM_imulw, ((uint64_t) ((((0x69) & 0xff00) == 0x0f00) ? ((((0x69) >> 8) & ~0xff) | ((0x69) & 0xff)) : (0x69))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x69) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IMW, OPT_REGW }},

{ TOK_ASM_divb, ((uint64_t) ((((0xf6) & 0xff00) == 0x0f00) ? ((((0xf6) >> 8) & ~0xff) | ((0xf6) & 0xff)) : (0xf6))), ((0x08 | (0x01 | 0x1000)) | ((6) << 13) | ((((0xf6) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REG | OPT_EA }},
{ TOK_ASM_divb, ((uint64_t) ((((0xf6) & 0xff00) == 0x0f00) ? ((((0xf6) >> 8) & ~0xff) | ((0xf6) & 0xff)) : (0xf6))), ((0x08 | (0x01 | 0x1000)) | ((6) << 13) | ((((0xf6) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REG | OPT_EA, OPT_EAX }},
{ TOK_ASM_idivb, ((uint64_t) ((((0xf6) & 0xff00) == 0x0f00) ? ((((0xf6) >> 8) & ~0xff) | ((0xf6) & 0xff)) : (0xf6))), ((0x08 | (0x01 | 0x1000)) | ((7) << 13) | ((((0xf6) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REG | OPT_EA }},
{ TOK_ASM_idivb, ((uint64_t) ((((0xf6) & 0xff00) == 0x0f00) ? ((((0xf6) >> 8) & ~0xff) | ((0xf6) & 0xff)) : (0xf6))), ((0x08 | (0x01 | 0x1000)) | ((7) << 13) | ((((0xf6) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REG | OPT_EA, OPT_EAX }},


{ TOK_ASM_rolb, ((uint64_t) ((((0xc0) & 0xff00) == 0x0f00) ? ((((0xc0) >> 8) & ~0xff) | ((0xc0) & 0xff)) : (0xc0))), ((0x08 | (0x01 | 0x1000) | 0x20) | ((0) << 13) | ((((0xc0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IM8, OPT_EA | OPT_REG }},
{ TOK_ASM_rolb, ((uint64_t) ((((0xd2) & 0xff00) == 0x0f00) ? ((((0xd2) >> 8) & ~0xff) | ((0xd2) & 0xff)) : (0xd2))), ((0x08 | (0x01 | 0x1000) | 0x20) | ((0) << 13) | ((((0xd2) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_CL, OPT_EA | OPT_REG }},
{ TOK_ASM_rolb, ((uint64_t) ((((0xd0) & 0xff00) == 0x0f00) ? ((((0xd0) >> 8) & ~0xff) | ((0xd0) & 0xff)) : (0xd0))), ((0x08 | (0x01 | 0x1000) | 0x20) | ((0) << 13) | ((((0xd0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA | OPT_REG }},

{ TOK_ASM_shldw, ((uint64_t) ((((0x0fa4) & 0xff00) == 0x0f00) ? ((((0x0fa4) >> 8) & ~0xff) | ((0x0fa4) & 0xff)) : (0x0fa4))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x0fa4) & 0xff00) == 0x0f00) ? 0x100 : 0)), 3, { OPT_IM8, OPT_REGW, OPT_EA | OPT_REGW }},
{ TOK_ASM_shldw, ((uint64_t) ((((0x0fa5) & 0xff00) == 0x0f00) ? ((((0x0fa5) >> 8) & ~0xff) | ((0x0fa5) & 0xff)) : (0x0fa5))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x0fa5) & 0xff00) == 0x0f00) ? 0x100 : 0)), 3, { OPT_CL, OPT_REGW, OPT_EA | OPT_REGW }},
{ TOK_ASM_shldw, ((uint64_t) ((((0x0fa5) & 0xff00) == 0x0f00) ? ((((0x0fa5) >> 8) & ~0xff) | ((0x0fa5) & 0xff)) : (0x0fa5))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x0fa5) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REGW, OPT_EA | OPT_REGW }},
{ TOK_ASM_shrdw, ((uint64_t) ((((0x0fac) & 0xff00) == 0x0f00) ? ((((0x0fac) >> 8) & ~0xff) | ((0x0fac) & 0xff)) : (0x0fac))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x0fac) & 0xff00) == 0x0f00) ? 0x100 : 0)), 3, { OPT_IM8, OPT_REGW, OPT_EA | OPT_REGW }},
{ TOK_ASM_shrdw, ((uint64_t) ((((0x0fad) & 0xff00) == 0x0f00) ? ((((0x0fad) >> 8) & ~0xff) | ((0x0fad) & 0xff)) : (0x0fad))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x0fad) & 0xff00) == 0x0f00) ? 0x100 : 0)), 3, { OPT_CL, OPT_REGW, OPT_EA | OPT_REGW }},
{ TOK_ASM_shrdw, ((uint64_t) ((((0x0fad) & 0xff00) == 0x0f00) ? ((((0x0fad) >> 8) & ~0xff) | ((0x0fad) & 0xff)) : (0x0fad))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x0fad) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REGW, OPT_EA | OPT_REGW }},

{ TOK_ASM_call, ((uint64_t) ((((0xff) & 0xff00) == 0x0f00) ? ((((0xff) >> 8) & ~0xff) | ((0xff) & 0xff)) : (0xff))), ((0x08) | ((2) << 13) | ((((0xff) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_INDIR }},
{ TOK_ASM_call, ((uint64_t) ((((0xe8) & 0xff00) == 0x0f00) ? ((((0xe8) >> 8) & ~0xff) | ((0xe8) & 0xff)) : (0xe8))), ((0) | ((0) << 13) | ((((0xe8) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_DISP }},
{ TOK_ASM_jmp, ((uint64_t) ((((0xff) & 0xff00) == 0x0f00) ? ((((0xff) >> 8) & ~0xff) | ((0xff) & 0xff)) : (0xff))), ((0x08) | ((4) << 13) | ((((0xff) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_INDIR }},
{ TOK_ASM_jmp, ((uint64_t) ((((0xeb) & 0xff00) == 0x0f00) ? ((((0xeb) >> 8) & ~0xff) | ((0xeb) & 0xff)) : (0xeb))), ((0) | ((0) << 13) | ((((0xeb) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_DISP8 }},

{ TOK_ASM_lcall, ((uint64_t) ((((0xff) & 0xff00) == 0x0f00) ? ((((0xff) >> 8) & ~0xff) | ((0xff) & 0xff)) : (0xff))), ((0x08) | ((3) << 13) | ((((0xff) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
{ TOK_ASM_ljmp, ((uint64_t) ((((0xff) & 0xff00) == 0x0f00) ? ((((0xff) >> 8) & ~0xff) | ((0xff) & 0xff)) : (0xff))), ((0x08) | ((5) << 13) | ((((0xff) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_ljmpw, ((uint64_t) ((((0x66ff) & 0xff00) == 0x0f00) ? ((((0x66ff) >> 8) & ~0xff) | ((0x66ff) & 0xff)) : (0x66ff))), ((0x08) | ((5) << 13) | ((((0x66ff) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_ljmpl, ((uint64_t) ((((0xff) & 0xff00) == 0x0f00) ? ((((0xff) >> 8) & ~0xff) | ((0xff) & 0xff)) : (0xff))), ((0x08) | ((5) << 13) | ((((0xff) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},

{ TOK_INT, ((uint64_t) ((((0xcd) & 0xff00) == 0x0f00) ? ((((0xcd) >> 8) & ~0xff) | ((0xcd) & 0xff)) : (0xcd))), ((0) | ((0) << 13) | ((((0xcd) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_IM8 }},
{ TOK_ASM_seto, ((uint64_t) ((((0x0f90) & 0xff00) == 0x0f00) ? ((((0x0f90) >> 8) & ~0xff) | ((0x0f90) & 0xff)) : (0x0f90))), ((0x08 | 0x50) | ((0) << 13) | ((((0x0f90) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REG8 | OPT_EA }},
{ TOK_ASM_setob, ((uint64_t) ((((0x0f90) & 0xff00) == 0x0f00) ? ((((0x0f90) >> 8) & ~0xff) | ((0x0f90) & 0xff)) : (0x0f90))), ((0x08 | 0x50) | ((0) << 13) | ((((0x0f90) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REG8 | OPT_EA }},
    { TOK_ASM_enter, ((uint64_t) ((((0xc8) & 0xff00) == 0x0f00) ? ((((0xc8) >> 8) & ~0xff) | ((0xc8) & 0xff)) : (0xc8))), ((0) | ((0) << 13) | ((((0xc8) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IM16, OPT_IM8 }},



{ TOK_ASM_retq, ((uint64_t) ((((0xc2) & 0xff00) == 0x0f00) ? ((((0xc2) >> 8) & ~0xff) | ((0xc2) & 0xff)) : (0xc2))), ((0) | ((0) << 13) | ((((0xc2) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_IM16 }},
{ TOK_ASM_ret, ((uint64_t) ((((0xc2) & 0xff00) == 0x0f00) ? ((((0xc2) >> 8) & ~0xff) | ((0xc2) & 0xff)) : (0xc2))), ((0) | ((0) << 13) | ((((0xc2) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_IM16 }},

{ TOK_ASM_lret, ((uint64_t) ((((0xca) & 0xff00) == 0x0f00) ? ((((0xca) >> 8) & ~0xff) | ((0xca) & 0xff)) : (0xca))), ((0) | ((0) << 13) | ((((0xca) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_IM16 }},

{ TOK_ASM_jo, ((uint64_t) ((((0x70) & 0xff00) == 0x0f00) ? ((((0x70) >> 8) & ~0xff) | ((0x70) & 0xff)) : (0x70))), ((0x50) | ((0) << 13) | ((((0x70) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_DISP8 }},
    { TOK_ASM_loopne, ((uint64_t) ((((0xe0) & 0xff00) == 0x0f00) ? ((((0xe0) >> 8) & ~0xff) | ((0xe0) & 0xff)) : (0xe0))), ((0) | ((0) << 13) | ((((0xe0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_DISP8 }},
    { TOK_ASM_loopnz, ((uint64_t) ((((0xe0) & 0xff00) == 0x0f00) ? ((((0xe0) >> 8) & ~0xff) | ((0xe0) & 0xff)) : (0xe0))), ((0) | ((0) << 13) | ((((0xe0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_DISP8 }},
    { TOK_ASM_loope, ((uint64_t) ((((0xe1) & 0xff00) == 0x0f00) ? ((((0xe1) >> 8) & ~0xff) | ((0xe1) & 0xff)) : (0xe1))), ((0) | ((0) << 13) | ((((0xe1) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_DISP8 }},
    { TOK_ASM_loopz, ((uint64_t) ((((0xe1) & 0xff00) == 0x0f00) ? ((((0xe1) >> 8) & ~0xff) | ((0xe1) & 0xff)) : (0xe1))), ((0) | ((0) << 13) | ((((0xe1) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_DISP8 }},
    { TOK_ASM_loop, ((uint64_t) ((((0xe2) & 0xff00) == 0x0f00) ? ((((0xe2) >> 8) & ~0xff) | ((0xe2) & 0xff)) : (0xe2))), ((0) | ((0) << 13) | ((((0xe2) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_DISP8 }},
    { TOK_ASM_jecxz, ((uint64_t) ((((0x67e3) & 0xff00) == 0x0f00) ? ((((0x67e3) >> 8) & ~0xff) | ((0x67e3) & 0xff)) : (0x67e3))), ((0) | ((0) << 13) | ((((0x67e3) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_DISP8 }},



{ TOK_ASM_fcomp, ((uint64_t) ((((0xd8d9) & 0xff00) == 0x0f00) ? ((((0xd8d9) >> 8) & ~0xff) | ((0xd8d9) & 0xff)) : (0xd8d9))), ((0) | ((0) << 13) | ((((0xd8d9) & 0xff00) == 0x0f00) ? 0x100 : 0)), 0, { 0 } },

{ TOK_ASM_fadd, ((uint64_t) ((((0xd8c0) & 0xff00) == 0x0f00) ? ((((0xd8c0) >> 8) & ~0xff) | ((0xd8c0) & 0xff)) : (0xd8c0))), ((0x40 | 0x04) | ((0) << 13) | ((((0xd8c0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_ST }},
{ TOK_ASM_fadd, ((uint64_t) ((((0xd8c0) & 0xff00) == 0x0f00) ? ((((0xd8c0) >> 8) & ~0xff) | ((0xd8c0) & 0xff)) : (0xd8c0))), ((0x40 | 0x04) | ((0) << 13) | ((((0xd8c0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_ST, OPT_ST0 }},
{ TOK_ASM_fadd, ((uint64_t) ((((0xdcc0) & 0xff00) == 0x0f00) ? ((((0xdcc0) >> 8) & ~0xff) | ((0xdcc0) & 0xff)) : (0xdcc0))), ((0x40 | 0x04) | ((0) << 13) | ((((0xdcc0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_ST0, OPT_ST }},
{ TOK_ASM_fmul, ((uint64_t) ((((0xdcc8) & 0xff00) == 0x0f00) ? ((((0xdcc8) >> 8) & ~0xff) | ((0xdcc8) & 0xff)) : (0xdcc8))), ((0x40 | 0x04) | ((0) << 13) | ((((0xdcc8) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_ST0, OPT_ST }},
{ TOK_ASM_fadd, ((uint64_t) ((((0xdec1) & 0xff00) == 0x0f00) ? ((((0xdec1) >> 8) & ~0xff) | ((0xdec1) & 0xff)) : (0xdec1))), ((0x40) | ((0) << 13) | ((((0xdec1) & 0xff00) == 0x0f00) ? 0x100 : 0)), 0, { 0 } },
{ TOK_ASM_faddp, ((uint64_t) ((((0xdec0) & 0xff00) == 0x0f00) ? ((((0xdec0) >> 8) & ~0xff) | ((0xdec0) & 0xff)) : (0xdec0))), ((0x40 | 0x04) | ((0) << 13) | ((((0xdec0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_ST }},
{ TOK_ASM_faddp, ((uint64_t) ((((0xdec0) & 0xff00) == 0x0f00) ? ((((0xdec0) >> 8) & ~0xff) | ((0xdec0) & 0xff)) : (0xdec0))), ((0x40 | 0x04) | ((0) << 13) | ((((0xdec0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_ST, OPT_ST0 }},
{ TOK_ASM_faddp, ((uint64_t) ((((0xdec0) & 0xff00) == 0x0f00) ? ((((0xdec0) >> 8) & ~0xff) | ((0xdec0) & 0xff)) : (0xdec0))), ((0x40 | 0x04) | ((0) << 13) | ((((0xdec0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_ST0, OPT_ST }},
{ TOK_ASM_faddp, ((uint64_t) ((((0xdec1) & 0xff00) == 0x0f00) ? ((((0xdec1) >> 8) & ~0xff) | ((0xdec1) & 0xff)) : (0xdec1))), ((0x40) | ((0) << 13) | ((((0xdec1) & 0xff00) == 0x0f00) ? 0x100 : 0)), 0, { 0 } },
{ TOK_ASM_fadds, ((uint64_t) ((((0xd8) & 0xff00) == 0x0f00) ? ((((0xd8) >> 8) & ~0xff) | ((0xd8) & 0xff)) : (0xd8))), ((0x40 | 0x08) | ((0) << 13) | ((((0xd8) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
{ TOK_ASM_fiaddl, ((uint64_t) ((((0xda) & 0xff00) == 0x0f00) ? ((((0xda) >> 8) & ~0xff) | ((0xda) & 0xff)) : (0xda))), ((0x40 | 0x08) | ((0) << 13) | ((((0xda) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
{ TOK_ASM_faddl, ((uint64_t) ((((0xdc) & 0xff00) == 0x0f00) ? ((((0xdc) >> 8) & ~0xff) | ((0xdc) & 0xff)) : (0xdc))), ((0x40 | 0x08) | ((0) << 13) | ((((0xdc) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
{ TOK_ASM_fiadds, ((uint64_t) ((((0xde) & 0xff00) == 0x0f00) ? ((((0xde) >> 8) & ~0xff) | ((0xde) & 0xff)) : (0xde))), ((0x40 | 0x08) | ((0) << 13) | ((((0xde) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
# 296 "../tinycc/x86_64-asm.h"
    { TOK_ASM_fld, ((uint64_t) ((((0xd9c0) & 0xff00) == 0x0f00) ? ((((0xd9c0) >> 8) & ~0xff) | ((0xd9c0) & 0xff)) : (0xd9c0))), ((0x04) | ((0) << 13) | ((((0xd9c0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_ST }},
    { TOK_ASM_fldl, ((uint64_t) ((((0xd9c0) & 0xff00) == 0x0f00) ? ((((0xd9c0) >> 8) & ~0xff) | ((0xd9c0) & 0xff)) : (0xd9c0))), ((0x04) | ((0) << 13) | ((((0xd9c0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_ST }},
    { TOK_ASM_flds, ((uint64_t) ((((0xd9) & 0xff00) == 0x0f00) ? ((((0xd9) >> 8) & ~0xff) | ((0xd9) & 0xff)) : (0xd9))), ((0x08) | ((0) << 13) | ((((0xd9) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
{ TOK_ASM_fldl, ((uint64_t) ((((0xdd) & 0xff00) == 0x0f00) ? ((((0xdd) >> 8) & ~0xff) | ((0xdd) & 0xff)) : (0xdd))), ((0x08) | ((0) << 13) | ((((0xdd) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_fildl, ((uint64_t) ((((0xdb) & 0xff00) == 0x0f00) ? ((((0xdb) >> 8) & ~0xff) | ((0xdb) & 0xff)) : (0xdb))), ((0x08) | ((0) << 13) | ((((0xdb) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_fildq, ((uint64_t) ((((0xdf) & 0xff00) == 0x0f00) ? ((((0xdf) >> 8) & ~0xff) | ((0xdf) & 0xff)) : (0xdf))), ((0x08) | ((5) << 13) | ((((0xdf) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_fildll, ((uint64_t) ((((0xdf) & 0xff00) == 0x0f00) ? ((((0xdf) >> 8) & ~0xff) | ((0xdf) & 0xff)) : (0xdf))), ((0x08) | ((5) << 13) | ((((0xdf) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_fldt, ((uint64_t) ((((0xdb) & 0xff00) == 0x0f00) ? ((((0xdb) >> 8) & ~0xff) | ((0xdb) & 0xff)) : (0xdb))), ((0x08) | ((5) << 13) | ((((0xdb) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_fbld, ((uint64_t) ((((0xdf) & 0xff00) == 0x0f00) ? ((((0xdf) >> 8) & ~0xff) | ((0xdf) & 0xff)) : (0xdf))), ((0x08) | ((4) << 13) | ((((0xdf) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},


    { TOK_ASM_fst, ((uint64_t) ((((0xddd0) & 0xff00) == 0x0f00) ? ((((0xddd0) >> 8) & ~0xff) | ((0xddd0) & 0xff)) : (0xddd0))), ((0x04) | ((0) << 13) | ((((0xddd0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_ST }},
    { TOK_ASM_fstl, ((uint64_t) ((((0xddd0) & 0xff00) == 0x0f00) ? ((((0xddd0) >> 8) & ~0xff) | ((0xddd0) & 0xff)) : (0xddd0))), ((0x04) | ((0) << 13) | ((((0xddd0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_ST }},
    { TOK_ASM_fsts, ((uint64_t) ((((0xd9) & 0xff00) == 0x0f00) ? ((((0xd9) >> 8) & ~0xff) | ((0xd9) & 0xff)) : (0xd9))), ((0x08) | ((2) << 13) | ((((0xd9) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_fstps, ((uint64_t) ((((0xd9) & 0xff00) == 0x0f00) ? ((((0xd9) >> 8) & ~0xff) | ((0xd9) & 0xff)) : (0xd9))), ((0x08) | ((3) << 13) | ((((0xd9) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
{ TOK_ASM_fstl, ((uint64_t) ((((0xdd) & 0xff00) == 0x0f00) ? ((((0xdd) >> 8) & ~0xff) | ((0xdd) & 0xff)) : (0xdd))), ((0x08) | ((2) << 13) | ((((0xdd) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_fstpl, ((uint64_t) ((((0xdd) & 0xff00) == 0x0f00) ? ((((0xdd) >> 8) & ~0xff) | ((0xdd) & 0xff)) : (0xdd))), ((0x08) | ((3) << 13) | ((((0xdd) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_fist, ((uint64_t) ((((0xdf) & 0xff00) == 0x0f00) ? ((((0xdf) >> 8) & ~0xff) | ((0xdf) & 0xff)) : (0xdf))), ((0x08) | ((2) << 13) | ((((0xdf) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_fistp, ((uint64_t) ((((0xdf) & 0xff00) == 0x0f00) ? ((((0xdf) >> 8) & ~0xff) | ((0xdf) & 0xff)) : (0xdf))), ((0x08) | ((3) << 13) | ((((0xdf) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_fistl, ((uint64_t) ((((0xdb) & 0xff00) == 0x0f00) ? ((((0xdb) >> 8) & ~0xff) | ((0xdb) & 0xff)) : (0xdb))), ((0x08) | ((2) << 13) | ((((0xdb) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_fistpl, ((uint64_t) ((((0xdb) & 0xff00) == 0x0f00) ? ((((0xdb) >> 8) & ~0xff) | ((0xdb) & 0xff)) : (0xdb))), ((0x08) | ((3) << 13) | ((((0xdb) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},

    { TOK_ASM_fstp, ((uint64_t) ((((0xddd8) & 0xff00) == 0x0f00) ? ((((0xddd8) >> 8) & ~0xff) | ((0xddd8) & 0xff)) : (0xddd8))), ((0x04) | ((0) << 13) | ((((0xddd8) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_ST }},
    { TOK_ASM_fistpq, ((uint64_t) ((((0xdf) & 0xff00) == 0x0f00) ? ((((0xdf) >> 8) & ~0xff) | ((0xdf) & 0xff)) : (0xdf))), ((0x08) | ((7) << 13) | ((((0xdf) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_fistpll, ((uint64_t) ((((0xdf) & 0xff00) == 0x0f00) ? ((((0xdf) >> 8) & ~0xff) | ((0xdf) & 0xff)) : (0xdf))), ((0x08) | ((7) << 13) | ((((0xdf) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_fstpt, ((uint64_t) ((((0xdb) & 0xff00) == 0x0f00) ? ((((0xdb) >> 8) & ~0xff) | ((0xdb) & 0xff)) : (0xdb))), ((0x08) | ((7) << 13) | ((((0xdb) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_fbstp, ((uint64_t) ((((0xdf) & 0xff00) == 0x0f00) ? ((((0xdf) >> 8) & ~0xff) | ((0xdf) & 0xff)) : (0xdf))), ((0x08) | ((6) << 13) | ((((0xdf) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},



{ TOK_ASM_fxch, ((uint64_t) ((((0xd9c8) & 0xff00) == 0x0f00) ? ((((0xd9c8) >> 8) & ~0xff) | ((0xd9c8) & 0xff)) : (0xd9c8))), ((0x04) | ((0) << 13) | ((((0xd9c8) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_ST }},


    { TOK_ASM_fucom, ((uint64_t) ((((0xdde0) & 0xff00) == 0x0f00) ? ((((0xdde0) >> 8) & ~0xff) | ((0xdde0) & 0xff)) : (0xdde0))), ((0x04) | ((0) << 13) | ((((0xdde0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_ST }},
    { TOK_ASM_fucomp, ((uint64_t) ((((0xdde8) & 0xff00) == 0x0f00) ? ((((0xdde8) >> 8) & ~0xff) | ((0xdde8) & 0xff)) : (0xdde8))), ((0x04) | ((0) << 13) | ((((0xdde8) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_ST }},

    { TOK_ASM_finit, ((uint64_t) ((((0xdbe3) & 0xff00) == 0x0f00) ? ((((0xdbe3) >> 8) & ~0xff) | ((0xdbe3) & 0xff)) : (0xdbe3))), ((0x10) | ((0) << 13) | ((((0xdbe3) & 0xff00) == 0x0f00) ? 0x100 : 0)), 0, { 0 } },
    { TOK_ASM_fldcw, ((uint64_t) ((((0xd9) & 0xff00) == 0x0f00) ? ((((0xd9) >> 8) & ~0xff) | ((0xd9) & 0xff)) : (0xd9))), ((0x08) | ((5) << 13) | ((((0xd9) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_fnstcw, ((uint64_t) ((((0xd9) & 0xff00) == 0x0f00) ? ((((0xd9) >> 8) & ~0xff) | ((0xd9) & 0xff)) : (0xd9))), ((0x08) | ((7) << 13) | ((((0xd9) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_fstcw, ((uint64_t) ((((0xd9) & 0xff00) == 0x0f00) ? ((((0xd9) >> 8) & ~0xff) | ((0xd9) & 0xff)) : (0xd9))), ((0x08 | 0x10) | ((7) << 13) | ((((0xd9) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},

{ TOK_ASM_fnstsw, ((uint64_t) ((((0xdfe0) & 0xff00) == 0x0f00) ? ((((0xdfe0) >> 8) & ~0xff) | ((0xdfe0) & 0xff)) : (0xdfe0))), ((0) | ((0) << 13) | ((((0xdfe0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EAX }},
{ TOK_ASM_fnstsw, ((uint64_t) ((((0xdd) & 0xff00) == 0x0f00) ? ((((0xdd) >> 8) & ~0xff) | ((0xdd) & 0xff)) : (0xdd))), ((0x08) | ((7) << 13) | ((((0xdd) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_fstsw, ((uint64_t) ((((0xdfe0) & 0xff00) == 0x0f00) ? ((((0xdfe0) >> 8) & ~0xff) | ((0xdfe0) & 0xff)) : (0xdfe0))), ((0x10) | ((0) << 13) | ((((0xdfe0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EAX }},
{ TOK_ASM_fstsw, ((uint64_t) ((((0xdfe0) & 0xff00) == 0x0f00) ? ((((0xdfe0) >> 8) & ~0xff) | ((0xdfe0) & 0xff)) : (0xdfe0))), ((0x10) | ((0) << 13) | ((((0xdfe0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 0, { 0 } },
{ TOK_ASM_fstsw, ((uint64_t) ((((0xdd) & 0xff00) == 0x0f00) ? ((((0xdd) >> 8) & ~0xff) | ((0xdd) & 0xff)) : (0xdd))), ((0x08 | 0x10) | ((7) << 13) | ((((0xdd) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_fclex, ((uint64_t) ((((0xdbe2) & 0xff00) == 0x0f00) ? ((((0xdbe2) >> 8) & ~0xff) | ((0xdbe2) & 0xff)) : (0xdbe2))), ((0x10) | ((0) << 13) | ((((0xdbe2) & 0xff00) == 0x0f00) ? 0x100 : 0)), 0, { 0 } },
    { TOK_ASM_fnstenv, ((uint64_t) ((((0xd9) & 0xff00) == 0x0f00) ? ((((0xd9) >> 8) & ~0xff) | ((0xd9) & 0xff)) : (0xd9))), ((0x08) | ((6) << 13) | ((((0xd9) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_fstenv, ((uint64_t) ((((0xd9) & 0xff00) == 0x0f00) ? ((((0xd9) >> 8) & ~0xff) | ((0xd9) & 0xff)) : (0xd9))), ((0x08 | 0x10) | ((6) << 13) | ((((0xd9) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_fldenv, ((uint64_t) ((((0xd9) & 0xff00) == 0x0f00) ? ((((0xd9) >> 8) & ~0xff) | ((0xd9) & 0xff)) : (0xd9))), ((0x08) | ((4) << 13) | ((((0xd9) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_fnsave, ((uint64_t) ((((0xdd) & 0xff00) == 0x0f00) ? ((((0xdd) >> 8) & ~0xff) | ((0xdd) & 0xff)) : (0xdd))), ((0x08) | ((6) << 13) | ((((0xdd) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_fsave, ((uint64_t) ((((0xdd) & 0xff00) == 0x0f00) ? ((((0xdd) >> 8) & ~0xff) | ((0xdd) & 0xff)) : (0xdd))), ((0x08 | 0x10) | ((6) << 13) | ((((0xdd) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_frstor, ((uint64_t) ((((0xdd) & 0xff00) == 0x0f00) ? ((((0xdd) >> 8) & ~0xff) | ((0xdd) & 0xff)) : (0xdd))), ((0x08) | ((4) << 13) | ((((0xdd) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_ffree, ((uint64_t) ((((0xddc0) & 0xff00) == 0x0f00) ? ((((0xddc0) >> 8) & ~0xff) | ((0xddc0) & 0xff)) : (0xddc0))), ((0x04) | ((4) << 13) | ((((0xddc0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_ST }},
    { TOK_ASM_ffreep, ((uint64_t) ((((0xdfc0) & 0xff00) == 0x0f00) ? ((((0xdfc0) >> 8) & ~0xff) | ((0xdfc0) & 0xff)) : (0xdfc0))), ((0x04) | ((4) << 13) | ((((0xdfc0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_ST }},
    { TOK_ASM_fxsave, ((uint64_t) ((((0x0fae) & 0xff00) == 0x0f00) ? ((((0x0fae) >> 8) & ~0xff) | ((0x0fae) & 0xff)) : (0x0fae))), ((0x08) | ((0) << 13) | ((((0x0fae) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_fxrstor, ((uint64_t) ((((0x0fae) & 0xff00) == 0x0f00) ? ((((0x0fae) >> 8) & ~0xff) | ((0x0fae) & 0xff)) : (0x0fae))), ((0x08) | ((1) << 13) | ((((0x0fae) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},




    { TOK_ASM_fxsaveq, ((uint64_t) ((((0x0fae) & 0xff00) == 0x0f00) ? ((((0x0fae) >> 8) & ~0xff) | ((0x0fae) & 0xff)) : (0x0fae))), ((0x08 | 0x200) | ((0) << 13) | ((((0x0fae) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_fxrstorq, ((uint64_t) ((((0x0fae) & 0xff00) == 0x0f00) ? ((((0x0fae) >> 8) & ~0xff) | ((0x0fae) & 0xff)) : (0x0fae))), ((0x08 | 0x200) | ((1) << 13) | ((((0x0fae) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},


    { TOK_ASM_arpl, ((uint64_t) ((((0x63) & 0xff00) == 0x0f00) ? ((((0x63) >> 8) & ~0xff) | ((0x63) & 0xff)) : (0x63))), ((0x08) | ((0) << 13) | ((((0x63) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REG16, OPT_REG16 | OPT_EA }},
{ TOK_ASM_larw, ((uint64_t) ((((0x0f02) & 0xff00) == 0x0f00) ? ((((0x0f02) >> 8) & ~0xff) | ((0x0f02) & 0xff)) : (0x0f02))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x0f02) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REG | OPT_EA, OPT_REG }},
    { TOK_ASM_lgdt, ((uint64_t) ((((0x0f01) & 0xff00) == 0x0f00) ? ((((0x0f01) >> 8) & ~0xff) | ((0x0f01) & 0xff)) : (0x0f01))), ((0x08) | ((2) << 13) | ((((0x0f01) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_lgdtq, ((uint64_t) ((((0x0f01) & 0xff00) == 0x0f00) ? ((((0x0f01) >> 8) & ~0xff) | ((0x0f01) & 0xff)) : (0x0f01))), ((0x08) | ((2) << 13) | ((((0x0f01) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_lidt, ((uint64_t) ((((0x0f01) & 0xff00) == 0x0f00) ? ((((0x0f01) >> 8) & ~0xff) | ((0x0f01) & 0xff)) : (0x0f01))), ((0x08) | ((3) << 13) | ((((0x0f01) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_lidtq, ((uint64_t) ((((0x0f01) & 0xff00) == 0x0f00) ? ((((0x0f01) >> 8) & ~0xff) | ((0x0f01) & 0xff)) : (0x0f01))), ((0x08) | ((3) << 13) | ((((0x0f01) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_lldt, ((uint64_t) ((((0x0f00) & 0xff00) == 0x0f00) ? ((((0x0f00) >> 8) & ~0xff) | ((0x0f00) & 0xff)) : (0x0f00))), ((0x08) | ((2) << 13) | ((((0x0f00) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA | OPT_REG }},
    { TOK_ASM_lmsw, ((uint64_t) ((((0x0f01) & 0xff00) == 0x0f00) ? ((((0x0f01) >> 8) & ~0xff) | ((0x0f01) & 0xff)) : (0x0f01))), ((0x08) | ((6) << 13) | ((((0x0f01) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA | OPT_REG }},
{ TOK_ASM_lslw, ((uint64_t) ((((0x0f03) & 0xff00) == 0x0f00) ? ((((0x0f03) >> 8) & ~0xff) | ((0x0f03) & 0xff)) : (0x0f03))), ((0x08 | 0x1000) | ((0) << 13) | ((((0x0f03) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_REG, OPT_REG }},
    { TOK_ASM_ltr, ((uint64_t) ((((0x0f00) & 0xff00) == 0x0f00) ? ((((0x0f00) >> 8) & ~0xff) | ((0x0f00) & 0xff)) : (0x0f00))), ((0x08) | ((3) << 13) | ((((0x0f00) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA | OPT_REG16 }},
    { TOK_ASM_sgdt, ((uint64_t) ((((0x0f01) & 0xff00) == 0x0f00) ? ((((0x0f01) >> 8) & ~0xff) | ((0x0f01) & 0xff)) : (0x0f01))), ((0x08) | ((0) << 13) | ((((0x0f01) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_sgdtq, ((uint64_t) ((((0x0f01) & 0xff00) == 0x0f00) ? ((((0x0f01) >> 8) & ~0xff) | ((0x0f01) & 0xff)) : (0x0f01))), ((0x08) | ((0) << 13) | ((((0x0f01) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_sidt, ((uint64_t) ((((0x0f01) & 0xff00) == 0x0f00) ? ((((0x0f01) >> 8) & ~0xff) | ((0x0f01) & 0xff)) : (0x0f01))), ((0x08) | ((1) << 13) | ((((0x0f01) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_sidtq, ((uint64_t) ((((0x0f01) & 0xff00) == 0x0f00) ? ((((0x0f01) >> 8) & ~0xff) | ((0x0f01) & 0xff)) : (0x0f01))), ((0x08) | ((1) << 13) | ((((0x0f01) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_sldt, ((uint64_t) ((((0x0f00) & 0xff00) == 0x0f00) ? ((((0x0f00) >> 8) & ~0xff) | ((0x0f00) & 0xff)) : (0x0f00))), ((0x08) | ((0) << 13) | ((((0x0f00) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REG | OPT_EA }},
    { TOK_ASM_smsw, ((uint64_t) ((((0x0f01) & 0xff00) == 0x0f00) ? ((((0x0f01) >> 8) & ~0xff) | ((0x0f01) & 0xff)) : (0x0f01))), ((0x08) | ((4) << 13) | ((((0x0f01) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REG | OPT_EA }},
    { TOK_ASM_str, ((uint64_t) ((((0x0f00) & 0xff00) == 0x0f00) ? ((((0x0f00) >> 8) & ~0xff) | ((0x0f00) & 0xff)) : (0x0f00))), ((0x08) | ((1) << 13) | ((((0x0f00) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REG32 | OPT_EA }},
{ TOK_ASM_str, ((uint64_t) ((((0x660f00) & 0xff00) == 0x0f00) ? ((((0x660f00) >> 8) & ~0xff) | ((0x660f00) & 0xff)) : (0x660f00))), ((0x08) | ((1) << 13) | ((((0x660f00) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REG16 }},
{ TOK_ASM_str, ((uint64_t) ((((0x0f00) & 0xff00) == 0x0f00) ? ((((0x0f00) >> 8) & ~0xff) | ((0x0f00) & 0xff)) : (0x0f00))), ((0x08 | 0x200) | ((1) << 13) | ((((0x0f00) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REG64 }},
    { TOK_ASM_verr, ((uint64_t) ((((0x0f00) & 0xff00) == 0x0f00) ? ((((0x0f00) >> 8) & ~0xff) | ((0x0f00) & 0xff)) : (0x0f00))), ((0x08) | ((4) << 13) | ((((0x0f00) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REG | OPT_EA }},
    { TOK_ASM_verw, ((uint64_t) ((((0x0f00) & 0xff00) == 0x0f00) ? ((((0x0f00) >> 8) & ~0xff) | ((0x0f00) & 0xff)) : (0x0f00))), ((0x08) | ((5) << 13) | ((((0x0f00) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REG | OPT_EA }},
    { TOK_ASM_swapgs, ((uint64_t) ((((0x0f01) & 0xff00) == 0x0f00) ? ((((0x0f01) >> 8) & ~0xff) | ((0x0f01) & 0xff)) : (0x0f01))), ((0x08) | ((7) << 13) | ((((0x0f01) & 0xff00) == 0x0f00) ? 0x100 : 0)), 0, { 0 } },



    { TOK_ASM_bswap, ((uint64_t) ((((0x0fc8) & 0xff00) == 0x0f00) ? ((((0x0fc8) >> 8) & ~0xff) | ((0x0fc8) & 0xff)) : (0x0fc8))), ((0x04) | ((0) << 13) | ((((0x0fc8) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REG32 }},
    { TOK_ASM_bswapl, ((uint64_t) ((((0x0fc8) & 0xff00) == 0x0f00) ? ((((0x0fc8) >> 8) & ~0xff) | ((0x0fc8) & 0xff)) : (0x0fc8))), ((0x04) | ((0) << 13) | ((((0x0fc8) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REG32 }},
    { TOK_ASM_bswapq, ((uint64_t) ((((0x0fc8) & 0xff00) == 0x0f00) ? ((((0x0fc8) >> 8) & ~0xff) | ((0x0fc8) & 0xff)) : (0x0fc8))), ((0x04 | 0x200) | ((0) << 13) | ((((0x0fc8) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_REG64 }},

{ TOK_ASM_xaddb, ((uint64_t) ((((0x0fc0) & 0xff00) == 0x0f00) ? ((((0x0fc0) >> 8) & ~0xff) | ((0x0fc0) & 0xff)) : (0x0fc0))), ((0x08 | (0x01 | 0x1000)) | ((0) << 13) | ((((0x0fc0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REG, OPT_REG | OPT_EA }},
{ TOK_ASM_cmpxchgb, ((uint64_t) ((((0x0fb0) & 0xff00) == 0x0f00) ? ((((0x0fb0) >> 8) & ~0xff) | ((0x0fb0) & 0xff)) : (0x0fb0))), ((0x08 | (0x01 | 0x1000)) | ((0) << 13) | ((((0x0fb0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REG, OPT_REG | OPT_EA }},
    { TOK_ASM_invlpg, ((uint64_t) ((((0x0f01) & 0xff00) == 0x0f00) ? ((((0x0f01) >> 8) & ~0xff) | ((0x0f01) & 0xff)) : (0x0f01))), ((0x08) | ((7) << 13) | ((((0x0f01) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},


    { TOK_ASM_cmpxchg8b, ((uint64_t) ((((0x0fc7) & 0xff00) == 0x0f00) ? ((((0x0fc7) >> 8) & ~0xff) | ((0x0fc7) & 0xff)) : (0x0fc7))), ((0x08) | ((1) << 13) | ((((0x0fc7) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},


    { TOK_ASM_cmpxchg16b, ((uint64_t) ((((0x0fc7) & 0xff00) == 0x0f00) ? ((((0x0fc7) >> 8) & ~0xff) | ((0x0fc7) & 0xff)) : (0x0fc7))), ((0x08 | 0x200) | ((1) << 13) | ((((0x0fc7) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},


{ TOK_ASM_cmovo, ((uint64_t) ((((0x0f40) & 0xff00) == 0x0f00) ? ((((0x0f40) >> 8) & ~0xff) | ((0x0f40) & 0xff)) : (0x0f40))), ((0x08 | 0x50 | 0x1000) | ((0) << 13) | ((((0x0f40) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REGW | OPT_EA, OPT_REGW }},

    { TOK_ASM_fcmovb, ((uint64_t) ((((0xdac0) & 0xff00) == 0x0f00) ? ((((0xdac0) >> 8) & ~0xff) | ((0xdac0) & 0xff)) : (0xdac0))), ((0x04) | ((0) << 13) | ((((0xdac0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_ST, OPT_ST0 }},
    { TOK_ASM_fcmove, ((uint64_t) ((((0xdac8) & 0xff00) == 0x0f00) ? ((((0xdac8) >> 8) & ~0xff) | ((0xdac8) & 0xff)) : (0xdac8))), ((0x04) | ((0) << 13) | ((((0xdac8) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_ST, OPT_ST0 }},
    { TOK_ASM_fcmovbe, ((uint64_t) ((((0xdad0) & 0xff00) == 0x0f00) ? ((((0xdad0) >> 8) & ~0xff) | ((0xdad0) & 0xff)) : (0xdad0))), ((0x04) | ((0) << 13) | ((((0xdad0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_ST, OPT_ST0 }},
    { TOK_ASM_fcmovu, ((uint64_t) ((((0xdad8) & 0xff00) == 0x0f00) ? ((((0xdad8) >> 8) & ~0xff) | ((0xdad8) & 0xff)) : (0xdad8))), ((0x04) | ((0) << 13) | ((((0xdad8) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_ST, OPT_ST0 }},
    { TOK_ASM_fcmovnb, ((uint64_t) ((((0xdbc0) & 0xff00) == 0x0f00) ? ((((0xdbc0) >> 8) & ~0xff) | ((0xdbc0) & 0xff)) : (0xdbc0))), ((0x04) | ((0) << 13) | ((((0xdbc0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_ST, OPT_ST0 }},
    { TOK_ASM_fcmovne, ((uint64_t) ((((0xdbc8) & 0xff00) == 0x0f00) ? ((((0xdbc8) >> 8) & ~0xff) | ((0xdbc8) & 0xff)) : (0xdbc8))), ((0x04) | ((0) << 13) | ((((0xdbc8) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_ST, OPT_ST0 }},
    { TOK_ASM_fcmovnbe, ((uint64_t) ((((0xdbd0) & 0xff00) == 0x0f00) ? ((((0xdbd0) >> 8) & ~0xff) | ((0xdbd0) & 0xff)) : (0xdbd0))), ((0x04) | ((0) << 13) | ((((0xdbd0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_ST, OPT_ST0 }},
    { TOK_ASM_fcmovnu, ((uint64_t) ((((0xdbd8) & 0xff00) == 0x0f00) ? ((((0xdbd8) >> 8) & ~0xff) | ((0xdbd8) & 0xff)) : (0xdbd8))), ((0x04) | ((0) << 13) | ((((0xdbd8) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_ST, OPT_ST0 }},

    { TOK_ASM_fucomi, ((uint64_t) ((((0xdbe8) & 0xff00) == 0x0f00) ? ((((0xdbe8) >> 8) & ~0xff) | ((0xdbe8) & 0xff)) : (0xdbe8))), ((0x04) | ((0) << 13) | ((((0xdbe8) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_ST, OPT_ST0 }},
    { TOK_ASM_fcomi, ((uint64_t) ((((0xdbf0) & 0xff00) == 0x0f00) ? ((((0xdbf0) >> 8) & ~0xff) | ((0xdbf0) & 0xff)) : (0xdbf0))), ((0x04) | ((0) << 13) | ((((0xdbf0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_ST, OPT_ST0 }},
    { TOK_ASM_fucomip, ((uint64_t) ((((0xdfe8) & 0xff00) == 0x0f00) ? ((((0xdfe8) >> 8) & ~0xff) | ((0xdfe8) & 0xff)) : (0xdfe8))), ((0x04) | ((0) << 13) | ((((0xdfe8) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_ST, OPT_ST0 }},
    { TOK_ASM_fcomip, ((uint64_t) ((((0xdff0) & 0xff00) == 0x0f00) ? ((((0xdff0) >> 8) & ~0xff) | ((0xdff0) & 0xff)) : (0xdff0))), ((0x04) | ((0) << 13) | ((((0xdff0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_ST, OPT_ST0 }},



    { TOK_ASM_movd, ((uint64_t) ((((0x0f6e) & 0xff00) == 0x0f00) ? ((((0x0f6e) >> 8) & ~0xff) | ((0x0f6e) & 0xff)) : (0x0f6e))), ((0x08) | ((0) << 13) | ((((0x0f6e) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_REG32, OPT_MMXSSE }},


{ TOK_ASM_movd, ((uint64_t) ((((0x0f6e) & 0xff00) == 0x0f00) ? ((((0x0f6e) >> 8) & ~0xff) | ((0x0f6e) & 0xff)) : (0x0f6e))), ((0x08) | ((0) << 13) | ((((0x0f6e) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_REG64, OPT_MMXSSE }},
{ TOK_ASM_movq, ((uint64_t) ((((0x0f6e) & 0xff00) == 0x0f00) ? ((((0x0f6e) >> 8) & ~0xff) | ((0x0f6e) & 0xff)) : (0x0f6e))), ((0x08 | 0x200) | ((0) << 13) | ((((0x0f6e) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_REG64, OPT_MMXSSE }},
{ TOK_ASM_movq, ((uint64_t) ((((0x0f6f) & 0xff00) == 0x0f00) ? ((((0x0f6f) >> 8) & ~0xff) | ((0x0f6f) & 0xff)) : (0x0f6f))), ((0x08) | ((0) << 13) | ((((0x0f6f) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMX, OPT_MMX }},
{ TOK_ASM_movd, ((uint64_t) ((((0x0f7e) & 0xff00) == 0x0f00) ? ((((0x0f7e) >> 8) & ~0xff) | ((0x0f7e) & 0xff)) : (0x0f7e))), ((0x08) | ((0) << 13) | ((((0x0f7e) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_MMXSSE, OPT_EA | OPT_REG32 }},
{ TOK_ASM_movd, ((uint64_t) ((((0x0f7e) & 0xff00) == 0x0f00) ? ((((0x0f7e) >> 8) & ~0xff) | ((0x0f7e) & 0xff)) : (0x0f7e))), ((0x08) | ((0) << 13) | ((((0x0f7e) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_MMXSSE, OPT_EA | OPT_REG64 }},
{ TOK_ASM_movq, ((uint64_t) ((((0x0f7f) & 0xff00) == 0x0f00) ? ((((0x0f7f) >> 8) & ~0xff) | ((0x0f7f) & 0xff)) : (0x0f7f))), ((0x08) | ((0) << 13) | ((((0x0f7f) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_MMX, OPT_EA | OPT_MMX }},
{ TOK_ASM_movq, ((uint64_t) ((((0x660fd6) & 0xff00) == 0x0f00) ? ((((0x660fd6) >> 8) & ~0xff) | ((0x660fd6) & 0xff)) : (0x660fd6))), ((0x08) | ((0) << 13) | ((((0x660fd6) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_SSE, OPT_EA | OPT_SSE }},
{ TOK_ASM_movq, ((uint64_t) ((((0xf30f7e) & 0xff00) == 0x0f00) ? ((((0xf30f7e) >> 8) & ~0xff) | ((0xf30f7e) & 0xff)) : (0xf30f7e))), ((0x08) | ((0) << 13) | ((((0xf30f7e) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_SSE, OPT_SSE }},
{ TOK_ASM_movq, ((uint64_t) ((((0x0f7e) & 0xff00) == 0x0f00) ? ((((0x0f7e) >> 8) & ~0xff) | ((0x0f7e) & 0xff)) : (0x0f7e))), ((0x08) | ((0) << 13) | ((((0x0f7e) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_MMXSSE, OPT_EA | OPT_REG64 }},

    { TOK_ASM_packssdw, ((uint64_t) ((((0x0f6b) & 0xff00) == 0x0f00) ? ((((0x0f6b) >> 8) & ~0xff) | ((0x0f6b) & 0xff)) : (0x0f6b))), ((0x08) | ((0) << 13) | ((((0x0f6b) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_packsswb, ((uint64_t) ((((0x0f63) & 0xff00) == 0x0f00) ? ((((0x0f63) >> 8) & ~0xff) | ((0x0f63) & 0xff)) : (0x0f63))), ((0x08) | ((0) << 13) | ((((0x0f63) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_packuswb, ((uint64_t) ((((0x0f67) & 0xff00) == 0x0f00) ? ((((0x0f67) >> 8) & ~0xff) | ((0x0f67) & 0xff)) : (0x0f67))), ((0x08) | ((0) << 13) | ((((0x0f67) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_paddb, ((uint64_t) ((((0x0ffc) & 0xff00) == 0x0f00) ? ((((0x0ffc) >> 8) & ~0xff) | ((0x0ffc) & 0xff)) : (0x0ffc))), ((0x08) | ((0) << 13) | ((((0x0ffc) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_paddw, ((uint64_t) ((((0x0ffd) & 0xff00) == 0x0f00) ? ((((0x0ffd) >> 8) & ~0xff) | ((0x0ffd) & 0xff)) : (0x0ffd))), ((0x08) | ((0) << 13) | ((((0x0ffd) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_paddd, ((uint64_t) ((((0x0ffe) & 0xff00) == 0x0f00) ? ((((0x0ffe) >> 8) & ~0xff) | ((0x0ffe) & 0xff)) : (0x0ffe))), ((0x08) | ((0) << 13) | ((((0x0ffe) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_paddsb, ((uint64_t) ((((0x0fec) & 0xff00) == 0x0f00) ? ((((0x0fec) >> 8) & ~0xff) | ((0x0fec) & 0xff)) : (0x0fec))), ((0x08) | ((0) << 13) | ((((0x0fec) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_paddsw, ((uint64_t) ((((0x0fed) & 0xff00) == 0x0f00) ? ((((0x0fed) >> 8) & ~0xff) | ((0x0fed) & 0xff)) : (0x0fed))), ((0x08) | ((0) << 13) | ((((0x0fed) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_paddusb, ((uint64_t) ((((0x0fdc) & 0xff00) == 0x0f00) ? ((((0x0fdc) >> 8) & ~0xff) | ((0x0fdc) & 0xff)) : (0x0fdc))), ((0x08) | ((0) << 13) | ((((0x0fdc) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_paddusw, ((uint64_t) ((((0x0fdd) & 0xff00) == 0x0f00) ? ((((0x0fdd) >> 8) & ~0xff) | ((0x0fdd) & 0xff)) : (0x0fdd))), ((0x08) | ((0) << 13) | ((((0x0fdd) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_pand, ((uint64_t) ((((0x0fdb) & 0xff00) == 0x0f00) ? ((((0x0fdb) >> 8) & ~0xff) | ((0x0fdb) & 0xff)) : (0x0fdb))), ((0x08) | ((0) << 13) | ((((0x0fdb) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_pandn, ((uint64_t) ((((0x0fdf) & 0xff00) == 0x0f00) ? ((((0x0fdf) >> 8) & ~0xff) | ((0x0fdf) & 0xff)) : (0x0fdf))), ((0x08) | ((0) << 13) | ((((0x0fdf) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_pcmpeqb, ((uint64_t) ((((0x0f74) & 0xff00) == 0x0f00) ? ((((0x0f74) >> 8) & ~0xff) | ((0x0f74) & 0xff)) : (0x0f74))), ((0x08) | ((0) << 13) | ((((0x0f74) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_pcmpeqw, ((uint64_t) ((((0x0f75) & 0xff00) == 0x0f00) ? ((((0x0f75) >> 8) & ~0xff) | ((0x0f75) & 0xff)) : (0x0f75))), ((0x08) | ((0) << 13) | ((((0x0f75) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_pcmpeqd, ((uint64_t) ((((0x0f76) & 0xff00) == 0x0f00) ? ((((0x0f76) >> 8) & ~0xff) | ((0x0f76) & 0xff)) : (0x0f76))), ((0x08) | ((0) << 13) | ((((0x0f76) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_pcmpgtb, ((uint64_t) ((((0x0f64) & 0xff00) == 0x0f00) ? ((((0x0f64) >> 8) & ~0xff) | ((0x0f64) & 0xff)) : (0x0f64))), ((0x08) | ((0) << 13) | ((((0x0f64) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_pcmpgtw, ((uint64_t) ((((0x0f65) & 0xff00) == 0x0f00) ? ((((0x0f65) >> 8) & ~0xff) | ((0x0f65) & 0xff)) : (0x0f65))), ((0x08) | ((0) << 13) | ((((0x0f65) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_pcmpgtd, ((uint64_t) ((((0x0f66) & 0xff00) == 0x0f00) ? ((((0x0f66) >> 8) & ~0xff) | ((0x0f66) & 0xff)) : (0x0f66))), ((0x08) | ((0) << 13) | ((((0x0f66) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_pmaddwd, ((uint64_t) ((((0x0ff5) & 0xff00) == 0x0f00) ? ((((0x0ff5) >> 8) & ~0xff) | ((0x0ff5) & 0xff)) : (0x0ff5))), ((0x08) | ((0) << 13) | ((((0x0ff5) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_pmulhw, ((uint64_t) ((((0x0fe5) & 0xff00) == 0x0f00) ? ((((0x0fe5) >> 8) & ~0xff) | ((0x0fe5) & 0xff)) : (0x0fe5))), ((0x08) | ((0) << 13) | ((((0x0fe5) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_pmullw, ((uint64_t) ((((0x0fd5) & 0xff00) == 0x0f00) ? ((((0x0fd5) >> 8) & ~0xff) | ((0x0fd5) & 0xff)) : (0x0fd5))), ((0x08) | ((0) << 13) | ((((0x0fd5) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_por, ((uint64_t) ((((0x0feb) & 0xff00) == 0x0f00) ? ((((0x0feb) >> 8) & ~0xff) | ((0x0feb) & 0xff)) : (0x0feb))), ((0x08) | ((0) << 13) | ((((0x0feb) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_psllw, ((uint64_t) ((((0x0ff1) & 0xff00) == 0x0f00) ? ((((0x0ff1) >> 8) & ~0xff) | ((0x0ff1) & 0xff)) : (0x0ff1))), ((0x08) | ((0) << 13) | ((((0x0ff1) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
{ TOK_ASM_psllw, ((uint64_t) ((((0x0f71) & 0xff00) == 0x0f00) ? ((((0x0f71) >> 8) & ~0xff) | ((0x0f71) & 0xff)) : (0x0f71))), ((0x08) | ((6) << 13) | ((((0x0f71) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IM8, OPT_MMXSSE }},
    { TOK_ASM_pslld, ((uint64_t) ((((0x0ff2) & 0xff00) == 0x0f00) ? ((((0x0ff2) >> 8) & ~0xff) | ((0x0ff2) & 0xff)) : (0x0ff2))), ((0x08) | ((0) << 13) | ((((0x0ff2) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
{ TOK_ASM_pslld, ((uint64_t) ((((0x0f72) & 0xff00) == 0x0f00) ? ((((0x0f72) >> 8) & ~0xff) | ((0x0f72) & 0xff)) : (0x0f72))), ((0x08) | ((6) << 13) | ((((0x0f72) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IM8, OPT_MMXSSE }},
    { TOK_ASM_psllq, ((uint64_t) ((((0x0ff3) & 0xff00) == 0x0f00) ? ((((0x0ff3) >> 8) & ~0xff) | ((0x0ff3) & 0xff)) : (0x0ff3))), ((0x08) | ((0) << 13) | ((((0x0ff3) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
{ TOK_ASM_psllq, ((uint64_t) ((((0x0f73) & 0xff00) == 0x0f00) ? ((((0x0f73) >> 8) & ~0xff) | ((0x0f73) & 0xff)) : (0x0f73))), ((0x08) | ((6) << 13) | ((((0x0f73) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IM8, OPT_MMXSSE }},
    { TOK_ASM_psraw, ((uint64_t) ((((0x0fe1) & 0xff00) == 0x0f00) ? ((((0x0fe1) >> 8) & ~0xff) | ((0x0fe1) & 0xff)) : (0x0fe1))), ((0x08) | ((0) << 13) | ((((0x0fe1) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
{ TOK_ASM_psraw, ((uint64_t) ((((0x0f71) & 0xff00) == 0x0f00) ? ((((0x0f71) >> 8) & ~0xff) | ((0x0f71) & 0xff)) : (0x0f71))), ((0x08) | ((4) << 13) | ((((0x0f71) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IM8, OPT_MMXSSE }},
    { TOK_ASM_psrad, ((uint64_t) ((((0x0fe2) & 0xff00) == 0x0f00) ? ((((0x0fe2) >> 8) & ~0xff) | ((0x0fe2) & 0xff)) : (0x0fe2))), ((0x08) | ((0) << 13) | ((((0x0fe2) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
{ TOK_ASM_psrad, ((uint64_t) ((((0x0f72) & 0xff00) == 0x0f00) ? ((((0x0f72) >> 8) & ~0xff) | ((0x0f72) & 0xff)) : (0x0f72))), ((0x08) | ((4) << 13) | ((((0x0f72) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IM8, OPT_MMXSSE }},
    { TOK_ASM_psrlw, ((uint64_t) ((((0x0fd1) & 0xff00) == 0x0f00) ? ((((0x0fd1) >> 8) & ~0xff) | ((0x0fd1) & 0xff)) : (0x0fd1))), ((0x08) | ((0) << 13) | ((((0x0fd1) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
{ TOK_ASM_psrlw, ((uint64_t) ((((0x0f71) & 0xff00) == 0x0f00) ? ((((0x0f71) >> 8) & ~0xff) | ((0x0f71) & 0xff)) : (0x0f71))), ((0x08) | ((2) << 13) | ((((0x0f71) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IM8, OPT_MMXSSE }},
    { TOK_ASM_psrld, ((uint64_t) ((((0x0fd2) & 0xff00) == 0x0f00) ? ((((0x0fd2) >> 8) & ~0xff) | ((0x0fd2) & 0xff)) : (0x0fd2))), ((0x08) | ((0) << 13) | ((((0x0fd2) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
{ TOK_ASM_psrld, ((uint64_t) ((((0x0f72) & 0xff00) == 0x0f00) ? ((((0x0f72) >> 8) & ~0xff) | ((0x0f72) & 0xff)) : (0x0f72))), ((0x08) | ((2) << 13) | ((((0x0f72) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IM8, OPT_MMXSSE }},
    { TOK_ASM_psrlq, ((uint64_t) ((((0x0fd3) & 0xff00) == 0x0f00) ? ((((0x0fd3) >> 8) & ~0xff) | ((0x0fd3) & 0xff)) : (0x0fd3))), ((0x08) | ((0) << 13) | ((((0x0fd3) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
{ TOK_ASM_psrlq, ((uint64_t) ((((0x0f73) & 0xff00) == 0x0f00) ? ((((0x0f73) >> 8) & ~0xff) | ((0x0f73) & 0xff)) : (0x0f73))), ((0x08) | ((2) << 13) | ((((0x0f73) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_IM8, OPT_MMXSSE }},
    { TOK_ASM_psubb, ((uint64_t) ((((0x0ff8) & 0xff00) == 0x0f00) ? ((((0x0ff8) >> 8) & ~0xff) | ((0x0ff8) & 0xff)) : (0x0ff8))), ((0x08) | ((0) << 13) | ((((0x0ff8) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_psubw, ((uint64_t) ((((0x0ff9) & 0xff00) == 0x0f00) ? ((((0x0ff9) >> 8) & ~0xff) | ((0x0ff9) & 0xff)) : (0x0ff9))), ((0x08) | ((0) << 13) | ((((0x0ff9) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_psubd, ((uint64_t) ((((0x0ffa) & 0xff00) == 0x0f00) ? ((((0x0ffa) >> 8) & ~0xff) | ((0x0ffa) & 0xff)) : (0x0ffa))), ((0x08) | ((0) << 13) | ((((0x0ffa) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_psubsb, ((uint64_t) ((((0x0fe8) & 0xff00) == 0x0f00) ? ((((0x0fe8) >> 8) & ~0xff) | ((0x0fe8) & 0xff)) : (0x0fe8))), ((0x08) | ((0) << 13) | ((((0x0fe8) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_psubsw, ((uint64_t) ((((0x0fe9) & 0xff00) == 0x0f00) ? ((((0x0fe9) >> 8) & ~0xff) | ((0x0fe9) & 0xff)) : (0x0fe9))), ((0x08) | ((0) << 13) | ((((0x0fe9) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_psubusb, ((uint64_t) ((((0x0fd8) & 0xff00) == 0x0f00) ? ((((0x0fd8) >> 8) & ~0xff) | ((0x0fd8) & 0xff)) : (0x0fd8))), ((0x08) | ((0) << 13) | ((((0x0fd8) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_psubusw, ((uint64_t) ((((0x0fd9) & 0xff00) == 0x0f00) ? ((((0x0fd9) >> 8) & ~0xff) | ((0x0fd9) & 0xff)) : (0x0fd9))), ((0x08) | ((0) << 13) | ((((0x0fd9) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_punpckhbw, ((uint64_t) ((((0x0f68) & 0xff00) == 0x0f00) ? ((((0x0f68) >> 8) & ~0xff) | ((0x0f68) & 0xff)) : (0x0f68))), ((0x08) | ((0) << 13) | ((((0x0f68) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_punpckhwd, ((uint64_t) ((((0x0f69) & 0xff00) == 0x0f00) ? ((((0x0f69) >> 8) & ~0xff) | ((0x0f69) & 0xff)) : (0x0f69))), ((0x08) | ((0) << 13) | ((((0x0f69) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_punpckhdq, ((uint64_t) ((((0x0f6a) & 0xff00) == 0x0f00) ? ((((0x0f6a) >> 8) & ~0xff) | ((0x0f6a) & 0xff)) : (0x0f6a))), ((0x08) | ((0) << 13) | ((((0x0f6a) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_punpcklbw, ((uint64_t) ((((0x0f60) & 0xff00) == 0x0f00) ? ((((0x0f60) >> 8) & ~0xff) | ((0x0f60) & 0xff)) : (0x0f60))), ((0x08) | ((0) << 13) | ((((0x0f60) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_punpcklwd, ((uint64_t) ((((0x0f61) & 0xff00) == 0x0f00) ? ((((0x0f61) >> 8) & ~0xff) | ((0x0f61) & 0xff)) : (0x0f61))), ((0x08) | ((0) << 13) | ((((0x0f61) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_punpckldq, ((uint64_t) ((((0x0f62) & 0xff00) == 0x0f00) ? ((((0x0f62) >> 8) & ~0xff) | ((0x0f62) & 0xff)) : (0x0f62))), ((0x08) | ((0) << 13) | ((((0x0f62) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_pxor, ((uint64_t) ((((0x0fef) & 0xff00) == 0x0f00) ? ((((0x0fef) >> 8) & ~0xff) | ((0x0fef) & 0xff)) : (0x0fef))), ((0x08) | ((0) << 13) | ((((0x0fef) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},


    { TOK_ASM_movups, ((uint64_t) ((((0x0f10) & 0xff00) == 0x0f00) ? ((((0x0f10) >> 8) & ~0xff) | ((0x0f10) & 0xff)) : (0x0f10))), ((0x08) | ((0) << 13) | ((((0x0f10) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_REG32, OPT_SSE }},
{ TOK_ASM_movups, ((uint64_t) ((((0x0f11) & 0xff00) == 0x0f00) ? ((((0x0f11) >> 8) & ~0xff) | ((0x0f11) & 0xff)) : (0x0f11))), ((0x08) | ((0) << 13) | ((((0x0f11) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_SSE, OPT_EA | OPT_REG32 }},
    { TOK_ASM_movaps, ((uint64_t) ((((0x0f28) & 0xff00) == 0x0f00) ? ((((0x0f28) >> 8) & ~0xff) | ((0x0f28) & 0xff)) : (0x0f28))), ((0x08) | ((0) << 13) | ((((0x0f28) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_REG32, OPT_SSE }},
{ TOK_ASM_movaps, ((uint64_t) ((((0x0f29) & 0xff00) == 0x0f00) ? ((((0x0f29) >> 8) & ~0xff) | ((0x0f29) & 0xff)) : (0x0f29))), ((0x08) | ((0) << 13) | ((((0x0f29) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_SSE, OPT_EA | OPT_REG32 }},
    { TOK_ASM_movhps, ((uint64_t) ((((0x0f16) & 0xff00) == 0x0f00) ? ((((0x0f16) >> 8) & ~0xff) | ((0x0f16) & 0xff)) : (0x0f16))), ((0x08) | ((0) << 13) | ((((0x0f16) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_REG32, OPT_SSE }},
{ TOK_ASM_movhps, ((uint64_t) ((((0x0f17) & 0xff00) == 0x0f00) ? ((((0x0f17) >> 8) & ~0xff) | ((0x0f17) & 0xff)) : (0x0f17))), ((0x08) | ((0) << 13) | ((((0x0f17) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_SSE, OPT_EA | OPT_REG32 }},
    { TOK_ASM_addps, ((uint64_t) ((((0x0f58) & 0xff00) == 0x0f00) ? ((((0x0f58) >> 8) & ~0xff) | ((0x0f58) & 0xff)) : (0x0f58))), ((0x08) | ((0) << 13) | ((((0x0f58) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_SSE, OPT_SSE }},
    { TOK_ASM_cvtpi2ps, ((uint64_t) ((((0x0f2a) & 0xff00) == 0x0f00) ? ((((0x0f2a) >> 8) & ~0xff) | ((0x0f2a) & 0xff)) : (0x0f2a))), ((0x08) | ((0) << 13) | ((((0x0f2a) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMX, OPT_SSE }},
    { TOK_ASM_cvtps2pi, ((uint64_t) ((((0x0f2d) & 0xff00) == 0x0f00) ? ((((0x0f2d) >> 8) & ~0xff) | ((0x0f2d) & 0xff)) : (0x0f2d))), ((0x08) | ((0) << 13) | ((((0x0f2d) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_SSE, OPT_MMX }},
    { TOK_ASM_cvttps2pi, ((uint64_t) ((((0x0f2c) & 0xff00) == 0x0f00) ? ((((0x0f2c) >> 8) & ~0xff) | ((0x0f2c) & 0xff)) : (0x0f2c))), ((0x08) | ((0) << 13) | ((((0x0f2c) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_SSE, OPT_MMX }},
    { TOK_ASM_divps, ((uint64_t) ((((0x0f5e) & 0xff00) == 0x0f00) ? ((((0x0f5e) >> 8) & ~0xff) | ((0x0f5e) & 0xff)) : (0x0f5e))), ((0x08) | ((0) << 13) | ((((0x0f5e) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_SSE, OPT_SSE }},
    { TOK_ASM_maxps, ((uint64_t) ((((0x0f5f) & 0xff00) == 0x0f00) ? ((((0x0f5f) >> 8) & ~0xff) | ((0x0f5f) & 0xff)) : (0x0f5f))), ((0x08) | ((0) << 13) | ((((0x0f5f) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_SSE, OPT_SSE }},
    { TOK_ASM_minps, ((uint64_t) ((((0x0f5d) & 0xff00) == 0x0f00) ? ((((0x0f5d) >> 8) & ~0xff) | ((0x0f5d) & 0xff)) : (0x0f5d))), ((0x08) | ((0) << 13) | ((((0x0f5d) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_SSE, OPT_SSE }},
    { TOK_ASM_mulps, ((uint64_t) ((((0x0f59) & 0xff00) == 0x0f00) ? ((((0x0f59) >> 8) & ~0xff) | ((0x0f59) & 0xff)) : (0x0f59))), ((0x08) | ((0) << 13) | ((((0x0f59) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_SSE, OPT_SSE }},
    { TOK_ASM_pavgb, ((uint64_t) ((((0x0fe0) & 0xff00) == 0x0f00) ? ((((0x0fe0) >> 8) & ~0xff) | ((0x0fe0) & 0xff)) : (0x0fe0))), ((0x08) | ((0) << 13) | ((((0x0fe0) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_SSE, OPT_SSE }},
    { TOK_ASM_pavgw, ((uint64_t) ((((0x0fe3) & 0xff00) == 0x0f00) ? ((((0x0fe3) >> 8) & ~0xff) | ((0x0fe3) & 0xff)) : (0x0fe3))), ((0x08) | ((0) << 13) | ((((0x0fe3) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_SSE, OPT_SSE }},
    { TOK_ASM_pmaxsw, ((uint64_t) ((((0x0fee) & 0xff00) == 0x0f00) ? ((((0x0fee) >> 8) & ~0xff) | ((0x0fee) & 0xff)) : (0x0fee))), ((0x08) | ((0) << 13) | ((((0x0fee) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_pmaxub, ((uint64_t) ((((0x0fde) & 0xff00) == 0x0f00) ? ((((0x0fde) >> 8) & ~0xff) | ((0x0fde) & 0xff)) : (0x0fde))), ((0x08) | ((0) << 13) | ((((0x0fde) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_pminsw, ((uint64_t) ((((0x0fea) & 0xff00) == 0x0f00) ? ((((0x0fea) >> 8) & ~0xff) | ((0x0fea) & 0xff)) : (0x0fea))), ((0x08) | ((0) << 13) | ((((0x0fea) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_pminub, ((uint64_t) ((((0x0fda) & 0xff00) == 0x0f00) ? ((((0x0fda) >> 8) & ~0xff) | ((0x0fda) & 0xff)) : (0x0fda))), ((0x08) | ((0) << 13) | ((((0x0fda) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_MMXSSE, OPT_MMXSSE }},
    { TOK_ASM_rcpss, ((uint64_t) ((((0x0f53) & 0xff00) == 0x0f00) ? ((((0x0f53) >> 8) & ~0xff) | ((0x0f53) & 0xff)) : (0x0f53))), ((0x08) | ((0) << 13) | ((((0x0f53) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_SSE, OPT_SSE }},
    { TOK_ASM_rsqrtps, ((uint64_t) ((((0x0f52) & 0xff00) == 0x0f00) ? ((((0x0f52) >> 8) & ~0xff) | ((0x0f52) & 0xff)) : (0x0f52))), ((0x08) | ((0) << 13) | ((((0x0f52) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_SSE, OPT_SSE }},
    { TOK_ASM_sqrtps, ((uint64_t) ((((0x0f51) & 0xff00) == 0x0f00) ? ((((0x0f51) >> 8) & ~0xff) | ((0x0f51) & 0xff)) : (0x0f51))), ((0x08) | ((0) << 13) | ((((0x0f51) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_SSE, OPT_SSE }},
    { TOK_ASM_subps, ((uint64_t) ((((0x0f5c) & 0xff00) == 0x0f00) ? ((((0x0f5c) >> 8) & ~0xff) | ((0x0f5c) & 0xff)) : (0x0f5c))), ((0x08) | ((0) << 13) | ((((0x0f5c) & 0xff00) == 0x0f00) ? 0x100 : 0)), 2, { OPT_EA | OPT_SSE, OPT_SSE }},

    { TOK_ASM_prefetchnta, ((uint64_t) ((((0x0f18) & 0xff00) == 0x0f00) ? ((((0x0f18) >> 8) & ~0xff) | ((0x0f18) & 0xff)) : (0x0f18))), ((0x08) | ((0) << 13) | ((((0x0f18) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_prefetcht0, ((uint64_t) ((((0x0f18) & 0xff00) == 0x0f00) ? ((((0x0f18) >> 8) & ~0xff) | ((0x0f18) & 0xff)) : (0x0f18))), ((0x08) | ((1) << 13) | ((((0x0f18) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_prefetcht1, ((uint64_t) ((((0x0f18) & 0xff00) == 0x0f00) ? ((((0x0f18) >> 8) & ~0xff) | ((0x0f18) & 0xff)) : (0x0f18))), ((0x08) | ((2) << 13) | ((((0x0f18) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_prefetcht2, ((uint64_t) ((((0x0f18) & 0xff00) == 0x0f00) ? ((((0x0f18) >> 8) & ~0xff) | ((0x0f18) & 0xff)) : (0x0f18))), ((0x08) | ((3) << 13) | ((((0x0f18) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_prefetchw, ((uint64_t) ((((0x0f0d) & 0xff00) == 0x0f00) ? ((((0x0f0d) >> 8) & ~0xff) | ((0x0f0d) & 0xff)) : (0x0f0d))), ((0x08) | ((1) << 13) | ((((0x0f0d) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
    { TOK_ASM_lfence, ((uint64_t) ((((0x0fae) & 0xff00) == 0x0f00) ? ((((0x0fae) >> 8) & ~0xff) | ((0x0fae) & 0xff)) : (0x0fae))), ((0x08) | ((5) << 13) | ((((0x0fae) & 0xff00) == 0x0f00) ? 0x100 : 0)), 0, { 0 } },
    { TOK_ASM_mfence, ((uint64_t) ((((0x0fae) & 0xff00) == 0x0f00) ? ((((0x0fae) >> 8) & ~0xff) | ((0x0fae) & 0xff)) : (0x0fae))), ((0x08) | ((6) << 13) | ((((0x0fae) & 0xff00) == 0x0f00) ? 0x100 : 0)), 0, { 0 } },
    { TOK_ASM_sfence, ((uint64_t) ((((0x0fae) & 0xff00) == 0x0f00) ? ((((0x0fae) >> 8) & ~0xff) | ((0x0fae) & 0xff)) : (0x0fae))), ((0x08) | ((7) << 13) | ((((0x0fae) & 0xff00) == 0x0f00) ? 0x100 : 0)), 0, { 0 } },
    { TOK_ASM_clflush, ((uint64_t) ((((0x0fae) & 0xff00) == 0x0f00) ? ((((0x0fae) >> 8) & ~0xff) | ((0x0fae) & 0xff)) : (0x0fae))), ((0x08) | ((7) << 13) | ((((0x0fae) & 0xff00) == 0x0f00) ? 0x100 : 0)), 1, { OPT_EA }},
# 235 "../tinycc/i386-asm.c" 2




    { 0, },
};

static const uint16_t op0_codes[] = {







# 1 "../tinycc/x86_64-asm.h" 1
     0xf8,
     0xfc,
     0xfa,
     0x0f06,
     0xf5,
     0x9f,
     0x9e,
     0x9c,
     0x9d,
     0x9c,
     0x9d,
     0xf9,
     0xfd,
     0xfb,
     0x37,
     0x3f,
     0x27,
     0x2f,
     0xd50a,
     0xd40a,
     0x6698,
     0x6699,
     0x98,
     0x99,
     0x6698,
     0x98,
     0x6699,
     0x99,
     0x4899,
     0xcc,
     0xce,
     0xcf,
     0x0faa,
     0xf4,
     0x9b,
     0x90,
     0xf390,
     0xd7,
# 77 "../tinycc/x86_64-asm.h"
     0xf0,
     0xf3,
     0xf3,
     0xf3,
     0xf2,
     0xf2,

     0x0f08,
     0x0f09,
     0x0fa2,
     0x0f30,
     0x0f31,
     0x0f32,
     0x0f33,

     0x0f05,
     0x0f07,

     0x0f0b,
# 227 "../tinycc/x86_64-asm.h"
    0xc9,
    0xc3,
    0xc3,


    0xcb,
# 261 "../tinycc/x86_64-asm.h"
     0xdae9,
     0xd9e4,
     0xd9e5,
     0xd9e8,
     0xd9e9,
     0xd9ea,
     0xd9eb,
     0xd9ec,
     0xd9ed,
     0xd9ee,

     0xd9f0,
     0xd9f1,
     0xd9f2,
     0xd9f3,
     0xd9f4,
     0xd9f5,
     0xd9f6,
     0xd9f7,
     0xd9f8,
     0xd9f9,
     0xd9fa,
     0xd9fb,
     0xd9fc,
     0xd9fd,
     0xd9fe,
     0xd9ff,
     0xd9e0,
     0xd9e1,
     0xdbe3,
     0xdbe2,
     0xd9d0,
     0x9b,
# 325 "../tinycc/x86_64-asm.h"
    0xd9c9,
# 336 "../tinycc/x86_64-asm.h"
    0xdfe0,
# 418 "../tinycc/x86_64-asm.h"
    0x0f77,
# 251 "../tinycc/i386-asm.c" 2



};

static inline int get_reg_shift(TCCState *s1)
{
    int shift, v;
    v = asm_int_expr(s1);
    switch(v) {
    case 1:
        shift = 0;
        break;
    case 2:
        shift = 1;
        break;
    case 4:
        shift = 2;
        break;
    case 8:
        shift = 3;
        break;
    default:
        expect("1, 2, 4 or 8 constant");
        shift = 0;
        break;
    }
    return shift;
}


static int asm_parse_numeric_reg(int t, unsigned int *type)
{
    int reg = -1;
    if (t >= 256 && t < tok_ident) {
	const char *s = table_ident[t - 256]->str;
	char c;
	*type = (1 << OPT_REG64);
	if (*s == 'c') {
	    s++;
	    *type = (1 << OPT_CR);
	}
	if (*s++ != 'r')
	  return -1;

	if ((c = *s++) >= '1' && c <= '9')
	  reg = c - '0';
	else
	  return -1;
	if ((c = *s) >= '0' && c <= '5')
	  s++, reg = reg * 10 + c - '0';
	if (reg > 15)
	  return -1;
	if ((c = *s) == 0)
	  ;
	else if (*type != (1 << OPT_REG64))
	  return -1;
	else if (c == 'b' && !s[1])
	  *type = (1 << OPT_REG8);
	else if (c == 'w' && !s[1])
	  *type = (1 << OPT_REG16);
	else if (c == 'd' && !s[1])
	  *type = (1 << OPT_REG32);
	else
	  return -1;
    }
    return reg;
}


static int asm_parse_reg(unsigned int *type)
{
    int reg = 0;
    *type = 0;
    if (tok != '%')
        goto error_32;
    next();
    if (tok >= TOK_ASM_eax && tok <= TOK_ASM_edi) {
        reg = tok - TOK_ASM_eax;
	*type = (1 << OPT_REG32);

    } else if (tok >= TOK_ASM_rax && tok <= TOK_ASM_rdi) {
        reg = tok - TOK_ASM_rax;
	*type = (1 << OPT_REG64);
    } else if (tok == TOK_ASM_rip) {
        reg = -2;
	*type = (1 << OPT_REG64);
    } else if ((reg = asm_parse_numeric_reg(tok, type)) >= 0
	       && (*type == (1 << OPT_REG32) || *type == (1 << OPT_REG64))) {
	;

    } else {
    error_32:
        expect("register");
    }
    next();
    return reg;
}

static void parse_operand(TCCState *s1, Operand *op)
{
    ExprValue e;
    int reg, indir;
    const char *p;

    indir = 0;
    if (tok == '*') {
        next();
        indir = (1 << OPT_INDIR);
    }

    if (tok == '%') {
        next();
        if (tok >= TOK_ASM_al && tok <= TOK_ASM_db7) {
            reg = tok - TOK_ASM_al;
            op->type = 1 << (reg >> 3);
            op->reg = reg & 7;
            if ((op->type & ((1 << OPT_REG8) | (1 << OPT_REG16) | (1 << OPT_REG32) | (1 << OPT_REG64))) && op->reg == TREG_RAX)
                op->type |= (1 << OPT_EAX);
            else if (op->type == (1 << OPT_REG8) && op->reg == TREG_RCX)
                op->type |= (1 << OPT_CL);
            else if (op->type == (1 << OPT_REG16) && op->reg == TREG_RDX)
                op->type |= (1 << OPT_DX);
        } else if (tok >= TOK_ASM_dr0 && tok <= TOK_ASM_dr7) {
            op->type = (1 << OPT_DB);
            op->reg = tok - TOK_ASM_dr0;
        } else if (tok >= TOK_ASM_es && tok <= TOK_ASM_gs) {
            op->type = (1 << OPT_SEG);
            op->reg = tok - TOK_ASM_es;
        } else if (tok == TOK_ASM_st) {
            op->type = (1 << OPT_ST);
            op->reg = 0;
            next();
            if (tok == '(') {
                next();
                if (tok != 0xcd)
                    goto reg_error;
                p = tokc.str.data;
                reg = p[0] - '0';
                if ((unsigned)reg >= 8 || p[1] != '\0')
                    goto reg_error;
                op->reg = reg;
                next();
                skip(')');
            }
            if (op->reg == 0)
                op->type |= (1 << OPT_ST0);
            goto no_skip;

	} else if (tok >= TOK_ASM_spl && tok <= TOK_ASM_dil) {
	    op->type = (1 << OPT_REG8) | (1 << OPT_REG8_LOW);
	    op->reg = 4 + tok - TOK_ASM_spl;
        } else if ((op->reg = asm_parse_numeric_reg(tok, &op->type)) >= 0) {
	    ;

        } else {
        reg_error:
            _tcc_error("unknown register %%%s", get_tok_str(tok, &tokc));
        }
        next();
    no_skip: ;
    } else if (tok == '$') {

        next();
        asm_expr(s1, &e);
        op->type = (1 << OPT_IM32);
        op->e = e;
        if (!op->e.sym) {
            if (op->e.v == (uint8_t)op->e.v)
                op->type |= (1 << OPT_IM8);
            if (op->e.v == (int8_t)op->e.v)
                op->type |= (1 << OPT_IM8S);
            if (op->e.v == (uint16_t)op->e.v)
                op->type |= (1 << OPT_IM16);

            if (op->e.v != (int32_t)op->e.v && op->e.v != (uint32_t)op->e.v)
                op->type = (1 << OPT_IM64);

        }
    } else {

        op->type = 0x40000000;
        op->reg = -1;
        op->reg2 = -1;
        op->shift = 0;
        if (tok != '(') {
            asm_expr(s1, &e);
            op->e = e;
        } else {
            next();
            if (tok == '%') {
                unget_tok('(');
                op->e.v = 0;
                op->e.sym = ((void *)0);
            } else {

                asm_expr(s1, &e);
                if (tok != ')')
                    expect(")");
                next();
                op->e.v = e.v;
                op->e.sym = e.sym;
            }
	    op->e.pcrel = 0;
        }
        if (tok == '(') {
	    unsigned int type = 0;
            next();
            if (tok != ',') {
                op->reg = asm_parse_reg(&type);
            }
            if (tok == ',') {
                next();
                if (tok != ',') {
                    op->reg2 = asm_parse_reg(&type);
                }
                if (tok == ',') {
                    next();
                    op->shift = get_reg_shift(s1);
                }
            }
	    if (type & (1 << OPT_REG32))
	        op->type |= (0x40000000 << 1);
            skip(')');
        }
        if (op->reg == -1 && op->reg2 == -1)
            op->type |= (1 << OPT_ADDR);
    }
    op->type |= indir;
}


static void gen_expr32(ExprValue *pe)
{
    if (pe->pcrel)


	gen_addrpc32(0x0200, pe->sym, pe->v);
    else
	gen_addr32(pe->sym ? 0x0200 : 0, pe->sym, pe->v);
}


static void gen_expr64(ExprValue *pe)
{
    gen_addr64(pe->sym ? 0x0200 : 0, pe->sym, pe->v);
}



static void gen_disp32(ExprValue *pe)
{
    Sym *sym = pe->sym;
    Elf64_Sym *esym = elfsym(sym);
    if (esym && esym->st_shndx == tcc_state->cur_text_section->sh_num) {




        gen_le32(pe->v + esym->st_value - ind - 4);
    } else {
        if (sym && sym->type.t == 0) {
            sym->type.t = 6;
            sym->type.ref = ((void *)0);
        }
        gen_addrpc32(0x0200, sym, pe->v);
    }
}


static inline int asm_modrm(int reg, Operand *op)
{
    int mod, reg1, reg2, sib_reg1;

    if (op->type & (((1 << OPT_REG8) | (1 << OPT_REG16) | (1 << OPT_REG32) | (1 << OPT_REG64)) | (1 << OPT_MMX) | (1 << OPT_SSE))) {
        g(0xc0 + (reg << 3) + op->reg);
    } else if (op->reg == -1 && op->reg2 == -1) {


	g(0x04 + (reg << 3));
	g(0x25);



	gen_expr32(&op->e);

    } else if (op->reg == -2) {
        ExprValue *pe = &op->e;
        g(0x05 + (reg << 3));
        gen_addrpc32(pe->sym ? 0x0200 : 0, pe->sym, pe->v);
        return ind;

    } else {
        sib_reg1 = op->reg;

        if (sib_reg1 == -1) {
            sib_reg1 = 5;
            mod = 0x00;
        } else if (op->e.v == 0 && !op->e.sym && op->reg != 5) {
            mod = 0x00;
        } else if (op->e.v == (int8_t)op->e.v && !op->e.sym) {
            mod = 0x40;
        } else {
            mod = 0x80;
        }

        reg1 = op->reg;
        if (op->reg2 != -1)
            reg1 = 4;
        g(mod + (reg << 3) + reg1);
        if (reg1 == 4) {

            reg2 = op->reg2;
            if (reg2 == -1)
                reg2 = 4;
            g((op->shift << 6) + (reg2 << 3) + sib_reg1);
        }

        if (mod == 0x40) {
            g(op->e.v);
        } else if (mod == 0x80 || op->reg == -1) {
	    gen_expr32(&op->e);
        }
    }
    return 0;
}







static void asm_rex(int width64, Operand *ops, int nb_ops, int *op_type,
		    int regi, int rmi)
{
  unsigned char rex = width64 ? 0x48 : 0;
  int saw_high_8bit = 0;
  int i;
  if (rmi == -1) {


      for(i = 0; i < nb_ops; i++) {
	  if (op_type[i] & (((1 << OPT_REG8) | (1 << OPT_REG16) | (1 << OPT_REG32) | (1 << OPT_REG64)) | (1 << OPT_ST))) {
	      if (ops[i].reg >= 8) {
		  rex |= 0x41;
		  ops[i].reg -= 8;
	      } else if (ops[i].type & (1 << OPT_REG8_LOW))
		  rex |= 0x40;
	      else if (ops[i].type & (1 << OPT_REG8) && ops[i].reg >= 4)

		  saw_high_8bit = ops[i].reg;
	      break;
	  }
      }
  } else {
      if (regi != -1) {
	  if (ops[regi].reg >= 8) {
	      rex |= 0x44;
	      ops[regi].reg -= 8;
	  } else if (ops[regi].type & (1 << OPT_REG8_LOW))
	      rex |= 0x40;
	  else if (ops[regi].type & (1 << OPT_REG8) && ops[regi].reg >= 4)

	      saw_high_8bit = ops[regi].reg;
      }
      if (ops[rmi].type & (((1 << OPT_REG8) | (1 << OPT_REG16) | (1 << OPT_REG32) | (1 << OPT_REG64)) | (1 << OPT_MMX) | (1 << OPT_SSE) | (1 << OPT_CR) | 0x40000000)) {
	  if (ops[rmi].reg >= 8) {
	      rex |= 0x41;
	      ops[rmi].reg -= 8;
	  } else if (ops[rmi].type & (1 << OPT_REG8_LOW))
	      rex |= 0x40;
	  else if (ops[rmi].type & (1 << OPT_REG8) && ops[rmi].reg >= 4)

	      saw_high_8bit = ops[rmi].reg;
      }
      if (ops[rmi].type & 0x40000000 && ops[rmi].reg2 >= 8) {
	  rex |= 0x42;
	  ops[rmi].reg2 -= 8;
      }
  }
  if (rex) {
      if (saw_high_8bit)
	  _tcc_error("can't encode register %%%ch when REX prefix is required",
		    "acdb"[saw_high_8bit-4]);
      g(rex);
  }
}


static void maybe_print_stats (void)
{
  static int already = 1;
  if (!already)

    {
        const struct ASMInstr *pa;
        int freq[4];
        int op_vals[500];
        int nb_op_vals, i, j;

	already = 1;
        nb_op_vals = 0;
        memset(freq, 0, sizeof(freq));
        for(pa = asm_instrs; pa->sym != 0; pa++) {
            freq[pa->nb_ops]++;

                for(j=0;j<nb_op_vals;j++) {

                    if (pa->instr_type == op_vals[j])
                        goto found;
                }

                op_vals[nb_op_vals++] = pa->instr_type;
            found: ;

        }
        for(i=0;i<nb_op_vals;i++) {
            int v = op_vals[i];

                printf("%3d: %08x\n", i, v);
        }
        printf("size=%d nb=%d f0=%d f1=%d f2=%d f3=%d\n",
               (int)sizeof(asm_instrs),
	       (int)sizeof(asm_instrs) / (int)sizeof(ASMInstr),
               freq[0], freq[1], freq[2], freq[3]);
    }
}

static void asm_opcode(TCCState *s1, int opcode)
{
    const ASMInstr *pa;
    int i, modrm_index, modreg_index, reg, v, op1, seg_prefix, pc;
    int nb_ops, s;
    Operand ops[3], *pop;
    int op_type[3];
    int alltypes;
    int autosize;
    int p66;

    int rex64;


    maybe_print_stats();


    if (opcode >= TOK_ASM_wait && opcode <= TOK_ASM_repnz)
        unget_tok(';');


    pop = ops;
    nb_ops = 0;
    seg_prefix = 0;
    alltypes = 0;
    for(;;) {
        if (tok == ';' || tok == 10)
            break;
        if (nb_ops >= 3) {
            _tcc_error("incorrect number of operands");
        }
        parse_operand(s1, pop);
        if (tok == ':') {
           if (pop->type != (1 << OPT_SEG) || seg_prefix)
               _tcc_error("incorrect prefix");
           seg_prefix = segment_prefixes[pop->reg];
           next();
           parse_operand(s1, pop);
           if (!(pop->type & 0x40000000)) {
               _tcc_error("segment prefix must be followed by memory reference");
           }
        }
        pop++;
        nb_ops++;
        if (tok != ',')
            break;
        next();
    }

    s = 0;

again:


    for(pa = asm_instrs; pa->sym != 0; pa++) {
	int it = pa->instr_type & 0x70;
        s = 0;
        if (it == 0x40) {
            v = opcode - pa->sym;
            if (!((unsigned)v < 8 * 6 && (v % 6) == 0))
                continue;
        } else if (it == 0x30) {
            if (!(opcode >= pa->sym && opcode < pa->sym + 8*5))
                continue;
            s = (opcode - pa->sym) % 5;
	    if ((pa->instr_type & (0x01 | 0x1000)) == 0x1000)
	      {



		if (((opcode - pa->sym + 1) % 5) == 0)
		    continue;
	        s++;
	      }
        } else if (it == 0x20) {
            if (!(opcode >= pa->sym && opcode < pa->sym + 7*5))
                continue;
            s = (opcode - pa->sym) % 5;
        } else if (it == 0x50) {
            if (!(opcode >= pa->sym && opcode < pa->sym + 30))
                continue;




	    if (pa->instr_type & 0x1000)
	        s = 5 - 1;
        } else if (pa->instr_type & 0x01) {



	    if ((pa->instr_type & 0x1000) != 0x1000
		&& !(opcode >= pa->sym && opcode < pa->sym + 5-1))
	        continue;

            if (!(opcode >= pa->sym && opcode < pa->sym + 5))
                continue;
            s = opcode - pa->sym;
        } else if (pa->instr_type & 0x1000) {
            if (!(opcode >= pa->sym && opcode < pa->sym + 5-1))
                continue;
            s = opcode - pa->sym + 1;
        } else {
            if (pa->sym != opcode)
                continue;
        }
        if (pa->nb_ops != nb_ops)
            continue;




	if (pa->opcode == 0xb0 && ops[0].type != (1 << OPT_IM64)
	    && (ops[1].type & ((1 << OPT_REG8) | (1 << OPT_REG16) | (1 << OPT_REG32) | (1 << OPT_REG64))) == (1 << OPT_REG64)
	    && !(pa->instr_type & 0x100))
	    continue;


	alltypes = 0;
        for(i = 0; i < nb_ops; i++) {
            int op1, op2;
            op1 = pa->op_type[i];
            op2 = op1 & 0x1f;
            switch(op2) {
            case OPT_IM:
                v = (1 << OPT_IM8) | (1 << OPT_IM16) | (1 << OPT_IM32);
                break;
            case OPT_REG:
                v = (1 << OPT_REG8) | (1 << OPT_REG16) | (1 << OPT_REG32) | (1 << OPT_REG64);
                break;
            case OPT_REGW:
                v = (1 << OPT_REG16) | (1 << OPT_REG32) | (1 << OPT_REG64);
                break;
            case OPT_IMW:
                v = (1 << OPT_IM16) | (1 << OPT_IM32);
                break;
	    case OPT_MMXSSE:
		v = (1 << OPT_MMX) | (1 << OPT_SSE);
		break;
	    case OPT_DISP:
	    case OPT_DISP8:
		v = (1 << OPT_ADDR);
		break;
            default:
                v = 1 << op2;
                break;
            }
            if (op1 & OPT_EA)
                v |= 0x40000000;
	    op_type[i] = v;
            if ((ops[i].type & v) == 0)
                goto next;
	    alltypes |= ops[i].type;
        }

        break;
    next: ;
    }
    if (pa->sym == 0) {
        if (opcode >= TOK_ASM_clc && opcode <= TOK_ASM_emms) {
            int b;
            b = op0_codes[opcode - TOK_ASM_clc];
            if (b & 0xff00)
                g(b >> 8);
            g(b);
            return;
        } else if (opcode <= TOK_ASM_subps) {
            _tcc_error("bad operand with opcode '%s'",
                  get_tok_str(opcode, ((void *)0)));
        } else {


	    TokenSym *ts = table_ident[opcode - 256];
	    if (ts->len >= 6
		&& strchr("wlq", ts->str[ts->len-1])
		&& !memcmp(ts->str, "cmov", 4)) {
		opcode = tok_alloc(ts->str, ts->len-1)->tok;
		goto again;
	    }
            _tcc_error("unknown opcode '%s'", ts->str);
        }
    }

    autosize = 5-1;



    if ((pa->instr_type & (0x01 | 0x1000)) == 0x01)
        autosize = 5-2;

    if (s == autosize) {




        for(i = nb_ops - 1; s == autosize && i >= 0; i--) {
            if ((ops[i].type & ((1 << OPT_REG8) | (1 << OPT_REG16) | (1 << OPT_REG32) | (1 << OPT_REG64))) && !(op_type[i] & ((1 << OPT_CL) | (1 << OPT_DX))))
                s = reg_to_size[ops[i].type & ((1 << OPT_REG8) | (1 << OPT_REG16) | (1 << OPT_REG32) | (1 << OPT_REG64))];
        }
        if (s == autosize) {
            if ((opcode == TOK_ASM_push || opcode == TOK_ASM_pop) &&
                (ops[0].type & ((1 << OPT_SEG) | (1 << OPT_IM8S) | (1 << OPT_IM32))))
                s = 2;
	    else if ((opcode == TOK_ASM_push || opcode == TOK_ASM_pop) &&
		     (ops[0].type & 0x40000000))
	        s = 5 - 2;
            else
                _tcc_error("cannot infer opcode suffix");
        }
    }



    for(i = 0; i < nb_ops; i++) {
        if (ops[i].type & (0x40000000 << 1)) {
	    g(0x67);
	    break;
        }
    }


    p66 = 0;
    if (s == 1)
        p66 = 1;
    else {



        for (i = 0; i < nb_ops; i++)
            if ((op_type[i] & ((1 << OPT_MMX) | (1 << OPT_SSE))) == ((1 << OPT_MMX) | (1 << OPT_SSE))
	        && ops[i].type & (1 << OPT_SSE))
	        p66 = 1;
    }
    if (p66)
        g(0x66);

    rex64 = 0;
    if (pa->instr_type & 0x200)
        rex64 = 1;
    else if (s == 3 || (alltypes & (1 << OPT_REG64))) {

	int default64 = 0;
	for(i = 0; i < nb_ops; i++) {
	    if (op_type[i] == (1 << OPT_REG64) && pa->opcode != 0xb8) {



		default64 = 1;
		break;
	    }
	}

        if (((opcode != TOK_ASM_push && opcode != TOK_ASM_pop
	      && opcode != TOK_ASM_pushw && opcode != TOK_ASM_pushl
	      && opcode != TOK_ASM_pushq && opcode != TOK_ASM_popw
	      && opcode != TOK_ASM_popl && opcode != TOK_ASM_popq
	      && opcode != TOK_ASM_call && opcode != TOK_ASM_jmp))
	    && !default64)
            rex64 = 1;
    }



    if ((((pa->instr_type) & 0x70) == (0x10)))
        g(0x9b);
    if (seg_prefix)
        g(seg_prefix);

    v = pa->opcode;
    if (pa->instr_type & 0x100)
        v = ((v & ~0xff) << 8) | 0x0f00 | (v & 0xff);
    if ((v == 0x69 || v == 0x6b) && nb_ops == 2) {

        nb_ops = 3;
        ops[2] = ops[1];
        op_type[2] = op_type[1];
    } else if (v == 0xcd && ops[0].e.v == 3 && !ops[0].e.sym) {
        v--;
        nb_ops = 0;
    } else if ((v == 0x06 || v == 0x07)) {
        if (ops[0].reg >= 4) {

            v = 0x0fa0 + (v - 0x06) + ((ops[0].reg - 4) << 3);
        } else {
            v += ops[0].reg << 3;
        }
        nb_ops = 0;
    } else if (v <= 0x05) {

        v += ((opcode - TOK_ASM_addb) / 5) << 3;
    } else if ((pa->instr_type & (0x70 | 0x08)) == 0x40) {

        v += ((opcode - pa->sym) / 6) << 3;
    }


    modrm_index = -1;
    modreg_index = -1;
    if (pa->instr_type & 0x08) {
	if (!nb_ops) {



	    i = 0;
	    ops[i].type = ((1 << OPT_REG8) | (1 << OPT_REG16) | (1 << OPT_REG32) | (1 << OPT_REG64));
	    ops[i].reg = 0;
	    goto modrm_found;
	}

        for(i = 0;i < nb_ops; i++) {
            if (op_type[i] & 0x40000000)
                goto modrm_found;
        }

        for(i = 0;i < nb_ops; i++) {
            if (op_type[i] & (((1 << OPT_REG8) | (1 << OPT_REG16) | (1 << OPT_REG32) | (1 << OPT_REG64)) | (1 << OPT_MMX) | (1 << OPT_SSE) | (1 << OPT_INDIR)))
                goto modrm_found;
        }



    modrm_found:
        modrm_index = i;


        for(i = 0;i < nb_ops; i++) {
            int t = op_type[i];
            if (i != modrm_index &&
                (t & (((1 << OPT_REG8) | (1 << OPT_REG16) | (1 << OPT_REG32) | (1 << OPT_REG64)) | (1 << OPT_MMX) | (1 << OPT_SSE) | (1 << OPT_CR) | (1 << OPT_TR) | (1 << OPT_DB) | (1 << OPT_SEG)))) {
                modreg_index = i;
                break;
            }
        }
    }

    asm_rex (rex64, ops, nb_ops, op_type, modreg_index, modrm_index);


    if (pa->instr_type & 0x04) {

        if (v == 0xb0 && s >= 1)
            v += 7;
        for(i = 0; i < nb_ops; i++) {
            if (op_type[i] & (((1 << OPT_REG8) | (1 << OPT_REG16) | (1 << OPT_REG32) | (1 << OPT_REG64)) | (1 << OPT_ST))) {
                v += ops[i].reg;
                break;
            }
        }
    }
    if (pa->instr_type & 0x01)
        v += s >= 1;
    if (nb_ops == 1 && pa->op_type[0] == OPT_DISP8) {
	Elf64_Sym *esym;
        int jmp_disp;


	esym = elfsym(ops[0].e.sym);
        if (!esym || esym->st_shndx != tcc_state->cur_text_section->sh_num)
            goto no_short_jump;
        jmp_disp = ops[0].e.v + esym->st_value - ind - 2 - (v >= 0xff);
        if (jmp_disp == (int8_t)jmp_disp) {

	    ops[0].e.sym = 0;
            ops[0].e.v = jmp_disp;
	    op_type[0] = (1 << OPT_IM8S);
        } else {
        no_short_jump:


	    if (v == 0xeb)
	        v = 0xe9;
	    else if (v == 0x70)
	        v += 0x0f10;
	    else
	        _tcc_error("invalid displacement");
        }
    }
    if ((((pa->instr_type) & 0x70) == (0x50)))
        v += test_bits[opcode - pa->sym];
    op1 = v >> 16;
    if (op1)
        g(op1);
    op1 = (v >> 8) & 0xff;
    if (op1)
        g(op1);
    g(v);

    if ((((pa->instr_type) & 0x70) == (0x20))) {
        reg = (opcode - pa->sym) / 5;
        if (reg == 6)
            reg = 7;
    } else if ((((pa->instr_type) & 0x70) == (0x30))) {
        reg = (opcode - pa->sym) / 5;
    } else if ((((pa->instr_type) & 0x70) == (0x40))) {
        reg = (opcode - pa->sym) / 6;
    } else {
        reg = (pa->instr_type >> 13) & 7;
    }

    pc = 0;
    if (pa->instr_type & 0x08) {


	if (modreg_index >= 0)
	    reg = ops[modreg_index].reg;
        pc = asm_modrm(reg, &ops[modrm_index]);
    }
# 1100 "../tinycc/i386-asm.c"
    for(i = 0;i < nb_ops; i++) {
        v = op_type[i];
        if (v & ((1 << OPT_IM8) | (1 << OPT_IM16) | (1 << OPT_IM32) | (1 << OPT_IM64) | (1 << OPT_IM8S) | (1 << OPT_ADDR))) {


            if ((v | (1 << OPT_IM8) | (1 << OPT_IM64)) == ((1 << OPT_IM8) | (1 << OPT_IM16) | (1 << OPT_IM32) | (1 << OPT_IM64))) {
                if (s == 0)
                    v = (1 << OPT_IM8);
                else if (s == 1)
                    v = (1 << OPT_IM16);
                else if (s == 2 || (v & (1 << OPT_IM64)) == 0)
                    v = (1 << OPT_IM32);
                else
                    v = (1 << OPT_IM64);
            }

            if ((v & ((1 << OPT_IM8) | (1 << OPT_IM8S) | (1 << OPT_IM16))) && ops[i].e.sym)
                _tcc_error("cannot relocate");

            if (v & ((1 << OPT_IM8) | (1 << OPT_IM8S))) {
                g(ops[i].e.v);
            } else if (v & (1 << OPT_IM16)) {
                gen_le16(ops[i].e.v);

            } else if (v & (1 << OPT_IM64)) {
                gen_expr64(&ops[i].e);

	    } else if (pa->op_type[i] == OPT_DISP || pa->op_type[i] == OPT_DISP8) {
                gen_disp32(&ops[i].e);
            } else {
                gen_expr32(&ops[i].e);
            }
        }
    }


    if (pc)
        add32le(tcc_state->cur_text_section->data + pc - 4, pc - ind);
}



static inline int constraint_priority(const char *str)
{
    int priority, c, pr;


    priority = 0;
    for(;;) {
        c = *str;
        if (c == '\0')
            break;
        str++;
        switch(c) {
        case 'A':
            pr = 0;
            break;
        case 'a':
        case 'b':
        case 'c':
        case 'd':
        case 'S':
        case 'D':
            pr = 1;
            break;
        case 'q':
            pr = 2;
            break;
        case 'r':
	case 'R':
	case 'p':
            pr = 3;
            break;
        case 'N':
        case 'M':
        case 'I':
	case 'e':
        case 'i':
        case 'm':
        case 'g':
            pr = 4;
            break;
        default:
            _tcc_error("unknown constraint '%c'", c);
            pr = 0;
        }
        if (pr > priority)
            priority = pr;
    }
    return priority;
}

static const char *skip_constraint_modifiers(const char *p)
{
    while (*p == '=' || *p == '&' || *p == '+' || *p == '%')
        p++;
    return p;
}



static int asm_parse_regvar (int t)
{
    const char *s;
    Operand op;
    if (t < 256 || (t & 0x20000000))
        return -1;
    s = table_ident[t - 256]->str;
    if (s[0] != '%')
        return -1;
    t = tok_alloc(s+1, strlen(s)-1)->tok;
    unget_tok(t);
    unget_tok('%');
    parse_operand(tcc_state, &op);

    if (op.type & ((1 << OPT_REG8) | (1 << OPT_REG16) | (1 << OPT_REG32) | (1 << OPT_REG64)))
        return op.reg;
    else
        return -1;
}






static void asm_compute_constraints(ASMOperand *operands,
                                    int nb_operands, int nb_outputs,
                                    const uint8_t *clobber_regs,
                                    int *pout_reg)
{
    ASMOperand *op;
    int sorted_op[30];
    int i, j, k, p1, p2, tmp, reg, c, reg_mask;
    const char *str;
    uint8_t regs_allocated[16];


    for(i=0;i<nb_operands;i++) {
        op = &operands[i];
        op->input_index = -1;
        op->ref_index = -1;
        op->reg = -1;
        op->is_memory = 0;
        op->is_rw = 0;
    }


    for(i=0;i<nb_operands;i++) {
        op = &operands[i];
        str = op->constraint;
        str = skip_constraint_modifiers(str);
        if (isnum(*str) || *str == '[') {

            k = find_constraint(operands, nb_operands, str, ((void *)0));
            if ((unsigned)k >= i || i < nb_outputs)
                _tcc_error("invalid reference in constraint %d ('%s')",
                      i, str);
            op->ref_index = k;
            if (operands[k].input_index >= 0)
                _tcc_error("cannot reference twice the same operand");
            operands[k].input_index = i;
            op->priority = 5;
	} else if ((op->vt->r & 0x003f) == 0x0032
		   && op->vt->sym
		   && (reg = op->vt->sym->r & 0x003f) < 0x0030) {
	    op->priority = 1;
	    op->reg = reg;
        } else {
            op->priority = constraint_priority(str);
        }
    }


    for(i=0;i<nb_operands;i++)
        sorted_op[i] = i;
    for(i=0;i<nb_operands - 1;i++) {
        for(j=i+1;j<nb_operands;j++) {
            p1 = operands[sorted_op[i]].priority;
            p2 = operands[sorted_op[j]].priority;
            if (p2 < p1) {
                tmp = sorted_op[i];
                sorted_op[i] = sorted_op[j];
                sorted_op[j] = tmp;
            }
        }
    }

    for(i = 0;i < 16; i++) {
        if (clobber_regs[i])
            regs_allocated[i] = 0x02 | 0x01;
        else
            regs_allocated[i] = 0;
    }

    regs_allocated[4] = 0x02 | 0x01;

    regs_allocated[5] = 0x02 | 0x01;


    for(i=0;i<nb_operands;i++) {
        j = sorted_op[i];
        op = &operands[j];
        str = op->constraint;

        if (op->ref_index >= 0)
            continue;

        if (op->input_index >= 0) {
            reg_mask = 0x02 | 0x01;
        } else if (j < nb_outputs) {
            reg_mask = 0x01;
        } else {
            reg_mask = 0x02;
        }
	if (op->reg >= 0) {
	    if ((regs_allocated[op->reg] & reg_mask))
	        _tcc_error("asm regvar requests register that's taken already");
	    reg = op->reg;
	    goto reg_found;
	}
    try_next:
        c = *str++;
        switch(c) {
        case '=':
            goto try_next;
        case '+':
            op->is_rw = 1;

        case '&':
            if (j >= nb_outputs)
                _tcc_error("'%c' modifier can only be applied to outputs", c);
            reg_mask = 0x02 | 0x01;
            goto try_next;
        case 'A':

            if ((regs_allocated[TREG_RAX] & reg_mask) ||
                (regs_allocated[TREG_RDX] & reg_mask))
                goto try_next;
            op->is_llong = 1;
            op->reg = TREG_RAX;
            regs_allocated[TREG_RAX] |= reg_mask;
            regs_allocated[TREG_RDX] |= reg_mask;
            break;
        case 'a':
            reg = TREG_RAX;
            goto alloc_reg;
        case 'b':
            reg = 3;
            goto alloc_reg;
        case 'c':
            reg = TREG_RCX;
            goto alloc_reg;
        case 'd':
            reg = TREG_RDX;
            goto alloc_reg;
        case 'S':
            reg = 6;
            goto alloc_reg;
        case 'D':
            reg = 7;
        alloc_reg:
            if ((regs_allocated[reg] & reg_mask))
                goto try_next;
            goto reg_found;
        case 'q':

            for(reg = 0; reg < 4; reg++) {
                if (!(regs_allocated[reg] & reg_mask))
                    goto reg_found;
            }
            goto try_next;
        case 'r':
	case 'R':
	case 'p':

            for(reg = 0; reg < 8; reg++) {
                if (!(regs_allocated[reg] & reg_mask))
                    goto reg_found;
            }
            goto try_next;
        reg_found:

            op->is_llong = 0;
            op->reg = reg;
            regs_allocated[reg] |= reg_mask;
            break;
	case 'e':
        case 'i':
            if (!((op->vt->r & (0x003f | 0x0100)) == 0x0030))
                goto try_next;
            break;
        case 'I':
        case 'N':
        case 'M':
            if (!((op->vt->r & (0x003f | 0x0100 | 0x0200)) == 0x0030))
                goto try_next;
            break;
        case 'm':
        case 'g':
# 1408 "../tinycc/i386-asm.c"
            if (j < nb_outputs || c == 'm') {
                if ((op->vt->r & 0x003f) == 0x0031) {

                    for(reg = 0; reg < 8; reg++) {
                        if (!(regs_allocated[reg] & 0x02))
                            goto reg_found1;
                    }
                    goto try_next;
                reg_found1:

                    regs_allocated[reg] |= 0x02;
                    op->reg = reg;
                    op->is_memory = 1;
                }
            }
            break;
        default:
            _tcc_error("asm constraint %d ('%s') could not be satisfied",
                  j, op->constraint);
            break;
        }

        if (op->input_index >= 0) {
            operands[op->input_index].reg = op->reg;
            operands[op->input_index].is_llong = op->is_llong;
        }
    }



    *pout_reg = -1;
    for(i=0;i<nb_operands;i++) {
        op = &operands[i];
        if (op->reg >= 0 &&
            (op->vt->r & 0x003f) == 0x0031  &&
            !op->is_memory) {
            for(reg = 0; reg < 8; reg++) {
                if (!(regs_allocated[reg] & 0x01))
                    goto reg_found2;
            }
            _tcc_error("could not find free output register for reloading");
        reg_found2:
            *pout_reg = reg;
            break;
        }
    }
# 1470 "../tinycc/i386-asm.c"
}

static void subst_asm_operand(CString *add_str,
                              SValue *sv, int modifier)
{
    int r, reg, size, val;
    char buf[64];

    r = sv->r;
    if ((r & 0x003f) == 0x0030) {
        if (!(r & 0x0100) && modifier != 'c' && modifier != 'n' &&
	    modifier != 'P')
            cstr_ccat(add_str, '$');
        if (r & 0x0200) {
	    const char *name = get_tok_str(sv->sym->v, ((void *)0));
	    if (sv->sym->v >= 0x10000000) {





		get_asm_sym(tok_alloc(name, strlen(name))->tok, sv->sym);
	    }
            if (tcc_state->leading_underscore)
              cstr_ccat(add_str, '_');
            cstr_cat(add_str, name, -1);
            if ((uint32_t)sv->c.i == 0)
                goto no_offset;
	    cstr_ccat(add_str, '+');
        }
        val = sv->c.i;
        if (modifier == 'n')
            val = -val;
        snprintf(buf, sizeof(buf), "%d", (int)sv->c.i);
        cstr_cat(add_str, buf, -1);
    no_offset:;

        if (r & 0x0100)
            cstr_cat(add_str, "(%rip)", -1);

    } else if ((r & 0x003f) == 0x0032) {

        snprintf(buf, sizeof(buf), "%d(%%rbp)", (int)sv->c.i);



        cstr_cat(add_str, buf, -1);
    } else if (r & 0x0100) {
        reg = r & 0x003f;
        if (reg >= 0x0030)
            _tcc_error("internal compiler error");
        snprintf(buf, sizeof(buf), "(%%%s)",

                 get_tok_str(TOK_ASM_rax + reg, ((void *)0))



		 );
        cstr_cat(add_str, buf, -1);
    } else {

        reg = r & 0x003f;
        if (reg >= 0x0030)
            _tcc_error("internal compiler error");


        if ((sv->type.t & 0x000f) == 1 ||
	    (sv->type.t & 0x000f) == 11)
            size = 1;
        else if ((sv->type.t & 0x000f) == 2)
            size = 2;

        else if ((sv->type.t & 0x000f) == 4 ||
		 (sv->type.t & 0x000f) == 5)
            size = 8;

        else
            size = 4;
        if (size == 1 && reg >= 4)
            size = 4;

        if (modifier == 'b') {
            if (reg >= 4)
                _tcc_error("cannot use byte register");
            size = 1;
        } else if (modifier == 'h') {
            if (reg >= 4)
                _tcc_error("cannot use byte register");
            size = -1;
        } else if (modifier == 'w') {
            size = 2;
        } else if (modifier == 'k') {
            size = 4;

        } else if (modifier == 'q') {
            size = 8;

        }

        switch(size) {
        case -1:
            reg = TOK_ASM_ah + reg;
            break;
        case 1:
            reg = TOK_ASM_al + reg;
            break;
        case 2:
            reg = TOK_ASM_ax + reg;
            break;
        default:
            reg = TOK_ASM_eax + reg;
            break;

        case 8:
            reg = TOK_ASM_rax + reg;
            break;

        }
        snprintf(buf, sizeof(buf), "%%%s", get_tok_str(reg, ((void *)0)));
        cstr_cat(add_str, buf, -1);
    }
}


static void asm_gen_code(ASMOperand *operands, int nb_operands,
                         int nb_outputs, int is_output,
                         uint8_t *clobber_regs,
                         int out_reg)
{
    uint8_t regs_allocated[16];
    ASMOperand *op;
    int i, reg;







    static uint8_t reg_saved[] = { 3, 12, 13, 14, 15 };






    memcpy(regs_allocated, clobber_regs, sizeof(regs_allocated));
    for(i = 0; i < nb_operands;i++) {
        op = &operands[i];
        if (op->reg >= 0)
            regs_allocated[op->reg] = 1;
    }
    if (!is_output) {

        for(i = 0; i < sizeof(reg_saved)/sizeof(reg_saved[0]); i++) {
            reg = reg_saved[i];
            if (regs_allocated[reg]) {
		if (reg >= 8)
		  g(0x41), reg-=8;
                g(0x50 + reg);
            }
        }


        for(i = 0; i < nb_operands; i++) {
            op = &operands[i];
            if (op->reg >= 0) {
                if ((op->vt->r & 0x003f) == 0x0031 &&
                    op->is_memory) {


                    SValue sv;
                    sv = *op->vt;
                    sv.r = (sv.r & ~0x003f) | 0x0032 | 0x0100;
                    sv.type.t = 5;
                    load(op->reg, &sv);
                } else if (i >= nb_outputs || op->is_rw) {

                    load(op->reg, op->vt);
                    if (op->is_llong) {
                        SValue sv;
                        sv = *op->vt;
                        sv.c.i += 4;
                        load(TREG_RDX, &sv);
                    }
                }
            }
        }
    } else {

        for(i = 0 ; i < nb_outputs; i++) {
            op = &operands[i];
            if (op->reg >= 0) {
                if ((op->vt->r & 0x003f) == 0x0031) {
                    if (!op->is_memory) {
                        SValue sv;
                        sv = *op->vt;
                        sv.r = (sv.r & ~0x003f) | 0x0032;
			sv.type.t = 5;
                        load(out_reg, &sv);

			sv = *op->vt;
                        sv.r = (sv.r & ~0x003f) | out_reg;
                        store(op->reg, &sv);
                    }
                } else {
                    store(op->reg, op->vt);
                    if (op->is_llong) {
                        SValue sv;
                        sv = *op->vt;
                        sv.c.i += 4;
                        store(TREG_RDX, &sv);
                    }
                }
            }
        }

        for(i = sizeof(reg_saved)/sizeof(reg_saved[0]) - 1; i >= 0; i--) {
            reg = reg_saved[i];
            if (regs_allocated[reg]) {
		if (reg >= 8)
		  g(0x41), reg-=8;
                g(0x58 + reg);
            }
        }
    }
}

static void asm_clobber(uint8_t *clobber_regs, const char *str)
{
    int reg;
    TokenSym *ts;

    unsigned int type;


    if (!strcmp(str, "memory") ||
        !strcmp(str, "cc") ||
	!strcmp(str, "flags"))
        return;
    ts = tok_alloc(str, strlen(str));
    reg = ts->tok;
    if (reg >= TOK_ASM_eax && reg <= TOK_ASM_edi) {
        reg -= TOK_ASM_eax;
    } else if (reg >= TOK_ASM_ax && reg <= TOK_ASM_di) {
        reg -= TOK_ASM_ax;

    } else if (reg >= TOK_ASM_rax && reg <= TOK_ASM_rdi) {
        reg -= TOK_ASM_rax;
    } else if ((reg = asm_parse_numeric_reg(reg, &type)) >= 0) {
	;

    } else {
        _tcc_error("invalid clobber register '%s'", str);
    }
    clobber_regs[reg] = 1;
}
# 46 "../tinycc/libtcc.c" 2
# 54 "../tinycc/libtcc.c"
# 1 "../tinycc/tccasm.c" 1
# 22 "../tinycc/tccasm.c"
# 1 "../tinycc/tcc.h" 1
# 23 "../tinycc/tccasm.c" 2


static Section *last_text_section;

static int asm_get_local_label_name(TCCState *s1, unsigned int n)
{
    char buf[64];
    TokenSym *ts;

    snprintf(buf, sizeof(buf), "L..%u", n);
    ts = tok_alloc(buf, strlen(buf));
    return ts->tok;
}

static int tcc_assemble_internal(TCCState *s1, int do_preprocess, int global);
static Sym* asm_new_label(TCCState *s1, int label, int is_local);
static Sym* asm_new_label1(TCCState *s1, int label, int is_local, int sh_num, int value);







static int asm2cname(int v, int *addeddot)
{
    const char *name;
    *addeddot = 0;
    if (!tcc_state->leading_underscore)
      return v;
    name = get_tok_str(v, ((void *)0));
    if (!name)
      return v;
    if (name[0] == '_') {
        v = tok_alloc(name + 1, strlen(name) - 1)->tok;
    } else if (!strchr(name, '.')) {
        int n = strlen(name) + 2;
        char newname[256];
        snprintf(newname, sizeof newname, ".%s", name);
        v = tok_alloc(newname, n - 1)->tok;
        *addeddot = 1;
    }
    return v;
}

static Sym *asm_label_find(int v)
{
    Sym *sym;
    int addeddot;
    v = asm2cname(v, &addeddot);
    sym = sym_find(v);
    while (sym && sym->sym_scope && !(sym->type.t & 0x00002000))
        sym = sym->prev_tok;
    return sym;
}

static Sym *asm_label_push(int v)
{
    int addeddot, v2 = asm2cname(v, &addeddot);



    Sym *sym = global_identifier_push(v2, (0 | 0x0010) | 0x00001000 | 0x00002000, 0);
    if (addeddot)
        sym->asm_label = v;
    return sym;
}
# 101 "../tinycc/tccasm.c"
static Sym* get_asm_sym(int name, Sym *csym)
{
    Sym *sym = asm_label_find(name);
    if (!sym) {
	sym = asm_label_push(name);
	if (csym)
	  sym->c = csym->c;
    }
    return sym;
}

static Sym* asm_section_sym(TCCState *s1, Section *sec)
{
    char buf[100];
    int label = tok_alloc(buf,
        snprintf(buf, sizeof buf, "L.%s", sec->name)
        )->tok;
    Sym *sym = asm_label_find(label);
    return sym ? sym : asm_new_label1(s1, label, 1, sec->sh_num, 0);
}




static void asm_expr_unary(TCCState *s1, ExprValue *pe)
{
    Sym *sym;
    int op, label;
    uint64_t n;
    const char *p;

    switch(tok) {
    case 0xcd:
        p = tokc.str.data;
        n = strtoull(p, (char **)&p, 0);
        if (*p == 'b' || *p == 'f') {

            label = asm_get_local_label_name(s1, n);
            sym = asm_label_find(label);
            if (*p == 'b') {

                if (sym && (!sym->c || elfsym(sym)->st_shndx == 0))
                    sym = sym->prev_tok;
                if (!sym)
                    _tcc_error("local label '%d' not found backward", (int)n);
            } else {

                if (!sym || (sym->c && elfsym(sym)->st_shndx != 0)) {

		    sym = asm_label_push(label);
                }
            }
	    pe->v = 0;
	    pe->sym = sym;
	    pe->pcrel = 0;
        } else if (*p == '\0') {
            pe->v = n;
            pe->sym = ((void *)0);
	    pe->pcrel = 0;
        } else {
            _tcc_error("invalid number syntax");
        }
        next();
        break;
    case '+':
        next();
        asm_expr_unary(s1, pe);
        break;
    case '-':
    case '~':
        op = tok;
        next();
        asm_expr_unary(s1, pe);
        if (pe->sym)
            _tcc_error("invalid operation with label");
        if (op == '-')
            pe->v = -pe->v;
        else
            pe->v = ~pe->v;
        break;
    case 0xc0:
    case 0xc1:
	pe->v = tokc.i;
	pe->sym = ((void *)0);
	pe->pcrel = 0;
	next();
	break;
    case '(':
        next();
        asm_expr(s1, pe);
        skip(')');
        break;
    case '.':
        pe->v = ind;
        pe->sym = asm_section_sym(s1, tcc_state->cur_text_section);
        pe->pcrel = 0;
        next();
        break;
    default:
        if (tok >= 256) {
	    Elf64_Sym *esym;

	    sym = get_asm_sym(tok, ((void *)0));
	    esym = elfsym(sym);
            if (esym && esym->st_shndx == 0xfff1) {

                pe->v = esym->st_value;
                pe->sym = ((void *)0);
		pe->pcrel = 0;
            } else {
                pe->v = 0;
                pe->sym = sym;
		pe->pcrel = 0;
            }
            next();
        } else {
            _tcc_error("bad expression syntax [%s]", get_tok_str(tok, &tokc));
        }
        break;
    }
}

static void asm_expr_prod(TCCState *s1, ExprValue *pe)
{
    int op;
    ExprValue e2;

    asm_expr_unary(s1, pe);
    for(;;) {
        op = tok;
        if (op != '*' && op != '/' && op != '%' &&
            op != '<' && op != '>')
            break;
        next();
        asm_expr_unary(s1, &e2);
        if (pe->sym || e2.sym)
            _tcc_error("invalid operation with label");
        switch(op) {
        case '*':
            pe->v *= e2.v;
            break;
        case '/':
            if (e2.v == 0) {
            div_error:
                _tcc_error("division by zero");
            }
            pe->v /= e2.v;
            break;
        case '%':
            if (e2.v == 0)
                goto div_error;
            pe->v %= e2.v;
            break;
        case '<':
            pe->v <<= e2.v;
            break;
        default:
        case '>':
            pe->v >>= e2.v;
            break;
        }
    }
}

static void asm_expr_logic(TCCState *s1, ExprValue *pe)
{
    int op;
    ExprValue e2;

    asm_expr_prod(s1, pe);
    for(;;) {
        op = tok;
        if (op != '&' && op != '|' && op != '^')
            break;
        next();
        asm_expr_prod(s1, &e2);
        if (pe->sym || e2.sym)
            _tcc_error("invalid operation with label");
        switch(op) {
        case '&':
            pe->v &= e2.v;
            break;
        case '|':
            pe->v |= e2.v;
            break;
        default:
        case '^':
            pe->v ^= e2.v;
            break;
        }
    }
}

static inline void asm_expr_sum(TCCState *s1, ExprValue *pe)
{
    int op;
    ExprValue e2;

    asm_expr_logic(s1, pe);
    for(;;) {
        op = tok;
        if (op != '+' && op != '-')
            break;
        next();
        asm_expr_logic(s1, &e2);
        if (op == '+') {
            if (pe->sym != ((void *)0) && e2.sym != ((void *)0))
                goto cannot_relocate;
            pe->v += e2.v;
            if (pe->sym == ((void *)0) && e2.sym != ((void *)0))
                pe->sym = e2.sym;
        } else {
            pe->v -= e2.v;


	    if (!e2.sym) {

	    } else if (pe->sym == e2.sym) {

		pe->sym = ((void *)0);
	    } else {
		Elf64_Sym *esym1, *esym2;
		esym1 = elfsym(pe->sym);
		esym2 = elfsym(e2.sym);
		if (esym1 && esym1->st_shndx == esym2->st_shndx
		    && esym1->st_shndx != 0) {

		    pe->v += esym1->st_value - esym2->st_value;
		    pe->sym = ((void *)0);
		} else if (esym2->st_shndx == tcc_state->cur_text_section->sh_num) {


		    pe->v -= esym2->st_value - ind - 4;
		    pe->pcrel = 1;
		    e2.sym = ((void *)0);
		} else {
cannot_relocate:
		    _tcc_error("invalid operation with label");
		}
	    }
        }
    }
}

static inline void asm_expr_cmp(TCCState *s1, ExprValue *pe)
{
    int op;
    ExprValue e2;

    asm_expr_sum(s1, pe);
    for(;;) {
        op = tok;
	if (op != 0x94 && op != 0x95
	    && (op > 0x9f || op < 0x96))
            break;
        next();
        asm_expr_sum(s1, &e2);
        if (pe->sym || e2.sym)
            _tcc_error("invalid operation with label");
        switch(op) {
	case 0x94:
	    pe->v = pe->v == e2.v;
	    break;
	case 0x95:
	    pe->v = pe->v != e2.v;
	    break;
	case 0x9c:
	    pe->v = (int64_t)pe->v < (int64_t)e2.v;
	    break;
	case 0x9d:
	    pe->v = (int64_t)pe->v >= (int64_t)e2.v;
	    break;
	case 0x9e:
	    pe->v = (int64_t)pe->v <= (int64_t)e2.v;
	    break;
	case 0x9f:
	    pe->v = (int64_t)pe->v > (int64_t)e2.v;
	    break;
        default:
            break;
        }

	pe->v = -(int64_t)pe->v;
    }
}

static void asm_expr(TCCState *s1, ExprValue *pe)
{
    asm_expr_cmp(s1, pe);
}

static int asm_int_expr(TCCState *s1)
{
    ExprValue e;
    asm_expr(s1, &e);
    if (e.sym)
        expect("constant");
    return e.v;
}

static Sym* asm_new_label1(TCCState *s1, int label, int is_local,
                           int sh_num, int value)
{
    Sym *sym;
    Elf64_Sym *esym;

    sym = asm_label_find(label);
    if (sym) {
	esym = elfsym(sym);



        if (esym && esym->st_shndx != 0) {

            if ((((sym)->type.t & (0x000f | (0 | 0x0010))) == (0 | 0x0010))
                && (is_local == 1 || (sym->type.t & 0x00001000)))
                goto new_label;
            if (!(sym->type.t & 0x00001000))
                _tcc_error("assembler label '%s' already defined",
                          get_tok_str(label, ((void *)0)));
        }
    } else {
    new_label:
        sym = asm_label_push(label);
    }
    if (!sym->c)
      put_extern_sym2(sym, 0, 0, 0, 1);
    esym = elfsym(sym);
    esym->st_shndx = sh_num;
    esym->st_value = value;
    if (is_local != 2)
        sym->type.t &= ~0x00001000;
    return sym;
}

static Sym* asm_new_label(TCCState *s1, int label, int is_local)
{
    return asm_new_label1(s1, label, is_local, tcc_state->cur_text_section->sh_num, ind);
}



static Sym* set_symbol(TCCState *s1, int label)
{
    long n;
    ExprValue e;
    Sym *sym;
    Elf64_Sym *esym;
    next();
    asm_expr(s1, &e);
    n = e.v;
    esym = elfsym(e.sym);
    if (esym)
	n += esym->st_value;
    sym = asm_new_label1(s1, label, 2, esym ? esym->st_shndx : 0xfff1, n);
    elfsym(sym)->st_other |= 0x04;
    return sym;
}

static void use_section1(TCCState *s1, Section *sec)
{
    tcc_state->cur_text_section->data_offset = ind;
    tcc_state->cur_text_section = sec;
    ind = tcc_state->cur_text_section->data_offset;
}

static void use_section(TCCState *s1, const char *name)
{
    Section *sec;
    sec = find_section(s1, name);
    use_section1(s1, sec);
}

static void push_section(TCCState *s1, const char *name)
{
    Section *sec = find_section(s1, name);
    sec->prev = tcc_state->cur_text_section;
    use_section1(s1, sec);
}

static void pop_section(TCCState *s1)
{
    Section *prev = tcc_state->cur_text_section->prev;
    if (!prev)
        _tcc_error(".popsection without .pushsection");
    tcc_state->cur_text_section->prev = ((void *)0);
    use_section1(s1, prev);
}

static void asm_parse_directive(TCCState *s1, int global)
{
    int n, offset, v, size, tok1;
    Section *sec;
    uint8_t *ptr;


    sec = tcc_state->cur_text_section;
    switch(tok) {
    case TOK_ASMDIR_align:
    case TOK_ASMDIR_balign:
    case TOK_ASMDIR_p2align:
    case TOK_ASMDIR_skip:
    case TOK_ASMDIR_space:
        tok1 = tok;
        next();
        n = asm_int_expr(s1);
        if (tok1 == TOK_ASMDIR_p2align)
        {
            if (n < 0 || n > 30)
                _tcc_error("invalid p2align, must be between 0 and 30");
            n = 1 << n;
            tok1 = TOK_ASMDIR_align;
        }
        if (tok1 == TOK_ASMDIR_align || tok1 == TOK_ASMDIR_balign) {
            if (n < 0 || (n & (n-1)) != 0)
                _tcc_error("alignment must be a positive power of two");
            offset = (ind + n - 1) & -n;
            size = offset - ind;

            if (sec->sh_addralign < n)
                sec->sh_addralign = n;
        } else {
	    if (n < 0)
	        n = 0;
            size = n;
        }
        v = 0;
        if (tok == ',') {
            next();
            v = asm_int_expr(s1);
        }
    zero_pad:
        if (sec->sh_type != 8) {
            sec->data_offset = ind;
            ptr = section_ptr_add(sec, size);
            memset(ptr, v, size);
        }
        ind += size;
        break;
    case TOK_ASMDIR_quad:

	size = 8;
	goto asm_data;
# 572 "../tinycc/tccasm.c"
    case TOK_ASMDIR_byte:
        size = 1;
        goto asm_data;
    case TOK_ASMDIR_word:
    case TOK_ASMDIR_short:
        size = 2;
        goto asm_data;
    case TOK_ASMDIR_long:
    case TOK_ASMDIR_int:
        size = 4;
    asm_data:
        next();
        for(;;) {
            ExprValue e;
            asm_expr(s1, &e);
            if (sec->sh_type != 8) {
                if (size == 4) {
                    gen_expr32(&e);

		} else if (size == 8) {
		    gen_expr64(&e);

                } else {
                    if (e.sym)
                        expect("constant");
                    if (size == 1)
                        g(e.v);
                    else
                        gen_le16(e.v);
                }
            } else {
                ind += size;
            }
            if (tok != ',')
                break;
            next();
        }
        break;
    case TOK_ASMDIR_fill:
        {
            int repeat, size, val, i, j;
            uint8_t repeat_buf[8];
            next();
            repeat = asm_int_expr(s1);
            if (repeat < 0) {
                _tcc_error("repeat < 0; .fill ignored");
                break;
            }
            size = 1;
            val = 0;
            if (tok == ',') {
                next();
                size = asm_int_expr(s1);
                if (size < 0) {
                    _tcc_error("size < 0; .fill ignored");
                    break;
                }
                if (size > 8)
                    size = 8;
                if (tok == ',') {
                    next();
                    val = asm_int_expr(s1);
                }
            }

            repeat_buf[0] = val;
            repeat_buf[1] = val >> 8;
            repeat_buf[2] = val >> 16;
            repeat_buf[3] = val >> 24;
            repeat_buf[4] = 0;
            repeat_buf[5] = 0;
            repeat_buf[6] = 0;
            repeat_buf[7] = 0;
            for(i = 0; i < repeat; i++) {
                for(j = 0; j < size; j++) {
                    g(repeat_buf[j]);
                }
            }
        }
        break;
    case TOK_ASMDIR_rept:
        {
            int repeat;
            TokenString *init_str;
            next();
            repeat = asm_int_expr(s1);
            init_str = tok_str_alloc();
            while (next(), tok != TOK_ASMDIR_endr) {
                if (tok == (-1))
                    _tcc_error("we at end of file, .endr not found");
                tok_str_add_tok(init_str);
            }
            tok_str_add(init_str, -1);
            tok_str_add(init_str, 0);
            begin_macro(init_str, 1);
            while (repeat-- > 0) {
                tcc_assemble_internal(s1, (parse_flags & 0x0001),
				      global);
                macro_ptr = init_str->str;
            }
            end_macro();
            next();
            break;
        }
    case TOK_ASMDIR_org:
        {
            unsigned long n;
	    ExprValue e;
	    Elf64_Sym *esym;
            next();
	    asm_expr(s1, &e);
	    n = e.v;
	    esym = elfsym(e.sym);
	    if (esym) {
		if (esym->st_shndx != tcc_state->cur_text_section->sh_num)
		  expect("constant or same-section symbol");
		n += esym->st_value;
	    }
            if (n < ind)
                _tcc_error("attempt to .org backwards");
            v = 0;
            size = n - ind;
            goto zero_pad;
        }
        break;
    case TOK_ASMDIR_set:
	next();
	tok1 = tok;
	next();


	if (tok == ',')
	    set_symbol(s1, tok1);
	break;
    case TOK_ASMDIR_globl:
    case TOK_ASMDIR_global:
    case TOK_ASMDIR_weak:
    case TOK_ASMDIR_hidden:
	tok1 = tok;
	do {
            Sym *sym;
            next();
            sym = get_asm_sym(tok, ((void *)0));
	    if (tok1 != TOK_ASMDIR_hidden)
                sym->type.t &= ~0x00002000;
            if (tok1 == TOK_ASMDIR_weak)
                sym->a.weak = 1;
	    else if (tok1 == TOK_ASMDIR_hidden)
	        sym->a.visibility = 2;
            update_storage(sym);
            next();
	} while (tok == ',');
	break;
    case TOK_ASMDIR_string:
    case TOK_ASMDIR_ascii:
    case TOK_ASMDIR_asciz:
        {
            const uint8_t *p;
            int i, size, t;

            t = tok;
            next();
            for(;;) {
                if (tok != 0xc8)
                    expect("string constant");
                p = tokc.str.data;
                size = tokc.str.size;
                if (t == TOK_ASMDIR_ascii && size > 0)
                    size--;
                for(i = 0; i < size; i++)
                    g(p[i]);
                next();
                if (tok == ',') {
                    next();
                } else if (tok != 0xc8) {
                    break;
                }
            }
	}
	break;
    case TOK_ASMDIR_text:
    case TOK_ASMDIR_data:
    case TOK_ASMDIR_bss:
	{
            char sname[64];
            tok1 = tok;
            n = 0;
            next();
            if (tok != ';' && tok != 10) {
		n = asm_int_expr(s1);
		next();
            }
            if (n)
                sprintf(sname, "%s%d", get_tok_str(tok1, ((void *)0)), n);
            else
                sprintf(sname, "%s", get_tok_str(tok1, ((void *)0)));
            use_section(s1, sname);
	}
	break;
    case TOK_ASMDIR_file:
        {
            char filename[512];

            filename[0] = '\0';
            next();

            if (tok == 0xc8)
                pstrcat(filename, sizeof(filename), tokc.str.data);
            else
                pstrcat(filename, sizeof(filename), get_tok_str(tok, ((void *)0)));

            if (s1->warn_unsupported)
                _tcc_warning("ignoring .file %s", filename);

            next();
        }
        break;
    case TOK_ASMDIR_ident:
        {
            char ident[256];

            ident[0] = '\0';
            next();

            if (tok == 0xc8)
                pstrcat(ident, sizeof(ident), tokc.str.data);
            else
                pstrcat(ident, sizeof(ident), get_tok_str(tok, ((void *)0)));

            if (s1->warn_unsupported)
                _tcc_warning("ignoring .ident %s", ident);

            next();
        }
        break;
    case TOK_ASMDIR_size:
        {
            Sym *sym;

            next();
            sym = asm_label_find(tok);
            if (!sym) {
                _tcc_error("label not found: %s", get_tok_str(tok, ((void *)0)));
            }


            if (s1->warn_unsupported)
                _tcc_warning("ignoring .size %s,*", get_tok_str(tok, ((void *)0)));

            next();
            skip(',');
            while (tok != 10 && tok != ';' && tok != (-1)) {
                next();
            }
        }
        break;
    case TOK_ASMDIR_type:
        {
            Sym *sym;
            const char *newtype;

            next();
            sym = get_asm_sym(tok, ((void *)0));
            next();
            skip(',');
            if (tok == 0xc8) {
                newtype = tokc.str.data;
            } else {
                if (tok == '@' || tok == '%')
                    next();
                newtype = get_tok_str(tok, ((void *)0));
            }

            if (!strcmp(newtype, "function") || !strcmp(newtype, "STT_FUNC")) {
                sym->type.t = (sym->type.t & ~0x000f) | 6;
            }
            else if (s1->warn_unsupported)
                _tcc_warning("change type of '%s' from 0x%x to '%s' ignored",
                    get_tok_str(sym->v, ((void *)0)), sym->type.t, newtype);

            next();
        }
        break;
    case TOK_ASMDIR_pushsection:
    case TOK_ASMDIR_section:
        {
            char sname[256];
	    int old_nb_section = s1->nb_sections;

	    tok1 = tok;

            next();
            sname[0] = '\0';
            while (tok != ';' && tok != 10 && tok != ',') {
                if (tok == 0xc8)
                    pstrcat(sname, sizeof(sname), tokc.str.data);
                else
                    pstrcat(sname, sizeof(sname), get_tok_str(tok, ((void *)0)));
                next();
            }
            if (tok == ',') {

                next();
                if (tok != 0xc8)
                    expect("string constant");
                next();
                if (tok == ',') {
                    next();
                    if (tok == '@' || tok == '%')
                        next();
                    next();
                }
            }
            last_text_section = tcc_state->cur_text_section;
	    if (tok1 == TOK_ASMDIR_section)
	        use_section(s1, sname);
	    else
	        push_section(s1, sname);



	    if (old_nb_section != s1->nb_sections)
	        tcc_state->cur_text_section->sh_addralign = 1;
        }
        break;
    case TOK_ASMDIR_previous:
        {
            Section *sec;
            next();
            if (!last_text_section)
                _tcc_error("no previous section referenced");
            sec = tcc_state->cur_text_section;
            use_section1(s1, last_text_section);
            last_text_section = sec;
        }
        break;
    case TOK_ASMDIR_popsection:
	next();
	pop_section(s1);
	break;
# 928 "../tinycc/tccasm.c"
    case TOK_ASMDIR_code64:
        next();
        break;

    default:
        _tcc_error("unknown assembler directive '.%s'", get_tok_str(tok, ((void *)0)));
        break;
    }
}



static int tcc_assemble_internal(TCCState *s1, int do_preprocess, int global)
{
    int opcode;
    int saved_parse_flags = parse_flags;

    parse_flags = 0x0008 | 0x0040;
    if (do_preprocess)
        parse_flags |= 0x0001;
    for(;;) {
        next();
        if (tok == (-1))
            break;
        parse_flags |= 0x0004;
    redo:
        if (tok == '#') {

            while (tok != 10)
                next();
        } else if (tok >= TOK_ASMDIR_byte && tok <= TOK_ASMDIR_section) {
            asm_parse_directive(s1, global);
        } else if (tok == 0xcd) {
            const char *p;
            int n;
            p = tokc.str.data;
            n = strtoul(p, (char **)&p, 10);
            if (*p != '\0')
                expect("':'");

            asm_new_label(s1, asm_get_local_label_name(s1, n), 1);
            next();
            skip(':');
            goto redo;
        } else if (tok >= 256) {

            opcode = tok;
            next();
            if (tok == ':') {

                asm_new_label(s1, opcode, 0);
                next();
                goto redo;
            } else if (tok == '=') {
		set_symbol(s1, opcode);
                goto redo;
            } else {
                asm_opcode(s1, opcode);
            }
        }

        if (tok != ';' && tok != 10)
            expect("end of line");
        parse_flags &= ~0x0004;
    }

    parse_flags = saved_parse_flags;
    return 0;
}


static int tcc_assemble(TCCState *s1, int do_preprocess)
{
    int ret;
    tcc_debug_start(s1);

    tcc_state->cur_text_section = tcc_state->text_section;
    ind = tcc_state->cur_text_section->data_offset;
    nocode_wanted = 0;
    ret = tcc_assemble_internal(s1, do_preprocess, 1);
    tcc_state->cur_text_section->data_offset = ind;
    tcc_debug_end(s1);
    return ret;
}







static void tcc_assemble_inline(TCCState *s1, char *str, int len, int global)
{
    const int *saved_macro_ptr = macro_ptr;
    int dotid = set_idnum('.', 2);
    int dolid = set_idnum('$', 0);

    tcc_open_bf(s1, ":asm:", len);
    memcpy(file->buffer, str, len);
    macro_ptr = ((void *)0);
    tcc_assemble_internal(s1, 0, global);
    tcc_close();

    set_idnum('$', dolid);
    set_idnum('.', dotid);
    macro_ptr = saved_macro_ptr;
}




static int find_constraint(ASMOperand *operands, int nb_operands,
                           const char *name, const char **pp)
{
    int index;
    TokenSym *ts;
    const char *p;

    if (isnum(*name)) {
        index = 0;
        while (isnum(*name)) {
            index = (index * 10) + (*name) - '0';
            name++;
        }
        if ((unsigned)index >= nb_operands)
            index = -1;
    } else if (*name == '[') {
        name++;
        p = strchr(name, ']');
        if (p) {
            ts = tok_alloc(name, p - name);
            for(index = 0; index < nb_operands; index++) {
                if (operands[index].id == ts->tok)
                    goto found;
            }
            index = -1;
        found:
            name = p + 1;
        } else {
            index = -1;
        }
    } else {
        index = -1;
    }
    if (pp)
        *pp = name;
    return index;
}

static void subst_asm_operands(ASMOperand *operands, int nb_operands,
                               CString *out_str, CString *in_str)
{
    int c, index, modifier;
    const char *str;
    ASMOperand *op;
    SValue sv;

    cstr_new(out_str);
    str = in_str->data;
    for(;;) {
        c = *str++;
        if (c == '%') {
            if (*str == '%') {
                str++;
                goto add_char;
            }
            modifier = 0;
            if (*str == 'c' || *str == 'n' ||
                *str == 'b' || *str == 'w' || *str == 'h' || *str == 'k' ||
		*str == 'q' ||


		*str == 'P')
                modifier = *str++;
            index = find_constraint(operands, nb_operands, str, &str);
            if (index < 0)
                _tcc_error("invalid operand reference after %%");
            op = &operands[index];
            sv = *op->vt;
            if (op->reg >= 0) {
                sv.r = op->reg;
                if ((op->vt->r & 0x003f) == 0x0031 && op->is_memory)
                    sv.r |= 0x0100;
            }
            subst_asm_operand(out_str, &sv, modifier);
        } else {
        add_char:
            cstr_ccat(out_str, c);
            if (c == '\0')
                break;
        }
    }
}


static void parse_asm_operands(ASMOperand *operands, int *nb_operands_ptr,
                               int is_output)
{
    ASMOperand *op;
    int nb_operands;

    if (tok != ':') {
        nb_operands = *nb_operands_ptr;
        for(;;) {
	    CString astr;
            if (nb_operands >= 30)
                _tcc_error("too many asm operands");
            op = &operands[nb_operands++];
            op->id = 0;
            if (tok == '[') {
                next();
                if (tok < 256)
                    expect("identifier");
                op->id = tok;
                next();
                skip(']');
            }
	    parse_mult_str(&astr, "string constant");
            op->constraint = tcc_malloc(astr.size);
            strcpy(op->constraint, astr.data);
	    cstr_free(&astr);
            skip('(');
            gexpr();
            if (is_output) {
                if (!(vtop->type.t & 0x0040))
                    test_lvalue();
            } else {




                if ((vtop->r & 0x0100) &&
                    ((vtop->r & 0x003f) == 0x0031 ||
                     (vtop->r & 0x003f) < 0x0030) &&
                    !strchr(op->constraint, 'm')) {
                    gv(0x0001);
                }
            }
            op->vt = vtop;
            skip(')');
            if (tok == ',') {
                next();
            } else {
                break;
            }
        }
        *nb_operands_ptr = nb_operands;
    }
}


static void asm_instr(void)
{
    CString astr, astr1;
    ASMOperand operands[30];
    int nb_outputs, nb_operands, i, must_subst, out_reg;
    uint8_t clobber_regs[16];
    Section *sec;



    if (tok == TOK_VOLATILE1 || tok == TOK_VOLATILE2 || tok == TOK_VOLATILE3) {
        next();
    }
    parse_asm_str(&astr);
    nb_operands = 0;
    nb_outputs = 0;
    must_subst = 0;
    memset(clobber_regs, 0, sizeof(clobber_regs));
    if (tok == ':') {
        next();
        must_subst = 1;

        parse_asm_operands(operands, &nb_operands, 1);
        nb_outputs = nb_operands;
        if (tok == ':') {
            next();
            if (tok != ')') {

                parse_asm_operands(operands, &nb_operands, 0);
                if (tok == ':') {


                    next();
                    for(;;) {
                        if (tok != 0xc8)
                            expect("string constant");
                        asm_clobber(clobber_regs, tokc.str.data);
                        next();
                        if (tok == ',') {
                            next();
                        } else {
                            break;
                        }
                    }
                }
            }
        }
    }
    skip(')');


    if (tok != ';')
        expect("';'");


    save_regs(0);


    asm_compute_constraints(operands, nb_operands, nb_outputs,
                            clobber_regs, &out_reg);






    if (must_subst) {
        subst_asm_operands(operands, nb_operands, &astr1, &astr);
        cstr_free(&astr);
    } else {
        astr1 = astr;
    }





    asm_gen_code(operands, nb_operands, nb_outputs, 0,
                 clobber_regs, out_reg);



    sec = tcc_state->cur_text_section;

    tcc_assemble_inline(tcc_state, astr1.data, astr1.size - 1, 0);
    if (sec != tcc_state->cur_text_section) {
        _tcc_warning("inline asm tries to change current section");
        use_section1(tcc_state, sec);
    }


    next();


    asm_gen_code(operands, nb_operands, nb_outputs, 1,
                 clobber_regs, out_reg);


    for(i=0;i<nb_operands;i++) {
        ASMOperand *op;
        op = &operands[i];
        tcc_free(op->constraint);
        vpop();
    }
    cstr_free(&astr1);
}

static void asm_global_instr(void)
{
    CString astr;
    int saved_nocode_wanted = nocode_wanted;


    nocode_wanted = 0;
    next();
    parse_asm_str(&astr);
    skip(')');


    if (tok != ';')
        expect("';'");




    tcc_state->cur_text_section = tcc_state->text_section;
    ind = tcc_state->cur_text_section->data_offset;


    tcc_assemble_inline(tcc_state, astr.data, astr.size - 1, 1);

    tcc_state->cur_text_section->data_offset = ind;


    next();

    cstr_free(&astr);
    nocode_wanted = saved_nocode_wanted;
}
# 55 "../tinycc/libtcc.c" 2





# 1 "../tinycc/tccmacho.c" 1
# 18 "../tinycc/tccmacho.c"
# 1 "../tinycc/tcc.h" 1
# 19 "../tinycc/tccmacho.c" 2
# 37 "../tinycc/tccmacho.c"
struct fat_header {
    uint32_t        magic;
    uint32_t        nfat_arch;
};

struct fat_arch {
    int             cputype;
    int             cpusubtype;
    uint32_t        offset;
    uint32_t        size;
    uint32_t        align;
};






struct mach_header {
    uint32_t        magic;
    int             cputype;
    int             cpusubtype;
    uint32_t        filetype;
    uint32_t        ncmds;
    uint32_t        sizeofcmds;
    uint32_t        flags;
};

struct mach_header_64 {
    struct mach_header  mh;
    uint32_t            reserved;
};







struct load_command {
    uint32_t        cmd;
    uint32_t        cmdsize;
};
# 91 "../tinycc/tccmacho.c"
typedef int vm_prot_t;

struct segment_command_64 {
    uint32_t        cmd;
    uint32_t        cmdsize;
    char            segname[16];
    uint64_t        vmaddr;
    uint64_t        vmsize;
    uint64_t        fileoff;
    uint64_t        filesize;
    vm_prot_t       maxprot;
    vm_prot_t       initprot;
    uint32_t        nsects;
    uint32_t        flags;
};

struct section_64 {
    char            sectname[16];
    char            segname[16];
    uint64_t        addr;
    uint64_t        size;
    uint32_t        offset;
    uint32_t        align;
    uint32_t        reloff;
    uint32_t        nreloc;
    uint32_t        flags;
    uint32_t        reserved1;
    uint32_t        reserved2;
    uint32_t        reserved3;
};
# 131 "../tinycc/tccmacho.c"
typedef uint32_t lc_str;

struct dylib_command {
    uint32_t cmd;

    uint32_t cmdsize;
    lc_str   name;
    uint32_t timestamp;
    uint32_t current_version;
    uint32_t compatibility_version;
};

struct dylinker_command {
    uint32_t        cmd;

    uint32_t        cmdsize;
    lc_str          name;
};

struct symtab_command {
    uint32_t        cmd;
    uint32_t        cmdsize;
    uint32_t        symoff;
    uint32_t        nsyms;
    uint32_t        stroff;
    uint32_t        strsize;
};

struct dysymtab_command {
    uint32_t cmd;
    uint32_t cmdsize;

    uint32_t ilocalsym;
    uint32_t nlocalsym;

    uint32_t iextdefsym;
    uint32_t nextdefsym;

    uint32_t iundefsym;
    uint32_t nundefsym;

    uint32_t tocoff;
    uint32_t ntoc;

    uint32_t modtaboff;
    uint32_t nmodtab;

    uint32_t extrefsymoff;
    uint32_t nextrefsyms;

    uint32_t indirectsymoff;
    uint32_t nindirectsyms;

    uint32_t extreloff;
    uint32_t nextrel;
    uint32_t locreloff;
    uint32_t nlocrel;
};



struct entry_point_command {
    uint32_t  cmd;
    uint32_t  cmdsize;
    uint64_t  entryoff;
    uint64_t  stacksize;
};

enum skind {
    sk_unknown = 0,
    sk_discard,
    sk_text,
    sk_stubs,
    sk_ro_data,
    sk_uw_info,
    sk_nl_ptr,
    sk_la_ptr,
    sk_init,
    sk_fini,
    sk_rw_data,
    sk_bss,
    sk_linkedit,
    sk_last
};

struct nlist_64 {
    uint32_t  n_strx;
    uint8_t n_type;
    uint8_t n_sect;
    uint16_t n_desc;
    uint64_t n_value;
};
# 232 "../tinycc/tccmacho.c"
struct macho {
    struct mach_header_64 mh;
    int seg2lc[4], nseg;
    struct load_command **lc;
    struct entry_point_command *ep;
    int nlc;
    struct {
        Section *s;
        int machosect;
    } sk_to_sect[sk_last];
    int *elfsectomacho;
    int *e2msym;
    Section *symtab, *strtab, *wdata, *indirsyms, *stubs;
    int stubsym;
    uint32_t ilocal, iextdef, iundef;
};




static void * add_lc(struct macho *mo, uint32_t cmd, uint32_t cmdsize)
{
    struct load_command *lc = tcc_mallocz(cmdsize);
    lc->cmd = cmd;
    lc->cmdsize = cmdsize;
    mo->lc = tcc_realloc(mo->lc, sizeof(mo->lc[0]) * (mo->nlc + 1));
    mo->lc[mo->nlc++] = lc;
    return lc;
}

static struct segment_command_64 * add_segment(struct macho *mo, char *name)
{
    struct segment_command_64 *sc = add_lc(mo, 0x19, sizeof(*sc));
    strncpy(sc->segname, name, 16);
    mo->seg2lc[mo->nseg++] = mo->nlc - 1;
    return sc;
}

static struct segment_command_64 * get_segment(struct macho *mo, int i)
{
    return (struct segment_command_64 *) (mo->lc[mo->seg2lc[i]]);
}

static int add_section(struct macho *mo, struct segment_command_64 **_seg, char *name)
{
    struct segment_command_64 *seg = *_seg;
    int ret = seg->nsects;
    struct section_64 *sec;
    seg->nsects++;
    seg->cmdsize += sizeof(*sec);
    seg = tcc_realloc(seg, sizeof(*seg) + seg->nsects * sizeof(*sec));
    sec = (struct section_64*)((char*)seg + sizeof(*seg)) + ret;
    memset(sec, 0, sizeof(*sec));
    strncpy(sec->sectname, name, 16);
    strncpy(sec->segname, seg->segname, 16);
    *_seg = seg;
    return ret;
}

static struct section_64 *get_section(struct segment_command_64 *seg, int i)
{
    return (struct section_64*)((char*)seg + sizeof(*seg)) + i;
}

static void * add_dylib(struct macho *mo, char *name)
{
    struct dylib_command *lc;
    int sz = (sizeof(*lc) + strlen(name) + 1 + 7) & -8;
    lc = add_lc(mo, 0xc, sz);
    lc->name = sizeof(*lc);
    strcpy((char*)lc + lc->name, name);
    lc->timestamp = 2;
    lc->current_version = 1 << 16;
    lc->compatibility_version = 1 << 16;
    return lc;
}

static void check_relocs(TCCState *s1, struct macho *mo)
{
    Section *s;
    Elf64_Rela *rel;
    Elf64_Sym *sym;
    int i, type, gotplt_entry, sym_index, for_code;
    struct sym_attr *attr;

    s1->got = new_section(s1, ".got", 1, (1 << 1) | (1 << 0));
    mo->indirsyms = new_section(s1, "LEINDIR", (0x60000000 + 42), (1 << 1) | (1 << 0));
    for (i = 1; i < s1->nb_sections; i++) {
        s = s1->sections[i];
        if (s->sh_type != 4)
            continue;
        for (rel = (Elf64_Rela *) s->data + 0; rel < (Elf64_Rela *) (s->data + s->data_offset); rel++) {
            type = ((rel->r_info) & 0xffffffff);
            gotplt_entry = gotplt_entry_type(type);
            for_code = code_reloc(type);



            sym_index = ((rel->r_info) >> 32);
            sym = &((Elf64_Sym *)s1->symtab_section->data)[sym_index];
            if (sym->st_shndx == 0
                || gotplt_entry == ALWAYS_GOTPLT_ENTRY) {
                attr = get_sym_attr(s1, sym_index, 1);
                if (!attr->dyn_index) {
                    uint32_t *pi = section_ptr_add(mo->indirsyms, sizeof(*pi));
                    attr->got_offset = s1->got->data_offset;
                    attr->plt_offset = -1;
                    attr->dyn_index = 1;
                    section_ptr_add(s1->got, 8);
                    if ((((unsigned char) (sym->st_info)) >> 4) == 0) {
                        if (sym->st_shndx == 0)
                          (tcc_enter_state(s1),_tcc_error)("undefined local symbol???");
                        *pi = 0x80000000;



                        put_elf_reloc(s1->symtab, s1->got, attr->got_offset,
                                      1, sym_index);
                    } else
                      *pi = mo->e2msym[sym_index];
                }
                if (for_code) {
                    if (attr->plt_offset == -1) {
                        uint8_t *jmp;
                        attr->plt_offset = mo->stubs->data_offset;
                        jmp = section_ptr_add(mo->stubs, 6);
                        jmp[0] = 0xff;
                        jmp[1] = 0x25;
                        put_elf_reloc(s1->symtab, mo->stubs,
                                      attr->plt_offset + 2,
                                      9, sym_index);
                    }
                    rel->r_info = ((((Elf64_Xword) (mo->stubsym)) << 32) + (type));
                    rel->r_addend += attr->plt_offset;
                }
            }
        }
    }
}

static int check_symbols(TCCState *s1, struct macho *mo)
{
    int sym_index, sym_end;
    int ret = 0;

    mo->ilocal = mo->iextdef = mo->iundef = -1;
    sym_end = s1->symtab_section->data_offset / sizeof(Elf64_Sym);
    for (sym_index = 1; sym_index < sym_end; ++sym_index) {
        int elf_index = ((struct nlist_64 *)mo->symtab->data + sym_index - 1)->n_value;
        Elf64_Sym *sym = (Elf64_Sym *)s1->symtab_section->data + elf_index;
        const char *name = (char*)s1->symtab_section->link->data + sym->st_name;
        unsigned type = ((sym->st_info) & 0xf);
        unsigned bind = (((unsigned char) (sym->st_info)) >> 4);
        unsigned vis  = ((sym->st_other) & 0x03);

        if (0) printf("%4d (%4d): %09llx %4d %4d %4d %3d %s\n",
                sym_index, elf_index, sym->st_value,
                type, bind, vis, sym->st_shndx, name);
        if (bind == 0) {
            if (mo->ilocal == -1)
              mo->ilocal = sym_index - 1;
            if (mo->iextdef != -1 || mo->iundef != -1)
              (tcc_enter_state(s1),_tcc_error)("local syms after global ones");
        } else if (sym->st_shndx != 0) {
            if (mo->iextdef == -1)
              mo->iextdef = sym_index - 1;
            if (mo->iundef != -1)
              (tcc_enter_state(s1),_tcc_error)("external defined symbol after undefined");
        } else if (sym->st_shndx == 0) {
            if (mo->iundef == -1)
              mo->iundef = sym_index - 1;
            if ((((unsigned char) (sym->st_info)) >> 4) == 2
                || find_elf_sym(s1->dynsymtab_section, name)) {





                sym->st_shndx = (0xff20 + 2);
                continue;
            }
            (tcc_enter_state(s1),_tcc_error_noabort)("undefined symbol '%s'", name);
            ret = -1;
        }
    }
    return ret;
}

static void convert_symbol(TCCState *s1, struct macho *mo, struct nlist_64 *pn)
{
    struct nlist_64 n = *pn;
    Elf64_Sym *sym = (Elf64_Sym *)s1->symtab_section->data + pn->n_value;
    const char *name = (char*)s1->symtab_section->link->data + sym->st_name;
    switch(((sym->st_info) & 0xf)) {
    case 0:
    case 1:
    case 2:
    case 3:
        n.n_type = 0xe;
        break;
    case 4:
        n.n_type = 0x2;
        break;
    default:
        (tcc_enter_state(s1),_tcc_error)("unhandled ELF symbol type %d %s",
                  ((sym->st_info) & 0xf), name);
    }
    if (sym->st_shndx == 0)
      (tcc_enter_state(s1),_tcc_error)("should have been rewritten to SHN_FROMDLL: %s", name);
    else if (sym->st_shndx == (0xff20 + 2))
      n.n_type = 0x0, n.n_sect = 0;
    else if (sym->st_shndx == 0xfff1)
      n.n_type = 0x2, n.n_sect = 0;
    else if (sym->st_shndx >= 0xff00)
      (tcc_enter_state(s1),_tcc_error)("unhandled ELF symbol section %d %s", sym->st_shndx, name);
    else if (!mo->elfsectomacho[sym->st_shndx])
      (tcc_enter_state(s1),_tcc_error)("ELF section %d not mapped into Mach-O for symbol %s",
                sym->st_shndx, name);
    else
      n.n_sect = mo->elfsectomacho[sym->st_shndx];
    if ((((unsigned char) (sym->st_info)) >> 4) == 1)
      n.n_type |=  0x1;
    else if ((((unsigned char) (sym->st_info)) >> 4) == 2)
      n.n_desc |= 0x0040 | (n.n_type != 0x0 ? 0x0080 : 0);
    n.n_strx = pn->n_strx;
    n.n_value = sym->st_value;
    *pn = n;
}

static void convert_symbols(TCCState *s1, struct macho *mo)
{
    struct nlist_64 *pn;
    for (pn = (struct nlist_64 *) mo->symtab->data + 0; pn < (struct nlist_64 *) (mo->symtab->data + mo->symtab->data_offset); pn++)
        convert_symbol(s1, mo, pn);
}

static int machosymcmp(const void *_a, const void *_b)
{
    TCCState *s1 = tcc_state;
    int ea = ((struct nlist_64 *)_a)->n_value;
    int eb = ((struct nlist_64 *)_b)->n_value;
    Elf64_Sym *sa = (Elf64_Sym *)s1->symtab_section->data + ea;
    Elf64_Sym *sb = (Elf64_Sym *)s1->symtab_section->data + eb;
    int r;


    r = ((((unsigned char) (sb->st_info)) >> 4) == 0)
        - ((((unsigned char) (sa->st_info)) >> 4) == 0);
    if (r)
      return r;
    r = (sa->st_shndx == 0) - (sb->st_shndx == 0);
    if (r)
      return r;
    if ((((unsigned char) (sa->st_info)) >> 4) != 0) {
        const char * na = (char*)s1->symtab_section->link->data + sa->st_name;
        const char * nb = (char*)s1->symtab_section->link->data + sb->st_name;
        r = strcmp(na, nb);
        if (r)
          return r;
    }
    return ea - eb;
}

static void create_symtab(TCCState *s1, struct macho *mo)
{
    int sym_index, sym_end;
    struct nlist_64 *pn;



    mo->stubs = new_section(s1, "__stubs", 1, (1 << 1) | (1 << 2));
    mo->stubsym = put_elf_sym(s1->symtab, 0, 0,
                              ((((0)) << 4) + (((3)) & 0xf)), 0,
                              mo->stubs->sh_num, ".__stubs");

    mo->symtab = new_section(s1, "LESYMTAB", (0x60000000 + 42), (1 << 1) | (1 << 0));
    mo->strtab = new_section(s1, "LESTRTAB", (0x60000000 + 42), (1 << 1) | (1 << 0));
    put_elf_str(mo->strtab, " ");
    sym_end = s1->symtab_section->data_offset / sizeof(Elf64_Sym);
    pn = section_ptr_add(mo->symtab, sizeof(*pn) * (sym_end - 1));
    for (sym_index = 1; sym_index < sym_end; ++sym_index) {
        Elf64_Sym *sym = (Elf64_Sym *)s1->symtab_section->data + sym_index;
        const char *name = (char*)s1->symtab_section->link->data + sym->st_name;
        pn[sym_index - 1].n_strx = put_elf_str(mo->strtab, name);
        pn[sym_index - 1].n_value = sym_index;
    }
    tcc_enter_state(s1);
    qsort(pn, sym_end - 1, sizeof(*pn), machosymcmp);
    tcc_exit_state();
    mo->e2msym = tcc_malloc(sym_end * sizeof(*mo->e2msym));
    mo->e2msym[0] = -1;
    for (sym_index = 1; sym_index < sym_end; ++sym_index) {
        mo->e2msym[pn[sym_index - 1].n_value] = sym_index - 1;
    }
}

struct {
    int seg;
    uint32_t flags;
    char *name;
} skinfo[sk_last] = {
       { 0 },
       { 0 },
          { 1, 0x0 | 0x80000000
                             | 0x00000400, "__text" },
         { 0 },
       { 1, 0x0, "__rodata" },
       { 0 },
        { 2, 0x6, "__got" },
        { 0 },
          { 2, 0x9, "__mod_init_func" },
          { 2, 0xa, "__mod_term_func" },
       { 2, 0x0, "__data" },
           { 2, 0x1, "__bss" },
      { 3, 0x0, ((void *)0) },
};

static void collect_sections(TCCState *s1, struct macho *mo)
{
    int i, sk, numsec;
    uint64_t curaddr, fileofs;
    Section *s;
    struct segment_command_64 *seg = ((void *)0);
    struct dylinker_command *dyldlc;
    struct symtab_command *symlc;
    struct dysymtab_command *dysymlc;
    char *str;

    seg = add_segment(mo, "__PAGEZERO");
    seg->vmsize = (uint64_t)1 << 32;

    seg = add_segment(mo, "__TEXT");
    seg->vmaddr = (uint64_t)1 << 32;
    seg->maxprot = 7;
    seg->initprot = 5;

    seg = add_segment(mo, "__DATA");
    seg->vmaddr = -1;
    seg->maxprot = 7;
    seg->initprot = 3;

    seg = add_segment(mo, "__LINKEDIT");
    seg->vmaddr = -1;
    seg->maxprot = 7;
    seg->initprot = 1;

    mo->ep = add_lc(mo, (0x28|0x80000000), sizeof(*mo->ep));
    mo->ep->entryoff = 4096;

    i = (sizeof(*dyldlc) + strlen("/usr/lib/dyld") + 1 + 7) &-8;
    dyldlc = add_lc(mo, 0xe, i);
    dyldlc->name = sizeof(*dyldlc);
    str = (char*)dyldlc + dyldlc->name;
    strcpy(str, "/usr/lib/dyld");

    symlc = add_lc(mo, 0x2, sizeof(*symlc));
    dysymlc = add_lc(mo, 0xb, sizeof(*dysymlc));

    for(i = 0; i < s1->nb_loaded_dlls; i++) {
        DLLReference *dllref = s1->loaded_dlls[i];
        if (dllref->level == 0)
          add_dylib(mo, dllref->name);
    }



    section_ptr_add(s1->data_section, 1);
    memset (mo->sk_to_sect, 0, sizeof(mo->sk_to_sect));
    for (i = s1->nb_sections; i-- > 1;) {
        int type, flags;
        s = s1->sections[i];
        type = s->sh_type;
        flags = s->sh_flags;
        sk = sk_unknown;
        if (flags & (1 << 1)) {
            switch (type) {
            default:           sk = sk_unknown; break;
            case 14: sk = sk_init; break;
            case 15: sk = sk_fini; break;
            case 8:   sk = sk_bss; break;
            case 2:   sk = sk_discard; break;
            case 3:   sk = s == s1->stab_section->link ? sk_ro_data : sk_discard; break;
            case 4:     sk = sk_discard; break;
            case (0x60000000 + 42): sk = sk_linkedit; break;
            case 1:
                if (s == s1->got)
                  sk = sk_nl_ptr;
                else if (flags & (1 << 2))
                  sk = sk_text;
                else if (flags & (1 << 0))
                  sk = sk_rw_data;
                else
                  sk = sk_ro_data;
                break;
            }
        } else
          sk = sk_discard;
        s->prev = mo->sk_to_sect[sk].s;
        mo->sk_to_sect[sk].s = s;
    }
    fileofs = 4096;
    curaddr = get_segment(mo, 1)->vmaddr;
    curaddr += 4096;
    seg = ((void *)0);
    numsec = 0;
    mo->elfsectomacho = tcc_mallocz(sizeof(*mo->elfsectomacho) * s1->nb_sections);
    for (sk = sk_unknown; sk < sk_last; sk++) {
        struct section_64 *sec = ((void *)0);
        if (seg) {
            seg->vmsize = curaddr - seg->vmaddr;
            seg->filesize = fileofs - seg->fileoff;
        }
        if (skinfo[sk].seg && mo->sk_to_sect[sk].s) {
            uint64_t al = 0;
            int si;
            seg = get_segment(mo, skinfo[sk].seg);
            if (skinfo[sk].name) {
                si = add_section(mo, &seg, skinfo[sk].name);
                numsec++;
                mo->lc[mo->seg2lc[skinfo[sk].seg]] = (struct load_command*)seg;
                mo->sk_to_sect[sk].machosect = si;
                sec = get_section(seg, si);
                sec->flags = skinfo[sk].flags;
            }
            if (seg->vmaddr == -1) {
                curaddr = (curaddr + 4095) & -4096;
                seg->vmaddr = curaddr;
                fileofs = (fileofs + 4095) & -4096;
                seg->fileoff = fileofs;
            }

            for (s = mo->sk_to_sect[sk].s; s; s = s->prev) {
                int a = exact_log2p1(s->sh_addralign);
                if (a && al < (a - 1))
                  al = a - 1;
                s->sh_size = s->data_offset;
            }
            if (sec)
              sec->align = al;
            al = 1ULL << al;
            if (al > 4096)
              (tcc_enter_state(s1),_tcc_warning)("alignment > 4096"), sec->align = 12, al = 4096;
            curaddr = (curaddr + al - 1) & -al;
            fileofs = (fileofs + al - 1) & -al;
            if (sec) {
                sec->addr = curaddr;
                sec->offset = fileofs;
            }
            for (s = mo->sk_to_sect[sk].s; s; s = s->prev) {
                al = s->sh_addralign;
                curaddr = (curaddr + al - 1) & -al;
                if (0) printf("curaddr now 0x%llx\n", curaddr);
                s->sh_addr = curaddr;
                curaddr += s->sh_size;
                if (s->sh_type != 8) {
                    fileofs = (fileofs + al - 1) & -al;
                    s->sh_offset = fileofs;
                    fileofs += s->sh_size;
                    if (0) printf("fileofs now %lld\n", fileofs);
                }
                if (sec)
                  mo->elfsectomacho[s->sh_num] = numsec;
            }
            if (sec)
              sec->size = curaddr - sec->addr;
        }
        if (0)
          for (s = mo->sk_to_sect[sk].s; s; s = s->prev) {
              int type = s->sh_type;
              int flags = s->sh_flags;
              printf("%d section %-16s %-10s %09llx %04x %02d %s,%s,%s\n",
                     sk,
                     s->name,
                     type == 1 ? "progbits" :
                     type == 8 ? "nobits" :
                     type == 2 ? "symtab" :
                     type == 3 ? "strtab" :
                     type == 14 ? "init" :
                     type == 15 ? "fini" :
                     type == 4 ? "rel" : "???",
                     s->sh_addr,
                     (unsigned)s->data_offset,
                     s->sh_addralign,
                     flags & (1 << 1) ? "alloc" : "",
                     flags & (1 << 0) ? "write" : "",
                     flags & (1 << 2) ? "exec" : ""
                    );
          }
    }
    if (seg) {
        seg->vmsize = curaddr - seg->vmaddr;
        seg->filesize = fileofs - seg->fileoff;
    }


    symlc->symoff = mo->symtab->sh_offset;
    symlc->nsyms = mo->symtab->data_offset / sizeof(struct nlist_64);
    symlc->stroff = mo->strtab->sh_offset;
    symlc->strsize = mo->strtab->data_offset;

    dysymlc->iundefsym = mo->iundef == -1 ? symlc->nsyms : mo->iundef;
    dysymlc->iextdefsym = mo->iextdef == -1 ? dysymlc->iundefsym : mo->iextdef;
    dysymlc->ilocalsym = mo->ilocal == -1 ? dysymlc->iextdefsym : mo->ilocal;
    dysymlc->nlocalsym = dysymlc->iextdefsym - dysymlc->ilocalsym;
    dysymlc->nextdefsym = dysymlc->iundefsym - dysymlc->iextdefsym;
    dysymlc->nundefsym = symlc->nsyms - dysymlc->iundefsym;
    dysymlc->indirectsymoff = mo->indirsyms->sh_offset;
    dysymlc->nindirectsyms = mo->indirsyms->data_offset / sizeof(uint32_t);
}

static void macho_write(TCCState *s1, struct macho *mo, FILE *fp)
{
    int i, sk;
    uint64_t fileofs = 0;
    Section *s;
    mo->mh.mh.magic = 0xfeedfacf;
    mo->mh.mh.cputype = 0x1000007;
    mo->mh.mh.cpusubtype = 0x80000003;
    mo->mh.mh.filetype = 2;
    mo->mh.mh.flags = 4;
    mo->mh.mh.ncmds = mo->nlc;
    mo->mh.mh.sizeofcmds = 0;
    for (i = 0; i < mo->nlc; i++)
      mo->mh.mh.sizeofcmds += mo->lc[i]->cmdsize;

    fwrite(&mo->mh, 1, sizeof(mo->mh), fp);
    fileofs += sizeof(mo->mh);
    for (i = 0; i < mo->nlc; i++) {
        fwrite(mo->lc[i], 1, mo->lc[i]->cmdsize, fp);
        fileofs += mo->lc[i]->cmdsize;
    }

    for (sk = sk_unknown; sk < sk_last; sk++) {

        if (!skinfo[sk].seg || !mo->sk_to_sect[sk].s)
          continue;
          get_segment(mo, skinfo[sk].seg);
        for (s = mo->sk_to_sect[sk].s; s; s = s->prev) {
            if (s->sh_type != 8) {
                while (fileofs < s->sh_offset)
                  fputc(0, fp), fileofs++;
                if (s->sh_size) {
                    fwrite(s->data, 1, s->sh_size, fp);
                    fileofs += s->sh_size;
                }
            }
        }
    }
}

static int macho_output_file(TCCState *s1, const char *filename)
{
    int fd, mode, file_type;
    FILE *fp;
    int i, ret = -1;
    struct macho mo;

    (void)memset(&mo, 0, sizeof(mo));

    file_type = s1->output_type;
    if (file_type == 4)
        mode = 0666;
    else
        mode = 0777;
    unlink(filename);
    fd = open(filename, 0x0001 | 0x0200 | 0x0400 | 0, mode);
    if (fd < 0) {
        (tcc_enter_state(s1),_tcc_error_noabort)("could not write '%s: %s'", filename, strerror((*__error())));
        return -1;
    }
    fp = fdopen(fd, "wb");
    if (s1->verbose)
        printf("<- %s\n", filename);

    tcc_add_runtime(s1);
    resolve_common_syms(s1);
    create_symtab(s1, &mo);
    check_relocs(s1, &mo);
    ret = check_symbols(s1, &mo);
    if (!ret) {
        int i;
        Section *s;
        collect_sections(s1, &mo);
        relocate_syms(s1, s1->symtab, 0);
				if (s1->output_type == 3) {

				} else {
					mo.ep->entryoff = get_sym_addr(s1, "main", 1, 1)
						- get_segment(&mo, 1)->vmaddr;
				}
        if (s1->nb_errors)
          goto do_ret;

        for(i = 1; i < s1->nb_sections; i++) {
            s = s1->sections[i];
            if (s->reloc)
              relocate_section(s1, s);
        }
        convert_symbols(s1, &mo);

        macho_write(s1, &mo, fp);
    }

 do_ret:
    for (i = 0; i < mo.nlc; i++)
      tcc_free(mo.lc[i]);
    tcc_free(mo.lc);
    tcc_free(mo.elfsectomacho);
    tcc_free(mo.e2msym);

    fclose(fp);
    return ret;
}

static uint32_t swap32(uint32_t x)
{
  return (x >> 24) | (x << 24) | ((x >> 8) & 0xff00) | ((x & 0xff00) << 8);
}


static int macho_load_dll(TCCState *s1, int fd, const char *filename, int lev)
{
    unsigned char buf[sizeof(struct mach_header_64)];
    void *buf2;
    uint32_t machofs = 0;
    struct fat_header fh;
    struct mach_header mh;
    struct load_command *lc;
    int i, swap = 0;
    const char *soname = filename;
    struct nlist_64 *symtab = 0;
    uint32_t nsyms = 0;
    char *strtab = 0;
    uint32_t strsize = 0;
    uint32_t iextdef = 0;
    uint32_t nextdef = 0;
    DLLReference *dllref;

  again:
    if (full_read(fd, buf, sizeof(buf)) != sizeof(buf))
      return -1;
    memcpy(&fh, buf, sizeof(fh));
    if (fh.magic == 0xcafebabe || fh.magic == 0xbebafeca) {
        struct fat_arch *fa = load_data(fd, sizeof(fh),
                                        fh.nfat_arch * sizeof(*fa));
        swap = fh.magic == 0xbebafeca;
        for (i = 0; i < (swap ? swap32(fh.nfat_arch) : (fh.nfat_arch)); i++)
          if ((swap ? swap32(fa[i].cputype) : (fa[i].cputype)) == 0x01000007
              && (swap ? swap32(fa[i].cpusubtype) : (fa[i].cpusubtype)) == 3)
            break;
        if (i == (swap ? swap32(fh.nfat_arch) : (fh.nfat_arch))) {
            tcc_free(fa);
            return -1;
        }
        machofs = (swap ? swap32(fa[i].offset) : (fa[i].offset));
        tcc_free(fa);
        lseek(fd, machofs, 0);
        goto again;
    } else if (fh.magic == 0xcafebabf || fh.magic == 0xbfbafeca) {
        (tcc_enter_state(s1),_tcc_warning)("%s: Mach-O fat 64bit files of type 0x%x not handled",
                    filename, fh.magic);
        return -1;
    }

    memcpy(&mh, buf, sizeof(mh));
    if (mh.magic != 0xfeedfacf)
      return -1;
    if (0) printf("found Mach-O at %d\n", machofs);
    buf2 = load_data(fd, machofs + sizeof(struct mach_header_64), mh.sizeofcmds);
    for (i = 0, lc = buf2; i < mh.ncmds; i++) {
        if (0) printf("lc %2d: 0x%08x\n", i, lc->cmd);
        switch (lc->cmd) {
        case 0x2:
        {
            struct symtab_command *sc = (struct symtab_command*)lc;
            nsyms = sc->nsyms;
            symtab = load_data(fd, machofs + sc->symoff, nsyms * sizeof(*symtab));
            strsize = sc->strsize;
            strtab = load_data(fd, machofs + sc->stroff, strsize);
            break;
        }
        case 0xd:
        {
            struct dylib_command *dc = (struct dylib_command*)lc;
            soname = (char*)lc + dc->name;
            if (0) printf(" ID_DYLIB %d 0x%x 0x%x %s\n",
                    dc->timestamp, dc->current_version,
                    dc->compatibility_version, soname);
            break;
        }
        case (0x1f | 0x80000000):
        {
            struct dylib_command *dc = (struct dylib_command*)lc;
            char *name = (char*)lc + dc->name;
            int subfd = open(name, 0x0000 | 0);
            if (0) printf(" REEXPORT %s\n", name);
            if (subfd < 0)
              (tcc_enter_state(s1),_tcc_warning)("can't open %s (reexported from %s)", name, filename);
            else {


                macho_load_dll(s1, subfd, name, lev + 1);
                close(subfd);
            }
            break;
        }
        case 0xb:
        {
            struct dysymtab_command *dc = (struct dysymtab_command*)lc;
            iextdef = dc->iextdefsym;
            nextdef = dc->nextdefsym;
            break;
        }
        }
        lc = (struct load_command*) ((char*)lc + lc->cmdsize);
    }


    for(i = 0; i < s1->nb_loaded_dlls; i++) {
        dllref = s1->loaded_dlls[i];
        if (!strcmp(soname, dllref->name)) {

            if (lev < dllref->level)
                dllref->level = lev;
            goto the_end;
        }
    }
    dllref = tcc_mallocz(sizeof(DLLReference) + strlen(soname));
    dllref->level = lev;
    strcpy(dllref->name, soname);
    dynarray_add(&s1->loaded_dlls, &s1->nb_loaded_dlls, dllref);

    if (!nsyms || !nextdef)
      (tcc_enter_state(s1),_tcc_warning)("%s doesn't export any symbols?", filename);


    if (0) printf("symbols (exported):\n");
    if (0) printf("    n: typ sec   desc              value name\n");

    for (i = iextdef; i < iextdef + nextdef; i++) {
        struct nlist_64 *sym = symtab + i;
        if (0) printf("%5d: %3d %3d 0x%04x 0x%016llx %s\n",
                i, sym->n_type, sym->n_sect, sym->n_desc, sym->n_value,
                strtab + sym->n_strx);
        set_elf_sym(s1->dynsymtab_section, 0, 0,
                    ((((1)) << 4) + (((0)) & 0xf)),
                    0, 0, strtab + sym->n_strx);
    }

  the_end:
    tcc_free(strtab);
    tcc_free(symtab);
    tcc_free(buf2);
    return 0;
}
# 61 "../tinycc/libtcc.c" 2



# 1 "../tinycc/tcc.h" 1
# 65 "../tinycc/libtcc.c" 2





static struct TCCState *tcc_state;
# 138 "../tinycc/libtcc.c"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/dispatch.h" 1
# 26 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/dispatch.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/os/availability.h" 1
# 27 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/dispatch.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/TargetConditionals.h" 1
# 28 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/dispatch.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/os/base.h" 1
# 279 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/os/base.h"
typedef void (*os_function_t)(void *);
# 29 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/dispatch.h" 2






# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h" 1
# 84 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_char.h" 1
# 30 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_char.h"
typedef unsigned char   u_char;
# 85 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_short.h" 1
# 30 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_short.h"
typedef unsigned short  u_short;
# 86 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int.h" 1
# 30 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int.h"
typedef unsigned int    u_int;
# 87 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h" 2

typedef unsigned long           u_long;


typedef unsigned short          ushort;
typedef unsigned int            uint;


typedef u_int64_t               u_quad_t;
typedef int64_t                 quad_t;
typedef quad_t *                qaddr_t;

# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_caddr_t.h" 1
# 30 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_caddr_t.h"
typedef char *          caddr_t;
# 99 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h" 2


typedef int32_t                 daddr_t;



typedef u_int32_t               fixpt_t;

# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_blkcnt_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_blkcnt_t.h"
typedef __darwin_blkcnt_t        blkcnt_t;
# 108 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_blksize_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_blksize_t.h"
typedef __darwin_blksize_t        blksize_t;
# 109 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h" 2

# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_in_addr_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_in_addr_t.h"
typedef __uint32_t      in_addr_t;
# 111 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_in_port_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_in_port_t.h"
typedef __uint16_t              in_port_t;
# 112 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ino_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ino_t.h"
typedef __darwin_ino_t          ino_t;
# 113 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h" 2


# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ino64_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ino64_t.h"
typedef __darwin_ino64_t        ino64_t;
# 115 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h" 2



# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_key_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_key_t.h"
typedef __int32_t        key_t;
# 119 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h" 2

# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_nlink_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_nlink_t.h"
typedef __uint16_t        nlink_t;
# 121 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h" 2




typedef int32_t                 segsz_t;
typedef int32_t                 swblk_t;
# 189 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h"
typedef __int32_t       fd_mask;
# 216 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_cond_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_cond_t.h"
typedef __darwin_pthread_cond_t pthread_cond_t;
# 217 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_condattr_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_condattr_t.h"
typedef __darwin_pthread_condattr_t pthread_condattr_t;
# 218 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_mutex_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_mutex_t.h"
typedef __darwin_pthread_mutex_t pthread_mutex_t;
# 219 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_mutexattr_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_mutexattr_t.h"
typedef __darwin_pthread_mutexattr_t pthread_mutexattr_t;
# 220 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_once_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_once_t.h"
typedef __darwin_pthread_once_t pthread_once_t;
# 221 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_rwlock_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_rwlock_t.h"
typedef __darwin_pthread_rwlock_t pthread_rwlock_t;
# 222 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_rwlockattr_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_rwlockattr_t.h"
typedef __darwin_pthread_rwlockattr_t pthread_rwlockattr_t;
# 223 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h" 2




# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_key_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_key_t.h"
typedef __darwin_pthread_key_t pthread_key_t;
# 228 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h" 2




# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fsblkcnt_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fsblkcnt_t.h"
typedef __darwin_fsblkcnt_t             fsblkcnt_t;
# 233 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fsfilcnt_t.h" 1
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_fsfilcnt_t.h"
typedef __darwin_fsfilcnt_t             fsfilcnt_t;
# 234 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/types.h" 2
# 36 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/dispatch.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stddef.h" 1
# 68 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stddef.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_offsetof.h" 1
# 69 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stddef.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ptrdiff_t.h" 1
# 32 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ptrdiff_t.h"
typedef __darwin_ptrdiff_t ptrdiff_t;
# 70 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stddef.h" 2
# 79 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stddef.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wchar_t.h" 1
# 80 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stddef.h" 2


# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wint_t.h" 1
# 32 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wint_t.h"
typedef __darwin_wint_t wint_t;
# 83 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stddef.h" 2
# 37 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/dispatch.h" 2

# 1 "./stdbool.h" 1
# 39 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/dispatch.h" 2




# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/fcntl.h" 1
# 44 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/dispatch.h" 2
# 59 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/dispatch.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/os/object.h" 1
# 239 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/os/object.h"
extern __attribute__((__visibility__("default")))
void*
os_retain(void *object);
# 261 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/os/object.h"
extern __attribute__((__visibility__("default")))
void
os_release(void *object);
# 60 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/dispatch.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/base.h" 1
# 304 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/base.h"
typedef void (*dispatch_function_t)(void *);
# 61 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/dispatch.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/time.h" 1
# 33 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/time.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/clock_types.h" 1
# 46 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/clock_types.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/time_value.h" 1
# 60 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/time_value.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/machine/vm_types.h" 1
# 33 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/machine/vm_types.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/vm_types.h" 1
# 73 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/vm_types.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/vm_param.h" 1
# 74 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/vm_types.h" 2
# 93 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/vm_types.h"
typedef __darwin_natural_t      natural_t;
typedef int                     integer_t;






typedef uintptr_t               vm_offset_t;
# 112 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/vm_types.h"
typedef uintptr_t               vm_size_t;
# 124 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/vm_types.h"
typedef uint64_t                mach_vm_address_t;
typedef uint64_t                mach_vm_offset_t;
typedef uint64_t                mach_vm_size_t;

typedef uint64_t                vm_map_offset_t;
typedef uint64_t                vm_map_address_t;
typedef uint64_t                vm_map_size_t;

typedef mach_vm_address_t       mach_port_context_t;
# 34 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/machine/vm_types.h" 2
# 61 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/time_value.h" 2





struct time_value {
	integer_t seconds;
	integer_t microseconds;
};

typedef struct time_value       time_value_t;
# 47 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/clock_types.h" 2




typedef int     alarm_type_t;
typedef int     sleep_type_t;
typedef int     clock_id_t;
typedef int     clock_flavor_t;
typedef int     *clock_attr_t;
typedef int     clock_res_t;




struct mach_timespec {
	unsigned int    tv_sec;
	clock_res_t             tv_nsec;
};
typedef struct mach_timespec    mach_timespec_t;
# 34 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/time.h" 2
# 57 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/time.h"
struct timespec;
# 67 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/time.h"
typedef uint64_t dispatch_time_t;

enum {
	DISPATCH_WALLTIME_NOW 	= ~1ull,

};
# 102 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/time.h"
extern __attribute__((visibility("default"))) __attribute__((__warn_unused_result__)) __attribute__((__nothrow__))
dispatch_time_t
dispatch_time(dispatch_time_t when, int64_t delta);
# 128 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/time.h"
extern __attribute__((visibility("default"))) __attribute__((__warn_unused_result__)) __attribute__((__nothrow__))
dispatch_time_t
dispatch_walltime(const struct timespec * when, int64_t delta);
# 62 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/dispatch.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/object.h" 1
# 94 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/object.h"
typedef union {
	struct _os_object_s *_os_obj;
	struct dispatch_object_s *_do;
	struct dispatch_queue_s *_dq;
	struct dispatch_queue_attr_s *_dqa;
	struct dispatch_group_s *_dg;
	struct dispatch_source_s *_ds;
	struct dispatch_channel_s *_dch;
	struct dispatch_mach_s *_dm;
	struct dispatch_mach_msg_s *_dmsg;
	struct dispatch_semaphore_s *_dsema;
	struct dispatch_data_s *_ddata;
	struct dispatch_io_s *_dchannel;
} dispatch_object_t __attribute__((__transparent_union__));
# 191 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/object.h"
typedef unsigned int dispatch_qos_class_t;
# 209 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/object.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__)) __attribute__((__nothrow__))

void
dispatch_retain(dispatch_object_t object);
# 237 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/object.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__)) __attribute__((__nothrow__))

void
dispatch_release(dispatch_object_t object);
# 261 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/object.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__)) __attribute__((__pure__)) __attribute__((__warn_unused_result__))
__attribute__((__nothrow__))
void *
dispatch_get_context(dispatch_object_t object);
# 280 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/object.h"
extern __attribute__((visibility("default"))) __attribute__((__nothrow__))
void
dispatch_set_context(dispatch_object_t object, void * context);
# 306 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/object.h"
extern __attribute__((visibility("default"))) __attribute__((__nothrow__))
void
dispatch_set_finalizer_f(dispatch_object_t object,
		dispatch_function_t  finalizer);
# 334 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/object.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__)) __attribute__((__nothrow__))
void
dispatch_activate(dispatch_object_t object);
# 357 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/object.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__)) __attribute__((__nothrow__))
void
dispatch_suspend(dispatch_object_t object);
# 386 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/object.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__)) __attribute__((__nothrow__))
void
dispatch_resume(dispatch_object_t object);
# 428 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/object.h"
extern __attribute__((visibility("default"))) __attribute__((__nothrow__))
void
dispatch_set_qos_class_floor(dispatch_object_t object,
		dispatch_qos_class_t qos_class, int relative_priority);
# 591 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/object.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(2))) __attribute__((__nothrow__))
__attribute__((__format__(printf,2,3)))
void
dispatch_debug(dispatch_object_t object, const char *message, ...);


extern __attribute__((visibility("default"))) __attribute__((__nonnull__(2))) __attribute__((__nothrow__))
__attribute__((__format__(printf,2,0)))
void
dispatch_debugv(dispatch_object_t object, const char *message, va_list ap);
# 63 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/dispatch.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h" 1
# 69 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
typedef struct dispatch_queue_s *dispatch_queue_t;
# 101 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
typedef dispatch_queue_t dispatch_queue_global_t;
# 127 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
typedef dispatch_queue_t dispatch_queue_serial_t;
# 149 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
typedef dispatch_queue_serial_t dispatch_queue_main_t;
# 179 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
typedef dispatch_queue_t dispatch_queue_concurrent_t;
# 243 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(1))) __attribute__((__nonnull__(3))) __attribute__((__nothrow__))
void
dispatch_async_f(dispatch_queue_t queue,
		void * context, dispatch_function_t work);
# 314 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(1))) __attribute__((__nonnull__(3))) __attribute__((__nothrow__))
void
dispatch_sync_f(dispatch_queue_t queue,
		void * context, dispatch_function_t work);
# 410 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(1))) __attribute__((__nonnull__(3))) __attribute__((__nothrow__))
void
dispatch_async_and_wait_f(dispatch_queue_t queue,
		void * context, dispatch_function_t work);
# 514 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(4))) __attribute__((__nothrow__))
void
dispatch_apply_f(size_t iterations,
		dispatch_queue_t  queue,
		void * context, void (*work)(void *, size_t));
# 550 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default"))) __attribute__((__pure__)) __attribute__((__warn_unused_result__)) __attribute__((__nothrow__))
dispatch_queue_t
dispatch_get_current_queue(void);


extern __attribute__((visibility("default")))
struct dispatch_queue_s _dispatch_main_q;
# 582 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
static __inline__ __attribute__((__always_inline__)) __attribute__((__const__)) __attribute__((__nothrow__))
dispatch_queue_main_t
dispatch_get_main_queue(void)
{
	return ((dispatch_queue_main_t)&(_dispatch_main_q));
}
# 622 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
typedef long dispatch_queue_priority_t;
# 662 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default"))) __attribute__((__const__)) __attribute__((__warn_unused_result__)) __attribute__((__nothrow__))
dispatch_queue_global_t
dispatch_get_global_queue(long identifier, unsigned long flags);







typedef struct dispatch_queue_attr_s *dispatch_queue_attr_t;
# 711 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default")))
struct dispatch_queue_attr_s _dispatch_queue_attr_concurrent;
# 757 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default"))) __attribute__((__warn_unused_result__)) __attribute__((__pure__)) __attribute__((__nothrow__))
dispatch_queue_attr_t
dispatch_queue_attr_make_initially_inactive(
		dispatch_queue_attr_t  attr);
# 819 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
enum { DISPATCH_AUTORELEASE_FREQUENCY_INHERIT = 0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM = 1, DISPATCH_AUTORELEASE_FREQUENCY_NEVER = 2, } ; typedef unsigned long dispatch_autorelease_frequency_t;
# 859 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default"))) __attribute__((__warn_unused_result__)) __attribute__((__pure__)) __attribute__((__nothrow__))
dispatch_queue_attr_t
dispatch_queue_attr_make_with_autorelease_frequency(
		dispatch_queue_attr_t  attr,
		dispatch_autorelease_frequency_t frequency);
# 923 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default"))) __attribute__((__warn_unused_result__)) __attribute__((__pure__)) __attribute__((__nothrow__))
dispatch_queue_attr_t
dispatch_queue_attr_make_with_qos_class(dispatch_queue_attr_t  attr,
		dispatch_qos_class_t qos_class, int relative_priority);
# 988 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default"))) __attribute__((__malloc__))  __attribute__((__warn_unused_result__))
__attribute__((__nothrow__))
dispatch_queue_t
dispatch_queue_create_with_target(const char * label,
		dispatch_queue_attr_t  attr, dispatch_queue_t  target)
		__asm__("_" "dispatch_queue_create_with_target" "$V2");
# 1039 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default"))) __attribute__((__malloc__))  __attribute__((__warn_unused_result__))
__attribute__((__nothrow__))
dispatch_queue_t
dispatch_queue_create(const char * label,
		dispatch_queue_attr_t  attr);
# 1069 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default"))) __attribute__((__pure__)) __attribute__((__warn_unused_result__)) __attribute__((__nothrow__))
const char *
dispatch_queue_get_label(dispatch_queue_t  queue);
# 1108 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default"))) __attribute__((__warn_unused_result__)) __attribute__((__nonnull__(1))) __attribute__((__nothrow__))
dispatch_qos_class_t
dispatch_queue_get_qos_class(dispatch_queue_t queue,
		int * relative_priority_ptr);
# 1173 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default"))) __attribute__((__nothrow__))
void
dispatch_set_target_queue(dispatch_object_t object,
		dispatch_queue_t  queue);
# 1192 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default"))) __attribute__((__nothrow__)) __attribute__((__noreturn__))
void
dispatch_main(void);
# 1252 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(2))) __attribute__((__nonnull__(4))) __attribute__((__nothrow__))
void
dispatch_after_f(dispatch_time_t when, dispatch_queue_t queue,
		void * context, dispatch_function_t work);
# 1333 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(1))) __attribute__((__nonnull__(3))) __attribute__((__nothrow__))
void
dispatch_barrier_async_f(dispatch_queue_t queue,
		void * context, dispatch_function_t work);
# 1393 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(1))) __attribute__((__nonnull__(3))) __attribute__((__nothrow__))
void
dispatch_barrier_sync_f(dispatch_queue_t queue,
		void * context, dispatch_function_t work);
# 1454 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(1))) __attribute__((__nonnull__(3))) __attribute__((__nothrow__))
void
dispatch_barrier_async_and_wait_f(dispatch_queue_t queue,
		void * context, dispatch_function_t work);
# 1496 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(1))) __attribute__((__nothrow__))
void
dispatch_queue_set_specific(dispatch_queue_t queue, const void *key,
		void * context, dispatch_function_t  destructor);
# 1525 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(1))) __attribute__((__pure__)) __attribute__((__warn_unused_result__))
__attribute__((__nothrow__))
void *
dispatch_queue_get_specific(dispatch_queue_t queue, const void *key);
# 1552 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default"))) __attribute__((__pure__)) __attribute__((__warn_unused_result__)) __attribute__((__nothrow__))
void *
dispatch_get_specific(const void *key);
# 1606 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(1)))
void
dispatch_assert_queue(dispatch_queue_t queue)
		__asm__("_" "dispatch_assert_queue" "$V2");
# 1632 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(1)))
void
dispatch_assert_queue_barrier(dispatch_queue_t queue);
# 1655 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/queue.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(1)))
void
dispatch_assert_queue_not(dispatch_queue_t queue)
		__asm__("_" "dispatch_assert_queue_not" "$V2");
# 64 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/dispatch.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/block.h" 1
# 65 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/dispatch.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h" 1
# 30 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/port.h" 1
# 91 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/port.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/boolean.h" 1
# 73 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/boolean.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/machine/boolean.h" 1
# 33 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/machine/boolean.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/boolean.h" 1
# 69 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/boolean.h"
typedef unsigned int    boolean_t;
# 34 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/machine/boolean.h" 2
# 74 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/boolean.h" 2
# 92 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/port.h" 2
# 106 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/port.h"
typedef natural_t mach_port_name_t;
typedef mach_port_name_t *mach_port_name_array_t;
# 127 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/port.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mach_port_t.h" 1
# 50 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mach_port_t.h"
typedef __darwin_mach_port_t mach_port_t;
# 128 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/port.h" 2


typedef mach_port_t                     *mach_port_array_t;
# 188 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/port.h"
typedef natural_t mach_port_right_t;
# 199 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/port.h"
typedef natural_t mach_port_type_t;
typedef mach_port_type_t *mach_port_type_array_t;
# 236 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/port.h"
typedef natural_t mach_port_urefs_t;
typedef integer_t mach_port_delta_t;



typedef natural_t mach_port_seqno_t;
typedef natural_t mach_port_mscount_t;
typedef natural_t mach_port_msgcount_t;
typedef natural_t mach_port_rights_t;






typedef unsigned int mach_port_srights_t;

typedef struct mach_port_status {
	mach_port_rights_t      mps_pset;
	mach_port_seqno_t       mps_seqno;
	mach_port_mscount_t     mps_mscount;
	mach_port_msgcount_t    mps_qlimit;
	mach_port_msgcount_t    mps_msgcount;
	mach_port_rights_t      mps_sorights;
	boolean_t               mps_srights;
	boolean_t               mps_pdrequest;
	boolean_t               mps_nsrequest;
	natural_t               mps_flags;
} mach_port_status_t;
# 276 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/port.h"
typedef struct mach_port_limits {
	mach_port_msgcount_t    mpl_qlimit;
} mach_port_limits_t;
# 290 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/port.h"
typedef struct mach_port_info_ext {
	mach_port_status_t      mpie_status;
	mach_port_msgcount_t    mpie_boost_cnt;
	uint32_t                reserved[6];
} mach_port_info_ext_t;

typedef integer_t *mach_port_info_t;


typedef int     mach_port_flavor_t;
# 319 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/port.h"
typedef struct mach_port_qos {
	unsigned int            name:1;
	unsigned int            prealloc:1;
	boolean_t               pad1:30;
	natural_t               len;
} mach_port_qos_t;
# 346 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/port.h"
typedef struct mach_port_options {
	uint32_t                flags;
	mach_port_limits_t      mpl;
	uint64_t                reserved[2];
}mach_port_options_t;

typedef mach_port_options_t *mach_port_options_ptr_t;
# 362 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/port.h"
enum mach_port_guard_exception_codes {
	kGUARD_EXC_DESTROY                       = 1u << 0,
	kGUARD_EXC_MOD_REFS                      = 1u << 1,
	kGUARD_EXC_SET_CONTEXT               = 1u << 2,
	kGUARD_EXC_UNGUARDED                 = 1u << 3,
	kGUARD_EXC_INCORRECT_GUARD           = 1u << 4,
	kGUARD_EXC_IMMOVABLE                 = 1u << 5,
	kGUARD_EXC_STRICT_REPLY              = 1u << 6,

	kGUARD_EXC_INVALID_RIGHT         = 1u << 8,
	kGUARD_EXC_INVALID_NAME          = 1u << 9,
	kGUARD_EXC_INVALID_VALUE         = 1u << 10,
	kGUARD_EXC_INVALID_ARGUMENT      = 1u << 11,
	kGUARD_EXC_RIGHT_EXISTS          = 1u << 12,
	kGUARD_EXC_KERN_NO_SPACE         = 1u << 13,
	kGUARD_EXC_KERN_FAILURE          = 1u << 14,
	kGUARD_EXC_KERN_RESOURCE         = 1u << 15,
	kGUARD_EXC_SEND_INVALID_REPLY    = 1u << 16,
	kGUARD_EXC_SEND_INVALID_VOUCHER  = 1u << 17,
	kGUARD_EXC_SEND_INVALID_RIGHT    = 1u << 18,
	kGUARD_EXC_RCV_INVALID_NAME      = 1u << 19,
	kGUARD_EXC_RCV_GUARDED_DESC      = 1u << 20,
};
# 31 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/message.h" 1
# 77 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/message.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/kern_return.h" 1
# 70 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/kern_return.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/machine/kern_return.h" 1
# 33 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/machine/kern_return.h"
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/kern_return.h" 1
# 71 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/i386/kern_return.h"
typedef int             kern_return_t;
# 34 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/machine/kern_return.h" 2
# 71 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/kern_return.h" 2
# 78 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/message.h" 2
# 91 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/message.h"
typedef natural_t mach_msg_timeout_t;
# 221 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/message.h"
typedef unsigned int mach_msg_bits_t;
typedef natural_t mach_msg_size_t;
typedef integer_t mach_msg_id_t;



typedef unsigned int mach_msg_priority_t;



typedef unsigned int mach_msg_type_name_t;
# 244 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/message.h"
typedef unsigned int mach_msg_copy_options_t;
# 258 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/message.h"
typedef unsigned int mach_msg_guard_flags_t;
# 272 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/message.h"
typedef unsigned int mach_msg_descriptor_type_t;







#pragma pack(push, 4)

typedef struct{
	natural_t                     pad1;
	mach_msg_size_t               pad2;
	unsigned int                  pad3 : 24;
	mach_msg_descriptor_type_t    type : 8;
} mach_msg_type_descriptor_t;

typedef struct{
	mach_port_t                   name;

	mach_msg_size_t               pad1;
	unsigned int                  pad2 : 16;
	mach_msg_type_name_t          disposition : 8;
	mach_msg_descriptor_type_t    type : 8;
} mach_msg_port_descriptor_t;

typedef struct{
	uint32_t                      address;
	mach_msg_size_t               size;
	boolean_t                     deallocate: 8;
	mach_msg_copy_options_t       copy: 8;
	unsigned int                  pad1: 8;
	mach_msg_descriptor_type_t    type: 8;
} mach_msg_ool_descriptor32_t;

typedef struct{
	uint64_t                      address;
	boolean_t                     deallocate: 8;
	mach_msg_copy_options_t       copy: 8;
	unsigned int                  pad1: 8;
	mach_msg_descriptor_type_t    type: 8;
	mach_msg_size_t               size;
} mach_msg_ool_descriptor64_t;

typedef struct{
	void*                         address;



	boolean_t                     deallocate: 8;
	mach_msg_copy_options_t       copy: 8;
	unsigned int                  pad1: 8;
	mach_msg_descriptor_type_t    type: 8;

	mach_msg_size_t               size;

} mach_msg_ool_descriptor_t;

typedef struct{
	uint32_t                      address;
	mach_msg_size_t               count;
	boolean_t                     deallocate: 8;
	mach_msg_copy_options_t       copy: 8;
	mach_msg_type_name_t          disposition : 8;
	mach_msg_descriptor_type_t    type : 8;
} mach_msg_ool_ports_descriptor32_t;

typedef struct{
	uint64_t                      address;
	boolean_t                     deallocate: 8;
	mach_msg_copy_options_t       copy: 8;
	mach_msg_type_name_t          disposition : 8;
	mach_msg_descriptor_type_t    type : 8;
	mach_msg_size_t               count;
} mach_msg_ool_ports_descriptor64_t;

typedef struct{
	void*                         address;



	boolean_t                     deallocate: 8;
	mach_msg_copy_options_t       copy: 8;
	mach_msg_type_name_t          disposition : 8;
	mach_msg_descriptor_type_t    type : 8;

	mach_msg_size_t               count;

} mach_msg_ool_ports_descriptor_t;

typedef struct{
	uint32_t                      context;
	mach_port_name_t              name;
	mach_msg_guard_flags_t        flags : 16;
	mach_msg_type_name_t          disposition : 8;
	mach_msg_descriptor_type_t    type : 8;
} mach_msg_guarded_port_descriptor32_t;

typedef struct{
	uint64_t                      context;
	mach_msg_guard_flags_t        flags : 16;
	mach_msg_type_name_t          disposition : 8;
	mach_msg_descriptor_type_t    type : 8;
	mach_port_name_t              name;
} mach_msg_guarded_port_descriptor64_t;

typedef struct{
	mach_port_context_t           context;



	mach_msg_guard_flags_t        flags : 16;
	mach_msg_type_name_t          disposition : 8;
	mach_msg_descriptor_type_t    type : 8;

	mach_port_name_t              name;

} mach_msg_guarded_port_descriptor_t;






typedef union{
	mach_msg_port_descriptor_t            port;
	mach_msg_ool_descriptor_t             out_of_line;
	mach_msg_ool_ports_descriptor_t       ool_ports;
	mach_msg_type_descriptor_t            type;
	mach_msg_guarded_port_descriptor_t    guarded_port;
} mach_msg_descriptor_t;

typedef struct{
	mach_msg_size_t msgh_descriptor_count;
} mach_msg_body_t;




typedef struct{
	mach_msg_bits_t       msgh_bits;
	mach_msg_size_t       msgh_size;
	mach_port_t           msgh_remote_port;
	mach_port_t           msgh_local_port;
	mach_port_name_t      msgh_voucher_port;
	mach_msg_id_t         msgh_id;
} mach_msg_header_t;




typedef struct{
	mach_msg_header_t       header;
	mach_msg_body_t         body;
} mach_msg_base_t;

typedef unsigned int mach_msg_trailer_type_t;



typedef unsigned int mach_msg_trailer_size_t;
typedef char *mach_msg_trailer_info_t;

typedef struct{
	mach_msg_trailer_type_t       msgh_trailer_type;
	mach_msg_trailer_size_t       msgh_trailer_size;
} mach_msg_trailer_t;
# 449 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/message.h"
typedef struct{
	mach_msg_trailer_type_t       msgh_trailer_type;
	mach_msg_trailer_size_t       msgh_trailer_size;
	mach_port_seqno_t             msgh_seqno;
} mach_msg_seqno_trailer_t;

typedef struct{
	unsigned int                  val[2];
} security_token_t;

typedef struct{
	mach_msg_trailer_type_t       msgh_trailer_type;
	mach_msg_trailer_size_t       msgh_trailer_size;
	mach_port_seqno_t             msgh_seqno;
	security_token_t              msgh_sender;
} mach_msg_security_trailer_t;
# 475 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/message.h"
typedef struct{
	unsigned int                  val[8];
} audit_token_t;

typedef struct{
	mach_msg_trailer_type_t       msgh_trailer_type;
	mach_msg_trailer_size_t       msgh_trailer_size;
	mach_port_seqno_t             msgh_seqno;
	security_token_t              msgh_sender;
	audit_token_t                 msgh_audit;
} mach_msg_audit_trailer_t;

typedef struct{
	mach_msg_trailer_type_t       msgh_trailer_type;
	mach_msg_trailer_size_t       msgh_trailer_size;
	mach_port_seqno_t             msgh_seqno;
	security_token_t              msgh_sender;
	audit_token_t                 msgh_audit;
	mach_port_context_t           msgh_context;
} mach_msg_context_trailer_t;



typedef struct{
	mach_port_name_t sender;
} msg_labels_t;






typedef struct{
	mach_msg_trailer_type_t       msgh_trailer_type;
	mach_msg_trailer_size_t       msgh_trailer_size;
	mach_port_seqno_t             msgh_seqno;
	security_token_t              msgh_sender;
	audit_token_t                 msgh_audit;
	mach_port_context_t           msgh_context;
	int                           msgh_ad;
	msg_labels_t                  msgh_labels;
} mach_msg_mac_trailer_t;
# 531 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/message.h"
typedef mach_msg_mac_trailer_t mach_msg_max_trailer_t;
# 541 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/message.h"
typedef mach_msg_security_trailer_t mach_msg_format_0_trailer_t;







extern const security_token_t KERNEL_SECURITY_TOKEN;


extern const audit_token_t KERNEL_AUDIT_TOKEN;

typedef integer_t mach_msg_options_t;

typedef struct{
	mach_msg_header_t     header;
} mach_msg_empty_send_t;

typedef struct{
	mach_msg_header_t     header;
	mach_msg_trailer_t    trailer;
} mach_msg_empty_rcv_t;

typedef union{
	mach_msg_empty_send_t send;
	mach_msg_empty_rcv_t  rcv;
} mach_msg_empty_t;

#pragma pack(pop)
# 602 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/message.h"
typedef natural_t mach_msg_type_size_t;
typedef natural_t mach_msg_type_number_t;
# 646 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/message.h"
typedef integer_t mach_msg_option_t;
# 748 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/message.h"
typedef kern_return_t mach_msg_return_t;
# 859 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/message.h"
extern mach_msg_return_t        mach_msg_overwrite(
	mach_msg_header_t *msg,
	mach_msg_option_t option,
	mach_msg_size_t send_size,
	mach_msg_size_t rcv_size,
	mach_port_name_t rcv_name,
	mach_msg_timeout_t timeout,
	mach_port_name_t notify,
	mach_msg_header_t *rcv_msg,
	mach_msg_size_t rcv_limit);
# 880 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/message.h"
extern mach_msg_return_t        mach_msg(
	mach_msg_header_t *msg,
	mach_msg_option_t option,
	mach_msg_size_t send_size,
	mach_msg_size_t rcv_size,
	mach_port_name_t rcv_name,
	mach_msg_timeout_t timeout,
	mach_port_name_t notify);
# 896 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/mach/message.h"
extern kern_return_t            mach_voucher_deallocate(
	mach_port_name_t voucher);
# 32 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h" 2
# 57 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
typedef struct dispatch_source_s *dispatch_source_t;;
# 72 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
typedef const struct dispatch_source_type_s *dispatch_source_type_t;
# 83 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
extern __attribute__((visibility("default"))) const struct dispatch_source_type_s _dispatch_source_type_data_add;
# 94 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
extern __attribute__((visibility("default"))) const struct dispatch_source_type_s _dispatch_source_type_data_or;
# 109 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
extern __attribute__((visibility("default"))) const struct dispatch_source_type_s _dispatch_source_type_data_replace;
# 120 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
extern __attribute__((visibility("default"))) const struct dispatch_source_type_s _dispatch_source_type_mach_send;
# 131 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
extern __attribute__((visibility("default"))) const struct dispatch_source_type_s _dispatch_source_type_mach_recv;
# 144 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
extern __attribute__((visibility("default"))) const struct dispatch_source_type_s _dispatch_source_type_memorypressure;
# 155 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
extern __attribute__((visibility("default"))) const struct dispatch_source_type_s _dispatch_source_type_proc;
# 166 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
extern __attribute__((visibility("default"))) const struct dispatch_source_type_s _dispatch_source_type_read;
# 176 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
extern __attribute__((visibility("default"))) const struct dispatch_source_type_s _dispatch_source_type_signal;
# 187 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
extern __attribute__((visibility("default"))) const struct dispatch_source_type_s _dispatch_source_type_timer;
# 198 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
extern __attribute__((visibility("default"))) const struct dispatch_source_type_s _dispatch_source_type_vnode;
# 209 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
extern __attribute__((visibility("default"))) const struct dispatch_source_type_s _dispatch_source_type_write;
# 220 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
typedef unsigned long dispatch_source_mach_send_flags_t;





typedef unsigned long dispatch_source_mach_recv_flags_t;
# 256 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
typedef unsigned long dispatch_source_memorypressure_flags_t;
# 280 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
typedef unsigned long dispatch_source_proc_flags_t;
# 320 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
typedef unsigned long dispatch_source_vnode_flags_t;
# 340 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
typedef unsigned long dispatch_source_timer_flags_t;
# 387 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
extern __attribute__((visibility("default"))) __attribute__((__malloc__))  __attribute__((__warn_unused_result__))
__attribute__((__nothrow__))
dispatch_source_t
dispatch_source_create(dispatch_source_type_t type,
	uintptr_t handle,
	unsigned long mask,
	dispatch_queue_t  queue);
# 432 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(1))) __attribute__((__nothrow__))
void
dispatch_source_set_event_handler_f(dispatch_source_t source,
	dispatch_function_t  handler);
# 492 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(1))) __attribute__((__nothrow__))
void
dispatch_source_set_cancel_handler_f(dispatch_source_t source,
	dispatch_function_t  handler);
# 520 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__)) __attribute__((__nothrow__))
void
dispatch_source_cancel(dispatch_source_t source);
# 538 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__)) __attribute__((__warn_unused_result__)) __attribute__((__pure__))
__attribute__((__nothrow__))
long
dispatch_source_testcancel(dispatch_source_t source);
# 570 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__)) __attribute__((__warn_unused_result__)) __attribute__((__pure__))
__attribute__((__nothrow__))
uintptr_t
dispatch_source_get_handle(dispatch_source_t source);
# 602 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__)) __attribute__((__warn_unused_result__)) __attribute__((__pure__))
__attribute__((__nothrow__))
unsigned long
dispatch_source_get_mask(dispatch_source_t source);
# 641 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__)) __attribute__((__warn_unused_result__)) __attribute__((__pure__))
__attribute__((__nothrow__))
unsigned long
dispatch_source_get_data(dispatch_source_t source);
# 663 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__)) __attribute__((__nothrow__))
void
dispatch_source_merge_data(dispatch_source_t source, unsigned long value);
# 716 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__)) __attribute__((__nothrow__))
void
dispatch_source_set_timer(dispatch_source_t source,
	dispatch_time_t start,
	uint64_t interval,
	uint64_t leeway);
# 771 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/source.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(1))) __attribute__((__nothrow__))
void
dispatch_source_set_registration_handler_f(dispatch_source_t source,
	dispatch_function_t  handler);
# 66 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/dispatch.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/group.h" 1
# 36 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/group.h"
typedef struct dispatch_group_s *dispatch_group_t;
# 55 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/group.h"
extern __attribute__((visibility("default"))) __attribute__((__malloc__))  __attribute__((__warn_unused_result__))
__attribute__((__nothrow__))
dispatch_group_t
dispatch_group_create(void);
# 119 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/group.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(1))) __attribute__((__nonnull__(2))) __attribute__((__nonnull__(4)))
__attribute__((__nothrow__))
void
dispatch_group_async_f(dispatch_group_t group,
	dispatch_queue_t queue,
	void * context,
	dispatch_function_t work);
# 162 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/group.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__)) __attribute__((__nothrow__))
long
dispatch_group_wait(dispatch_group_t group, dispatch_time_t timeout);
# 228 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/group.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(1))) __attribute__((__nonnull__(2))) __attribute__((__nonnull__(4)))
__attribute__((__nothrow__))
void
dispatch_group_notify_f(dispatch_group_t group,
	dispatch_queue_t queue,
	void * context,
	dispatch_function_t work);
# 252 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/group.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__)) __attribute__((__nothrow__))
void
dispatch_group_enter(dispatch_group_t group);
# 271 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/group.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__)) __attribute__((__nothrow__))
void
dispatch_group_leave(dispatch_group_t group);
# 67 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/dispatch.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/semaphore.h" 1
# 37 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/semaphore.h"
typedef struct dispatch_semaphore_s *dispatch_semaphore_t;
# 61 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/semaphore.h"
extern __attribute__((visibility("default"))) __attribute__((__malloc__))  __attribute__((__warn_unused_result__))
__attribute__((__nothrow__))
dispatch_semaphore_t
dispatch_semaphore_create(long value);
# 87 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/semaphore.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__)) __attribute__((__nothrow__))
long
dispatch_semaphore_wait(dispatch_semaphore_t dsema, dispatch_time_t timeout);
# 109 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/semaphore.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__)) __attribute__((__nothrow__))
long
dispatch_semaphore_signal(dispatch_semaphore_t dsema);
# 68 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/dispatch.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/once.h" 1
# 41 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/once.h"
typedef intptr_t dispatch_once_t;
# 96 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/once.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(1))) __attribute__((__nonnull__(3))) __attribute__((__nothrow__))

void
dispatch_once_f(dispatch_once_t *predicate, void * context,
		dispatch_function_t function);


static __inline__ __attribute__((__always_inline__)) __attribute__((__nonnull__(1))) __attribute__((__nonnull__(3)))
__attribute__((__nothrow__))

void
_dispatch_once_f(dispatch_once_t *predicate, void * context,
		dispatch_function_t function)
{
	if (__builtin_expect((*predicate), (~0l)) != ~0l) {
		dispatch_once_f(predicate, context, function);
	} else {
		__asm__ __volatile__("" ::: "memory");
	}
	((void)(*predicate == ~0l));
}
# 69 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/dispatch.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/data.h" 1
# 44 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/data.h"
typedef struct dispatch_data_s *dispatch_data_t;
# 54 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/data.h"
extern __attribute__((visibility("default"))) struct dispatch_data_s _dispatch_data_empty;
# 82 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/data.h"
extern __attribute__((visibility("default"))) const dispatch_function_t _dispatch_data_destructor_free;
# 91 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/data.h"
extern __attribute__((visibility("default"))) const dispatch_function_t _dispatch_data_destructor_munmap;
# 133 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/data.h"
extern __attribute__((visibility("default"))) __attribute__((__pure__)) __attribute__((__nonnull__(1))) __attribute__((__nothrow__))
size_t
dispatch_data_get_size(dispatch_data_t data);
# 157 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/data.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(1)))
__attribute__((__warn_unused_result__)) __attribute__((__nothrow__))
dispatch_data_t
dispatch_data_create_map(dispatch_data_t data,
	const void * * buffer_ptr,
	size_t * size_ptr);
# 180 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/data.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__))
__attribute__((__warn_unused_result__)) __attribute__((__nothrow__))
dispatch_data_t
dispatch_data_create_concat(dispatch_data_t data1, dispatch_data_t data2);
# 201 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/data.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(1)))
__attribute__((__warn_unused_result__)) __attribute__((__nothrow__))
dispatch_data_t
dispatch_data_create_subrange(dispatch_data_t data,
	size_t offset,
	size_t length);
# 267 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/data.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(1))) __attribute__((__nonnull__(3)))
__attribute__((__warn_unused_result__)) __attribute__((__nothrow__))
dispatch_data_t
dispatch_data_copy_region(dispatch_data_t data,
	size_t location,
	size_t *offset_ptr);
# 70 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/dispatch.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/io.h" 1
# 56 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/io.h"
typedef int dispatch_fd_t;
# 167 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/io.h"
typedef struct dispatch_io_s *dispatch_io_t;
# 190 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/io.h"
typedef unsigned long dispatch_io_type_t;
# 429 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/io.h"
typedef unsigned long dispatch_io_close_flags_t;
# 449 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/io.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(1))) __attribute__((__nothrow__))
void
dispatch_io_close(dispatch_io_t channel, dispatch_io_close_flags_t flags);
# 496 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/io.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__)) __attribute__((__warn_unused_result__)) __attribute__((__nothrow__))
dispatch_fd_t
dispatch_io_get_descriptor(dispatch_io_t channel);
# 517 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/io.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(1))) __attribute__((__nothrow__))
void
dispatch_io_set_high_water(dispatch_io_t channel, size_t high_water);
# 548 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/io.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(1))) __attribute__((__nothrow__))
void
dispatch_io_set_low_water(dispatch_io_t channel, size_t low_water);
# 562 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/io.h"
typedef unsigned long dispatch_io_interval_flags_t;
# 587 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/io.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__(1))) __attribute__((__nothrow__))
void
dispatch_io_set_interval(dispatch_io_t channel,
	uint64_t interval,
	dispatch_io_interval_flags_t flags);
# 71 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/dispatch.h" 2
# 1 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/workloop.h" 1
# 60 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/workloop.h"
typedef dispatch_queue_t dispatch_workloop_t;
# 75 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/workloop.h"
extern __attribute__((visibility("default"))) __attribute__((__malloc__))  __attribute__((__warn_unused_result__))
__attribute__((__nothrow__))
dispatch_workloop_t
dispatch_workloop_create(const char * label);
# 101 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/workloop.h"
extern __attribute__((visibility("default"))) __attribute__((__malloc__))  __attribute__((__warn_unused_result__))
__attribute__((__nothrow__))
dispatch_workloop_t
dispatch_workloop_create_inactive(const char * label);
# 127 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/workloop.h"
extern __attribute__((visibility("default"))) __attribute__((__nonnull__)) __attribute__((__nothrow__))
void
dispatch_workloop_set_autorelease_frequency(dispatch_workloop_t workloop,
		dispatch_autorelease_frequency_t frequency);
# 72 "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/dispatch/dispatch.h" 2
# 139 "../tinycc/libtcc.c" 2
static int tcc_sem_init;
static dispatch_semaphore_t tcc_sem;
static void wait_sem(void)
{
    if (!tcc_sem_init)
      tcc_sem = dispatch_semaphore_create(1), tcc_sem_init = 1;
    dispatch_semaphore_wait(tcc_sem, (~0ull));
}
# 165 "../tinycc/libtcc.c"
static char *pstrcpy(char *buf, size_t buf_size, const char *s)
{
    char *q, *q_end;
    int c;

    if (buf_size > 0) {
        q = buf;
        q_end = buf + buf_size - 1;
        while (q < q_end) {
            c = *s++;
            if (c == '\0')
                break;
            *q++ = c;
        }
        *q = '\0';
    }
    return buf;
}


static char *pstrcat(char *buf, size_t buf_size, const char *s)
{
    size_t len;
    len = strlen(buf);
    if (len < buf_size)
        pstrcpy(buf + len, buf_size - len, s);
    return buf;
}

static char *pstrncpy(char *out, const char *in, size_t num)
{
    memcpy(out, in, num);
    out[num] = '\0';
    return out;
}


 char *tcc_basename(const char *name)
{
    char *p = strchr(name, 0);
    while (p > name && !(p[-1] == '/'))
        --p;
    return p;
}





 char *tcc_fileextension (const char *name)
{
    char *b = tcc_basename(name);
    char *e = strrchr(b, '.');
    return e ? e : strchr(b, 0);
}
# 230 "../tinycc/libtcc.c"
 void tcc_free(void *ptr)
{
    free(ptr);
}

 void *tcc_malloc(unsigned long size)
{
    void *ptr;
    ptr = malloc(size);
    if (!ptr && size)
        _tcc_error("memory full (malloc)");
    return ptr;
}

 void *tcc_mallocz(unsigned long size)
{
    void *ptr;
    ptr = tcc_malloc(size);
    memset(ptr, 0, size);
    return ptr;
}

 void *tcc_realloc(void *ptr, unsigned long size)
{
    void *ptr1;
    ptr1 = realloc(ptr, size);
    if (!ptr1 && size)
        _tcc_error("memory full (realloc)");
    return ptr1;
}

 char *tcc_strdup(const char *str)
{
    char *ptr;
    ptr = tcc_malloc(strlen(str) + 1);
    strcpy(ptr, str);
    return ptr;
}
# 430 "../tinycc/libtcc.c"
static void dynarray_add(void *ptab, int *nb_ptr, void *data)
{
    int nb, nb_alloc;
    void **pp;

    nb = *nb_ptr;
    pp = *(void ***)ptab;

    if ((nb & (nb - 1)) == 0) {
        if (!nb)
            nb_alloc = 1;
        else
            nb_alloc = nb * 2;
        pp = tcc_realloc(pp, nb_alloc * sizeof(void *));
        *(void***)ptab = pp;
    }
    pp[nb++] = data;
    *nb_ptr = nb;
}

static void dynarray_reset(void *pp, int *n)
{
    void **p;
    for (p = *(void***)pp; *n; ++p, --*n)
        if (*p)
            tcc_free(*p);
    tcc_free(*(void**)pp);
    *(void**)pp = ((void *)0);
}

static void tcc_split_path(TCCState *s, void *p_ary, int *p_nb_ary, const char *in)
{
    const char *p;
    do {
        int c;
        CString str;

        cstr_new(&str);
        for (p = in; c = *p, c != '\0' && c != ":"[0]; ++p) {
            if (c == '{' && p[1] && p[2] == '}') {
                c = p[1], p += 2;
                if (c == 'B')
                    cstr_cat(&str, s->tcc_lib_path, -1);
                if (c == 'f' && file) {

                    const char *f = file->true_filename;
                    const char *b = tcc_basename(f);
                    if (b > f)
                        cstr_cat(&str, f, b - f - 1);
                    else
                        cstr_cat(&str, ".", 1);
                }
            } else {
                cstr_ccat(&str, c);
            }
        }
        if (str.size) {
            cstr_ccat(&str, '\0');
            dynarray_add(p_ary, p_nb_ary, tcc_strdup(str.data));
        }
        cstr_free(&str);
        in = p+1;
    } while (*p);
}



static void strcat_vprintf(char *buf, int buf_size, const char *fmt, va_list ap)
{
    int len;
    len = strlen(buf);
    vsnprintf(buf + len, buf_size - len, fmt, ap);
}

static void strcat_printf(char *buf, int buf_size, const char *fmt, ...)
{
    va_list ap;
    __builtin_va_start(ap, fmt);
    strcat_vprintf(buf, buf_size, fmt, ap);
    __builtin_va_end(ap);
}





 void tcc_enter_state(TCCState *s1)
{
    wait_sem();
    tcc_state = s1;
}

 void tcc_exit_state(void)
{
    tcc_state = ((void *)0);
    dispatch_semaphore_signal(tcc_sem);
}

static void error1(int mode, const char *fmt, va_list ap)
{
    char buf[2048];
    BufferedFile **pf, *f;
    TCCState *s1 = tcc_state;

    buf[0] = '\0';
    if (s1 == ((void *)0))

        goto no_file;

    if (s1 && !s1->error_set_jmp_enabled)

        tcc_exit_state();

    if (mode == 0) {
        if (s1->warn_none)
            return;
        if (s1->warn_error)
            mode = 2;
    }

    f = ((void *)0);
    if (s1->error_set_jmp_enabled) {

        for (f = file; f && f->filename[0] == ':'; f = f->prev)
            ;
    }
    if (f) {
        for(pf = s1->include_stack; pf < s1->include_stack_ptr; pf++)
            strcat_printf(buf, sizeof(buf), "In file included from %s:%d:\n",
                (*pf)->filename, (*pf)->line_num);
        strcat_printf(buf, sizeof(buf), "%s:%d: ",
            f->filename, f->line_num - !!(tok_flags & 0x0001));
    } else if (s1->current_filename) {
        strcat_printf(buf, sizeof(buf), "%s: ", s1->current_filename);
    }

no_file:
    if (0 == buf[0])
        strcat_printf(buf, sizeof(buf), "tcc: ");
    if (mode == 0)
        strcat_printf(buf, sizeof(buf), "warning: ");
    else
        strcat_printf(buf, sizeof(buf), "error: ");
    strcat_vprintf(buf, sizeof(buf), fmt, ap);
    if (!s1 || !s1->error_func) {

        if (s1 && s1->output_type == 5 && s1->ppfp == __stdoutp)

            printf("\n"), fflush(__stdoutp);
        fflush(__stdoutp);
        fprintf(__stderrp, "%s\n", buf);
        fflush(__stderrp);
    } else {
        s1->error_func(s1->error_opaque, buf);
    }
    if (s1) {
        if (mode != 0)
            s1->nb_errors++;
        if (mode != 2)
            return;
        if (s1->error_set_jmp_enabled)
            longjmp(s1->error_jmp_buf, 1);
    }
    exit(1);
}

 void tcc_set_error_func(TCCState *s, void *error_opaque, TCCErrorFunc error_func)
{
    s->error_opaque = error_opaque;
    s->error_func = error_func;
}

 TCCErrorFunc tcc_get_error_func(TCCState *s)
{
    return s->error_func;
}

 void *tcc_get_error_opaque(TCCState *s)
{
    return s->error_opaque;
}


 void _tcc_error_noabort(const char *fmt, ...)
{
    va_list ap;
    __builtin_va_start(ap, fmt);
    error1(1, fmt, ap);
    __builtin_va_end(ap);
}

 void _tcc_error(const char *fmt, ...)
{
    va_list ap;
    __builtin_va_start(ap, fmt);
    for (;;) error1(2, fmt, ap);
}

 void _tcc_warning(const char *fmt, ...)
{
    va_list ap;
    __builtin_va_start(ap, fmt);
    error1(0, fmt, ap);
    __builtin_va_end(ap);
}




static void tcc_open_bf(TCCState *s1, const char *filename, int initlen)
{
    BufferedFile *bf;
    int buflen = initlen ? initlen : 8192;

    bf = tcc_mallocz(sizeof(BufferedFile) + buflen);
    bf->buf_ptr = bf->buffer;
    bf->buf_end = bf->buffer + initlen;
    bf->buf_end[0] = '\\';
    pstrcpy(bf->filename, sizeof(bf->filename), filename);



    bf->true_filename = bf->filename;
    bf->line_num = 1;
    bf->ifdef_stack_ptr = s1->ifdef_stack_ptr;
    bf->fd = -1;
    bf->prev = file;
    file = bf;
    tok_flags = 0x0001 | 0x0002;
}

static void tcc_close(void)
{
    TCCState *s1 = tcc_state;
    BufferedFile *bf = file;
    if (bf->fd > 0) {
        close(bf->fd);
        s1->total_lines += bf->line_num;
    }
    if (bf->true_filename != bf->filename)
        tcc_free(bf->true_filename);
    file = bf->prev;
    tcc_free(bf);
}

static int _tcc_open(TCCState *s1, const char *filename)
{
    int fd;
    if (strcmp(filename, "-") == 0)
        fd = 0, filename = "<stdin>";
    else
        fd = open(filename, 0x0000 | 0);
    if ((s1->verbose == 2 && fd >= 0) || s1->verbose == 3)
        printf("%s %*s%s\n", fd < 0 ? "nf":"->",
               (int)(s1->include_stack_ptr - s1->include_stack), "", filename);
    return fd;
}

static int tcc_open(TCCState *s1, const char *filename)
{
    int fd = _tcc_open(s1, filename);
    if (fd < 0)
        return -1;
    tcc_open_bf(s1, filename, 0);
    file->fd = fd;
    return 0;
}


static int tcc_compile(TCCState *s1, int filetype, const char *str, int fd)
{







    tcc_enter_state(s1);

    if (setjmp(s1->error_jmp_buf) == 0) {
        s1->error_set_jmp_enabled = 1;
        s1->nb_errors = 0;

        if (fd == -1) {
            int len = strlen(str);
            tcc_open_bf(s1, "<string>", len);
            memcpy(file->buffer, str, len);
        } else {
            tcc_open_bf(s1, str, 0);
            file->fd = fd;
        }

        tccelf_begin_file(s1);
        preprocess_start(s1, filetype);
        tccgen_init(s1);
        if (s1->output_type == 5) {
            tcc_preprocess(s1);
        } else if (filetype & (2 | 4)) {

            tcc_assemble(s1, !!(filetype & 4));



        } else {
            tccgen_compile(s1);
        }
    }
    s1->error_set_jmp_enabled = 0;
    tccgen_finish(s1);
    preprocess_end(s1);
    tcc_exit_state();

    tccelf_end_file(s1);
    return s1->nb_errors != 0 ? -1 : 0;
}

 int tcc_compile_string(TCCState *s, const char *str)
{
    return tcc_compile(s, s->filetype, str, -1);
}


 void tcc_define_symbol(TCCState *s1, const char *sym, const char *value)
{
    const char *eq;
    if (((void *)0) == (eq = strchr(sym, '=')))
        eq = strchr(sym, 0);
    if (((void *)0) == value)
        value = *eq ? eq + 1 : "1";
    cstr_printf(&s1->cmdline_defs, "#define %.*s %s\n", (int)(eq-sym), sym, value);
}


 void tcc_undefine_symbol(TCCState *s1, const char *sym)
{
    cstr_printf(&s1->cmdline_defs, "#undef %s\n", sym);
}


 TCCState *tcc_new(void)
{
    TCCState *s;

    s = tcc_mallocz(sizeof(TCCState));
    if (!s)
        return ((void *)0);






    s->gnu_ext = 1;
    s->tcc_ext = 1;
    s->nocommon = 1;
    s->dollars_in_identifiers = 1;
    s->cversion = 199901;
    s->warn_implicit_function_declaration = 1;
    s->ms_extensions = 1;
# 799 "../tinycc/libtcc.c"
    s->leading_underscore = 1;

    s->ppfp = __stdoutp;

    s->include_stack_ptr = s->include_stack;

    tccelf_new(s);




    tcc_set_lib_path(s, ".");


    {

        char buffer[32]; int a,b,c;
        sscanf("0.9.27", "%d.%d.%d", &a, &b, &c);
        sprintf(buffer, "%d", a*10000 + b*100 + c);
        tcc_define_symbol(s, "__TINYC__", buffer);
    }


    tcc_define_symbol(s, "__STDC__", ((void *)0));
    tcc_define_symbol(s, "__STDC_VERSION__", "199901L");
    tcc_define_symbol(s, "__STDC_HOSTED__", ((void *)0));







    tcc_define_symbol(s, "__x86_64__", ((void *)0));
# 875 "../tinycc/libtcc.c"
    tcc_define_symbol(s, "__unix__", ((void *)0));
    tcc_define_symbol(s, "__unix", ((void *)0));
    tcc_define_symbol(s, "unix", ((void *)0));
# 911 "../tinycc/libtcc.c"
    tcc_define_symbol(s, "__SIZE_TYPE__", "unsigned long");
    tcc_define_symbol(s, "__PTRDIFF_TYPE__", "long");
    tcc_define_symbol(s, "__LP64__", ((void *)0));

    tcc_define_symbol(s, "__SIZEOF_POINTER__", 8 == 4 ? "4" : "8");





    tcc_define_symbol(s, "__WCHAR_TYPE__", "int");
# 936 "../tinycc/libtcc.c"
    tcc_define_symbol(s, "__WINT_TYPE__", "unsigned int");

    tcc_define_symbol(s, "__REDIRECT(name, proto, alias)",
        "name proto __asm__ (#alias)");
    tcc_define_symbol(s, "__REDIRECT_NTH(name, proto, alias)",
        "name proto __asm__ (#alias) __THROW");


    tcc_define_symbol(s, "__builtin_extract_return_addr(x)", "x");



    tcc_define_symbol(s, "__APPLE__", "1");
    tcc_define_symbol(s, "__GNUC__", "4");
    tcc_define_symbol(s, "__APPLE_CC__", "1");
    tcc_define_symbol(s, "_DONT_USE_CTYPE_INLINE_", "1");
    tcc_define_symbol(s, "__builtin_alloca", "alloca");

    tcc_define_symbol(s, "__builtin_huge_val()", "1e500");
    tcc_define_symbol(s, "__builtin_huge_valf()", "1e50f");
    tcc_define_symbol(s, "__builtin_huge_vall()", "1e5000L");
    tcc_define_symbol(s, "__builtin_nanf(ignored_string)", "__nan()");

    tcc_define_symbol(s, "__builtin_bzero(p, ignored_size)", "bzero(p, sizeof(*(p)))");

    tcc_define_symbol(s, "__builtin_flt_rounds()", "1");


    tcc_define_symbol(s, "__FINITE_MATH_ONLY__", "1");
    tcc_define_symbol(s, "_FORTIFY_SOURCE", "0");






    tcc_define_symbol(s, "__SIZEOF_LONG__", "8");
    tcc_define_symbol(s, "__LONG_MAX__", "0x7fffffffffffffffL");

    tcc_define_symbol(s, "__SIZEOF_INT__", "4");
    tcc_define_symbol(s, "__SIZEOF_LONG_LONG__", "8");
    tcc_define_symbol(s, "__CHAR_BIT__", "8");
    tcc_define_symbol(s, "__ORDER_LITTLE_ENDIAN__", "1234");
    tcc_define_symbol(s, "__ORDER_BIG_ENDIAN__", "4321");
    tcc_define_symbol(s, "__BYTE_ORDER__", "__ORDER_LITTLE_ENDIAN__");
    tcc_define_symbol(s, "__INT_MAX__", "0x7fffffff");
    tcc_define_symbol(s, "__LONG_LONG_MAX__", "0x7fffffffffffffffLL");
    tcc_define_symbol(s, "__builtin_offsetof(type,field)", "((__SIZE_TYPE__) &((type *)0)->field)");
    return s;
}

 void tcc_delete(TCCState *s1)
{

    tccelf_delete(s1);


    dynarray_reset(&s1->library_paths, &s1->nb_library_paths);
    dynarray_reset(&s1->crt_paths, &s1->nb_crt_paths);


    dynarray_reset(&s1->include_paths, &s1->nb_include_paths);
    dynarray_reset(&s1->sysinclude_paths, &s1->nb_sysinclude_paths);

    tcc_free(s1->tcc_lib_path);
    tcc_free(s1->soname);
    tcc_free(s1->rpath);
    tcc_free(s1->init_symbol);
    tcc_free(s1->fini_symbol);
    tcc_free(s1->outfile);
    tcc_free(s1->deps_outfile);
    dynarray_reset(&s1->files, &s1->nb_files);
    dynarray_reset(&s1->target_deps, &s1->nb_target_deps);
    dynarray_reset(&s1->pragma_libs, &s1->nb_pragma_libs);
    dynarray_reset(&s1->argv, &s1->argc);

    cstr_free(&s1->cmdline_defs);
    cstr_free(&s1->cmdline_incl);


    tcc_run_free(s1);


    tcc_free(s1);




}

 int tcc_set_output_type(TCCState *s, int output_type)
{
    s->output_type = output_type;


    if (output_type == 4)
        s->output_format = 0;

    if (s->char_is_unsigned)
        tcc_define_symbol(s, "__CHAR_UNSIGNED__", ((void *)0));

    if (s->cversion == 201112) {
        tcc_undefine_symbol(s, "__STDC_VERSION__");
        tcc_define_symbol(s, "__STDC_VERSION__", "201112L");
        tcc_define_symbol(s, "__STDC_NO_ATOMICS__", ((void *)0));
        tcc_define_symbol(s, "__STDC_NO_COMPLEX__", ((void *)0));
        tcc_define_symbol(s, "__STDC_NO_THREADS__", ((void *)0));




        tcc_define_symbol(s, "__STDC_UTF_16__", ((void *)0));
        tcc_define_symbol(s, "__STDC_UTF_32__", ((void *)0));

    }

    if (s->optimize > 0)
        tcc_define_symbol(s, "__OPTIMIZE__", ((void *)0));

    if (s->option_pthread)
        tcc_define_symbol(s, "_REENTRANT", ((void *)0));

    if (s->leading_underscore)
        tcc_define_symbol(s, "__leading_underscore", ((void *)0));

    if (!s->nostdinc) {


        tcc_add_sysinclude_path(s, "{B}/include" ":" "" "/usr/local/include" ":" "" "/usr/include");
    }


    if (s->do_bounds_check) {

        tccelf_bounds_new(s);

        tcc_define_symbol(s, "__BOUNDS_CHECKING_ON", ((void *)0));
    }

    if (s->do_debug) {

        tccelf_stab_new(s);
    }

    tcc_add_library_path(s, "" "/usr/" "lib" ":" "" "/" "lib" ":" "" "/usr/local/" "lib");
# 1089 "../tinycc/libtcc.c"
    tcc_split_path(s, &s->crt_paths, &s->nb_crt_paths, "" "/usr/" "lib");

    if ((output_type == 2 || output_type == 3) &&
        !s->nostdlib) {






    }

    return 0;
}

 int tcc_add_include_path(TCCState *s, const char *pathname)
{
    tcc_split_path(s, &s->include_paths, &s->nb_include_paths, pathname);
    return 0;
}

 int tcc_add_sysinclude_path(TCCState *s, const char *pathname)
{
    tcc_split_path(s, &s->sysinclude_paths, &s->nb_sysinclude_paths, pathname);
    return 0;
}

static int tcc_add_file_internal(TCCState *s1, const char *filename, int flags)
{
    int fd, ret;


    fd = _tcc_open(s1, filename);
    if (fd < 0) {
        if (flags & 0x10)
            (tcc_enter_state(s1),_tcc_error_noabort)("file '%s' not found", filename);
        return -1;
    }

    s1->current_filename = filename;
    if (flags & 0x40) {
        Elf64_Ehdr ehdr;
        int obj_type;

        obj_type = tcc_object_type(fd, &ehdr);
        lseek(fd, 0, 0);


        if (0 == obj_type && 0 == strcmp(tcc_fileextension(filename), ".dylib"))
            obj_type = 2;


        switch (obj_type) {
        case 1:
            ret = tcc_load_object_file(s1, fd, 0);
            break;

        case 2:
            if (s1->output_type == 1) {
                ret = 0;

                if (((void *)0) == dlopen(filename, 0x100 | 0x001))
                    ret = -1;

            } else {




                ret = macho_load_dll(s1, fd, filename,
                                     (flags & 0x20) != 0);

            }
            break;

        case 3:
            ret = tcc_load_archive(s1, fd, !(flags & 0x80));
            break;





        default:



            ret = -1;




            if (ret < 0)
                (tcc_enter_state(s1),_tcc_error_noabort)("%s: unrecognized file type %d", filename,
                                  obj_type);
            break;
        }
        close(fd);
    } else {

        dynarray_add(&s1->target_deps, &s1->nb_target_deps, tcc_strdup(filename));
        ret = tcc_compile(s1, flags, filename, fd);
    }
    s1->current_filename = ((void *)0);
    return ret;
}

 int tcc_add_file(TCCState *s, const char *filename)
{
    int filetype = s->filetype;
    if (0 == (filetype & (15 | 0x40))) {

        const char *ext = tcc_fileextension(filename);
        if (ext[0]) {
            ext++;
            if (!strcmp(ext, "S"))
                filetype = 4;
            else if (!strcmp(ext, "s"))
                filetype = 2;
            else if (!strcmp(ext, "c") || !strcmp(ext, "i"))
                filetype = 1;
            else
                filetype |= 0x40;
        } else {
            filetype = 1;
        }
    }
    return tcc_add_file_internal(s, filename, filetype | 0x10);
}

 int tcc_add_library_path(TCCState *s, const char *pathname)
{
    tcc_split_path(s, &s->library_paths, &s->nb_library_paths, pathname);
    return 0;
}

static int tcc_add_library_internal(TCCState *s, const char *fmt,
    const char *filename, int flags, char **paths, int nb_paths)
{
    char buf[1024];
    int i;

    for(i = 0; i < nb_paths; i++) {
        snprintf(buf, sizeof(buf), fmt, paths[i], filename);
        if (tcc_add_file_internal(s, buf, flags | 0x40) == 0)
            return 0;
    }
    return -1;
}
# 1260 "../tinycc/libtcc.c"
 int tcc_add_library(TCCState *s, const char *libraryname)
{




    const char *libs[] = { "%s/lib%s.dylib", "%s/lib%s.a", ((void *)0) };
    const char **pp = s->static_link ? libs + 1 : libs;




    int flags = s->filetype & 0x80;
    while (*pp) {
        if (0 == tcc_add_library_internal(s, *pp,
            libraryname, flags, s->library_paths, s->nb_library_paths))
            return 0;
        ++pp;
    }
    return -1;
}

 int tcc_add_library_err(TCCState *s1, const char *libname)
{
    int ret = tcc_add_library(s1, libname);
    if (ret < 0)
        (tcc_enter_state(s1),_tcc_error_noabort)("library '%s' not found", libname);
    return ret;
}


static void tcc_add_pragma_libs(TCCState *s1)
{
    int i;
    for (i = 0; i < s1->nb_pragma_libs; i++)
        tcc_add_library_err(s1, s1->pragma_libs[i]);
}

 int tcc_add_symbol(TCCState *s1, const char *name, const void *val)
{





    char buf[256];
    if (s1->leading_underscore) {
        buf[0] = '_';
        pstrcpy(buf + 1, sizeof(buf) - 1, name);
        name = buf;
    }
    set_global_sym(s1, name, ((void *)0), (Elf64_Addr)(uintptr_t)val);

    return 0;
}

 void tcc_set_lib_path(TCCState *s, const char *path)
{
    tcc_free(s->tcc_lib_path);
    s->tcc_lib_path = tcc_strdup(path);
}




typedef struct FlagDef {
    uint16_t offset;
    uint16_t flags;
    const char *name;
} FlagDef;

static int no_flag(const char **pp)
{
    const char *p = *pp;
    if (*p != 'n' || *++p != 'o' || *++p != '-')
        return 0;
    *pp = p + 1;
    return 1;
}

static int set_flag(TCCState *s, const FlagDef *flags, const char *name)
{
    int value, ret;
    const FlagDef *p;
    const char *r;

    value = 1;
    r = name;
    if (no_flag(&r))
        value = 0;

    for (ret = -1, p = flags; p->name; ++p) {
        if (ret) {
            if (strcmp(r, p->name))
                continue;
        } else {
            if (0 == (p->flags & 0x0001))
                continue;
        }
        if (p->offset) {
            *((unsigned char *)s + p->offset) =
                p->flags & 0x0002 ? !value : value;
            if (ret)
                return 0;
        } else {
            ret = 0;
        }
    }
    return ret;
}

static int strstart(const char *val, const char **str)
{
    const char *p, *q;
    p = *str;
    q = val;
    while (*q) {
        if (*p != *q)
            return 0;
        p++;
        q++;
    }
    *str = p;
    return 1;
}
# 1394 "../tinycc/libtcc.c"
static int link_option(const char *str, const char *val, const char **ptr)
{
    const char *p, *q;
    int ret;


    if (*str++ != '-')
        return 0;
    if (*str == '-')
        str++;


    p = str;
    q = val;

    ret = 1;
    if (q[0] == '?') {
        ++q;
        if (no_flag(&p))
            ret = -1;
    }

    while (*q != '\0' && *q != '=') {
        if (*p != *q)
            return 0;
        p++;
        q++;
    }


    if (*q == '=') {
        if (*p == 0)
            *ptr = p;
        if (*p != ',' && *p != '=')
            return 0;
        p++;
    } else if (*p) {
        return 0;
    }
    *ptr = p;
    return ret;
}

static const char *skip_linker_arg(const char **str)
{
    const char *s1 = *str;
    const char *s2 = strchr(s1, ',');
    *str = s2 ? s2++ : (s2 = s1 + strlen(s1));
    return s2;
}

static void copy_linker_arg(char **pp, const char *s, int sep)
{
    const char *q = s;
    char *p = *pp;
    int l = 0;
    if (p && sep)
        p[l = strlen(p)] = sep, ++l;
    skip_linker_arg(&q);
    pstrncpy(l + (*pp = tcc_realloc(p, q - s + l + 1)), s, q - s);
}


static int tcc_set_linker(TCCState *s, const char *option)
{
    TCCState *s1 = s;
    while (*option) {

        const char *p = ((void *)0);
        char *end = ((void *)0);
        int ignoring = 0;
        int ret;

        if (link_option(option, "Bsymbolic", &p)) {
            s->symbolic = 1;
        } else if (link_option(option, "nostdlib", &p)) {
            s->nostdlib = 1;
        } else if (link_option(option, "fini=", &p)) {
            copy_linker_arg(&s->fini_symbol, p, 0);
            ignoring = 1;
        } else if (link_option(option, "image-base=", &p)
                || link_option(option, "Ttext=", &p)) {
            s->text_addr = strtoull(p, &end, 16);
            s->has_text_addr = 1;
        } else if (link_option(option, "init=", &p)) {
            copy_linker_arg(&s->init_symbol, p, 0);
            ignoring = 1;
        } else if (link_option(option, "oformat=", &p)) {



            if (strstart("elf64-", &p)) {



                s->output_format = 0;
            } else if (!strcmp(p, "binary")) {
                s->output_format = 1;




            } else
                goto err;

        } else if (link_option(option, "as-needed", &p)) {
            ignoring = 1;
        } else if (link_option(option, "O", &p)) {
            ignoring = 1;
        } else if (link_option(option, "export-all-symbols", &p)) {
            s->rdynamic = 1;
        } else if (link_option(option, "export-dynamic", &p)) {
            s->rdynamic = 1;
        } else if (link_option(option, "rpath=", &p)) {
            copy_linker_arg(&s->rpath, p, ':');
        } else if (link_option(option, "enable-new-dtags", &p)) {
            s->enable_new_dtags = 1;
        } else if (link_option(option, "section-alignment=", &p)) {
            s->section_align = strtoul(p, &end, 16);
        } else if (link_option(option, "soname=", &p)) {
            copy_linker_arg(&s->soname, p, 0);
# 1547 "../tinycc/libtcc.c"
        } else if (ret = link_option(option, "?whole-archive", &p), ret) {
            if (ret > 0)
                s->filetype |= 0x80;
            else
                s->filetype &= ~0x80;
        } else if (p) {
            return 0;
        } else {
    err:
            (tcc_enter_state(s1),_tcc_error)("unsupported linker option '%s'", option);
        }

        if (ignoring && s->warn_unsupported)
            (tcc_enter_state(s1),_tcc_warning)("unsupported linker option '%s'", option);

        option = skip_linker_arg(&p);
    }
    return 1;
}

typedef struct TCCOption {
    const char *name;
    uint16_t index;
    uint16_t flags;
} TCCOption;

enum {
    TCC_OPTION_HELP,
    TCC_OPTION_HELP2,
    TCC_OPTION_v,
    TCC_OPTION_I,
    TCC_OPTION_D,
    TCC_OPTION_U,
    TCC_OPTION_P,
    TCC_OPTION_L,
    TCC_OPTION_B,
    TCC_OPTION_l,
    TCC_OPTION_bench,
    TCC_OPTION_bt,
    TCC_OPTION_b,
    TCC_OPTION_ba,
    TCC_OPTION_g,
    TCC_OPTION_c,
    TCC_OPTION_dumpversion,
    TCC_OPTION_d,
    TCC_OPTION_static,
    TCC_OPTION_std,
    TCC_OPTION_shared,
    TCC_OPTION_soname,
    TCC_OPTION_o,
    TCC_OPTION_r,
    TCC_OPTION_s,
    TCC_OPTION_traditional,
    TCC_OPTION_Wl,
    TCC_OPTION_Wp,
    TCC_OPTION_W,
    TCC_OPTION_O,
    TCC_OPTION_mfloat_abi,
    TCC_OPTION_m,
    TCC_OPTION_f,
    TCC_OPTION_isystem,
    TCC_OPTION_iwithprefix,
    TCC_OPTION_include,
    TCC_OPTION_nostdinc,
    TCC_OPTION_nostdlib,
    TCC_OPTION_print_search_dirs,
    TCC_OPTION_rdynamic,
    TCC_OPTION_param,
    TCC_OPTION_pedantic,
    TCC_OPTION_pthread,
    TCC_OPTION_run,
    TCC_OPTION_w,
    TCC_OPTION_pipe,
    TCC_OPTION_E,
    TCC_OPTION_MD,
    TCC_OPTION_MF,
    TCC_OPTION_x,
    TCC_OPTION_ar,
    TCC_OPTION_impdef,
    TCC_OPTION_C
};




static const TCCOption tcc_options[] = {
    { "h", TCC_OPTION_HELP, 0 },
    { "-help", TCC_OPTION_HELP, 0 },
    { "?", TCC_OPTION_HELP, 0 },
    { "hh", TCC_OPTION_HELP2, 0 },
    { "v", TCC_OPTION_v, 0x0001 | 0x0002 },
    { "-version", TCC_OPTION_v, 0 },
    { "I", TCC_OPTION_I, 0x0001 },
    { "D", TCC_OPTION_D, 0x0001 },
    { "U", TCC_OPTION_U, 0x0001 },
    { "P", TCC_OPTION_P, 0x0001 | 0x0002 },
    { "L", TCC_OPTION_L, 0x0001 },
    { "B", TCC_OPTION_B, 0x0001 },
    { "l", TCC_OPTION_l, 0x0001 },
    { "bench", TCC_OPTION_bench, 0 },

    { "bt", TCC_OPTION_bt, 0x0001 | 0x0002 },


    { "b", TCC_OPTION_b, 0 },

    { "g", TCC_OPTION_g, 0x0001 | 0x0002 },
    { "c", TCC_OPTION_c, 0 },
    { "dumpversion", TCC_OPTION_dumpversion, 0},
    { "d", TCC_OPTION_d, 0x0001 | 0x0002 },
    { "static", TCC_OPTION_static, 0 },
    { "std", TCC_OPTION_std, 0x0001 | 0x0002 },
    { "shared", TCC_OPTION_shared, 0 },
    { "soname", TCC_OPTION_soname, 0x0001 },
    { "o", TCC_OPTION_o, 0x0001 },
    { "-param", TCC_OPTION_param, 0x0001 },
    { "pedantic", TCC_OPTION_pedantic, 0},
    { "pthread", TCC_OPTION_pthread, 0},
    { "run", TCC_OPTION_run, 0x0001 | 0x0002 },
    { "rdynamic", TCC_OPTION_rdynamic, 0 },
    { "r", TCC_OPTION_r, 0 },
    { "s", TCC_OPTION_s, 0 },
    { "traditional", TCC_OPTION_traditional, 0 },
    { "Wl,", TCC_OPTION_Wl, 0x0001 | 0x0002 },
    { "Wp,", TCC_OPTION_Wp, 0x0001 | 0x0002 },
    { "W", TCC_OPTION_W, 0x0001 | 0x0002 },
    { "O", TCC_OPTION_O, 0x0001 | 0x0002 },



    { "m", TCC_OPTION_m, 0x0001 | 0x0002 },
    { "f", TCC_OPTION_f, 0x0001 | 0x0002 },
    { "isystem", TCC_OPTION_isystem, 0x0001 },
    { "include", TCC_OPTION_include, 0x0001 },
    { "nostdinc", TCC_OPTION_nostdinc, 0 },
    { "nostdlib", TCC_OPTION_nostdlib, 0 },
    { "print-search-dirs", TCC_OPTION_print_search_dirs, 0 },
    { "w", TCC_OPTION_w, 0 },
    { "pipe", TCC_OPTION_pipe, 0},
    { "E", TCC_OPTION_E, 0},
    { "MD", TCC_OPTION_MD, 0},
    { "MF", TCC_OPTION_MF, 0x0001 },
    { "x", TCC_OPTION_x, 0x0001 },
    { "ar", TCC_OPTION_ar, 0},



    { "C", TCC_OPTION_C, 0},
    { ((void *)0), 0, 0 },
};

static const FlagDef options_W[] = {
    { 0, 0, "all" },
    { ((size_t) &((TCCState *)0)->warn_unsupported), 0, "unsupported" },
    { ((size_t) &((TCCState *)0)->warn_write_strings), 0, "write-strings" },
    { ((size_t) &((TCCState *)0)->warn_error), 0, "error" },
    { ((size_t) &((TCCState *)0)->warn_gcc_compat), 0, "gcc-compat" },
    { ((size_t) &((TCCState *)0)->warn_implicit_function_declaration), 0x0001,
      "implicit-function-declaration" },
    { 0, 0, ((void *)0) }
};

static const FlagDef options_f[] = {
    { ((size_t) &((TCCState *)0)->char_is_unsigned), 0, "unsigned-char" },
    { ((size_t) &((TCCState *)0)->char_is_unsigned), 0x0002, "signed-char" },
    { ((size_t) &((TCCState *)0)->nocommon), 0x0002, "common" },
    { ((size_t) &((TCCState *)0)->leading_underscore), 0, "leading-underscore" },
    { ((size_t) &((TCCState *)0)->ms_extensions), 0, "ms-extensions" },
    { ((size_t) &((TCCState *)0)->dollars_in_identifiers), 0, "dollars-in-identifiers" },
    { 0, 0, ((void *)0) }
};

static const FlagDef options_m[] = {
    { ((size_t) &((TCCState *)0)->ms_bitfields), 0, "ms-bitfields" },

    { ((size_t) &((TCCState *)0)->nosse), 0x0002, "sse" },

    { 0, 0, ((void *)0) }
};

static void args_parser_add_file(TCCState *s, const char* filename, int filetype)
{
    struct filespec *f = tcc_malloc(sizeof *f + strlen(filename));
    f->type = filetype;
    strcpy(f->name, filename);
    dynarray_add(&s->files, &s->nb_files, f);
}

static int args_parser_make_argv(const char *r, int *argc, char ***argv)
{
    int ret = 0, q, c;
    CString str;
    for(;;) {
        while (c = (unsigned char)*r, c && c <= ' ')
          ++r;
        if (c == 0)
            break;
        q = 0;
        cstr_new(&str);
        while (c = (unsigned char)*r, c) {
            ++r;
            if (c == '\\' && (*r == '"' || *r == '\\')) {
                c = *r++;
            } else if (c == '"') {
                q = !q;
                continue;
            } else if (q == 0 && c <= ' ') {
                break;
            }
            cstr_ccat(&str, c);
        }
        cstr_ccat(&str, 0);

        dynarray_add(argv, argc, tcc_strdup(str.data));
        cstr_free(&str);
        ++ret;
    }
    return ret;
}


static void args_parser_listfile(TCCState *s,
    const char *filename, int optind, int *pargc, char ***pargv)
{
    TCCState *s1 = s;
    int fd, i;
    size_t len;
    char *p;
    int argc = 0;
    char **argv = ((void *)0);

    fd = open(filename, 0x0000 | 0);
    if (fd < 0)
        (tcc_enter_state(s1),_tcc_error)("listfile '%s' not found", filename);

    len = lseek(fd, 0, 2);
    p = tcc_malloc(len + 1), p[len] = 0;
    lseek(fd, 0, 0), read(fd, p, len), close(fd);

    for (i = 0; i < *pargc; ++i)
        if (i == optind)
            args_parser_make_argv(p, &argc, &argv);
        else
            dynarray_add(&argv, &argc, tcc_strdup((*pargv)[i]));

    tcc_free(p);
    dynarray_reset(&s->argv, &s->argc);
    *pargc = s->argc = argc, *pargv = s->argv = argv;
}

 int tcc_parse_args(TCCState *s, int *pargc, char ***pargv, int optind)
{
    TCCState *s1 = s;
    const TCCOption *popt;
    const char *optarg, *r;
    const char *run = ((void *)0);
    int x;
    CString linker_arg;
    int tool = 0, arg_start = 0, noaction = optind;
    char **argv = *pargv;
    int argc = *pargc;

    cstr_new(&linker_arg);

    while (optind < argc) {
        r = argv[optind];
        if (r[0] == '@' && r[1] != '\0') {
            args_parser_listfile(s, r + 1, optind, &argc, &argv);
            continue;
        }
        optind++;
        if (tool) {
            if (r[0] == '-' && r[1] == 'v' && r[2] == 0)
                ++s->verbose;
            continue;
        }
reparse:
        if (r[0] != '-' || r[1] == '\0') {
            if (r[0] != '@')
                args_parser_add_file(s, r, s->filetype);
            if (run) {
                tcc_set_options(s, run);
                arg_start = optind - 1;
                break;
            }
            continue;
        }


        for(popt = tcc_options; ; ++popt) {
            const char *p1 = popt->name;
            const char *r1 = r + 1;
            if (p1 == ((void *)0))
                (tcc_enter_state(s1),_tcc_error)("invalid option -- '%s'", r);
            if (!strstart(p1, &r1))
                continue;
            optarg = r1;
            if (popt->flags & 0x0001) {
                if (*r1 == '\0' && !(popt->flags & 0x0002)) {
                    if (optind >= argc)
                arg_err:
                        (tcc_enter_state(s1),_tcc_error)("argument to '%s' is missing", r);
                    optarg = argv[optind++];
                }
            } else if (*r1 != '\0')
                continue;
            break;
        }

        switch(popt->index) {
        case TCC_OPTION_HELP:
            x = 1;
            goto extra_action;
        case TCC_OPTION_HELP2:
            x = 2;
            goto extra_action;
        case TCC_OPTION_I:
            tcc_add_include_path(s, optarg);
            break;
        case TCC_OPTION_D:
            tcc_define_symbol(s, optarg, ((void *)0));
            break;
        case TCC_OPTION_U:
            tcc_undefine_symbol(s, optarg);
            break;
        case TCC_OPTION_L:
            tcc_add_library_path(s, optarg);
            break;
        case TCC_OPTION_B:

            tcc_set_lib_path(s, optarg);
            break;
        case TCC_OPTION_l:
            args_parser_add_file(s, optarg, 8 | (s->filetype & ~(15 | 0x40)));
            s->nb_libraries++;
            break;
        case TCC_OPTION_pthread:
            s->option_pthread = 1;
            break;
        case TCC_OPTION_bench:
            s->do_bench = 1;
            break;

        case TCC_OPTION_bt:
            s->rt_num_callers = atoi(optarg);
            s->do_backtrace = 1;
            s->do_debug = 1;
            break;


        case TCC_OPTION_b:
            s->do_bounds_check = 1;
            s->do_backtrace = 1;
            s->do_debug = 1;
            break;

        case TCC_OPTION_g:
            s->do_debug = 1;
            break;
        case TCC_OPTION_c:
            x = 4;
        set_output_type:
            if (s->output_type)
                (tcc_enter_state(s1),_tcc_warning)("-%s: overriding compiler action already specified", popt->name);
            s->output_type = x;
            break;
        case TCC_OPTION_d:
            if (*optarg == 'D')
                s->dflag = 3;
            else if (*optarg == 'M')
                s->dflag = 7;
            else if (*optarg == 't')
                s->dflag = 16;
            else if (isnum(*optarg))
                s->g_debug |= atoi(optarg);
            else
                goto unsupported_option;
            break;
        case TCC_OPTION_static:
            s->static_link = 1;
            break;
        case TCC_OPTION_std:
            if (strcmp(optarg, "=c11") == 0)
                s->cversion = 201112;
            break;
        case TCC_OPTION_shared:
            x = 3;
            goto set_output_type;
        case TCC_OPTION_soname:
            s->soname = tcc_strdup(optarg);
            break;
        case TCC_OPTION_o:
            if (s->outfile) {
                (tcc_enter_state(s1),_tcc_warning)("multiple -o option");
                tcc_free(s->outfile);
            }
            s->outfile = tcc_strdup(optarg);
            break;
        case TCC_OPTION_r:

            s->option_r = 1;
            x = 4;
            goto set_output_type;
        case TCC_OPTION_isystem:
            tcc_add_sysinclude_path(s, optarg);
            break;
        case TCC_OPTION_include:
            cstr_printf(&s->cmdline_incl, "#include \"%s\"\n", optarg);
            break;
        case TCC_OPTION_nostdinc:
            s->nostdinc = 1;
            break;
        case TCC_OPTION_nostdlib:
            s->nostdlib = 1;
            break;
        case TCC_OPTION_run:



            run = optarg;
            x = 1;
            goto set_output_type;
        case TCC_OPTION_v:
            do ++s->verbose; while (*optarg++ == 'v');
            ++noaction;
            break;
        case TCC_OPTION_f:
            if (set_flag(s, options_f, optarg) < 0)
                goto unsupported_option;
            break;
# 1989 "../tinycc/libtcc.c"
        case TCC_OPTION_m:
            if (set_flag(s, options_m, optarg) < 0) {
                if (x = atoi(optarg), x != 32 && x != 64)
                    goto unsupported_option;
                if (8 != x/8)
                    return x;
                ++noaction;
            }
            break;
        case TCC_OPTION_W:
            s->warn_none = 0;
            if (optarg[0] && set_flag(s, options_W, optarg) < 0)
                goto unsupported_option;
            break;
        case TCC_OPTION_w:
            s->warn_none = 1;
            break;
        case TCC_OPTION_rdynamic:
            s->rdynamic = 1;
            break;
        case TCC_OPTION_Wl:
            if (linker_arg.size)
                --linker_arg.size, cstr_ccat(&linker_arg, ',');
            cstr_cat(&linker_arg, optarg, 0);
            if (tcc_set_linker(s, linker_arg.data))
                cstr_free(&linker_arg);
            break;
        case TCC_OPTION_Wp:
            r = optarg;
            goto reparse;
        case TCC_OPTION_E:
            x = 5;
            goto set_output_type;
        case TCC_OPTION_P:
            s->Pflag = atoi(optarg) + 1;
            break;
        case TCC_OPTION_MD:
            s->gen_deps = 1;
            break;
        case TCC_OPTION_MF:
            s->deps_outfile = tcc_strdup(optarg);
            break;
        case TCC_OPTION_dumpversion:
            printf ("%s\n", "0.9.27");
            exit(0);
            break;
        case TCC_OPTION_x:
            x = 0;
            if (*optarg == 'c')
                x = 1;
            else if (*optarg == 'a')
                x = 4;
            else if (*optarg == 'b')
                x = 0x40;
            else if (*optarg == 'n')
                x = 0;
            else
                (tcc_enter_state(s1),_tcc_warning)("unsupported language '%s'", optarg);
            s->filetype = x | (s->filetype & ~(15 | 0x40));
            break;
        case TCC_OPTION_O:
            s->optimize = atoi(optarg);
            break;
        case TCC_OPTION_print_search_dirs:
            x = 4;
            goto extra_action;
        case TCC_OPTION_impdef:
            x = 6;
            goto extra_action;
        case TCC_OPTION_ar:
            x = 5;
        extra_action:
            arg_start = optind - 1;
            if (arg_start != noaction)
                (tcc_enter_state(s1),_tcc_error)("cannot parse %s here", r);
            tool = x;
            break;
        case TCC_OPTION_traditional:
        case TCC_OPTION_pedantic:
        case TCC_OPTION_pipe:
        case TCC_OPTION_s:
        case TCC_OPTION_C:

            break;
        default:
unsupported_option:
            if (s->warn_unsupported)
                (tcc_enter_state(s1),_tcc_warning)("unsupported option '%s'", r);
            break;
        }
    }
    if (linker_arg.size) {
        r = linker_arg.data;
        goto arg_err;
    }
    *pargc = argc - arg_start;
    *pargv = argv + arg_start;
    if (tool)
        return tool;
    if (optind != noaction)
        return 0;
    if (s->verbose == 2)
        return 4;
    if (s->verbose)
        return 3;
    return 1;
}

 void tcc_set_options(TCCState *s, const char *r)
{
    char **argv = ((void *)0);
    int argc = 0;
    args_parser_make_argv(r, &argc, &argv);
    tcc_parse_args(s, &argc, &argv, 0);
    dynarray_reset(&argv, &argc);
}

 void tcc_print_stats(TCCState *s1, unsigned total_time)
{
    if (total_time < 1)
        total_time = 1;
    if (s1->total_bytes < 1)
        s1->total_bytes = 1;
    fprintf(__stderrp, "* %d idents, %d lines, %d bytes\n"
                    "* %0.3f s, %u lines/s, %0.1f MB/s\n",
           s1->total_idents, s1->total_lines, s1->total_bytes,
           (double)total_time/1000,
           (unsigned)s1->total_lines*1000/total_time,
           (double)s1->total_bytes/1000/total_time);



}
# 8 "ffic.c" 2
# 1 "ffic.h" 1


typedef void* ffic_ptr;
typedef ffic_ptr(



		*ffic_func)();
typedef double (*ffic_func_d)();
typedef long (*ffic_func_l)();
typedef int (*ffic_func_i)();
typedef float (*ffic_func_f)();


typedef char* ffic_string;
typedef int* ffic_wstring;

typedef enum { ffic_os_unknown, ffic_os_win, ffic_os_osx, ffic_os_unx, } ffic_os_t;





ffic_os_t ffic_os = ffic_os_osx;
ffic_string ffic_libcname = "libc";
ffic_string ffic_sosuffix = ".dylib";
# 45 "ffic.h"
typedef signed char ffic_i8;
typedef unsigned char ffic_u8;
typedef signed short int ffic_i16;
typedef unsigned short int ffic_u16;
typedef signed int ffic_i32;
typedef unsigned int ffic_u32;
typedef signed long ffic_ipt;
typedef unsigned long ffic_upt;

typedef signed long int ffic_i64;
typedef unsigned long int ffic_u64;
# 75 "ffic.h"
ffic_func_i ffic_printf;
extern int strcmp(const char*,const char*);
extern void exit(int);
# 96 "ffic.h"
char* _ffic_strcat(char* buffer, const char* a, const char* b) {
 char* p = buffer; while (*a) *(p++) = *(a++); while (*b) *(p++) = *(b++);
 *p = '\0';
 return buffer;
}
ffic_ptr ffic_void(){return 0;};
ffic_ptr (*ffic_core(const char *libfilename,const char* funcname))()
{
	static ffic_func ffic_dlsym;
	static ffic_func ffic_dlopen;
	if(!ffic_dlsym){







		extern ffic_ptr dlsym();
		ffic_dlsym = (ffic_func) dlsym;






	}
	if(!ffic_dlopen){
# 138 "ffic.h"
		extern ffic_ptr dlopen();
		ffic_dlopen = (ffic_func) dlopen;






	}

	return ffic_dlsym(ffic_dlopen(libfilename,0x101), funcname);
}
ffic_ptr(*ffic_raw(const char* part1, const char* funcname, const char* part2))()
{
	ffic_string libfilename = (char[512]){0};
	_ffic_strcat(libfilename, (part1)? part1 : ffic_libcname, (part2)? part2 : ffic_sosuffix );
	ffic_ptr addr = ffic_core(libfilename,funcname);
	if(!addr) {
		if(!ffic_printf){
			extern int printf(const char*,...);

			ffic_printf = (ffic_func_i) printf;
		}
		ffic_printf("WARN: 404 %s(%s).%s \n",part1,libfilename,funcname);
	}
	return addr;
}
void* ffic_std[3];
ffic_ptr ffic_os_std(int t){
	if(ffic_std[t]) return ffic_std[t];
	ffic_std[t] = ffic_raw(0,(ffic_os==ffic_os_win)?"_fdopen":"fdopen",0)(ffic_raw(0,(ffic_os==ffic_os_win)?"_dup":"dup",0)(t),(t==0)?"r":"w");
	return ffic_std[t];
}
static ffic_func _ffic_os_sleep = 0;
ffic_ptr ffic_usleep(int nano_seconds) { _ffic_os_sleep( (ffic_os==ffic_os_win) ? (nano_seconds/1000) : nano_seconds ); return 0; }
ffic_ptr ffic_msleep(int microseconds) { _ffic_os_sleep( (ffic_os==ffic_os_win) ? (microseconds) : microseconds*1000 ); return 0; }
ffic_ptr ffic_sleep(int seconds) { _ffic_os_sleep( (ffic_os==ffic_os_win) ? (seconds*1000) : (seconds*1000000) ); return 0; }

ffic_u64 ffic_microtime(void)
{

	struct { long tv_sec; long tv_usec; } tv;
	static ffic_func ffic_gettimeofday=0;
	if(ffic_os == ffic_os_win){
		if (!ffic_gettimeofday) ffic_gettimeofday = (ffic_func) ffic_raw("kernel32","GetSystemTimePreciseAsFileTime",0);
		if (!ffic_gettimeofday) ffic_gettimeofday = (ffic_func) ffic_raw("kernel32","GetSystemTimeAsFileTime",0);
		static const ffic_u64 epoch = 116444736000000000;
		struct _FILETIME { unsigned long dwLowDateTime; unsigned long dwHighDateTime; } file_time;
		ffic_gettimeofday(&file_time);
		ffic_u64 since_1601 = ( (ffic_u64) file_time.dwHighDateTime << 32) | (ffic_u64) file_time.dwLowDateTime;
		ffic_u64 since_1970 = ((ffic_u64) since_1601 - epoch);
		ffic_u64 microseconds_since_1970 = since_1970 / 10;
		tv.tv_sec = (microseconds_since_1970 / (ffic_u64) 1000000);
		tv.tv_usec = microseconds_since_1970 % (ffic_u64) 1000000;
	}else{
		if (!ffic_gettimeofday) ffic_gettimeofday = (ffic_func) ffic_raw(0,"gettimeofday",0);
		ffic_gettimeofday(&tv, 0);
	}
	return ((ffic_u64)tv.tv_sec*(ffic_u64)1000 + (((ffic_u64)tv.tv_usec)/(ffic_u64)1000)%(ffic_u64)1000);
}
ffic_ptr(*ffic(const char* libname, const char* funcname))()
{
	ffic_ptr addr = 0;
	if(libname && 'c'==*libname && 0==*(libname+1)) libname=0;
	if(!libname){
		if(!_ffic_os_sleep) _ffic_os_sleep = (ffic_func)((ffic_os==ffic_os_win) ? ffic_raw("kernel32","Sleep",0) : ffic_raw(ffic_libcname,"usleep",0));
		if(!strcmp("stderr",funcname) || !strcmp("2",funcname)){ return ffic_os_std(2); }
		else if(!strcmp("stdout",funcname) || !strcmp("1",funcname)){ return ffic_os_std(1); }
		else if(!strcmp("stdin",funcname) || !strcmp("0",funcname)){ return ffic_os_std(0); }
		else if(!strcmp("microtime",funcname)){ return (ffic_ptr) ffic_microtime; }
		else if(!strcmp("usleep",funcname)){ return ffic_usleep; }
		else if(!strcmp("sleep",funcname)){ return ffic_sleep; }
		else if(!strcmp("msleep",funcname)){ return ffic_msleep; }
		else if(!strcmp("fileno",funcname) && ffic_os == ffic_os_win){ funcname = "_fileno"; }
		else if(!strcmp("void",funcname)){ return (ffic_ptr) ffic_void; }
		else if(!strcmp("setmode",funcname)){
			if(ffic_os == ffic_os_win){ funcname = "_setmode"; }else{ addr = (ffic_ptr) ffic_void; }
		}
		else if(!strcmp("strdup",funcname) && ffic_os == ffic_os_win){ funcname = "_strdup"; }
	}
	if(!addr) addr = ffic_raw(libname,funcname,0);
	return addr;
}
# 9 "ffic.c" 2
# 21 "ffic.c"
int main(int argc, char **argv){
# 30 "ffic.c"
	ffic_ptr tcc_ptr = tcc_new();
	tcc_set_output_type(tcc_ptr, 1 );
	tcc_define_symbol(tcc_ptr, "FFIC", "2");

	tcc_set_options(tcc_ptr, "-Llib");

	tcc_set_options(tcc_ptr, "-L.");
	tcc_set_options(tcc_ptr, "-L..");

	tcc_set_options(tcc_ptr, "-I.");
	tcc_set_options(tcc_ptr, "-I..");
# 57 "ffic.c"
	tcc_set_options(tcc_ptr, "-DCONFIG_LDDIR=\".\"");




	tcc_set_options(tcc_ptr, "-D__APPLE__");
	tcc_set_options(tcc_ptr, "-DTCC_TARGET_MACHO");
	tcc_set_options(tcc_ptr, "-DTCC_TARGET_X86_64");
# 74 "ffic.c"
	if(0==tcc_get_symbol(tcc_ptr, "ffic_core"))
		tcc_add_symbol(tcc_ptr, "ffic_core", ffic_core);

	if(0==tcc_get_symbol(tcc_ptr, "ffic_raw"))
		tcc_add_symbol(tcc_ptr, "ffic_raw", ffic_raw);

	if(!tcc_get_symbol(tcc_ptr, "ffic"))
		tcc_add_symbol(tcc_ptr, "ffic", ffic);






	if(argc>1){
		tcc_add_file(tcc_ptr,argv[1]);
	}else{
		tcc_add_file(tcc_ptr,"-");
	}







	int rt = ((ffic_func_i)tcc_run)(tcc_ptr, argc>1?argc-1:argc,argc>1?(argv+1):argv);


	tcc_delete(tcc_ptr);
	return rt;
}
