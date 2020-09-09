# 1 "tests/wingl0.c"
# 1 "<command line>" 1
# 2 "tests/wingl0.c" 2
# 17 "tests/wingl0.c"
# 1 "../tinyccbinary/win32/include/winapi/windows.h" 1
# 17 "../tinyccbinary/win32/include/winapi/windows.h"
# 1 "../tinyccbinary/win32/include/_mingw.h" 1
# 27 "../tinyccbinary/win32/include/_mingw.h"
# 1 "../tinyccbinary/win32/include/stddef.h" 1



typedef unsigned int size_t;
typedef int ssize_t;
typedef unsigned short wchar_t;
typedef int ptrdiff_t;
typedef int intptr_t;
typedef unsigned int uintptr_t;







typedef signed char int8_t;
typedef signed short int int16_t;
typedef signed int int32_t;



typedef signed long long int int64_t;

typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;
typedef unsigned int uint32_t;



typedef unsigned long long int uint64_t;
# 42 "../tinyccbinary/win32/include/stddef.h"
void *alloca(size_t size);
# 28 "../tinyccbinary/win32/include/_mingw.h" 2
# 1 "../tinyccbinary/win32/include/stdarg.h" 1
# 67 "../tinyccbinary/win32/include/stdarg.h"
typedef char *va_list;
# 76 "../tinyccbinary/win32/include/stdarg.h"
typedef va_list __gnuc_va_list;
# 29 "../tinyccbinary/win32/include/_mingw.h" 2
# 98 "../tinyccbinary/win32/include/_mingw.h"
typedef long __time32_t;




typedef long long __time64_t;





typedef __time32_t time_t;







typedef wchar_t wctype_t;




typedef unsigned short wint_t;


typedef int errno_t;


typedef struct threadlocaleinfostruct *pthreadlocinfo;
typedef struct threadmbcinfostruct *pthreadmbcinfo;
typedef struct localeinfo_struct _locale_tstruct,*_locale_t;
# 18 "../tinyccbinary/win32/include/winapi/windows.h" 2
# 62 "../tinyccbinary/win32/include/winapi/windows.h"
# 1 "../tinyccbinary/win32/include/excpt.h" 1
# 9 "../tinyccbinary/win32/include/excpt.h"
# 1 "../tinyccbinary/win32/include/_mingw.h" 1
# 10 "../tinyccbinary/win32/include/excpt.h" 2

#pragma pack(push,8)





  struct _EXCEPTION_POINTERS;
# 28 "../tinyccbinary/win32/include/excpt.h"
  struct _EXCEPTION_RECORD;
  struct _CONTEXT;

  int  _except_handler(struct _EXCEPTION_RECORD *_ExceptionRecord,void *_EstablisherFrame,struct _CONTEXT *_ContextRecord,void *_DispatcherContext);
# 53 "../tinyccbinary/win32/include/excpt.h"
  unsigned long  _exception_code(void);
  void * _exception_info(void);
  int  _abnormal_termination(void);






  typedef void ( * _PHNDLR)(int);

  struct _XCPT_ACTION {
    unsigned long XcptNum;
    int SigNum;
    _PHNDLR XcptAction;
  };

  extern struct _XCPT_ACTION _XcptActTab[];
  extern int _XcptActTabCount;
  extern int _XcptActTabSize;
  extern int _First_FPE_Indx;
  extern int _Num_FPE;

  int  __CppXcptFilter(unsigned long _ExceptionNum,struct _EXCEPTION_POINTERS * _ExceptionPtr);
  int  _XcptFilter(unsigned long _ExceptionNum,struct _EXCEPTION_POINTERS * _ExceptionPtr);





  typedef int (*PEXCEPTION_HANDLER)(struct _EXCEPTION_RECORD*, void*, struct _CONTEXT*, void*);






  typedef struct _EXCEPTION_REGISTRATION {
    struct _EXCEPTION_REGISTRATION *prev;
    int (*handler)(struct _EXCEPTION_RECORD*, void*, struct _CONTEXT*, void*);
  } EXCEPTION_REGISTRATION, *PEXCEPTION_REGISTRATION;

  typedef EXCEPTION_REGISTRATION EXCEPTION_REGISTRATION_RECORD;
  typedef PEXCEPTION_REGISTRATION PEXCEPTION_REGISTRATION_RECORD;
# 122 "../tinyccbinary/win32/include/excpt.h"
#pragma pack(pop)
# 63 "../tinyccbinary/win32/include/winapi/windows.h" 2
# 1 "../tinyccbinary/win32/include/stdarg.h" 1
# 64 "../tinyccbinary/win32/include/winapi/windows.h" 2


# 1 "../tinyccbinary/win32/include/winapi/windef.h" 1
# 23 "../tinyccbinary/win32/include/winapi/windef.h"
  typedef unsigned long ULONG;
  typedef ULONG *PULONG;
  typedef unsigned short USHORT;
  typedef USHORT *PUSHORT;
  typedef unsigned char UCHAR;
  typedef UCHAR *PUCHAR;
  typedef char *PSZ;
# 94 "../tinyccbinary/win32/include/winapi/windef.h"
  typedef unsigned long DWORD;
  typedef int WINBOOL;

  typedef unsigned char BYTE;
  typedef unsigned short WORD;
  typedef float FLOAT;
  typedef FLOAT *PFLOAT;
  typedef WINBOOL *PBOOL;
  typedef WINBOOL *LPBOOL;
  typedef BYTE *PBYTE;
  typedef BYTE *LPBYTE;
  typedef int *PINT;
  typedef int *LPINT;
  typedef WORD *PWORD;
  typedef WORD *LPWORD;
  typedef long *LPLONG;
  typedef DWORD *PDWORD;
  typedef DWORD *LPDWORD;
  typedef void *LPVOID;


typedef const void *LPCVOID;

  typedef int INT;
  typedef unsigned int UINT;
  typedef unsigned int *PUINT;


# 1 "../tinyccbinary/win32/include/winapi/winnt.h" 1
# 13 "../tinyccbinary/win32/include/winapi/winnt.h"
# 1 "../tinyccbinary/win32/include/ctype.h" 1
# 9 "../tinyccbinary/win32/include/ctype.h"
# 1 "../tinyccbinary/win32/include/_mingw.h" 1
# 10 "../tinyccbinary/win32/include/ctype.h" 2
# 36 "../tinyccbinary/win32/include/ctype.h"
  extern unsigned short **_imp___pctype;
# 51 "../tinyccbinary/win32/include/ctype.h"
  extern unsigned short **_imp___wctype;
# 63 "../tinyccbinary/win32/include/ctype.h"
  extern unsigned short **_imp___pwctype;
# 72 "../tinyccbinary/win32/include/ctype.h"
  extern const unsigned char __newclmap[];
  extern const unsigned char __newcumap[];
  extern pthreadlocinfo __ptlocinfo;
  extern pthreadmbcinfo __ptmbcinfo;
  extern int __globallocalestatus;
  extern int __locale_changed;
  extern struct threadlocaleinfostruct __initiallocinfo;
  extern _locale_tstruct __initiallocalestructinfo;
  pthreadlocinfo  __updatetlocinfo(void);
  pthreadmbcinfo  __updatetmbcinfo(void);
# 100 "../tinyccbinary/win32/include/ctype.h"
  extern int  _isctype(int _C,int _Type);
  extern int  _isctype_l(int _C,int _Type,_locale_t _Locale);
  extern int  isalpha(int _C);
  extern int  _isalpha_l(int _C,_locale_t _Locale);
  extern int  isupper(int _C);
  extern int  _isupper_l(int _C,_locale_t _Locale);
  extern int  islower(int _C);
  extern int  _islower_l(int _C,_locale_t _Locale);
  extern int  isdigit(int _C);
  extern int  _isdigit_l(int _C,_locale_t _Locale);
  extern int  isxdigit(int _C);
  extern int  _isxdigit_l(int _C,_locale_t _Locale);
  extern int  isspace(int _C);
  extern int  _isspace_l(int _C,_locale_t _Locale);
  extern int  ispunct(int _C);
  extern int  _ispunct_l(int _C,_locale_t _Locale);
  extern int  isalnum(int _C);
  extern int  _isalnum_l(int _C,_locale_t _Locale);
  extern int  isprint(int _C);
  extern int  _isprint_l(int _C,_locale_t _Locale);
  extern int  isgraph(int _C);
  extern int  _isgraph_l(int _C,_locale_t _Locale);
  extern int  iscntrl(int _C);
  extern int  _iscntrl_l(int _C,_locale_t _Locale);
  extern int  toupper(int _C);
  extern int  tolower(int _C);
  extern int  _tolower(int _C);
  extern int  _tolower_l(int _C,_locale_t _Locale);
  extern int  _toupper(int _C);
  extern int  _toupper_l(int _C,_locale_t _Locale);
  extern int  __isascii(int _C);
  extern int  __toascii(int _C);
  extern int  __iscsymf(int _C);
  extern int  __iscsym(int _C);


int  isblank(int _C);






  int  iswalpha(wint_t _C);
  extern int  _iswalpha_l(wint_t _C,_locale_t _Locale);
  int  iswupper(wint_t _C);
  extern int  _iswupper_l(wint_t _C,_locale_t _Locale);
  int  iswlower(wint_t _C);
  extern int  _iswlower_l(wint_t _C,_locale_t _Locale);
  int  iswdigit(wint_t _C);
  extern int  _iswdigit_l(wint_t _C,_locale_t _Locale);
  int  iswxdigit(wint_t _C);
  extern int  _iswxdigit_l(wint_t _C,_locale_t _Locale);
  int  iswspace(wint_t _C);
  extern int  _iswspace_l(wint_t _C,_locale_t _Locale);
  int  iswpunct(wint_t _C);
  extern int  _iswpunct_l(wint_t _C,_locale_t _Locale);
  int  iswalnum(wint_t _C);
  extern int  _iswalnum_l(wint_t _C,_locale_t _Locale);
  int  iswprint(wint_t _C);
  extern int  _iswprint_l(wint_t _C,_locale_t _Locale);
  int  iswgraph(wint_t _C);
  extern int  _iswgraph_l(wint_t _C,_locale_t _Locale);
  int  iswcntrl(wint_t _C);
  extern int  _iswcntrl_l(wint_t _C,_locale_t _Locale);
  int  iswascii(wint_t _C);
  int  isleadbyte(int _C);
  extern int  _isleadbyte_l(int _C,_locale_t _Locale);
  wint_t  towupper(wint_t _C);
  extern wint_t  _towupper_l(wint_t _C,_locale_t _Locale);
  wint_t  towlower(wint_t _C);
  extern wint_t  _towlower_l(wint_t _C,_locale_t _Locale);
  int  iswctype(wint_t _C,wctype_t _Type);
  extern int  _iswctype_l(wint_t _C,wctype_t _Type,_locale_t _Locale);
  extern int  __iswcsymf(wint_t _C);
  extern int  _iswcsymf_l(wint_t _C,_locale_t _Locale);
  extern int  __iswcsym(wint_t _C);
  extern int  _iswcsym_l(wint_t _C,_locale_t _Locale);
  int  is_wctype(wint_t _C,wctype_t _Type);


int  iswblank(wint_t _C);
# 194 "../tinyccbinary/win32/include/ctype.h"
  extern int *_imp____mb_cur_max;
# 14 "../tinyccbinary/win32/include/winapi/winnt.h" 2
# 80 "../tinyccbinary/win32/include/winapi/winnt.h"
# 1 "../tinyccbinary/win32/include/winapi/basetsd.h" 1
# 12 "../tinyccbinary/win32/include/winapi/basetsd.h"
typedef unsigned long POINTER_64_INT;
# 23 "../tinyccbinary/win32/include/winapi/basetsd.h"
  typedef signed char INT8,*PINT8;
  typedef signed short INT16,*PINT16;
  typedef signed int INT32,*PINT32;
  typedef signed long long INT64,*PINT64;
  typedef unsigned char UINT8,*PUINT8;
  typedef unsigned short UINT16,*PUINT16;
  typedef unsigned int UINT32,*PUINT32;
  typedef unsigned long long UINT64,*PUINT64;
  typedef signed int LONG32,*PLONG32;
  typedef unsigned int ULONG32,*PULONG32;
  typedef unsigned int DWORD32,*PDWORD32;
# 46 "../tinyccbinary/win32/include/winapi/basetsd.h"
  typedef int INT_PTR,*PINT_PTR;
  typedef unsigned int UINT_PTR,*PUINT_PTR;
  typedef long LONG_PTR,*PLONG_PTR;
  typedef unsigned long ULONG_PTR,*PULONG_PTR;
# 89 "../tinyccbinary/win32/include/winapi/basetsd.h"
  typedef unsigned short UHALF_PTR,*PUHALF_PTR;
  typedef short HALF_PTR,*PHALF_PTR;
  typedef long SHANDLE_PTR;
  typedef unsigned long HANDLE_PTR;
# 109 "../tinyccbinary/win32/include/winapi/basetsd.h"
  static __inline void *PtrToPtr64(const void *p) { return((void *) (ULONG_PTR)p); }
  static __inline void *Ptr64ToPtr(const void *p) { return((void *) (ULONG_PTR) p); }
  static __inline void *HandleToHandle64(const void *h) { return((void *) h); }
  static __inline void *Handle64ToHandle(const void *h) { return((void *) (ULONG_PTR) h); }
# 137 "../tinyccbinary/win32/include/winapi/basetsd.h"
  typedef ULONG_PTR SIZE_T,*PSIZE_T;
  typedef LONG_PTR SSIZE_T,*PSSIZE_T;
  typedef ULONG_PTR DWORD_PTR,*PDWORD_PTR;
  typedef long long LONG64,*PLONG64;
  typedef unsigned long long ULONG64,*PULONG64;
  typedef unsigned long long DWORD64,*PDWORD64;
  typedef ULONG_PTR KAFFINITY;
  typedef KAFFINITY *PKAFFINITY;
# 81 "../tinyccbinary/win32/include/winapi/winnt.h" 2
# 140 "../tinyccbinary/win32/include/winapi/winnt.h"
  typedef void *PVOID;
  typedef void *PVOID64;







  typedef char CHAR;
  typedef short SHORT;
  typedef long LONG;


  typedef wchar_t WCHAR;
  typedef WCHAR *PWCHAR,*LPWCH,*PWCH;
  typedef const WCHAR *LPCWCH,*PCWCH;
  typedef WCHAR *NWPSTR,*LPWSTR,*PWSTR;
  typedef PWSTR *PZPWSTR;
  typedef const PWSTR *PCZPWSTR;
  typedef WCHAR  *LPUWSTR,*PUWSTR;
  typedef const WCHAR *LPCWSTR,*PCWSTR;
  typedef PCWSTR *PZPCWSTR;
  typedef const WCHAR  *LPCUWSTR,*PCUWSTR;
  typedef CHAR *PCHAR,*LPCH,*PCH;
  typedef const CHAR *LPCCH,*PCCH;
  typedef CHAR *NPSTR,*LPSTR,*PSTR;
  typedef PSTR *PZPSTR;
  typedef const PSTR *PCZPSTR;
  typedef const CHAR *LPCSTR,*PCSTR;
  typedef PCSTR *PZPCSTR;
# 189 "../tinyccbinary/win32/include/winapi/winnt.h"
  typedef char TCHAR,*PTCHAR;
  typedef unsigned char TBYTE ,*PTBYTE;


  typedef LPSTR LPTCH,PTCH;
  typedef LPSTR PTSTR,LPTSTR,PUTSTR,LPUTSTR;
  typedef LPCSTR PCTSTR,LPCTSTR,PCUTSTR,LPCUTSTR;





  typedef SHORT *PSHORT;
  typedef LONG *PLONG;

  typedef void *HANDLE;

  typedef HANDLE *PHANDLE;

  typedef BYTE FCHAR;
  typedef WORD FSHORT;
  typedef DWORD FLONG;



  typedef LONG HRESULT;
# 236 "../tinyccbinary/win32/include/winapi/winnt.h"
  typedef char CCHAR;


typedef DWORD LCID;

  typedef PDWORD PLCID;


  typedef WORD LANGID;
# 255 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct _FLOAT128 {
      long long LowPart;
      long long HighPart;
  } FLOAT128;

  typedef FLOAT128 *PFLOAT128;



  typedef long long LONGLONG;
  typedef unsigned long long ULONGLONG;
# 274 "../tinyccbinary/win32/include/winapi/winnt.h"
  typedef LONGLONG *PLONGLONG;
  typedef ULONGLONG *PULONGLONG;

  typedef LONGLONG USN;

  typedef union _LARGE_INTEGER {
    struct {
      DWORD LowPart;
      LONG HighPart;
    };
    struct {
      DWORD LowPart;
      LONG HighPart;
    } u;
    LONGLONG QuadPart;
  } LARGE_INTEGER;

  typedef LARGE_INTEGER *PLARGE_INTEGER;

  typedef union _ULARGE_INTEGER {
    struct {
      DWORD LowPart;
      DWORD HighPart;
    };
    struct {
      DWORD LowPart;
      DWORD HighPart;
    } u;
    ULONGLONG QuadPart;
  } ULARGE_INTEGER;

  typedef ULARGE_INTEGER *PULARGE_INTEGER;

  typedef struct _LUID {
    DWORD LowPart;
    LONG HighPart;
  } LUID,*PLUID;


  typedef ULONGLONG DWORDLONG;
  typedef DWORDLONG *PDWORDLONG;
# 357 "../tinyccbinary/win32/include/winapi/winnt.h"
    unsigned int  _rotl(unsigned int Value,int Shift);
    unsigned long long  _rotl64(unsigned long long Value,int Shift);
    unsigned int  _rotr(unsigned int Value,int Shift);
    unsigned long long  _rotr64(unsigned long long Value,int Shift);
# 372 "../tinyccbinary/win32/include/winapi/winnt.h"
  typedef BYTE BOOLEAN;

  typedef BOOLEAN *PBOOLEAN;

  typedef struct _LIST_ENTRY {
    struct _LIST_ENTRY *Flink;
    struct _LIST_ENTRY *Blink;
  } LIST_ENTRY,*PLIST_ENTRY,* PRLIST_ENTRY;

  typedef struct _SINGLE_LIST_ENTRY {
    struct _SINGLE_LIST_ENTRY *Next;
  } SINGLE_LIST_ENTRY,*PSINGLE_LIST_ENTRY;

  typedef struct LIST_ENTRY32 {
    DWORD Flink;
    DWORD Blink;
  } LIST_ENTRY32;
  typedef LIST_ENTRY32 *PLIST_ENTRY32;

  typedef struct LIST_ENTRY64 {
    ULONGLONG Flink;
    ULONGLONG Blink;
  } LIST_ENTRY64;
  typedef LIST_ENTRY64 *PLIST_ENTRY64;

# 1 "../tinyccbinary/win32/include/winapi/guiddef.h" 1







typedef struct _GUID {
  unsigned long Data1;
  unsigned short Data2;
  unsigned short Data3;
  unsigned char Data4[8 ];
} GUID;




typedef GUID UUID;
# 58 "../tinyccbinary/win32/include/winapi/guiddef.h"
typedef GUID *LPGUID;




typedef const GUID *LPCGUID;





typedef GUID IID;
typedef IID *LPIID;


typedef GUID CLSID;
typedef CLSID *LPCLSID;


typedef GUID FMTID;
typedef FMTID *LPFMTID;
# 127 "../tinyccbinary/win32/include/winapi/guiddef.h"
# 1 "../tinyccbinary/win32/include/string.h" 1
# 9 "../tinyccbinary/win32/include/string.h"
# 1 "../tinyccbinary/win32/include/_mingw.h" 1
# 10 "../tinyccbinary/win32/include/string.h" 2
# 32 "../tinyccbinary/win32/include/string.h"
  extern void * _memccpy(void *_Dst,const void *_Src,int _Val,size_t _MaxCount);
   void * memchr(const void *_Buf ,int _Val,size_t _MaxCount);
  extern int  _memicmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  extern int  _memicmp_l(const void *_Buf1,const void *_Buf2,size_t _Size,_locale_t _Locale);
  int  memcmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  void * memcpy(void *_Dst,const void *_Src,size_t _Size);
  void * memset(void *_Dst,int _Val,size_t _Size);

  void * memccpy(void *_Dst,const void *_Src,int _Val,size_t _Size);
  int  memicmp(const void *_Buf1,const void *_Buf2,size_t _Size);


  char * _strset(char *_Str,int _Val);
  char * strcpy(char *_Dest,const char *_Source);
  char * strcat(char *_Dest,const char *_Source);
  int  strcmp(const char *_Str1,const char *_Str2);
  size_t  strlen(const char *_Str);



  void * memmove(void *_Dst,const void *_Src,size_t _Size);
  extern char * _strdup(const char *_Src);
   char * strchr(const char *_Str,int _Val);
  extern int  _stricmp(const char *_Str1,const char *_Str2);
  extern int  _strcmpi(const char *_Str1,const char *_Str2);
  extern int  _stricmp_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  int  strcoll(const char *_Str1,const char *_Str2);
  extern int  _strcoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  extern int  _stricoll(const char *_Str1,const char *_Str2);
  extern int  _stricoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  extern int  _strncoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  extern int  _strncoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  extern int  _strnicoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  extern int  _strnicoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  size_t  strcspn(const char *_Str,const char *_Control);
  extern char * _strerror(const char *_ErrMsg);
  char * strerror(int);
  extern char * _strlwr(char *_String);
  char *strlwr_l(char *_String,_locale_t _Locale);
  char * strncat(char *_Dest,const char *_Source,size_t _Count);
  int  strncmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  extern int  _strnicmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  extern int  _strnicmp_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  char *strncpy(char *_Dest,const char *_Source,size_t _Count);
  extern char * _strnset(char *_Str,int _Val,size_t _MaxCount);
   char * strpbrk(const char *_Str,const char *_Control);
   char * strrchr(const char *_Str,int _Ch);
  extern char * _strrev(char *_Str);
  size_t  strspn(const char *_Str,const char *_Control);
   char * strstr(const char *_Str,const char *_SubStr);
  char * strtok(char *_Str,const char *_Delim);
  extern char * _strupr(char *_String);
  extern char *_strupr_l(char *_String,_locale_t _Locale);
  size_t  strxfrm(char *_Dst,const char *_Src,size_t _MaxCount);
  extern size_t  _strxfrm_l(char *_Dst,const char *_Src,size_t _MaxCount,_locale_t _Locale);


  char * strdup(const char *_Src);
  int  strcmpi(const char *_Str1,const char *_Str2);
  int  stricmp(const char *_Str1,const char *_Str2);
  char * strlwr(char *_Str);
  int  strnicmp(const char *_Str1,const char *_Str,size_t _MaxCount);
  static __inline__ int  strncasecmp (const char *__sz1, const char *__sz2, size_t __sizeMaxCompare) { return _strnicmp (__sz1, __sz2, __sizeMaxCompare); }
  static __inline__ int  strcasecmp (const char *__sz1, const char *__sz2) { return _stricmp (__sz1, __sz2); }
  char * strnset(char *_Str,int _Val,size_t _MaxCount);
  char * strrev(char *_Str);
  char * strset(char *_Str,int _Val);
  char * strupr(char *_Str);





  extern wchar_t * _wcsdup(const wchar_t *_Str);
  wchar_t * wcscat(wchar_t *_Dest,const wchar_t *_Source);
   wchar_t * wcschr(const wchar_t *_Str,wchar_t _Ch);
  int  wcscmp(const wchar_t *_Str1,const wchar_t *_Str2);
  wchar_t * wcscpy(wchar_t *_Dest,const wchar_t *_Source);
  size_t  wcscspn(const wchar_t *_Str,const wchar_t *_Control);
  size_t  wcslen(const wchar_t *_Str);
  size_t  wcsnlen(const wchar_t *_Src,size_t _MaxCount);
  wchar_t *wcsncat(wchar_t *_Dest,const wchar_t *_Source,size_t _Count);
  int  wcsncmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  wchar_t *wcsncpy(wchar_t *_Dest,const wchar_t *_Source,size_t _Count);
   wchar_t * wcspbrk(const wchar_t *_Str,const wchar_t *_Control);
   wchar_t * wcsrchr(const wchar_t *_Str,wchar_t _Ch);
  size_t  wcsspn(const wchar_t *_Str,const wchar_t *_Control);
   wchar_t * wcsstr(const wchar_t *_Str,const wchar_t *_SubStr);
  wchar_t * wcstok(wchar_t *_Str,const wchar_t *_Delim);
  extern wchar_t * _wcserror(int _ErrNum);
  extern wchar_t * __wcserror(const wchar_t *_Str);
  extern int  _wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2);
  extern int  _wcsicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  extern int  _wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  extern int  _wcsnicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  extern wchar_t * _wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount);
  extern wchar_t * _wcsrev(wchar_t *_Str);
  extern wchar_t * _wcsset(wchar_t *_Str,wchar_t _Val);
  extern wchar_t * _wcslwr(wchar_t *_String);
  extern wchar_t *_wcslwr_l(wchar_t *_String,_locale_t _Locale);
  extern wchar_t * _wcsupr(wchar_t *_String);
  extern wchar_t *_wcsupr_l(wchar_t *_String,_locale_t _Locale);
  size_t  wcsxfrm(wchar_t *_Dst,const wchar_t *_Src,size_t _MaxCount);
  extern size_t  _wcsxfrm_l(wchar_t *_Dst,const wchar_t *_Src,size_t _MaxCount,_locale_t _Locale);
  int  wcscoll(const wchar_t *_Str1,const wchar_t *_Str2);
  extern int  _wcscoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  extern int  _wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2);
  extern int  _wcsicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  extern int  _wcsncoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  extern int  _wcsncoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  extern int  _wcsnicoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  extern int  _wcsnicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);


  wchar_t * wcsdup(const wchar_t *_Str);

  int  wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2);
  int  wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  wchar_t * wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount);
  wchar_t * wcsrev(wchar_t *_Str);
  wchar_t * wcsset(wchar_t *_Str,wchar_t _Val);
  wchar_t * wcslwr(wchar_t *_Str);
  wchar_t * wcsupr(wchar_t *_Str);
  int  wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2);







# 1 "../tinyccbinary/win32/include/sec_api/string_s.h" 1
# 9 "../tinyccbinary/win32/include/sec_api/string_s.h"
# 1 "../tinyccbinary/win32/include/string.h" 1
# 10 "../tinyccbinary/win32/include/sec_api/string_s.h" 2







  extern errno_t  _strset_s(char *_Dst,size_t _DstSize,int _Value);
  extern errno_t  _strerror_s(char *_Buf,size_t _SizeInBytes,const char *_ErrMsg);
  extern errno_t  _strlwr_s(char *_Str,size_t _Size);
  extern errno_t  _strlwr_s_l(char *_Str,size_t _Size,_locale_t _Locale);
  extern errno_t  _strnset_s(char *_Str,size_t _Size,int _Val,size_t _MaxCount);
  extern errno_t  _strupr_s(char *_Str,size_t _Size);
  extern errno_t  _strupr_s_l(char *_Str,size_t _Size,_locale_t _Locale);


  extern wchar_t * wcstok_s(wchar_t *_Str,const wchar_t *_Delim,wchar_t **_Context);
  extern errno_t  _wcserror_s(wchar_t *_Buf,size_t _SizeInWords,int _ErrNum);
  extern errno_t  __wcserror_s(wchar_t *_Buffer,size_t _SizeInWords,const wchar_t *_ErrMsg);
  extern errno_t  _wcsnset_s(wchar_t *_Dst,size_t _DstSizeInWords,wchar_t _Val,size_t _MaxCount);
  extern errno_t  _wcsset_s(wchar_t *_Str,size_t _SizeInWords,wchar_t _Val);
  extern errno_t  _wcslwr_s(wchar_t *_Str,size_t _SizeInWords);
  extern errno_t  _wcslwr_s_l(wchar_t *_Str,size_t _SizeInWords,_locale_t _Locale);
  extern errno_t  _wcsupr_s(wchar_t *_Str,size_t _Size);
  extern errno_t  _wcsupr_s_l(wchar_t *_Str,size_t _Size,_locale_t _Locale);
# 164 "../tinyccbinary/win32/include/string.h" 2
# 128 "../tinyccbinary/win32/include/winapi/guiddef.h" 2
# 398 "../tinyccbinary/win32/include/winapi/winnt.h" 2



  typedef struct _OBJECTID {
    GUID Lineage;
    DWORD Uniquifier;
  } OBJECTID;
# 829 "../tinyccbinary/win32/include/winapi/winnt.h"
  typedef ULONG_PTR KSPIN_LOCK;
  typedef KSPIN_LOCK *PKSPIN_LOCK;
# 1436 "../tinyccbinary/win32/include/winapi/winnt.h"
    static __inline__ BOOLEAN InterlockedBitTestAndSet(LONG *Base,LONG Bit) {
      int old = 0;
      __asm__ __volatile__("lock ; btsl %2,%1\n\tsbbl %0,%0 "
	:"=r" (old),"=m" ((*(volatile long *) Base))
	:"Ir" (Bit));
      return (BOOLEAN) (old!=0);
    }

    static __inline__ BOOLEAN InterlockedBitTestAndReset(LONG *Base,LONG Bit) {
      int old = 0;
      __asm__ __volatile__("lock ; btrl %2,%1\n\tsbbl %0,%0 "
	:"=r" (old),"=m" ((*(volatile long *) Base))
	:"Ir" (Bit));
      return (BOOLEAN) (old!=0);
    }

    static __inline__ BOOLEAN InterlockedBitTestAndComplement(LONG *Base,LONG Bit) {
      int old = 0;
      __asm__ __volatile__("lock ; btcl %2,%1\n\tsbbl %0,%0 "
	:"=r" (old),"=m" ((*(volatile long *) Base))
	:"Ir" (Bit));
      return (BOOLEAN) (old!=0);
    }
# 1475 "../tinyccbinary/win32/include/winapi/winnt.h"
  static __inline__ void MemoryBarrier(void) {
    LONG Barrier;
    __asm__ __volatile__("xchgl %%eax,%0 "
      :"=r" (Barrier));
  }
# 1488 "../tinyccbinary/win32/include/winapi/winnt.h"
  static __inline__ void DbgRaiseAssertionFailure(void) {
    __asm__ __volatile__("int $0x2c ");
  }
  PVOID GetCurrentFiber(void);
  static __inline__ PVOID GetCurrentFiber(void)
  {
    void *ret;
    __asm__ volatile ("movl	%%fs:0x10,%0"
	: "=r" (ret));
    return ret;
  }
  PVOID GetFiberData(void);
  static __inline__ PVOID GetFiberData(void)
  {
    void *ret;
    __asm__ volatile ("movl	%%fs:0x10,%0\n"
	"movl	(%0),%0"
	: "=r" (ret));
    return ret;
  }
# 1535 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct _FLOATING_SAVE_AREA {
      DWORD ControlWord;
      DWORD StatusWord;
      DWORD TagWord;
      DWORD ErrorOffset;
      DWORD ErrorSelector;
      DWORD DataOffset;
      DWORD DataSelector;
      BYTE RegisterArea[80];
      DWORD Cr0NpxState;
    } FLOATING_SAVE_AREA;

    typedef FLOATING_SAVE_AREA *PFLOATING_SAVE_AREA;

    typedef struct _CONTEXT {
      DWORD ContextFlags;
      DWORD Dr0;
      DWORD Dr1;
      DWORD Dr2;
      DWORD Dr3;
      DWORD Dr6;
      DWORD Dr7;
      FLOATING_SAVE_AREA FloatSave;
      DWORD SegGs;
      DWORD SegFs;
      DWORD SegEs;
      DWORD SegDs;

      DWORD Edi;
      DWORD Esi;
      DWORD Ebx;
      DWORD Edx;
      DWORD Ecx;
      DWORD Eax;
      DWORD Ebp;
      DWORD Eip;
      DWORD SegCs;
      DWORD EFlags;
      DWORD Esp;
      DWORD SegSs;
      BYTE ExtendedRegisters[512];
    } CONTEXT;

    typedef CONTEXT *PCONTEXT;





    typedef struct _LDT_ENTRY {
      WORD LimitLow;
      WORD BaseLow;
      union {
	struct {
	  BYTE BaseMid;
	  BYTE Flags1;
	  BYTE Flags2;
	  BYTE BaseHi;
	} Bytes;
	struct {
	  DWORD BaseMid : 8;
	  DWORD Type : 5;
	  DWORD Dpl : 2;
	  DWORD Pres : 1;
	  DWORD LimitHi : 4;
	  DWORD Sys : 1;
	  DWORD Reserved_0 : 1;
	  DWORD Default_Big : 1;
	  DWORD Granularity : 1;
	  DWORD BaseHi : 8;
	} Bits;
      } HighWord;
    } LDT_ENTRY,*PLDT_ENTRY;
# 1935 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct _EXCEPTION_RECORD {
      DWORD ExceptionCode;
      DWORD ExceptionFlags;
      struct _EXCEPTION_RECORD *ExceptionRecord;
      PVOID ExceptionAddress;
      DWORD NumberParameters;
      ULONG_PTR ExceptionInformation[15];
    } EXCEPTION_RECORD;

    typedef EXCEPTION_RECORD *PEXCEPTION_RECORD;

    typedef struct _EXCEPTION_RECORD32 {
      DWORD ExceptionCode;
      DWORD ExceptionFlags;
      DWORD ExceptionRecord;
      DWORD ExceptionAddress;
      DWORD NumberParameters;
      DWORD ExceptionInformation[15];
    } EXCEPTION_RECORD32,*PEXCEPTION_RECORD32;

    typedef struct _EXCEPTION_RECORD64 {
      DWORD ExceptionCode;
      DWORD ExceptionFlags;
      DWORD64 ExceptionRecord;
      DWORD64 ExceptionAddress;
      DWORD NumberParameters;
      DWORD __unusedAlignment;
      DWORD64 ExceptionInformation[15];
    } EXCEPTION_RECORD64,*PEXCEPTION_RECORD64;

    typedef struct _EXCEPTION_POINTERS {
      PEXCEPTION_RECORD ExceptionRecord;
      PCONTEXT ContextRecord;
    } EXCEPTION_POINTERS,*PEXCEPTION_POINTERS;
# 2029 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef PVOID PACCESS_TOKEN;
    typedef PVOID PSECURITY_DESCRIPTOR;
    typedef PVOID PSID;

    typedef DWORD ACCESS_MASK;
    typedef ACCESS_MASK *PACCESS_MASK;
# 2059 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct _GENERIC_MAPPING {
      ACCESS_MASK GenericRead;
      ACCESS_MASK GenericWrite;
      ACCESS_MASK GenericExecute;
      ACCESS_MASK GenericAll;
    } GENERIC_MAPPING;
    typedef GENERIC_MAPPING *PGENERIC_MAPPING;

# 1 "../tinyccbinary/win32/include/winapi/pshpack4.h" 1






#pragma pack(push,4)
# 2068 "../tinyccbinary/win32/include/winapi/winnt.h" 2

    typedef struct _LUID_AND_ATTRIBUTES {
      LUID Luid;
      DWORD Attributes;
    } LUID_AND_ATTRIBUTES,*PLUID_AND_ATTRIBUTES;
    typedef LUID_AND_ATTRIBUTES LUID_AND_ATTRIBUTES_ARRAY[1];
    typedef LUID_AND_ATTRIBUTES_ARRAY *PLUID_AND_ATTRIBUTES_ARRAY;

# 1 "../tinyccbinary/win32/include/winapi/poppack.h" 1






#pragma pack(pop)
# 2077 "../tinyccbinary/win32/include/winapi/winnt.h" 2



    typedef struct _SID_IDENTIFIER_AUTHORITY {
      BYTE Value[6];
    } SID_IDENTIFIER_AUTHORITY,*PSID_IDENTIFIER_AUTHORITY;




    typedef struct _SID {
      BYTE Revision;
      BYTE SubAuthorityCount;
      SID_IDENTIFIER_AUTHORITY IdentifierAuthority;
      DWORD SubAuthority[1];
    } SID,*PISID;
# 2101 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef enum _SID_NAME_USE {
      SidTypeUser = 1,SidTypeGroup,SidTypeDomain,SidTypeAlias,SidTypeWellKnownGroup,SidTypeDeletedAccount,SidTypeInvalid,SidTypeUnknown,SidTypeComputer
    } SID_NAME_USE,*PSID_NAME_USE;

    typedef struct _SID_AND_ATTRIBUTES {
      PSID Sid;
      DWORD Attributes;
    } SID_AND_ATTRIBUTES,*PSID_AND_ATTRIBUTES;

    typedef SID_AND_ATTRIBUTES SID_AND_ATTRIBUTES_ARRAY[1];
    typedef SID_AND_ATTRIBUTES_ARRAY *PSID_AND_ATTRIBUTES_ARRAY;
# 2239 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef enum {
      WinNullSid = 0,WinWorldSid = 1,WinLocalSid = 2,WinCreatorOwnerSid = 3,WinCreatorGroupSid = 4,WinCreatorOwnerServerSid = 5,WinCreatorGroupServerSid = 6,WinNtAuthoritySid = 7,WinDialupSid = 8,WinNetworkSid = 9,WinBatchSid = 10,WinInteractiveSid = 11,WinServiceSid = 12,WinAnonymousSid = 13,WinProxySid = 14,WinEnterpriseControllersSid = 15,WinSelfSid = 16,WinAuthenticatedUserSid = 17,WinRestrictedCodeSid = 18,WinTerminalServerSid = 19,WinRemoteLogonIdSid = 20,WinLogonIdsSid = 21,WinLocalSystemSid = 22,WinLocalServiceSid = 23,WinNetworkServiceSid = 24,WinBuiltinDomainSid = 25,WinBuiltinAdministratorsSid = 26,WinBuiltinUsersSid = 27,WinBuiltinGuestsSid = 28,WinBuiltinPowerUsersSid = 29,WinBuiltinAccountOperatorsSid = 30,WinBuiltinSystemOperatorsSid = 31,WinBuiltinPrintOperatorsSid = 32,WinBuiltinBackupOperatorsSid = 33,WinBuiltinReplicatorSid = 34,WinBuiltinPreWindows2000CompatibleAccessSid = 35,WinBuiltinRemoteDesktopUsersSid = 36,WinBuiltinNetworkConfigurationOperatorsSid = 37,WinAccountAdministratorSid = 38,WinAccountGuestSid = 39,WinAccountKrbtgtSid = 40,WinAccountDomainAdminsSid = 41,WinAccountDomainUsersSid = 42,WinAccountDomainGuestsSid = 43,WinAccountComputersSid = 44,WinAccountControllersSid = 45,WinAccountCertAdminsSid = 46,WinAccountSchemaAdminsSid = 47,WinAccountEnterpriseAdminsSid = 48,WinAccountPolicyAdminsSid = 49,WinAccountRasAndIasServersSid = 50,WinNTLMAuthenticationSid = 51,WinDigestAuthenticationSid = 52,WinSChannelAuthenticationSid = 53,WinThisOrganizationSid = 54,WinOtherOrganizationSid = 55,WinBuiltinIncomingForestTrustBuildersSid = 56,WinBuiltinPerfMonitoringUsersSid = 57,WinBuiltinPerfLoggingUsersSid = 58,WinBuiltinAuthorizationAccessSid = 59,WinBuiltinTerminalServerLicenseServersSid = 60,WinBuiltinDCOMUsersSid = 61
    } WELL_KNOWN_SID_TYPE;
# 2269 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct _ACL {
      BYTE AclRevision;
      BYTE Sbz1;
      WORD AclSize;
      WORD AceCount;
      WORD Sbz2;
    } ACL;
    typedef ACL *PACL;

    typedef struct _ACE_HEADER {
      BYTE AceType;
      BYTE AceFlags;
      WORD AceSize;
    } ACE_HEADER;
    typedef ACE_HEADER *PACE_HEADER;
# 2327 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct _ACCESS_ALLOWED_ACE {
      ACE_HEADER Header;
      ACCESS_MASK Mask;
      DWORD SidStart;
    } ACCESS_ALLOWED_ACE;

    typedef ACCESS_ALLOWED_ACE *PACCESS_ALLOWED_ACE;

    typedef struct _ACCESS_DENIED_ACE {
      ACE_HEADER Header;
      ACCESS_MASK Mask;
      DWORD SidStart;
    } ACCESS_DENIED_ACE;
    typedef ACCESS_DENIED_ACE *PACCESS_DENIED_ACE;

    typedef struct _SYSTEM_AUDIT_ACE {
      ACE_HEADER Header;
      ACCESS_MASK Mask;
      DWORD SidStart;
    } SYSTEM_AUDIT_ACE;
    typedef SYSTEM_AUDIT_ACE *PSYSTEM_AUDIT_ACE;

    typedef struct _SYSTEM_ALARM_ACE {
      ACE_HEADER Header;
      ACCESS_MASK Mask;
      DWORD SidStart;
    } SYSTEM_ALARM_ACE;
    typedef SYSTEM_ALARM_ACE *PSYSTEM_ALARM_ACE;

    typedef struct _ACCESS_ALLOWED_OBJECT_ACE {
      ACE_HEADER Header;
      ACCESS_MASK Mask;
      DWORD Flags;
      GUID ObjectType;
      GUID InheritedObjectType;
      DWORD SidStart;
    } ACCESS_ALLOWED_OBJECT_ACE,*PACCESS_ALLOWED_OBJECT_ACE;

    typedef struct _ACCESS_DENIED_OBJECT_ACE {
      ACE_HEADER Header;
      ACCESS_MASK Mask;
      DWORD Flags;
      GUID ObjectType;
      GUID InheritedObjectType;
      DWORD SidStart;
    } ACCESS_DENIED_OBJECT_ACE,*PACCESS_DENIED_OBJECT_ACE;

    typedef struct _SYSTEM_AUDIT_OBJECT_ACE {
      ACE_HEADER Header;
      ACCESS_MASK Mask;
      DWORD Flags;
      GUID ObjectType;
      GUID InheritedObjectType;
      DWORD SidStart;
    } SYSTEM_AUDIT_OBJECT_ACE,*PSYSTEM_AUDIT_OBJECT_ACE;

    typedef struct _SYSTEM_ALARM_OBJECT_ACE {
      ACE_HEADER Header;
      ACCESS_MASK Mask;
      DWORD Flags;
      GUID ObjectType;
      GUID InheritedObjectType;
      DWORD SidStart;
    } SYSTEM_ALARM_OBJECT_ACE,*PSYSTEM_ALARM_OBJECT_ACE;

    typedef struct _ACCESS_ALLOWED_CALLBACK_ACE {
      ACE_HEADER Header;
      ACCESS_MASK Mask;
      DWORD SidStart;

    } ACCESS_ALLOWED_CALLBACK_ACE,*PACCESS_ALLOWED_CALLBACK_ACE;

    typedef struct _ACCESS_DENIED_CALLBACK_ACE {
      ACE_HEADER Header;
      ACCESS_MASK Mask;
      DWORD SidStart;

    } ACCESS_DENIED_CALLBACK_ACE,*PACCESS_DENIED_CALLBACK_ACE;

    typedef struct _SYSTEM_AUDIT_CALLBACK_ACE {
      ACE_HEADER Header;
      ACCESS_MASK Mask;
      DWORD SidStart;

    } SYSTEM_AUDIT_CALLBACK_ACE,*PSYSTEM_AUDIT_CALLBACK_ACE;

    typedef struct _SYSTEM_ALARM_CALLBACK_ACE {
      ACE_HEADER Header;
      ACCESS_MASK Mask;
      DWORD SidStart;

    } SYSTEM_ALARM_CALLBACK_ACE,*PSYSTEM_ALARM_CALLBACK_ACE;

    typedef struct _ACCESS_ALLOWED_CALLBACK_OBJECT_ACE {
      ACE_HEADER Header;
      ACCESS_MASK Mask;
      DWORD Flags;
      GUID ObjectType;
      GUID InheritedObjectType;
      DWORD SidStart;

    } ACCESS_ALLOWED_CALLBACK_OBJECT_ACE,*PACCESS_ALLOWED_CALLBACK_OBJECT_ACE;

    typedef struct _ACCESS_DENIED_CALLBACK_OBJECT_ACE {
      ACE_HEADER Header;
      ACCESS_MASK Mask;
      DWORD Flags;
      GUID ObjectType;
      GUID InheritedObjectType;
      DWORD SidStart;

    } ACCESS_DENIED_CALLBACK_OBJECT_ACE,*PACCESS_DENIED_CALLBACK_OBJECT_ACE;

    typedef struct _SYSTEM_AUDIT_CALLBACK_OBJECT_ACE {
      ACE_HEADER Header;
      ACCESS_MASK Mask;
      DWORD Flags;
      GUID ObjectType;
      GUID InheritedObjectType;
      DWORD SidStart;

    } SYSTEM_AUDIT_CALLBACK_OBJECT_ACE,*PSYSTEM_AUDIT_CALLBACK_OBJECT_ACE;

    typedef struct _SYSTEM_ALARM_CALLBACK_OBJECT_ACE {
      ACE_HEADER Header;
      ACCESS_MASK Mask;
      DWORD Flags;
      GUID ObjectType;
      GUID InheritedObjectType;
      DWORD SidStart;

    } SYSTEM_ALARM_CALLBACK_OBJECT_ACE,*PSYSTEM_ALARM_CALLBACK_OBJECT_ACE;




    typedef enum _ACL_INFORMATION_CLASS {
      AclRevisionInformation = 1,AclSizeInformation
    } ACL_INFORMATION_CLASS;

    typedef struct _ACL_REVISION_INFORMATION {
      DWORD AclRevision;
    } ACL_REVISION_INFORMATION;
    typedef ACL_REVISION_INFORMATION *PACL_REVISION_INFORMATION;

    typedef struct _ACL_SIZE_INFORMATION {
      DWORD AceCount;
      DWORD AclBytesInUse;
      DWORD AclBytesFree;
    } ACL_SIZE_INFORMATION;
    typedef ACL_SIZE_INFORMATION *PACL_SIZE_INFORMATION;






    typedef WORD SECURITY_DESCRIPTOR_CONTROL,*PSECURITY_DESCRIPTOR_CONTROL;
# 2501 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct _SECURITY_DESCRIPTOR_RELATIVE {
      BYTE Revision;
      BYTE Sbz1;
      SECURITY_DESCRIPTOR_CONTROL Control;
      DWORD Owner;
      DWORD Group;
      DWORD Sacl;
      DWORD Dacl;
    } SECURITY_DESCRIPTOR_RELATIVE,*PISECURITY_DESCRIPTOR_RELATIVE;

    typedef struct _SECURITY_DESCRIPTOR {
      BYTE Revision;
      BYTE Sbz1;
      SECURITY_DESCRIPTOR_CONTROL Control;
      PSID Owner;
      PSID Group;
      PACL Sacl;
      PACL Dacl;

    } SECURITY_DESCRIPTOR,*PISECURITY_DESCRIPTOR;

    typedef struct _OBJECT_TYPE_LIST {
      WORD Level;
      WORD Sbz;
      GUID *ObjectType;
    } OBJECT_TYPE_LIST,*POBJECT_TYPE_LIST;







    typedef enum _AUDIT_EVENT_TYPE {
      AuditEventObjectAccess,AuditEventDirectoryServiceAccess
    } AUDIT_EVENT_TYPE,*PAUDIT_EVENT_TYPE;
# 2552 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct _PRIVILEGE_SET {
      DWORD PrivilegeCount;
      DWORD Control;
      LUID_AND_ATTRIBUTES Privilege[1];
    } PRIVILEGE_SET,*PPRIVILEGE_SET;
# 2589 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef enum _SECURITY_IMPERSONATION_LEVEL {
      SecurityAnonymous,SecurityIdentification,SecurityImpersonation,SecurityDelegation
    } SECURITY_IMPERSONATION_LEVEL,*PSECURITY_IMPERSONATION_LEVEL;
# 2616 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef enum _TOKEN_TYPE {
      TokenPrimary = 1,TokenImpersonation
    } TOKEN_TYPE;
    typedef TOKEN_TYPE *PTOKEN_TYPE;

    typedef enum _TOKEN_INFORMATION_CLASS {
      TokenUser = 1,TokenGroups,TokenPrivileges,TokenOwner,TokenPrimaryGroup,TokenDefaultDacl,TokenSource,TokenType,TokenImpersonationLevel,
      TokenStatistics,TokenRestrictedSids,TokenSessionId,TokenGroupsAndPrivileges,TokenSessionReference,TokenSandBoxInert,TokenAuditPolicy,
      TokenOrigin,MaxTokenInfoClass
    } TOKEN_INFORMATION_CLASS,*PTOKEN_INFORMATION_CLASS;

    typedef struct _TOKEN_USER {
      SID_AND_ATTRIBUTES User;
    } TOKEN_USER,*PTOKEN_USER;

    typedef struct _TOKEN_GROUPS {
      DWORD GroupCount;
      SID_AND_ATTRIBUTES Groups[1];
    } TOKEN_GROUPS,*PTOKEN_GROUPS;

    typedef struct _TOKEN_PRIVILEGES {
      DWORD PrivilegeCount;
      LUID_AND_ATTRIBUTES Privileges[1];
    } TOKEN_PRIVILEGES,*PTOKEN_PRIVILEGES;

    typedef struct _TOKEN_OWNER {
      PSID Owner;
    } TOKEN_OWNER,*PTOKEN_OWNER;

    typedef struct _TOKEN_PRIMARY_GROUP {
      PSID PrimaryGroup;
    } TOKEN_PRIMARY_GROUP,*PTOKEN_PRIMARY_GROUP;

    typedef struct _TOKEN_DEFAULT_DACL {
      PACL DefaultDacl;
    } TOKEN_DEFAULT_DACL,*PTOKEN_DEFAULT_DACL;

    typedef struct _TOKEN_GROUPS_AND_PRIVILEGES {
      DWORD SidCount;
      DWORD SidLength;
      PSID_AND_ATTRIBUTES Sids;
      DWORD RestrictedSidCount;
      DWORD RestrictedSidLength;
      PSID_AND_ATTRIBUTES RestrictedSids;
      DWORD PrivilegeCount;
      DWORD PrivilegeLength;
      PLUID_AND_ATTRIBUTES Privileges;
      LUID AuthenticationId;
    } TOKEN_GROUPS_AND_PRIVILEGES,*PTOKEN_GROUPS_AND_PRIVILEGES;
# 2674 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct _TOKEN_AUDIT_POLICY_ELEMENT {
      DWORD Category;
      DWORD PolicyMask;
    } TOKEN_AUDIT_POLICY_ELEMENT,*PTOKEN_AUDIT_POLICY_ELEMENT;

    typedef struct _TOKEN_AUDIT_POLICY {
      DWORD PolicyCount;
      TOKEN_AUDIT_POLICY_ELEMENT Policy[1];
    } TOKEN_AUDIT_POLICY,*PTOKEN_AUDIT_POLICY;






    typedef struct _TOKEN_SOURCE {
      CHAR SourceName[8];
      LUID SourceIdentifier;
    } TOKEN_SOURCE,*PTOKEN_SOURCE;

    typedef struct _TOKEN_STATISTICS {
      LUID TokenId;
      LUID AuthenticationId;
      LARGE_INTEGER ExpirationTime;
      TOKEN_TYPE TokenType;
      SECURITY_IMPERSONATION_LEVEL ImpersonationLevel;
      DWORD DynamicCharged;
      DWORD DynamicAvailable;
      DWORD GroupCount;
      DWORD PrivilegeCount;
      LUID ModifiedId;
    } TOKEN_STATISTICS,*PTOKEN_STATISTICS;

    typedef struct _TOKEN_CONTROL {
      LUID TokenId;
      LUID AuthenticationId;
      LUID ModifiedId;
      TOKEN_SOURCE TokenSource;
    } TOKEN_CONTROL,*PTOKEN_CONTROL;

    typedef struct _TOKEN_ORIGIN {
      LUID OriginatingLogonSession;
    } TOKEN_ORIGIN,*PTOKEN_ORIGIN;




    typedef BOOLEAN SECURITY_CONTEXT_TRACKING_MODE,*PSECURITY_CONTEXT_TRACKING_MODE;

    typedef struct _SECURITY_QUALITY_OF_SERVICE {
      DWORD Length;
      SECURITY_IMPERSONATION_LEVEL ImpersonationLevel;
      SECURITY_CONTEXT_TRACKING_MODE ContextTrackingMode;
      BOOLEAN EffectiveOnly;
    } SECURITY_QUALITY_OF_SERVICE,*PSECURITY_QUALITY_OF_SERVICE;

    typedef struct _SE_IMPERSONATION_STATE {
      PACCESS_TOKEN Token;
      BOOLEAN CopyOnOpen;
      BOOLEAN EffectiveOnly;
      SECURITY_IMPERSONATION_LEVEL Level;
    } SE_IMPERSONATION_STATE,*PSE_IMPERSONATION_STATE;




    typedef DWORD SECURITY_INFORMATION,*PSECURITY_INFORMATION;
# 2791 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct _JOB_SET_ARRAY {
      HANDLE JobHandle;
      DWORD MemberLevel;
      DWORD Flags;
    } JOB_SET_ARRAY,*PJOB_SET_ARRAY;






    typedef struct _NT_TIB {
      struct _EXCEPTION_REGISTRATION_RECORD *ExceptionList;
      PVOID StackBase;
      PVOID StackLimit;
      PVOID SubSystemTib;
      union {
	PVOID FiberData;
	DWORD Version;
      };
      PVOID ArbitraryUserPointer;
      struct _NT_TIB *Self;
    } NT_TIB;
    typedef NT_TIB *PNT_TIB;


    typedef struct _NT_TIB32 {
      DWORD ExceptionList;
      DWORD StackBase;
      DWORD StackLimit;
      DWORD SubSystemTib;
      union {
	DWORD FiberData;
	DWORD Version;
      };
      DWORD ArbitraryUserPointer;
      DWORD Self;
    } NT_TIB32,*PNT_TIB32;

    typedef struct _NT_TIB64 {
      DWORD64 ExceptionList;
      DWORD64 StackBase;
      DWORD64 StackLimit;
      DWORD64 SubSystemTib;
      union {
	DWORD64 FiberData;
	DWORD Version;
      };
      DWORD64 ArbitraryUserPointer;
      DWORD64 Self;
    } NT_TIB64,*PNT_TIB64;
# 2852 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct _QUOTA_LIMITS {
      SIZE_T PagedPoolLimit;
      SIZE_T NonPagedPoolLimit;
      SIZE_T MinimumWorkingSetSize;
      SIZE_T MaximumWorkingSetSize;
      SIZE_T PagefileLimit;
      LARGE_INTEGER TimeLimit;
    } QUOTA_LIMITS,*PQUOTA_LIMITS;






    typedef struct _QUOTA_LIMITS_EX {
      SIZE_T PagedPoolLimit;
      SIZE_T NonPagedPoolLimit;
      SIZE_T MinimumWorkingSetSize;
      SIZE_T MaximumWorkingSetSize;
      SIZE_T PagefileLimit;
      LARGE_INTEGER TimeLimit;
      SIZE_T Reserved1;
      SIZE_T Reserved2;
      SIZE_T Reserved3;
      SIZE_T Reserved4;
      DWORD Flags;
      DWORD Reserved5;
    } QUOTA_LIMITS_EX,*PQUOTA_LIMITS_EX;

    typedef struct _IO_COUNTERS {
      ULONGLONG ReadOperationCount;
      ULONGLONG WriteOperationCount;
      ULONGLONG OtherOperationCount;
      ULONGLONG ReadTransferCount;
      ULONGLONG WriteTransferCount;
      ULONGLONG OtherTransferCount;
    } IO_COUNTERS;
    typedef IO_COUNTERS *PIO_COUNTERS;

    typedef struct _JOBOBJECT_BASIC_ACCOUNTING_INFORMATION {
      LARGE_INTEGER TotalUserTime;
      LARGE_INTEGER TotalKernelTime;
      LARGE_INTEGER ThisPeriodTotalUserTime;
      LARGE_INTEGER ThisPeriodTotalKernelTime;
      DWORD TotalPageFaultCount;
      DWORD TotalProcesses;
      DWORD ActiveProcesses;
      DWORD TotalTerminatedProcesses;
    } JOBOBJECT_BASIC_ACCOUNTING_INFORMATION,*PJOBOBJECT_BASIC_ACCOUNTING_INFORMATION;

    typedef struct _JOBOBJECT_BASIC_LIMIT_INFORMATION {
      LARGE_INTEGER PerProcessUserTimeLimit;
      LARGE_INTEGER PerJobUserTimeLimit;
      DWORD LimitFlags;
      SIZE_T MinimumWorkingSetSize;
      SIZE_T MaximumWorkingSetSize;
      DWORD ActiveProcessLimit;
      ULONG_PTR Affinity;
      DWORD PriorityClass;
      DWORD SchedulingClass;
    } JOBOBJECT_BASIC_LIMIT_INFORMATION,*PJOBOBJECT_BASIC_LIMIT_INFORMATION;

    typedef struct _JOBOBJECT_EXTENDED_LIMIT_INFORMATION {
      JOBOBJECT_BASIC_LIMIT_INFORMATION BasicLimitInformation;
      IO_COUNTERS IoInfo;
      SIZE_T ProcessMemoryLimit;
      SIZE_T JobMemoryLimit;
      SIZE_T PeakProcessMemoryUsed;
      SIZE_T PeakJobMemoryUsed;
    } JOBOBJECT_EXTENDED_LIMIT_INFORMATION,*PJOBOBJECT_EXTENDED_LIMIT_INFORMATION;

    typedef struct _JOBOBJECT_BASIC_PROCESS_ID_LIST {
      DWORD NumberOfAssignedProcesses;
      DWORD NumberOfProcessIdsInList;
      ULONG_PTR ProcessIdList[1];
    } JOBOBJECT_BASIC_PROCESS_ID_LIST,*PJOBOBJECT_BASIC_PROCESS_ID_LIST;

    typedef struct _JOBOBJECT_BASIC_UI_RESTRICTIONS {
      DWORD UIRestrictionsClass;
    } JOBOBJECT_BASIC_UI_RESTRICTIONS,*PJOBOBJECT_BASIC_UI_RESTRICTIONS;

    typedef struct _JOBOBJECT_SECURITY_LIMIT_INFORMATION {
      DWORD SecurityLimitFlags;
      HANDLE JobToken;
      PTOKEN_GROUPS SidsToDisable;
      PTOKEN_PRIVILEGES PrivilegesToDelete;
      PTOKEN_GROUPS RestrictedSids;
    } JOBOBJECT_SECURITY_LIMIT_INFORMATION,*PJOBOBJECT_SECURITY_LIMIT_INFORMATION;

    typedef struct _JOBOBJECT_END_OF_JOB_TIME_INFORMATION {
      DWORD EndOfJobTimeAction;
    } JOBOBJECT_END_OF_JOB_TIME_INFORMATION,*PJOBOBJECT_END_OF_JOB_TIME_INFORMATION;

    typedef struct _JOBOBJECT_ASSOCIATE_COMPLETION_PORT {
      PVOID CompletionKey;
      HANDLE CompletionPort;
    } JOBOBJECT_ASSOCIATE_COMPLETION_PORT,*PJOBOBJECT_ASSOCIATE_COMPLETION_PORT;

    typedef struct _JOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION {
      JOBOBJECT_BASIC_ACCOUNTING_INFORMATION BasicInfo;
      IO_COUNTERS IoInfo;
    } JOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION,*PJOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION;

    typedef struct _JOBOBJECT_JOBSET_INFORMATION {
      DWORD MemberLevel;
    } JOBOBJECT_JOBSET_INFORMATION,*PJOBOBJECT_JOBSET_INFORMATION;
# 3022 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef enum _JOBOBJECTINFOCLASS {
      JobObjectBasicAccountingInformation = 1,JobObjectBasicLimitInformation,JobObjectBasicProcessIdList,JobObjectBasicUIRestrictions,
      JobObjectSecurityLimitInformation,JobObjectEndOfJobTimeInformation,JobObjectAssociateCompletionPortInformation,
      JobObjectBasicAndIoAccountingInformation,JobObjectExtendedLimitInformation,JobObjectJobSetInformation,MaxJobObjectInfoClass
    } JOBOBJECTINFOCLASS;
# 3046 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef enum _LOGICAL_PROCESSOR_RELATIONSHIP {
      RelationProcessorCore,RelationNumaNode,RelationCache
    } LOGICAL_PROCESSOR_RELATIONSHIP;



    typedef enum _PROCESSOR_CACHE_TYPE {
      CacheUnified,CacheInstruction,CacheData,CacheTrace
    } PROCESSOR_CACHE_TYPE;



    typedef struct _CACHE_DESCRIPTOR {
      BYTE Level;
      BYTE Associativity;
      WORD LineSize;
      DWORD Size;
      PROCESSOR_CACHE_TYPE Type;
    } CACHE_DESCRIPTOR,*PCACHE_DESCRIPTOR;

    typedef struct _SYSTEM_LOGICAL_PROCESSOR_INFORMATION {
      ULONG_PTR ProcessorMask;
      LOGICAL_PROCESSOR_RELATIONSHIP Relationship;
      union {
	struct {
	  BYTE Flags;
	} ProcessorCore;
	struct {
	  DWORD NodeNumber;
	} NumaNode;
	CACHE_DESCRIPTOR Cache;
	ULONGLONG Reserved[2];
      };
    } SYSTEM_LOGICAL_PROCESSOR_INFORMATION,*PSYSTEM_LOGICAL_PROCESSOR_INFORMATION;
# 3133 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct _MEMORY_BASIC_INFORMATION {
      PVOID BaseAddress;
      PVOID AllocationBase;
      DWORD AllocationProtect;
      SIZE_T RegionSize;
      DWORD State;
      DWORD Protect;
      DWORD Type;
    } MEMORY_BASIC_INFORMATION,*PMEMORY_BASIC_INFORMATION;

    typedef struct _MEMORY_BASIC_INFORMATION32 {
      DWORD BaseAddress;
      DWORD AllocationBase;
      DWORD AllocationProtect;
      DWORD RegionSize;
      DWORD State;
      DWORD Protect;
      DWORD Type;
    } MEMORY_BASIC_INFORMATION32,*PMEMORY_BASIC_INFORMATION32;

    typedef struct __attribute__((aligned(16))) _MEMORY_BASIC_INFORMATION64 {
      ULONGLONG BaseAddress;
      ULONGLONG AllocationBase;
      DWORD AllocationProtect;
      DWORD __alignment1;
      ULONGLONG RegionSize;
      DWORD State;
      DWORD Protect;
      DWORD Type;
      DWORD __alignment2;
    } MEMORY_BASIC_INFORMATION64,*PMEMORY_BASIC_INFORMATION64;
# 3281 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct _FILE_NOTIFY_INFORMATION {
      DWORD NextEntryOffset;
      DWORD Action;
      DWORD FileNameLength;
      WCHAR FileName[1];
    } FILE_NOTIFY_INFORMATION,*PFILE_NOTIFY_INFORMATION;

    typedef union _FILE_SEGMENT_ELEMENT {
      PVOID64 Buffer;
      ULONGLONG Alignment;
    }FILE_SEGMENT_ELEMENT,*PFILE_SEGMENT_ELEMENT;

    typedef struct _REPARSE_GUID_DATA_BUFFER {
      DWORD ReparseTag;
      WORD ReparseDataLength;
      WORD Reserved;
      GUID ReparseGuid;
      struct {
	BYTE DataBuffer[1];
      } GenericReparseBuffer;
    } REPARSE_GUID_DATA_BUFFER,*PREPARSE_GUID_DATA_BUFFER;
# 3325 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef enum _SYSTEM_POWER_STATE {
      PowerSystemUnspecified = 0,PowerSystemWorking = 1,PowerSystemSleeping1 = 2,PowerSystemSleeping2 = 3,PowerSystemSleeping3 = 4,PowerSystemHibernate = 5,PowerSystemShutdown = 6,PowerSystemMaximum = 7
    } SYSTEM_POWER_STATE,*PSYSTEM_POWER_STATE;



    typedef enum {
      PowerActionNone = 0,PowerActionReserved,PowerActionSleep,PowerActionHibernate,PowerActionShutdown,PowerActionShutdownReset,PowerActionShutdownOff,PowerActionWarmEject
    } POWER_ACTION,*PPOWER_ACTION;

    typedef enum _DEVICE_POWER_STATE {
      PowerDeviceUnspecified = 0,PowerDeviceD0,PowerDeviceD1,PowerDeviceD2,PowerDeviceD3,PowerDeviceMaximum
    } DEVICE_POWER_STATE,*PDEVICE_POWER_STATE;






    typedef DWORD EXECUTION_STATE;

    typedef enum {
      LT_DONT_CARE,LT_LOWEST_LATENCY
    } LATENCY_TIME;
# 3360 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct CM_Power_Data_s {
      DWORD PD_Size;
      DEVICE_POWER_STATE PD_MostRecentPowerState;
      DWORD PD_Capabilities;
      DWORD PD_D1Latency;
      DWORD PD_D2Latency;
      DWORD PD_D3Latency;
      DEVICE_POWER_STATE PD_PowerStateMapping[7];
      SYSTEM_POWER_STATE PD_DeepestSystemWake;
    } CM_POWER_DATA,*PCM_POWER_DATA;

    typedef enum {
      SystemPowerPolicyAc,SystemPowerPolicyDc,VerifySystemPolicyAc,VerifySystemPolicyDc,SystemPowerCapabilities,SystemBatteryState,SystemPowerStateHandler,ProcessorStateHandler,SystemPowerPolicyCurrent,AdministratorPowerPolicy,SystemReserveHiberFile,ProcessorInformation,SystemPowerInformation,ProcessorStateHandler2,LastWakeTime,LastSleepTime,SystemExecutionState,SystemPowerStateNotifyHandler,ProcessorPowerPolicyAc,ProcessorPowerPolicyDc,VerifyProcessorPowerPolicyAc,VerifyProcessorPowerPolicyDc,ProcessorPowerPolicyCurrent,SystemPowerStateLogging,SystemPowerLoggingEntry
    } POWER_INFORMATION_LEVEL;

    typedef struct {
      DWORD Granularity;
      DWORD Capacity;
    } BATTERY_REPORTING_SCALE,*PBATTERY_REPORTING_SCALE;

    typedef struct {
      POWER_ACTION Action;
      DWORD Flags;
      DWORD EventCode;
    } POWER_ACTION_POLICY,*PPOWER_ACTION_POLICY;
# 3401 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct {
      BOOLEAN Enable;
      BYTE Spare[3];
      DWORD BatteryLevel;
      POWER_ACTION_POLICY PowerPolicy;
      SYSTEM_POWER_STATE MinSystemState;
    } SYSTEM_POWER_LEVEL,*PSYSTEM_POWER_LEVEL;
# 3419 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct _SYSTEM_POWER_POLICY {
      DWORD Revision;
      POWER_ACTION_POLICY PowerButton;
      POWER_ACTION_POLICY SleepButton;
      POWER_ACTION_POLICY LidClose;
      SYSTEM_POWER_STATE LidOpenWake;
      DWORD Reserved;
      POWER_ACTION_POLICY Idle;
      DWORD IdleTimeout;
      BYTE IdleSensitivity;
      BYTE DynamicThrottle;
      BYTE Spare2[2];
      SYSTEM_POWER_STATE MinSleep;
      SYSTEM_POWER_STATE MaxSleep;
      SYSTEM_POWER_STATE ReducedLatencySleep;
      DWORD WinLogonFlags;
      DWORD Spare3;
      DWORD DozeS4Timeout;
      DWORD BroadcastCapacityResolution;
      SYSTEM_POWER_LEVEL DischargePolicy[4];
      DWORD VideoTimeout;
      BOOLEAN VideoDimDisplay;
      DWORD VideoReserved[3];
      DWORD SpindownTimeout;
      BOOLEAN OptimizeForPower;
      BYTE FanThrottleTolerance;
      BYTE ForcedThrottle;
      BYTE MinThrottle;
      POWER_ACTION_POLICY OverThrottled;
    } SYSTEM_POWER_POLICY,*PSYSTEM_POWER_POLICY;

    typedef struct _PROCESSOR_POWER_POLICY_INFO {
      DWORD TimeCheck;
      DWORD DemoteLimit;
      DWORD PromoteLimit;
      BYTE DemotePercent;
      BYTE PromotePercent;
      BYTE Spare[2];
      DWORD AllowDemotion:1;
      DWORD AllowPromotion:1;
      DWORD Reserved:30;
    } PROCESSOR_POWER_POLICY_INFO,*PPROCESSOR_POWER_POLICY_INFO;

    typedef struct _PROCESSOR_POWER_POLICY {
      DWORD Revision;
      BYTE DynamicThrottle;
      BYTE Spare[3];
      DWORD DisableCStates:1;
      DWORD Reserved:31;
      DWORD PolicyCount;
      PROCESSOR_POWER_POLICY_INFO Policy[3];
    } PROCESSOR_POWER_POLICY,*PPROCESSOR_POWER_POLICY;

    typedef struct _ADMINISTRATOR_POWER_POLICY {
      SYSTEM_POWER_STATE MinSleep;
      SYSTEM_POWER_STATE MaxSleep;
      DWORD MinVideoTimeout;
      DWORD MaxVideoTimeout;
      DWORD MinSpindownTimeout;
      DWORD MaxSpindownTimeout;
    } ADMINISTRATOR_POWER_POLICY,*PADMINISTRATOR_POWER_POLICY;

    typedef struct {
      BOOLEAN PowerButtonPresent;
      BOOLEAN SleepButtonPresent;
      BOOLEAN LidPresent;
      BOOLEAN SystemS1;
      BOOLEAN SystemS2;
      BOOLEAN SystemS3;
      BOOLEAN SystemS4;
      BOOLEAN SystemS5;
      BOOLEAN HiberFilePresent;
      BOOLEAN FullWake;
      BOOLEAN VideoDimPresent;
      BOOLEAN ApmPresent;
      BOOLEAN UpsPresent;
      BOOLEAN ThermalControl;
      BOOLEAN ProcessorThrottle;
      BYTE ProcessorMinThrottle;
      BYTE ProcessorMaxThrottle;
      BYTE spare2[4];
      BOOLEAN DiskSpinDown;
      BYTE spare3[8];
      BOOLEAN SystemBatteriesPresent;
      BOOLEAN BatteriesAreShortTerm;
      BATTERY_REPORTING_SCALE BatteryScale[3];
      SYSTEM_POWER_STATE AcOnLineWake;
      SYSTEM_POWER_STATE SoftLidWake;
      SYSTEM_POWER_STATE RtcWake;
      SYSTEM_POWER_STATE MinDeviceWakeState;
      SYSTEM_POWER_STATE DefaultLowLatencyWake;
    } SYSTEM_POWER_CAPABILITIES,*PSYSTEM_POWER_CAPABILITIES;

    typedef struct {
      BOOLEAN AcOnLine;
      BOOLEAN BatteryPresent;
      BOOLEAN Charging;
      BOOLEAN Discharging;
      BOOLEAN Spare1[4];
      DWORD MaxCapacity;
      DWORD RemainingCapacity;
      DWORD Rate;
      DWORD EstimatedTime;
      DWORD DefaultAlert1;
      DWORD DefaultAlert2;
    } SYSTEM_BATTERY_STATE,*PSYSTEM_BATTERY_STATE;

# 1 "../tinyccbinary/win32/include/winapi/pshpack4.h" 1






#pragma pack(push,4)
# 3527 "../tinyccbinary/win32/include/winapi/winnt.h" 2







# 1 "../tinyccbinary/win32/include/winapi/pshpack2.h" 1






#pragma pack(push,2)
# 3535 "../tinyccbinary/win32/include/winapi/winnt.h" 2

    typedef struct _IMAGE_DOS_HEADER {
      WORD e_magic;
      WORD e_cblp;
      WORD e_cp;
      WORD e_crlc;
      WORD e_cparhdr;
      WORD e_minalloc;
      WORD e_maxalloc;
      WORD e_ss;
      WORD e_sp;
      WORD e_csum;
      WORD e_ip;
      WORD e_cs;
      WORD e_lfarlc;
      WORD e_ovno;
      WORD e_res[4];
      WORD e_oemid;
      WORD e_oeminfo;
      WORD e_res2[10];
      LONG e_lfanew;
    } IMAGE_DOS_HEADER,*PIMAGE_DOS_HEADER;

    typedef struct _IMAGE_OS2_HEADER {
      WORD ne_magic;
      CHAR ne_ver;
      CHAR ne_rev;
      WORD ne_enttab;
      WORD ne_cbenttab;
      LONG ne_crc;
      WORD ne_flags;
      WORD ne_autodata;
      WORD ne_heap;
      WORD ne_stack;
      LONG ne_csip;
      LONG ne_sssp;
      WORD ne_cseg;
      WORD ne_cmod;
      WORD ne_cbnrestab;
      WORD ne_segtab;
      WORD ne_rsrctab;
      WORD ne_restab;
      WORD ne_modtab;
      WORD ne_imptab;
      LONG ne_nrestab;
      WORD ne_cmovent;
      WORD ne_align;
      WORD ne_cres;
      BYTE ne_exetyp;
      BYTE ne_flagsothers;
      WORD ne_pretthunks;
      WORD ne_psegrefbytes;
      WORD ne_swaparea;
      WORD ne_expver;
    } IMAGE_OS2_HEADER,*PIMAGE_OS2_HEADER;

    typedef struct _IMAGE_VXD_HEADER {
      WORD e32_magic;
      BYTE e32_border;
      BYTE e32_worder;
      DWORD e32_level;
      WORD e32_cpu;
      WORD e32_os;
      DWORD e32_ver;
      DWORD e32_mflags;
      DWORD e32_mpages;
      DWORD e32_startobj;
      DWORD e32_eip;
      DWORD e32_stackobj;
      DWORD e32_esp;
      DWORD e32_pagesize;
      DWORD e32_lastpagesize;
      DWORD e32_fixupsize;
      DWORD e32_fixupsum;
      DWORD e32_ldrsize;
      DWORD e32_ldrsum;
      DWORD e32_objtab;
      DWORD e32_objcnt;
      DWORD e32_objmap;
      DWORD e32_itermap;
      DWORD e32_rsrctab;
      DWORD e32_rsrccnt;
      DWORD e32_restab;
      DWORD e32_enttab;
      DWORD e32_dirtab;
      DWORD e32_dircnt;
      DWORD e32_fpagetab;
      DWORD e32_frectab;
      DWORD e32_impmod;
      DWORD e32_impmodcnt;
      DWORD e32_impproc;
      DWORD e32_pagesum;
      DWORD e32_datapage;
      DWORD e32_preload;
      DWORD e32_nrestab;
      DWORD e32_cbnrestab;
      DWORD e32_nressum;
      DWORD e32_autodata;
      DWORD e32_debuginfo;
      DWORD e32_debuglen;
      DWORD e32_instpreload;
      DWORD e32_instdemand;
      DWORD e32_heapsize;
      BYTE e32_res3[12];
      DWORD e32_winresoff;
      DWORD e32_winreslen;
      WORD e32_devid;
      WORD e32_ddkver;
    } IMAGE_VXD_HEADER,*PIMAGE_VXD_HEADER;

# 1 "../tinyccbinary/win32/include/winapi/poppack.h" 1






#pragma pack(pop)
# 3646 "../tinyccbinary/win32/include/winapi/winnt.h" 2

    typedef struct _IMAGE_FILE_HEADER {
      WORD Machine;
      WORD NumberOfSections;
      DWORD TimeDateStamp;
      DWORD PointerToSymbolTable;
      DWORD NumberOfSymbols;
      WORD SizeOfOptionalHeader;
      WORD Characteristics;
    } IMAGE_FILE_HEADER,*PIMAGE_FILE_HEADER;
# 3705 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct _IMAGE_DATA_DIRECTORY {
      DWORD VirtualAddress;
      DWORD Size;
    } IMAGE_DATA_DIRECTORY,*PIMAGE_DATA_DIRECTORY;



    typedef struct _IMAGE_OPTIONAL_HEADER {

      WORD Magic;
      BYTE MajorLinkerVersion;
      BYTE MinorLinkerVersion;
      DWORD SizeOfCode;
      DWORD SizeOfInitializedData;
      DWORD SizeOfUninitializedData;
      DWORD AddressOfEntryPoint;
      DWORD BaseOfCode;
      DWORD BaseOfData;
      DWORD ImageBase;
      DWORD SectionAlignment;
      DWORD FileAlignment;
      WORD MajorOperatingSystemVersion;
      WORD MinorOperatingSystemVersion;
      WORD MajorImageVersion;
      WORD MinorImageVersion;
      WORD MajorSubsystemVersion;
      WORD MinorSubsystemVersion;
      DWORD Win32VersionValue;
      DWORD SizeOfImage;
      DWORD SizeOfHeaders;
      DWORD CheckSum;
      WORD Subsystem;
      WORD DllCharacteristics;
      DWORD SizeOfStackReserve;
      DWORD SizeOfStackCommit;
      DWORD SizeOfHeapReserve;
      DWORD SizeOfHeapCommit;
      DWORD LoaderFlags;
      DWORD NumberOfRvaAndSizes;
      IMAGE_DATA_DIRECTORY DataDirectory[16];
    } IMAGE_OPTIONAL_HEADER32,*PIMAGE_OPTIONAL_HEADER32;

    typedef struct _IMAGE_ROM_OPTIONAL_HEADER {
      WORD Magic;
      BYTE MajorLinkerVersion;
      BYTE MinorLinkerVersion;
      DWORD SizeOfCode;
      DWORD SizeOfInitializedData;
      DWORD SizeOfUninitializedData;
      DWORD AddressOfEntryPoint;
      DWORD BaseOfCode;
      DWORD BaseOfData;
      DWORD BaseOfBss;
      DWORD GprMask;
      DWORD CprMask[4];
      DWORD GpValue;
    } IMAGE_ROM_OPTIONAL_HEADER,*PIMAGE_ROM_OPTIONAL_HEADER;

    typedef struct _IMAGE_OPTIONAL_HEADER64 {
      WORD Magic;
      BYTE MajorLinkerVersion;
      BYTE MinorLinkerVersion;
      DWORD SizeOfCode;
      DWORD SizeOfInitializedData;
      DWORD SizeOfUninitializedData;
      DWORD AddressOfEntryPoint;
      DWORD BaseOfCode;
      ULONGLONG ImageBase;
      DWORD SectionAlignment;
      DWORD FileAlignment;
      WORD MajorOperatingSystemVersion;
      WORD MinorOperatingSystemVersion;
      WORD MajorImageVersion;
      WORD MinorImageVersion;
      WORD MajorSubsystemVersion;
      WORD MinorSubsystemVersion;
      DWORD Win32VersionValue;
      DWORD SizeOfImage;
      DWORD SizeOfHeaders;
      DWORD CheckSum;
      WORD Subsystem;
      WORD DllCharacteristics;
      ULONGLONG SizeOfStackReserve;
      ULONGLONG SizeOfStackCommit;
      ULONGLONG SizeOfHeapReserve;
      ULONGLONG SizeOfHeapCommit;
      DWORD LoaderFlags;
      DWORD NumberOfRvaAndSizes;
      IMAGE_DATA_DIRECTORY DataDirectory[16];
    } IMAGE_OPTIONAL_HEADER64,*PIMAGE_OPTIONAL_HEADER64;
# 3811 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef IMAGE_OPTIONAL_HEADER32 IMAGE_OPTIONAL_HEADER;
    typedef PIMAGE_OPTIONAL_HEADER32 PIMAGE_OPTIONAL_HEADER;




    typedef struct _IMAGE_NT_HEADERS64 {
      DWORD Signature;
      IMAGE_FILE_HEADER FileHeader;
      IMAGE_OPTIONAL_HEADER64 OptionalHeader;
    } IMAGE_NT_HEADERS64,*PIMAGE_NT_HEADERS64;

    typedef struct _IMAGE_NT_HEADERS {
      DWORD Signature;
      IMAGE_FILE_HEADER FileHeader;
      IMAGE_OPTIONAL_HEADER32 OptionalHeader;
    } IMAGE_NT_HEADERS32,*PIMAGE_NT_HEADERS32;

    typedef struct _IMAGE_ROM_HEADERS {
      IMAGE_FILE_HEADER FileHeader;
      IMAGE_ROM_OPTIONAL_HEADER OptionalHeader;
    } IMAGE_ROM_HEADERS,*PIMAGE_ROM_HEADERS;





    typedef IMAGE_NT_HEADERS32 IMAGE_NT_HEADERS;
    typedef PIMAGE_NT_HEADERS32 PIMAGE_NT_HEADERS;
# 3881 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct ANON_OBJECT_HEADER {
      WORD Sig1;
      WORD Sig2;
      WORD Version;
      WORD Machine;
      DWORD TimeDateStamp;
      CLSID ClassID;
      DWORD SizeOfData;
    } ANON_OBJECT_HEADER;



    typedef struct _IMAGE_SECTION_HEADER {
      BYTE Name[8];
      union {
	DWORD PhysicalAddress;
	DWORD VirtualSize;
      } Misc;
      DWORD VirtualAddress;
      DWORD SizeOfRawData;
      DWORD PointerToRawData;
      DWORD PointerToRelocations;
      DWORD PointerToLinenumbers;
      WORD NumberOfRelocations;
      WORD NumberOfLinenumbers;
      DWORD Characteristics;
    } IMAGE_SECTION_HEADER,*PIMAGE_SECTION_HEADER;
# 3956 "../tinyccbinary/win32/include/winapi/winnt.h"
# 1 "../tinyccbinary/win32/include/winapi/pshpack2.h" 1






#pragma pack(push,2)
# 3957 "../tinyccbinary/win32/include/winapi/winnt.h" 2

    typedef struct _IMAGE_SYMBOL {
      union {
	BYTE ShortName[8];
	struct {
	  DWORD Short;
	  DWORD Long;
	} Name;
	DWORD LongName[2];
      } N;
      DWORD Value;
      SHORT SectionNumber;
      WORD Type;
      BYTE StorageClass;
      BYTE NumberOfAuxSymbols;
    } IMAGE_SYMBOL;
    typedef IMAGE_SYMBOL  *PIMAGE_SYMBOL;
# 4066 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef union _IMAGE_AUX_SYMBOL {
      struct {
	DWORD TagIndex;
	union {
	  struct {
	    WORD Linenumber;
	    WORD Size;
	  } LnSz;
	  DWORD TotalSize;
	} Misc;
	union {
	  struct {
	    DWORD PointerToLinenumber;
	    DWORD PointerToNextFunction;
	  } Function;
	  struct {
	    WORD Dimension[4];
	  } Array;
	} FcnAry;
	WORD TvIndex;
      } Sym;
      struct {
	BYTE Name[18];
      } File;
      struct {
	DWORD Length;
	WORD NumberOfRelocations;
	WORD NumberOfLinenumbers;
	DWORD CheckSum;
	SHORT Number;
	BYTE Selection;
      } Section;
    } IMAGE_AUX_SYMBOL;
    typedef IMAGE_AUX_SYMBOL  *PIMAGE_AUX_SYMBOL;



    typedef enum IMAGE_AUX_SYMBOL_TYPE {
      IMAGE_AUX_SYMBOL_TYPE_TOKEN_DEF = 1
    } IMAGE_AUX_SYMBOL_TYPE;

# 1 "../tinyccbinary/win32/include/winapi/pshpack2.h" 1






#pragma pack(push,2)
# 4108 "../tinyccbinary/win32/include/winapi/winnt.h" 2

    typedef struct IMAGE_AUX_SYMBOL_TOKEN_DEF {
      BYTE bAuxType;
      BYTE bReserved;
      DWORD SymbolTableIndex;
      BYTE rgbReserved[12];
    } IMAGE_AUX_SYMBOL_TOKEN_DEF;

    typedef IMAGE_AUX_SYMBOL_TOKEN_DEF  *PIMAGE_AUX_SYMBOL_TOKEN_DEF;

# 1 "../tinyccbinary/win32/include/winapi/poppack.h" 1






#pragma pack(pop)
# 4119 "../tinyccbinary/win32/include/winapi/winnt.h" 2
# 4132 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct _IMAGE_RELOCATION {
      union {
	DWORD VirtualAddress;
	DWORD RelocCount;
      };
      DWORD SymbolTableIndex;
      WORD Type;
    } IMAGE_RELOCATION;
    typedef IMAGE_RELOCATION  *PIMAGE_RELOCATION;
# 4454 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct _IMAGE_LINENUMBER {
      union {
	DWORD SymbolTableIndex;
	DWORD VirtualAddress;
      } Type;
      WORD Linenumber;
    } IMAGE_LINENUMBER;
    typedef IMAGE_LINENUMBER  *PIMAGE_LINENUMBER;



# 1 "../tinyccbinary/win32/include/winapi/poppack.h" 1






#pragma pack(pop)
# 4466 "../tinyccbinary/win32/include/winapi/winnt.h" 2

    typedef struct _IMAGE_BASE_RELOCATION {
      DWORD VirtualAddress;
      DWORD SizeOfBlock;

    } IMAGE_BASE_RELOCATION;
    typedef IMAGE_BASE_RELOCATION  *PIMAGE_BASE_RELOCATION;
# 4493 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct _IMAGE_ARCHIVE_MEMBER_HEADER {
      BYTE Name[16];
      BYTE Date[12];
      BYTE UserID[6];
      BYTE GroupID[6];
      BYTE Mode[8];
      BYTE Size[10];
      BYTE EndHeader[2];
    } IMAGE_ARCHIVE_MEMBER_HEADER,*PIMAGE_ARCHIVE_MEMBER_HEADER;



    typedef struct _IMAGE_EXPORT_DIRECTORY {
      DWORD Characteristics;
      DWORD TimeDateStamp;
      WORD MajorVersion;
      WORD MinorVersion;
      DWORD Name;
      DWORD Base;
      DWORD NumberOfFunctions;
      DWORD NumberOfNames;
      DWORD AddressOfFunctions;
      DWORD AddressOfNames;
      DWORD AddressOfNameOrdinals;
    } IMAGE_EXPORT_DIRECTORY,*PIMAGE_EXPORT_DIRECTORY;

    typedef struct _IMAGE_IMPORT_BY_NAME {
      WORD Hint;
      BYTE Name[1];
    } IMAGE_IMPORT_BY_NAME,*PIMAGE_IMPORT_BY_NAME;

# 1 "../tinyccbinary/win32/include/winapi/pshpack8.h" 1






#pragma pack(push,8)
# 4525 "../tinyccbinary/win32/include/winapi/winnt.h" 2

    typedef struct _IMAGE_THUNK_DATA64 {
      union {
	ULONGLONG ForwarderString;
	ULONGLONG Function;
	ULONGLONG Ordinal;
	ULONGLONG AddressOfData;
      } u1;
    } IMAGE_THUNK_DATA64;
    typedef IMAGE_THUNK_DATA64 *PIMAGE_THUNK_DATA64;

# 1 "../tinyccbinary/win32/include/winapi/poppack.h" 1






#pragma pack(pop)
# 4537 "../tinyccbinary/win32/include/winapi/winnt.h" 2

    typedef struct _IMAGE_THUNK_DATA32 {
      union {
	DWORD ForwarderString;
	DWORD Function;
	DWORD Ordinal;
	DWORD AddressOfData;
      } u1;
    } IMAGE_THUNK_DATA32;
    typedef IMAGE_THUNK_DATA32 *PIMAGE_THUNK_DATA32;
# 4555 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef void
      (__attribute__((__stdcall__)) *PIMAGE_TLS_CALLBACK)(PVOID DllHandle,DWORD Reason,PVOID Reserved);

    typedef struct _IMAGE_TLS_DIRECTORY64 {
      ULONGLONG StartAddressOfRawData;
      ULONGLONG EndAddressOfRawData;
      ULONGLONG AddressOfIndex;
      ULONGLONG AddressOfCallBacks;
      DWORD SizeOfZeroFill;
      DWORD Characteristics;
    } IMAGE_TLS_DIRECTORY64;
    typedef IMAGE_TLS_DIRECTORY64 *PIMAGE_TLS_DIRECTORY64;

    typedef struct _IMAGE_TLS_DIRECTORY32 {
      DWORD StartAddressOfRawData;
      DWORD EndAddressOfRawData;
      DWORD AddressOfIndex;
      DWORD AddressOfCallBacks;
      DWORD SizeOfZeroFill;
      DWORD Characteristics;
    } IMAGE_TLS_DIRECTORY32;
    typedef IMAGE_TLS_DIRECTORY32 *PIMAGE_TLS_DIRECTORY32;
# 4589 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef IMAGE_THUNK_DATA32 IMAGE_THUNK_DATA;
    typedef PIMAGE_THUNK_DATA32 PIMAGE_THUNK_DATA;

    typedef IMAGE_TLS_DIRECTORY32 IMAGE_TLS_DIRECTORY;
    typedef PIMAGE_TLS_DIRECTORY32 PIMAGE_TLS_DIRECTORY;


    typedef struct _IMAGE_IMPORT_DESCRIPTOR {
      union {
	DWORD Characteristics;
	DWORD OriginalFirstThunk;
      };
      DWORD TimeDateStamp;

      DWORD ForwarderChain;
      DWORD Name;
      DWORD FirstThunk;
    } IMAGE_IMPORT_DESCRIPTOR;
    typedef IMAGE_IMPORT_DESCRIPTOR  *PIMAGE_IMPORT_DESCRIPTOR;

    typedef struct _IMAGE_BOUND_IMPORT_DESCRIPTOR {
      DWORD TimeDateStamp;
      WORD OffsetModuleName;
      WORD NumberOfModuleForwarderRefs;
    } IMAGE_BOUND_IMPORT_DESCRIPTOR,*PIMAGE_BOUND_IMPORT_DESCRIPTOR;

    typedef struct _IMAGE_BOUND_FORWARDER_REF {
      DWORD TimeDateStamp;
      WORD OffsetModuleName;
      WORD Reserved;
    } IMAGE_BOUND_FORWARDER_REF,*PIMAGE_BOUND_FORWARDER_REF;

    typedef struct _IMAGE_RESOURCE_DIRECTORY {
      DWORD Characteristics;
      DWORD TimeDateStamp;
      WORD MajorVersion;
      WORD MinorVersion;
      WORD NumberOfNamedEntries;
      WORD NumberOfIdEntries;
    } IMAGE_RESOURCE_DIRECTORY,*PIMAGE_RESOURCE_DIRECTORY;




    typedef struct _IMAGE_RESOURCE_DIRECTORY_ENTRY {
      union {
	struct {
	  DWORD NameOffset:31;
	  DWORD NameIsString:1;
	};
	DWORD Name;
	WORD Id;
      };
      union {
	DWORD OffsetToData;
	struct {
	  DWORD OffsetToDirectory:31;
	  DWORD DataIsDirectory:1;
	};
      };
    } IMAGE_RESOURCE_DIRECTORY_ENTRY,*PIMAGE_RESOURCE_DIRECTORY_ENTRY;

    typedef struct _IMAGE_RESOURCE_DIRECTORY_STRING {
      WORD Length;
      CHAR NameString[1];
    } IMAGE_RESOURCE_DIRECTORY_STRING,*PIMAGE_RESOURCE_DIRECTORY_STRING;

    typedef struct _IMAGE_RESOURCE_DIR_STRING_U {
      WORD Length;
      WCHAR NameString[1];
    } IMAGE_RESOURCE_DIR_STRING_U,*PIMAGE_RESOURCE_DIR_STRING_U;

    typedef struct _IMAGE_RESOURCE_DATA_ENTRY {
      DWORD OffsetToData;
      DWORD Size;
      DWORD CodePage;
      DWORD Reserved;
    } IMAGE_RESOURCE_DATA_ENTRY,*PIMAGE_RESOURCE_DATA_ENTRY;

    typedef struct {
      DWORD Size;
      DWORD TimeDateStamp;
      WORD MajorVersion;
      WORD MinorVersion;
      DWORD GlobalFlagsClear;
      DWORD GlobalFlagsSet;
      DWORD CriticalSectionDefaultTimeout;
      DWORD DeCommitFreeBlockThreshold;
      DWORD DeCommitTotalFreeThreshold;
      DWORD LockPrefixTable;
      DWORD MaximumAllocationSize;
      DWORD VirtualMemoryThreshold;
      DWORD ProcessHeapFlags;
      DWORD ProcessAffinityMask;
      WORD CSDVersion;
      WORD Reserved1;
      DWORD EditList;
      DWORD SecurityCookie;
      DWORD SEHandlerTable;
      DWORD SEHandlerCount;
    } IMAGE_LOAD_CONFIG_DIRECTORY32,*PIMAGE_LOAD_CONFIG_DIRECTORY32;

    typedef struct {
      DWORD Size;
      DWORD TimeDateStamp;
      WORD MajorVersion;
      WORD MinorVersion;
      DWORD GlobalFlagsClear;
      DWORD GlobalFlagsSet;
      DWORD CriticalSectionDefaultTimeout;
      ULONGLONG DeCommitFreeBlockThreshold;
      ULONGLONG DeCommitTotalFreeThreshold;
      ULONGLONG LockPrefixTable;
      ULONGLONG MaximumAllocationSize;
      ULONGLONG VirtualMemoryThreshold;
      ULONGLONG ProcessAffinityMask;
      DWORD ProcessHeapFlags;
      WORD CSDVersion;
      WORD Reserved1;
      ULONGLONG EditList;
      ULONGLONG SecurityCookie;
      ULONGLONG SEHandlerTable;
      ULONGLONG SEHandlerCount;
    } IMAGE_LOAD_CONFIG_DIRECTORY64,*PIMAGE_LOAD_CONFIG_DIRECTORY64;





    typedef IMAGE_LOAD_CONFIG_DIRECTORY32 IMAGE_LOAD_CONFIG_DIRECTORY;
    typedef PIMAGE_LOAD_CONFIG_DIRECTORY32 PIMAGE_LOAD_CONFIG_DIRECTORY;


    typedef struct _IMAGE_CE_RUNTIME_FUNCTION_ENTRY {
      DWORD FuncStart;
      DWORD PrologLen : 8;
      DWORD FuncLen : 22;
      DWORD ThirtyTwoBit : 1;
      DWORD ExceptionFlag : 1;
    } IMAGE_CE_RUNTIME_FUNCTION_ENTRY,*PIMAGE_CE_RUNTIME_FUNCTION_ENTRY;

    typedef struct _IMAGE_ALPHA64_RUNTIME_FUNCTION_ENTRY {
      ULONGLONG BeginAddress;
      ULONGLONG EndAddress;
      ULONGLONG ExceptionHandler;
      ULONGLONG HandlerData;
      ULONGLONG PrologEndAddress;
    } IMAGE_ALPHA64_RUNTIME_FUNCTION_ENTRY,*PIMAGE_ALPHA64_RUNTIME_FUNCTION_ENTRY;

    typedef struct _IMAGE_ALPHA_RUNTIME_FUNCTION_ENTRY {
      DWORD BeginAddress;
      DWORD EndAddress;
      DWORD ExceptionHandler;
      DWORD HandlerData;
      DWORD PrologEndAddress;
    } IMAGE_ALPHA_RUNTIME_FUNCTION_ENTRY,*PIMAGE_ALPHA_RUNTIME_FUNCTION_ENTRY;

    typedef struct _IMAGE_RUNTIME_FUNCTION_ENTRY {
      DWORD BeginAddress;
      DWORD EndAddress;
      DWORD UnwindInfoAddress;
    } _IMAGE_RUNTIME_FUNCTION_ENTRY,*_PIMAGE_RUNTIME_FUNCTION_ENTRY;

    typedef _IMAGE_RUNTIME_FUNCTION_ENTRY IMAGE_IA64_RUNTIME_FUNCTION_ENTRY;
    typedef _PIMAGE_RUNTIME_FUNCTION_ENTRY PIMAGE_IA64_RUNTIME_FUNCTION_ENTRY;

    typedef _IMAGE_RUNTIME_FUNCTION_ENTRY IMAGE_RUNTIME_FUNCTION_ENTRY;
    typedef _PIMAGE_RUNTIME_FUNCTION_ENTRY PIMAGE_RUNTIME_FUNCTION_ENTRY;

    typedef struct _IMAGE_DEBUG_DIRECTORY {
      DWORD Characteristics;
      DWORD TimeDateStamp;
      WORD MajorVersion;
      WORD MinorVersion;
      DWORD Type;
      DWORD SizeOfData;
      DWORD AddressOfRawData;
      DWORD PointerToRawData;
    } IMAGE_DEBUG_DIRECTORY,*PIMAGE_DEBUG_DIRECTORY;
# 4782 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct _IMAGE_COFF_SYMBOLS_HEADER {
      DWORD NumberOfSymbols;
      DWORD LvaToFirstSymbol;
      DWORD NumberOfLinenumbers;
      DWORD LvaToFirstLinenumber;
      DWORD RvaToFirstByteOfCode;
      DWORD RvaToLastByteOfCode;
      DWORD RvaToFirstByteOfData;
      DWORD RvaToLastByteOfData;
    } IMAGE_COFF_SYMBOLS_HEADER,*PIMAGE_COFF_SYMBOLS_HEADER;






    typedef struct _FPO_DATA {
      DWORD ulOffStart;
      DWORD cbProcSize;
      DWORD cdwLocals;
      WORD cdwParams;
      WORD cbProlog : 8;
      WORD cbRegs : 3;
      WORD fHasSEH : 1;
      WORD fUseBP : 1;
      WORD reserved : 1;
      WORD cbFrame : 2;
    } FPO_DATA,*PFPO_DATA;




    typedef struct _IMAGE_DEBUG_MISC {
      DWORD DataType;
      DWORD Length;
      BOOLEAN Unicode;
      BYTE Reserved[3];
      BYTE Data[1];
    } IMAGE_DEBUG_MISC,*PIMAGE_DEBUG_MISC;

    typedef struct _IMAGE_FUNCTION_ENTRY {
      DWORD StartingAddress;
      DWORD EndingAddress;
      DWORD EndOfPrologue;
    } IMAGE_FUNCTION_ENTRY,*PIMAGE_FUNCTION_ENTRY;

    typedef struct _IMAGE_FUNCTION_ENTRY64 {
      ULONGLONG StartingAddress;
      ULONGLONG EndingAddress;
      union {
	ULONGLONG EndOfPrologue;
	ULONGLONG UnwindInfoAddress;
      };
    } IMAGE_FUNCTION_ENTRY64,*PIMAGE_FUNCTION_ENTRY64;

    typedef struct _IMAGE_SEPARATE_DEBUG_HEADER {
      WORD Signature;
      WORD Flags;
      WORD Machine;
      WORD Characteristics;
      DWORD TimeDateStamp;
      DWORD CheckSum;
      DWORD ImageBase;
      DWORD SizeOfImage;
      DWORD NumberOfSections;
      DWORD ExportedNamesSize;
      DWORD DebugDirectorySize;
      DWORD SectionAlignment;
      DWORD Reserved[2];
    } IMAGE_SEPARATE_DEBUG_HEADER,*PIMAGE_SEPARATE_DEBUG_HEADER;

    typedef struct _NON_PAGED_DEBUG_INFO {
      WORD Signature;
      WORD Flags;
      DWORD Size;
      WORD Machine;
      WORD Characteristics;
      DWORD TimeDateStamp;
      DWORD CheckSum;
      DWORD SizeOfImage;
      ULONGLONG ImageBase;

    } NON_PAGED_DEBUG_INFO,*PNON_PAGED_DEBUG_INFO;







    typedef struct _ImageArchitectureHeader {
      unsigned int AmaskValue: 1;
      int Adummy1 :7;
      unsigned int AmaskShift: 8;
      int Adummy2 :16;
      DWORD FirstEntryRVA;
    } IMAGE_ARCHITECTURE_HEADER,*PIMAGE_ARCHITECTURE_HEADER;

    typedef struct _ImageArchitectureEntry {
      DWORD FixupInstRVA;
      DWORD NewInst;
    } IMAGE_ARCHITECTURE_ENTRY,*PIMAGE_ARCHITECTURE_ENTRY;

# 1 "../tinyccbinary/win32/include/winapi/poppack.h" 1






#pragma pack(pop)
# 4886 "../tinyccbinary/win32/include/winapi/winnt.h" 2



    typedef struct IMPORT_OBJECT_HEADER {
      WORD Sig1;
      WORD Sig2;
      WORD Version;
      WORD Machine;
      DWORD TimeDateStamp;
      DWORD SizeOfData;
      union {
	WORD Ordinal;
	WORD Hint;
      };
      WORD Type : 2;
      WORD NameType : 3;
      WORD Reserved : 11;
    } IMPORT_OBJECT_HEADER;

    typedef enum IMPORT_OBJECT_TYPE {
      IMPORT_OBJECT_CODE = 0,IMPORT_OBJECT_DATA = 1,IMPORT_OBJECT_CONST = 2
    } IMPORT_OBJECT_TYPE;

    typedef enum IMPORT_OBJECT_NAME_TYPE {
      IMPORT_OBJECT_ORDINAL = 0,IMPORT_OBJECT_NAME = 1,IMPORT_OBJECT_NAME_NO_PREFIX = 2,IMPORT_OBJECT_NAME_UNDECORATE = 3
    } IMPORT_OBJECT_NAME_TYPE;



    typedef enum ReplacesCorHdrNumericDefines {
      COMIMAGE_FLAGS_ILONLY =0x00000001,COMIMAGE_FLAGS_32BITREQUIRED =0x00000002,COMIMAGE_FLAGS_IL_LIBRARY =0x00000004,
      COMIMAGE_FLAGS_STRONGNAMESIGNED =0x00000008,COMIMAGE_FLAGS_TRACKDEBUGDATA =0x00010000,COR_VERSION_MAJOR_V2 =2,
      COR_VERSION_MAJOR =COR_VERSION_MAJOR_V2,COR_VERSION_MINOR =0,COR_DELETED_NAME_LENGTH =8,COR_VTABLEGAP_NAME_LENGTH =8,
      NATIVE_TYPE_MAX_CB =1,COR_ILMETHOD_SECT_SMALL_MAX_DATASIZE=0xFF,IMAGE_COR_MIH_METHODRVA =0x01,IMAGE_COR_MIH_EHRVA =0x02,
      IMAGE_COR_MIH_BASICBLOCK =0x08,COR_VTABLE_32BIT =0x01,COR_VTABLE_64BIT =0x02,COR_VTABLE_FROM_UNMANAGED =0x04,
      COR_VTABLE_CALL_MOST_DERIVED =0x10,IMAGE_COR_EATJ_THUNK_SIZE =32,MAX_CLASS_NAME =1024,MAX_PACKAGE_NAME =1024
    } ReplacesCorHdrNumericDefines;

    typedef struct IMAGE_COR20_HEADER {
      DWORD cb;
      WORD MajorRuntimeVersion;
      WORD MinorRuntimeVersion;
      IMAGE_DATA_DIRECTORY MetaData;
      DWORD Flags;
      DWORD EntryPointToken;
      IMAGE_DATA_DIRECTORY Resources;
      IMAGE_DATA_DIRECTORY StrongNameSignature;
      IMAGE_DATA_DIRECTORY CodeManagerTable;
      IMAGE_DATA_DIRECTORY VTableFixups;
      IMAGE_DATA_DIRECTORY ExportAddressTableJumps;
      IMAGE_DATA_DIRECTORY ManagedNativeHeader;
    } IMAGE_COR20_HEADER,*PIMAGE_COR20_HEADER;







# 1 "../tinyccbinary/win32/include/string.h" 1
# 4946 "../tinyccbinary/win32/include/winapi/winnt.h" 2
# 4972 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef union _SLIST_HEADER {
      ULONGLONG Alignment;
      struct {
	SINGLE_LIST_ENTRY Next;
	WORD Depth;
	WORD Sequence;
      };
    } SLIST_HEADER,*PSLIST_HEADER;



    __attribute__((dllimport)) void __attribute__((__stdcall__)) RtlInitializeSListHead(PSLIST_HEADER ListHead);
    __attribute__((dllimport)) PSINGLE_LIST_ENTRY __attribute__((__stdcall__)) RtlFirstEntrySList(const SLIST_HEADER *ListHead);
    __attribute__((dllimport)) PSINGLE_LIST_ENTRY __attribute__((__stdcall__)) RtlInterlockedPopEntrySList(PSLIST_HEADER ListHead);
    __attribute__((dllimport)) PSINGLE_LIST_ENTRY __attribute__((__stdcall__)) RtlInterlockedPushEntrySList(PSLIST_HEADER ListHead,PSINGLE_LIST_ENTRY ListEntry);
    __attribute__((dllimport)) PSINGLE_LIST_ENTRY __attribute__((__stdcall__)) RtlInterlockedFlushSList(PSLIST_HEADER ListHead);
    __attribute__((dllimport)) WORD __attribute__((__stdcall__)) RtlQueryDepthSList(PSLIST_HEADER ListHead);
# 5006 "../tinyccbinary/win32/include/winapi/winnt.h"
    __attribute__((dllimport)) void __attribute__((__stdcall__)) RtlCaptureContext(PCONTEXT ContextRecord);
# 5048 "../tinyccbinary/win32/include/winapi/winnt.h"
    __attribute__((dllimport)) SIZE_T __attribute__((__stdcall__)) RtlCompareMemory(const void *Source1,const void *Source2,SIZE_T Length);







    static __inline__ PVOID RtlSecureZeroMemory(PVOID ptr,SIZE_T cnt) {
      volatile char *vptr =(volatile char *)ptr;



      while(cnt) {
	*vptr = 0;
	vptr++;
	cnt--;
      }

      return ptr;
    }

    typedef struct _MESSAGE_RESOURCE_ENTRY {
      WORD Length;
      WORD Flags;
      BYTE Text[1];
    } MESSAGE_RESOURCE_ENTRY,*PMESSAGE_RESOURCE_ENTRY;



    typedef struct _MESSAGE_RESOURCE_BLOCK {
      DWORD LowId;
      DWORD HighId;
      DWORD OffsetToEntries;
    } MESSAGE_RESOURCE_BLOCK,*PMESSAGE_RESOURCE_BLOCK;

    typedef struct _MESSAGE_RESOURCE_DATA {
      DWORD NumberOfBlocks;
      MESSAGE_RESOURCE_BLOCK Blocks[1];
    } MESSAGE_RESOURCE_DATA,*PMESSAGE_RESOURCE_DATA;

    typedef struct _OSVERSIONINFOA {
      DWORD dwOSVersionInfoSize;
      DWORD dwMajorVersion;
      DWORD dwMinorVersion;
      DWORD dwBuildNumber;
      DWORD dwPlatformId;
      CHAR szCSDVersion[128];
    } OSVERSIONINFOA,*POSVERSIONINFOA,*LPOSVERSIONINFOA;

    typedef struct _OSVERSIONINFOW {
      DWORD dwOSVersionInfoSize;
      DWORD dwMajorVersion;
      DWORD dwMinorVersion;
      DWORD dwBuildNumber;
      DWORD dwPlatformId;
      WCHAR szCSDVersion[128];
    } OSVERSIONINFOW,*POSVERSIONINFOW,*LPOSVERSIONINFOW,RTL_OSVERSIONINFOW,*PRTL_OSVERSIONINFOW;






    typedef OSVERSIONINFOA OSVERSIONINFO;
    typedef POSVERSIONINFOA POSVERSIONINFO;
    typedef LPOSVERSIONINFOA LPOSVERSIONINFO;


    typedef struct _OSVERSIONINFOEXA {
      DWORD dwOSVersionInfoSize;
      DWORD dwMajorVersion;
      DWORD dwMinorVersion;
      DWORD dwBuildNumber;
      DWORD dwPlatformId;
      CHAR szCSDVersion[128];
      WORD wServicePackMajor;
      WORD wServicePackMinor;
      WORD wSuiteMask;
      BYTE wProductType;
      BYTE wReserved;
    } OSVERSIONINFOEXA,*POSVERSIONINFOEXA,*LPOSVERSIONINFOEXA;

    typedef struct _OSVERSIONINFOEXW {
      DWORD dwOSVersionInfoSize;
      DWORD dwMajorVersion;
      DWORD dwMinorVersion;
      DWORD dwBuildNumber;
      DWORD dwPlatformId;
      WCHAR szCSDVersion[128];
      WORD wServicePackMajor;
      WORD wServicePackMinor;
      WORD wSuiteMask;
      BYTE wProductType;
      BYTE wReserved;
    } OSVERSIONINFOEXW,*POSVERSIONINFOEXW,*LPOSVERSIONINFOEXW,RTL_OSVERSIONINFOEXW,*PRTL_OSVERSIONINFOEXW;





    typedef OSVERSIONINFOEXA OSVERSIONINFOEX;
    typedef POSVERSIONINFOEXA POSVERSIONINFOEX;
    typedef LPOSVERSIONINFOEXA LPOSVERSIONINFOEX;
# 5184 "../tinyccbinary/win32/include/winapi/winnt.h"
    __attribute__((dllimport)) ULONGLONG __attribute__((__stdcall__)) VerSetConditionMask(ULONGLONG ConditionMask,DWORD TypeMask,BYTE Condition);

    typedef struct _RTL_CRITICAL_SECTION_DEBUG {
      WORD Type;
      WORD CreatorBackTraceIndex;
      struct _RTL_CRITICAL_SECTION *CriticalSection;
      LIST_ENTRY ProcessLocksList;
      DWORD EntryCount;
      DWORD ContentionCount;
      DWORD Spare[2];
    } RTL_CRITICAL_SECTION_DEBUG,*PRTL_CRITICAL_SECTION_DEBUG,RTL_RESOURCE_DEBUG,*PRTL_RESOURCE_DEBUG;




    typedef struct _RTL_CRITICAL_SECTION {
      PRTL_CRITICAL_SECTION_DEBUG DebugInfo;
      LONG LockCount;
      LONG RecursionCount;
      HANDLE OwningThread;
      HANDLE LockSemaphore;
      ULONG_PTR SpinCount;
    } RTL_CRITICAL_SECTION,*PRTL_CRITICAL_SECTION;

    typedef void (__attribute__((__stdcall__)) *RTL_VERIFIER_DLL_LOAD_CALLBACK) (PWSTR DllName,PVOID DllBase,SIZE_T DllSize,PVOID Reserved);
    typedef void (__attribute__((__stdcall__)) *RTL_VERIFIER_DLL_UNLOAD_CALLBACK) (PWSTR DllName,PVOID DllBase,SIZE_T DllSize,PVOID Reserved);
    typedef void (__attribute__((__stdcall__)) *RTL_VERIFIER_NTDLLHEAPFREE_CALLBACK)(PVOID AllocationBase,SIZE_T AllocationSize);

    typedef struct _RTL_VERIFIER_THUNK_DESCRIPTOR {
      PCHAR ThunkName;
      PVOID ThunkOldAddress;
      PVOID ThunkNewAddress;
    } RTL_VERIFIER_THUNK_DESCRIPTOR,*PRTL_VERIFIER_THUNK_DESCRIPTOR;

    typedef struct _RTL_VERIFIER_DLL_DESCRIPTOR {
      PWCHAR DllName;
      DWORD DllFlags;
      PVOID DllAddress;
      PRTL_VERIFIER_THUNK_DESCRIPTOR DllThunks;
    } RTL_VERIFIER_DLL_DESCRIPTOR,*PRTL_VERIFIER_DLL_DESCRIPTOR;

    typedef struct _RTL_VERIFIER_PROVIDER_DESCRIPTOR {
      DWORD Length;
      PRTL_VERIFIER_DLL_DESCRIPTOR ProviderDlls;
      RTL_VERIFIER_DLL_LOAD_CALLBACK ProviderDllLoadCallback;
      RTL_VERIFIER_DLL_UNLOAD_CALLBACK ProviderDllUnloadCallback;
      PWSTR VerifierImage;
      DWORD VerifierFlags;
      DWORD VerifierDebug;
      PVOID RtlpGetStackTraceAddress;
      PVOID RtlpDebugPageHeapCreate;
      PVOID RtlpDebugPageHeapDestroy;
      RTL_VERIFIER_NTDLLHEAPFREE_CALLBACK ProviderNtdllHeapFreeCallback;
    } RTL_VERIFIER_PROVIDER_DESCRIPTOR,*PRTL_VERIFIER_PROVIDER_DESCRIPTOR;
# 5344 "../tinyccbinary/win32/include/winapi/winnt.h"
    void __attribute__((__stdcall__)) RtlApplicationVerifierStop(ULONG_PTR Code,PSTR Message,ULONG_PTR Param1,PSTR Description1,ULONG_PTR Param2,PSTR Description2,ULONG_PTR Param3,PSTR Description3,ULONG_PTR Param4,PSTR Description4);

    typedef LONG (__attribute__((__stdcall__)) *PVECTORED_EXCEPTION_HANDLER)(struct _EXCEPTION_POINTERS *ExceptionInfo);
# 5355 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef enum _HEAP_INFORMATION_CLASS {
      HeapCompatibilityInformation
    } HEAP_INFORMATION_CLASS;

    __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) RtlSetHeapInformation(PVOID HeapHandle,HEAP_INFORMATION_CLASS HeapInformationClass,PVOID HeapInformation,SIZE_T HeapInformationLength);
    __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) RtlQueryHeapInformation(PVOID HeapHandle,HEAP_INFORMATION_CLASS HeapInformationClass,PVOID HeapInformation,SIZE_T HeapInformationLength,PSIZE_T ReturnLength);
    DWORD __attribute__((__stdcall__)) RtlMultipleAllocateHeap(PVOID HeapHandle,DWORD Flags,SIZE_T Size,DWORD Count,PVOID *Array);
    DWORD __attribute__((__stdcall__)) RtlMultipleFreeHeap(PVOID HeapHandle,DWORD Flags,DWORD Count,PVOID *Array);
# 5375 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef void (__attribute__((__stdcall__)) *WAITORTIMERCALLBACKFUNC)(PVOID,BOOLEAN);
    typedef void (__attribute__((__stdcall__)) *WORKERCALLBACKFUNC)(PVOID);
    typedef void (__attribute__((__stdcall__)) *APC_CALLBACK_FUNCTION)(DWORD ,PVOID,PVOID);
    typedef
      void
      (__attribute__((__stdcall__)) *PFLS_CALLBACK_FUNCTION)(PVOID lpFlsData);



    typedef enum _ACTIVATION_CONTEXT_INFO_CLASS {
      ActivationContextBasicInformation = 1,ActivationContextDetailedInformation = 2,AssemblyDetailedInformationInActivationContext = 3,FileInformationInAssemblyOfAssemblyInActivationContext = 4,MaxActivationContextInfoClass,AssemblyDetailedInformationInActivationContxt = 3,FileInformationInAssemblyOfAssemblyInActivationContxt = 4
    } ACTIVATION_CONTEXT_INFO_CLASS;



    typedef struct _ACTIVATION_CONTEXT_QUERY_INDEX {
      DWORD ulAssemblyIndex;
      DWORD ulFileIndexInAssembly;
    } ACTIVATION_CONTEXT_QUERY_INDEX,*PACTIVATION_CONTEXT_QUERY_INDEX;

    typedef const struct _ACTIVATION_CONTEXT_QUERY_INDEX *PCACTIVATION_CONTEXT_QUERY_INDEX;






    typedef struct _ASSEMBLY_FILE_DETAILED_INFORMATION {
      DWORD ulFlags;
      DWORD ulFilenameLength;
      DWORD ulPathLength;

      PCWSTR lpFileName;
      PCWSTR lpFilePath;
    } ASSEMBLY_FILE_DETAILED_INFORMATION,*PASSEMBLY_FILE_DETAILED_INFORMATION;
    typedef const ASSEMBLY_FILE_DETAILED_INFORMATION *PCASSEMBLY_FILE_DETAILED_INFORMATION;






    typedef struct _ACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION {
      DWORD ulFlags;
      DWORD ulEncodedAssemblyIdentityLength;
      DWORD ulManifestPathType;
      DWORD ulManifestPathLength;
      LARGE_INTEGER liManifestLastWriteTime;
      DWORD ulPolicyPathType;
      DWORD ulPolicyPathLength;
      LARGE_INTEGER liPolicyLastWriteTime;
      DWORD ulMetadataSatelliteRosterIndex;
      DWORD ulManifestVersionMajor;
      DWORD ulManifestVersionMinor;
      DWORD ulPolicyVersionMajor;
      DWORD ulPolicyVersionMinor;
      DWORD ulAssemblyDirectoryNameLength;
      PCWSTR lpAssemblyEncodedAssemblyIdentity;
      PCWSTR lpAssemblyManifestPath;
      PCWSTR lpAssemblyPolicyPath;
      PCWSTR lpAssemblyDirectoryName;
      DWORD ulFileCount;
    } ACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION,*PACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION;

    typedef const struct _ACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION *PCACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION;

    typedef struct _ACTIVATION_CONTEXT_DETAILED_INFORMATION {
      DWORD dwFlags;
      DWORD ulFormatVersion;
      DWORD ulAssemblyCount;
      DWORD ulRootManifestPathType;
      DWORD ulRootManifestPathChars;
      DWORD ulRootConfigurationPathType;
      DWORD ulRootConfigurationPathChars;
      DWORD ulAppDirPathType;
      DWORD ulAppDirPathChars;
      PCWSTR lpRootManifestPath;
      PCWSTR lpRootConfigurationPath;
      PCWSTR lpAppDirPath;
    } ACTIVATION_CONTEXT_DETAILED_INFORMATION,*PACTIVATION_CONTEXT_DETAILED_INFORMATION;

    typedef const struct _ACTIVATION_CONTEXT_DETAILED_INFORMATION *PCACTIVATION_CONTEXT_DETAILED_INFORMATION;
# 5482 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct _EVENTLOGRECORD {
      DWORD Length;
      DWORD Reserved;
      DWORD RecordNumber;
      DWORD TimeGenerated;
      DWORD TimeWritten;
      DWORD EventID;
      WORD EventType;
      WORD NumStrings;
      WORD EventCategory;
      WORD ReservedFlags;
      DWORD ClosingRecordNumber;
      DWORD StringOffset;
      DWORD UserSidLength;
      DWORD UserSidOffset;
      DWORD DataLength;
      DWORD DataOffset;
    } EVENTLOGRECORD,*PEVENTLOGRECORD;



    typedef struct _EVENTSFORLOGFILE{
      DWORD ulSize;
      WCHAR szLogicalLogFile[256];
      DWORD ulNumRecords;
      EVENTLOGRECORD pEventLogRecords[];
    } EVENTSFORLOGFILE,*PEVENTSFORLOGFILE;

    typedef struct _PACKEDEVENTINFO{
      DWORD ulSize;
      DWORD ulNumEventsForLogFile;
      DWORD ulOffsets[];
    } PACKEDEVENTINFO,*PPACKEDEVENTINFO;
# 5598 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef enum _CM_SERVICE_NODE_TYPE {
      DriverType = 0x00000001,FileSystemType = 0x00000002,Win32ServiceOwnProcess = 0x00000010,
      Win32ServiceShareProcess = 0x00000020,AdapterType = 0x00000004,RecognizerType = 0x00000008
    } SERVICE_NODE_TYPE;

    typedef enum _CM_SERVICE_LOAD_TYPE {
      BootLoad = 0x00000000,SystemLoad = 0x00000001,AutoLoad = 0x00000002,DemandLoad = 0x00000003,
      DisableLoad = 0x00000004
    } SERVICE_LOAD_TYPE;

    typedef enum _CM_ERROR_CONTROL_TYPE {
      IgnoreError = 0x00000000,NormalError = 0x00000001,SevereError = 0x00000002,CriticalError = 0x00000003
    } SERVICE_ERROR_TYPE;




    typedef struct _TAPE_ERASE {
      DWORD Type;
      BOOLEAN Immediate;
    } TAPE_ERASE,*PTAPE_ERASE;
# 5627 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct _TAPE_PREPARE {
      DWORD Operation;
      BOOLEAN Immediate;
    } TAPE_PREPARE,*PTAPE_PREPARE;






    typedef struct _TAPE_WRITE_MARKS {
      DWORD Type;
      DWORD Count;
      BOOLEAN Immediate;
    } TAPE_WRITE_MARKS,*PTAPE_WRITE_MARKS;





    typedef struct _TAPE_GET_POSITION {
      DWORD Type;
      DWORD Partition;
      LARGE_INTEGER Offset;
    } TAPE_GET_POSITION,*PTAPE_GET_POSITION;
# 5664 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct _TAPE_SET_POSITION {
      DWORD Method;
      DWORD Partition;
      LARGE_INTEGER Offset;
      BOOLEAN Immediate;
    } TAPE_SET_POSITION,*PTAPE_SET_POSITION;
# 5743 "../tinyccbinary/win32/include/winapi/winnt.h"
    typedef struct _TAPE_GET_DRIVE_PARAMETERS {
      BOOLEAN ECC;
      BOOLEAN Compression;
      BOOLEAN DataPadding;
      BOOLEAN ReportSetmarks;
      DWORD DefaultBlockSize;
      DWORD MaximumBlockSize;
      DWORD MinimumBlockSize;
      DWORD MaximumPartitionCount;
      DWORD FeaturesLow;
      DWORD FeaturesHigh;
      DWORD EOTWarningZoneSize;
    } TAPE_GET_DRIVE_PARAMETERS,*PTAPE_GET_DRIVE_PARAMETERS;

    typedef struct _TAPE_SET_DRIVE_PARAMETERS {
      BOOLEAN ECC;
      BOOLEAN Compression;
      BOOLEAN DataPadding;
      BOOLEAN ReportSetmarks;
      DWORD EOTWarningZoneSize;
    } TAPE_SET_DRIVE_PARAMETERS,*PTAPE_SET_DRIVE_PARAMETERS;

    typedef struct _TAPE_GET_MEDIA_PARAMETERS {
      LARGE_INTEGER Capacity;
      LARGE_INTEGER Remaining;
      DWORD BlockSize;
      DWORD PartitionCount;
      BOOLEAN WriteProtected;
    } TAPE_GET_MEDIA_PARAMETERS,*PTAPE_GET_MEDIA_PARAMETERS;

    typedef struct _TAPE_SET_MEDIA_PARAMETERS {
      DWORD BlockSize;
    } TAPE_SET_MEDIA_PARAMETERS,*PTAPE_SET_MEDIA_PARAMETERS;





    typedef struct _TAPE_CREATE_PARTITION {
      DWORD Method;
      DWORD Count;
      DWORD Size;
    } TAPE_CREATE_PARTITION,*PTAPE_CREATE_PARTITION;







    typedef struct _TAPE_WMI_OPERATIONS {
      DWORD Method;
      DWORD DataBufferSize;
      PVOID DataBuffer;
    } TAPE_WMI_OPERATIONS,*PTAPE_WMI_OPERATIONS;

    typedef enum _TAPE_DRIVE_PROBLEM_TYPE {
      TapeDriveProblemNone,TapeDriveReadWriteWarning,TapeDriveReadWriteError,TapeDriveReadWarning,TapeDriveWriteWarning,TapeDriveReadError,TapeDriveWriteError,TapeDriveHardwareError,TapeDriveUnsupportedMedia,TapeDriveScsiConnectionError,TapeDriveTimetoClean,TapeDriveCleanDriveNow,TapeDriveMediaLifeExpired,TapeDriveSnappedTape
    } TAPE_DRIVE_PROBLEM_TYPE;
# 5813 "../tinyccbinary/win32/include/winapi/winnt.h"
    static __inline__ struct _TEB *NtCurrentTeb(void) {
      struct _TEB *ret;
      __asm__ volatile ("movl	%%fs:0x18,%0"
	: "=r" (ret));
      return ret;
    }
# 123 "../tinyccbinary/win32/include/winapi/windef.h" 2




  typedef UINT_PTR WPARAM;
  typedef LONG_PTR LPARAM;
  typedef LONG_PTR LRESULT;
# 151 "../tinyccbinary/win32/include/winapi/windef.h"
  struct HWND__ { int unused; }; typedef struct HWND__ *HWND;
  struct HHOOK__ { int unused; }; typedef struct HHOOK__ *HHOOK;





  typedef WORD ATOM;

  typedef HANDLE *SPHANDLE;
  typedef HANDLE *LPHANDLE;
  typedef HANDLE HGLOBAL;
  typedef HANDLE HLOCAL;
  typedef HANDLE GLOBALHANDLE;
  typedef HANDLE LOCALHANDLE;





  typedef int (__attribute__((__stdcall__)) *FARPROC)();
  typedef int (__attribute__((__stdcall__)) *NEARPROC)();
  typedef int (__attribute__((__stdcall__)) *PROC)();


  typedef void *HGDIOBJ;

  struct HKEY__ { int unused; }; typedef struct HKEY__ *HKEY;
  typedef HKEY *PHKEY;

  struct HACCEL__ { int unused; }; typedef struct HACCEL__ *HACCEL;
  struct HBITMAP__ { int unused; }; typedef struct HBITMAP__ *HBITMAP;
  struct HBRUSH__ { int unused; }; typedef struct HBRUSH__ *HBRUSH;
  struct HCOLORSPACE__ { int unused; }; typedef struct HCOLORSPACE__ *HCOLORSPACE;
  struct HDC__ { int unused; }; typedef struct HDC__ *HDC;
  struct HGLRC__ { int unused; }; typedef struct HGLRC__ *HGLRC;
  struct HDESK__ { int unused; }; typedef struct HDESK__ *HDESK;
  struct HENHMETAFILE__ { int unused; }; typedef struct HENHMETAFILE__ *HENHMETAFILE;
  struct HFONT__ { int unused; }; typedef struct HFONT__ *HFONT;
  struct HICON__ { int unused; }; typedef struct HICON__ *HICON;
  struct HMENU__ { int unused; }; typedef struct HMENU__ *HMENU;
  struct HMETAFILE__ { int unused; }; typedef struct HMETAFILE__ *HMETAFILE;
  struct HINSTANCE__ { int unused; }; typedef struct HINSTANCE__ *HINSTANCE;
  typedef HINSTANCE HMODULE;
  struct HPALETTE__ { int unused; }; typedef struct HPALETTE__ *HPALETTE;
  struct HPEN__ { int unused; }; typedef struct HPEN__ *HPEN;
  struct HRGN__ { int unused; }; typedef struct HRGN__ *HRGN;
  struct HRSRC__ { int unused; }; typedef struct HRSRC__ *HRSRC;
  struct HSTR__ { int unused; }; typedef struct HSTR__ *HSTR;
  struct HTASK__ { int unused; }; typedef struct HTASK__ *HTASK;
  struct HWINSTA__ { int unused; }; typedef struct HWINSTA__ *HWINSTA;
  struct HKL__ { int unused; }; typedef struct HKL__ *HKL;
  struct HMONITOR__ { int unused; }; typedef struct HMONITOR__ *HMONITOR;
  struct HWINEVENTHOOK__ { int unused; }; typedef struct HWINEVENTHOOK__ *HWINEVENTHOOK;
  struct HUMPD__ { int unused; }; typedef struct HUMPD__ *HUMPD;

  typedef int HFILE;
  typedef HICON HCURSOR;
  typedef DWORD COLORREF;
  typedef DWORD *LPCOLORREF;



  typedef struct tagRECT {
    LONG left;
    LONG top;
    LONG right;
    LONG bottom;
  } RECT,*PRECT,*NPRECT,*LPRECT;

  typedef const RECT *LPCRECT;

  typedef struct _RECTL {
    LONG left;
    LONG top;
    LONG right;
    LONG bottom;
  } RECTL,*PRECTL,*LPRECTL;

  typedef const RECTL *LPCRECTL;

  typedef struct tagPOINT {
    LONG x;
    LONG y;
  } POINT,*PPOINT,*NPPOINT,*LPPOINT;

  typedef struct _POINTL {
    LONG x;
    LONG y;
  } POINTL,*PPOINTL;

  typedef struct tagSIZE {
    LONG cx;
    LONG cy;
  } SIZE,*PSIZE,*LPSIZE;

  typedef SIZE SIZEL;
  typedef SIZE *PSIZEL,*LPSIZEL;

  typedef struct tagPOINTS {
    SHORT x;
    SHORT y;
  } POINTS,*PPOINTS,*LPPOINTS;

  typedef struct _FILETIME {
    DWORD dwLowDateTime;
    DWORD dwHighDateTime;
  } FILETIME,*PFILETIME,*LPFILETIME;
# 67 "../tinyccbinary/win32/include/winapi/windows.h" 2
# 1 "../tinyccbinary/win32/include/winapi/winbase.h" 1
# 134 "../tinyccbinary/win32/include/winapi/winbase.h"
  typedef struct _OVERLAPPED {
    ULONG_PTR Internal;
    ULONG_PTR InternalHigh;
    union {
      struct {
	DWORD Offset;
	DWORD OffsetHigh;
      };
      PVOID Pointer;
    };
    HANDLE hEvent;
  } OVERLAPPED,*LPOVERLAPPED;

  typedef struct _SECURITY_ATTRIBUTES {
    DWORD nLength;
    LPVOID lpSecurityDescriptor;
    WINBOOL bInheritHandle;
  } SECURITY_ATTRIBUTES,*PSECURITY_ATTRIBUTES,*LPSECURITY_ATTRIBUTES;

  typedef struct _PROCESS_INFORMATION {
    HANDLE hProcess;
    HANDLE hThread;
    DWORD dwProcessId;
    DWORD dwThreadId;
  } PROCESS_INFORMATION,*PPROCESS_INFORMATION,*LPPROCESS_INFORMATION;
# 168 "../tinyccbinary/win32/include/winapi/winbase.h"
  typedef struct _SYSTEMTIME {
    WORD wYear;
    WORD wMonth;
    WORD wDayOfWeek;
    WORD wDay;
    WORD wHour;
    WORD wMinute;
    WORD wSecond;
    WORD wMilliseconds;
  } SYSTEMTIME,*PSYSTEMTIME,*LPSYSTEMTIME;

  typedef DWORD (__attribute__((__stdcall__)) *PTHREAD_START_ROUTINE)(LPVOID lpThreadParameter);
  typedef PTHREAD_START_ROUTINE LPTHREAD_START_ROUTINE;
  typedef void (__attribute__((__stdcall__)) *PFIBER_START_ROUTINE)(LPVOID lpFiberParameter);
  typedef PFIBER_START_ROUTINE LPFIBER_START_ROUTINE;

  typedef RTL_CRITICAL_SECTION CRITICAL_SECTION;
  typedef PRTL_CRITICAL_SECTION PCRITICAL_SECTION;
  typedef PRTL_CRITICAL_SECTION LPCRITICAL_SECTION;
  typedef RTL_CRITICAL_SECTION_DEBUG CRITICAL_SECTION_DEBUG;
  typedef PRTL_CRITICAL_SECTION_DEBUG PCRITICAL_SECTION_DEBUG;
  typedef PRTL_CRITICAL_SECTION_DEBUG LPCRITICAL_SECTION_DEBUG;

  __attribute__((dllimport)) PVOID __attribute__((__stdcall__)) EncodePointer(PVOID Ptr);
  __attribute__((dllimport)) PVOID __attribute__((__stdcall__)) DecodePointer(PVOID Ptr);
  __attribute__((dllimport)) PVOID __attribute__((__stdcall__)) EncodeSystemPointer(PVOID Ptr);
  __attribute__((dllimport)) PVOID __attribute__((__stdcall__)) DecodeSystemPointer(PVOID Ptr);


  typedef PLDT_ENTRY LPLDT_ENTRY;
# 277 "../tinyccbinary/win32/include/winapi/winbase.h"
  typedef struct _COMMPROP {
    WORD wPacketLength;
    WORD wPacketVersion;
    DWORD dwServiceMask;
    DWORD dwReserved1;
    DWORD dwMaxTxQueue;
    DWORD dwMaxRxQueue;
    DWORD dwMaxBaud;
    DWORD dwProvSubType;
    DWORD dwProvCapabilities;
    DWORD dwSettableParams;
    DWORD dwSettableBaud;
    WORD wSettableData;
    WORD wSettableStopParity;
    DWORD dwCurrentTxQueue;
    DWORD dwCurrentRxQueue;
    DWORD dwProvSpec1;
    DWORD dwProvSpec2;
    WCHAR wcProvChar[1];
  } COMMPROP,*LPCOMMPROP;



  typedef struct _COMSTAT {
    DWORD fCtsHold : 1;
    DWORD fDsrHold : 1;
    DWORD fRlsdHold : 1;
    DWORD fXoffHold : 1;
    DWORD fXoffSent : 1;
    DWORD fEof : 1;
    DWORD fTxim : 1;
    DWORD fReserved : 25;
    DWORD cbInQue;
    DWORD cbOutQue;
  } COMSTAT,*LPCOMSTAT;
# 322 "../tinyccbinary/win32/include/winapi/winbase.h"
  typedef struct _DCB {
    DWORD DCBlength;
    DWORD BaudRate;
    DWORD fBinary: 1;
    DWORD fParity: 1;
    DWORD fOutxCtsFlow:1;
    DWORD fOutxDsrFlow:1;
    DWORD fDtrControl:2;
    DWORD fDsrSensitivity:1;
    DWORD fTXContinueOnXoff: 1;
    DWORD fOutX: 1;
    DWORD fInX: 1;
    DWORD fErrorChar: 1;
    DWORD fNull: 1;
    DWORD fRtsControl:2;
    DWORD fAbortOnError:1;
    DWORD fDummy2:17;
    WORD wReserved;
    WORD XonLim;
    WORD XoffLim;
    BYTE ByteSize;
    BYTE Parity;
    BYTE StopBits;
    char XonChar;
    char XoffChar;
    char ErrorChar;
    char EofChar;
    char EvtChar;
    WORD wReserved1;
  } DCB,*LPDCB;

  typedef struct _COMMTIMEOUTS {
    DWORD ReadIntervalTimeout;
    DWORD ReadTotalTimeoutMultiplier;
    DWORD ReadTotalTimeoutConstant;
    DWORD WriteTotalTimeoutMultiplier;
    DWORD WriteTotalTimeoutConstant;
  } COMMTIMEOUTS,*LPCOMMTIMEOUTS;

  typedef struct _COMMCONFIG {
    DWORD dwSize;
    WORD wVersion;
    WORD wReserved;
    DCB dcb;
    DWORD dwProviderSubType;
    DWORD dwProviderOffset;
    DWORD dwProviderSize;
    WCHAR wcProviderData[1];
  } COMMCONFIG,*LPCOMMCONFIG;

  typedef struct _SYSTEM_INFO {
    union {
      DWORD dwOemId;
      struct {
	WORD wProcessorArchitecture;
	WORD wReserved;
      };
    };
    DWORD dwPageSize;
    LPVOID lpMinimumApplicationAddress;
    LPVOID lpMaximumApplicationAddress;
    DWORD_PTR dwActiveProcessorMask;
    DWORD dwNumberOfProcessors;
    DWORD dwProcessorType;
    DWORD dwAllocationGranularity;
    WORD wProcessorLevel;
    WORD wProcessorRevision;
  } SYSTEM_INFO,*LPSYSTEM_INFO;
# 420 "../tinyccbinary/win32/include/winapi/winbase.h"
  typedef struct _MEMORYSTATUS {
    DWORD dwLength;
    DWORD dwMemoryLoad;
    SIZE_T dwTotalPhys;
    SIZE_T dwAvailPhys;
    SIZE_T dwTotalPageFile;
    SIZE_T dwAvailPageFile;
    SIZE_T dwTotalVirtual;
    SIZE_T dwAvailVirtual;
  } MEMORYSTATUS,*LPMEMORYSTATUS;
# 502 "../tinyccbinary/win32/include/winapi/winbase.h"
  typedef struct _EXCEPTION_DEBUG_INFO {
    EXCEPTION_RECORD ExceptionRecord;
    DWORD dwFirstChance;
  } EXCEPTION_DEBUG_INFO,*LPEXCEPTION_DEBUG_INFO;

  typedef struct _CREATE_THREAD_DEBUG_INFO {
    HANDLE hThread;
    LPVOID lpThreadLocalBase;
    LPTHREAD_START_ROUTINE lpStartAddress;
  } CREATE_THREAD_DEBUG_INFO,*LPCREATE_THREAD_DEBUG_INFO;

  typedef struct _CREATE_PROCESS_DEBUG_INFO {
    HANDLE hFile;
    HANDLE hProcess;
    HANDLE hThread;
    LPVOID lpBaseOfImage;
    DWORD dwDebugInfoFileOffset;
    DWORD nDebugInfoSize;
    LPVOID lpThreadLocalBase;
    LPTHREAD_START_ROUTINE lpStartAddress;
    LPVOID lpImageName;
    WORD fUnicode;
  } CREATE_PROCESS_DEBUG_INFO,*LPCREATE_PROCESS_DEBUG_INFO;

  typedef struct _EXIT_THREAD_DEBUG_INFO {
    DWORD dwExitCode;
  } EXIT_THREAD_DEBUG_INFO,*LPEXIT_THREAD_DEBUG_INFO;

  typedef struct _EXIT_PROCESS_DEBUG_INFO {
    DWORD dwExitCode;
  } EXIT_PROCESS_DEBUG_INFO,*LPEXIT_PROCESS_DEBUG_INFO;

  typedef struct _LOAD_DLL_DEBUG_INFO {
    HANDLE hFile;
    LPVOID lpBaseOfDll;
    DWORD dwDebugInfoFileOffset;
    DWORD nDebugInfoSize;
    LPVOID lpImageName;
    WORD fUnicode;
  } LOAD_DLL_DEBUG_INFO,*LPLOAD_DLL_DEBUG_INFO;

  typedef struct _UNLOAD_DLL_DEBUG_INFO {
    LPVOID lpBaseOfDll;
  } UNLOAD_DLL_DEBUG_INFO,*LPUNLOAD_DLL_DEBUG_INFO;

  typedef struct _OUTPUT_DEBUG_STRING_INFO {
    LPSTR lpDebugStringData;
    WORD fUnicode;
    WORD nDebugStringLength;
  } OUTPUT_DEBUG_STRING_INFO,*LPOUTPUT_DEBUG_STRING_INFO;

  typedef struct _RIP_INFO {
    DWORD dwError;
    DWORD dwType;
  } RIP_INFO,*LPRIP_INFO;

  typedef struct _DEBUG_EVENT {
    DWORD dwDebugEventCode;
    DWORD dwProcessId;
    DWORD dwThreadId;
    union {
      EXCEPTION_DEBUG_INFO Exception;
      CREATE_THREAD_DEBUG_INFO CreateThread;
      CREATE_PROCESS_DEBUG_INFO CreateProcessInfo;
      EXIT_THREAD_DEBUG_INFO ExitThread;
      EXIT_PROCESS_DEBUG_INFO ExitProcess;
      LOAD_DLL_DEBUG_INFO LoadDll;
      UNLOAD_DLL_DEBUG_INFO UnloadDll;
      OUTPUT_DEBUG_STRING_INFO DebugString;
      RIP_INFO RipInfo;
    } u;
  } DEBUG_EVENT,*LPDEBUG_EVENT;

  typedef PCONTEXT LPCONTEXT;
  typedef PEXCEPTION_RECORD LPEXCEPTION_RECORD;
  typedef PEXCEPTION_POINTERS LPEXCEPTION_POINTERS;
# 754 "../tinyccbinary/win32/include/winapi/winbase.h"
  typedef struct _OFSTRUCT {
    BYTE cBytes;
    BYTE fFixedDisk;
    WORD nErrCode;
    WORD Reserved1;
    WORD Reserved2;
    CHAR szPathName[128];
  } OFSTRUCT,*LPOFSTRUCT,*POFSTRUCT;
# 971 "../tinyccbinary/win32/include/winapi/winbase.h"
  LONG __attribute__((__stdcall__)) InterlockedIncrement(LONG volatile *lpAddend);
  LONG __attribute__((__stdcall__)) InterlockedDecrement(LONG volatile *lpAddend);
  LONG __attribute__((__stdcall__)) InterlockedExchange(LONG volatile *Target,LONG Value);



  LONG __attribute__((__stdcall__)) InterlockedExchangeAdd(LONG volatile *Addend,LONG Value);
  LONG __attribute__((__stdcall__)) InterlockedCompareExchange(LONG volatile *Destination,LONG Exchange,LONG Comperand);
  LONGLONG __attribute__((__stdcall__)) InterlockedCompareExchange64(LONGLONG volatile *Destination,LONGLONG Exchange,LONGLONG Comperand);

  static __inline__ LONGLONG InterlockedAnd64 (LONGLONG volatile *Destination,LONGLONG Value) {
    LONGLONG Old;
    do {
      Old = *Destination;
    } while(InterlockedCompareExchange64(Destination,Old & Value,Old)!=Old);
    return Old;
  }

  static __inline__ LONGLONG InterlockedOr64 (LONGLONG volatile *Destination,LONGLONG Value) {
    LONGLONG Old;
    do {
      Old = *Destination;
    } while(InterlockedCompareExchange64(Destination,Old | Value,Old)!=Old);
    return Old;
  }

  static __inline__ LONGLONG InterlockedXor64 (LONGLONG volatile *Destination,LONGLONG Value) {
    LONGLONG Old;
    do {
      Old = *Destination;
    } while(InterlockedCompareExchange64(Destination,Old ^ Value,Old)!=Old);

    return Old;
  }

  static __inline__ LONGLONG InterlockedIncrement64(LONGLONG volatile *Addend) {
    LONGLONG Old;
    do {
      Old = *Addend;
    } while(InterlockedCompareExchange64(Addend,Old + 1,Old)!=Old);
    return Old + 1;
  }

  static __inline__ LONGLONG InterlockedDecrement64(LONGLONG volatile *Addend) {
    LONGLONG Old;
    do {
      Old = *Addend;
    } while(InterlockedCompareExchange64(Addend,Old - 1,Old)!=Old);
    return Old - 1;
  }

  static __inline__ LONGLONG InterlockedExchange64(LONGLONG volatile *Target,LONGLONG Value) {
    LONGLONG Old;
    do {
      Old = *Target;
    } while(InterlockedCompareExchange64(Target,Value,Old)!=Old);
    return Old;
  }

  static __inline__ LONGLONG InterlockedExchangeAdd64(LONGLONG volatile *Addend,LONGLONG Value) {
    LONGLONG Old;
    do {
      Old = *Addend;
    } while(InterlockedCompareExchange64(Addend,Old + Value,Old)!=Old);
    return Old;
  }
# 1062 "../tinyccbinary/win32/include/winapi/winbase.h"
  __attribute__((dllimport)) void __attribute__((__stdcall__)) InitializeSListHead(PSLIST_HEADER ListHead);
  __attribute__((dllimport)) PSINGLE_LIST_ENTRY __attribute__((__stdcall__)) InterlockedPopEntrySList(PSLIST_HEADER ListHead);
  __attribute__((dllimport)) PSINGLE_LIST_ENTRY __attribute__((__stdcall__)) InterlockedPushEntrySList(PSLIST_HEADER ListHead,PSINGLE_LIST_ENTRY ListEntry);
  __attribute__((dllimport)) PSINGLE_LIST_ENTRY __attribute__((__stdcall__)) InterlockedFlushSList(PSLIST_HEADER ListHead);
  __attribute__((dllimport)) USHORT __attribute__((__stdcall__)) QueryDepthSList(PSLIST_HEADER ListHead);




  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FreeResource(HGLOBAL hResData);
  __attribute__((dllimport)) LPVOID __attribute__((__stdcall__)) LockResource(HGLOBAL hResData);






  int __attribute__((__stdcall__)) WinMain(HINSTANCE hInstance,HINSTANCE hPrevInstance,LPSTR lpCmdLine,int nShowCmd);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FreeLibrary(HMODULE hLibModule);
  __attribute__((dllimport)) __attribute__((noreturn)) void __attribute__((__stdcall__)) FreeLibraryAndExitThread(HMODULE hLibModule,DWORD dwExitCode);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DisableThreadLibraryCalls(HMODULE hLibModule);
  __attribute__((dllimport)) FARPROC __attribute__((__stdcall__)) GetProcAddress(HMODULE hModule,LPCSTR lpProcName);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetVersion(void);
  __attribute__((dllimport)) HGLOBAL __attribute__((__stdcall__)) GlobalAlloc(UINT uFlags,SIZE_T dwBytes);
  __attribute__((dllimport)) HGLOBAL __attribute__((__stdcall__)) GlobalReAlloc(HGLOBAL hMem,SIZE_T dwBytes,UINT uFlags);
  __attribute__((dllimport)) SIZE_T __attribute__((__stdcall__)) GlobalSize(HGLOBAL hMem);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GlobalFlags(HGLOBAL hMem);
  __attribute__((dllimport)) LPVOID __attribute__((__stdcall__)) GlobalLock(HGLOBAL hMem);
  __attribute__((dllimport)) HGLOBAL __attribute__((__stdcall__)) GlobalHandle(LPCVOID pMem);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GlobalUnlock(HGLOBAL hMem);
  __attribute__((dllimport)) HGLOBAL __attribute__((__stdcall__)) GlobalFree(HGLOBAL hMem);
  __attribute__((dllimport)) SIZE_T __attribute__((__stdcall__)) GlobalCompact(DWORD dwMinFree);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) GlobalFix(HGLOBAL hMem);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) GlobalUnfix(HGLOBAL hMem);
  __attribute__((dllimport)) LPVOID __attribute__((__stdcall__)) GlobalWire(HGLOBAL hMem);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GlobalUnWire(HGLOBAL hMem);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) GlobalMemoryStatus(LPMEMORYSTATUS lpBuffer);

  typedef struct _MEMORYSTATUSEX {
    DWORD dwLength;
    DWORD dwMemoryLoad;
    DWORDLONG ullTotalPhys;
    DWORDLONG ullAvailPhys;
    DWORDLONG ullTotalPageFile;
    DWORDLONG ullAvailPageFile;
    DWORDLONG ullTotalVirtual;
    DWORDLONG ullAvailVirtual;
    DWORDLONG ullAvailExtendedVirtual;
  } MEMORYSTATUSEX,*LPMEMORYSTATUSEX;

  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GlobalMemoryStatusEx(LPMEMORYSTATUSEX lpBuffer);
  __attribute__((dllimport)) HLOCAL __attribute__((__stdcall__)) LocalAlloc(UINT uFlags,SIZE_T uBytes);
  __attribute__((dllimport)) HLOCAL __attribute__((__stdcall__)) LocalReAlloc(HLOCAL hMem,SIZE_T uBytes,UINT uFlags);
  __attribute__((dllimport)) LPVOID __attribute__((__stdcall__)) LocalLock(HLOCAL hMem);
  __attribute__((dllimport)) HLOCAL __attribute__((__stdcall__)) LocalHandle(LPCVOID pMem);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) LocalUnlock(HLOCAL hMem);
  __attribute__((dllimport)) SIZE_T __attribute__((__stdcall__)) LocalSize(HLOCAL hMem);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) LocalFlags(HLOCAL hMem);
  __attribute__((dllimport)) HLOCAL __attribute__((__stdcall__)) LocalFree(HLOCAL hMem);
  __attribute__((dllimport)) SIZE_T __attribute__((__stdcall__)) LocalShrink(HLOCAL hMem,UINT cbNewSize);
  __attribute__((dllimport)) SIZE_T __attribute__((__stdcall__)) LocalCompact(UINT uMinFree);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FlushInstructionCache(HANDLE hProcess,LPCVOID lpBaseAddress,SIZE_T dwSize);
  __attribute__((dllimport)) LPVOID __attribute__((__stdcall__)) VirtualAlloc(LPVOID lpAddress,SIZE_T dwSize,DWORD flAllocationType,DWORD flProtect);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) VirtualFree(LPVOID lpAddress,SIZE_T dwSize,DWORD dwFreeType);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) VirtualProtect(LPVOID lpAddress,SIZE_T dwSize,DWORD flNewProtect,PDWORD lpflOldProtect);
  __attribute__((dllimport)) SIZE_T __attribute__((__stdcall__)) VirtualQuery(LPCVOID lpAddress,PMEMORY_BASIC_INFORMATION lpBuffer,SIZE_T dwLength);
  __attribute__((dllimport)) LPVOID __attribute__((__stdcall__)) VirtualAllocEx(HANDLE hProcess,LPVOID lpAddress,SIZE_T dwSize,DWORD flAllocationType,DWORD flProtect);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetWriteWatch(DWORD dwFlags,PVOID lpBaseAddress,SIZE_T dwRegionSize,PVOID *lpAddresses,ULONG_PTR *lpdwCount,PULONG lpdwGranularity);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) ResetWriteWatch(LPVOID lpBaseAddress,SIZE_T dwRegionSize);
  __attribute__((dllimport)) SIZE_T __attribute__((__stdcall__)) GetLargePageMinimum(void);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) EnumSystemFirmwareTables(DWORD FirmwareTableProviderSignature,PVOID pFirmwareTableEnumBuffer,DWORD BufferSize);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetSystemFirmwareTable(DWORD FirmwareTableProviderSignature,DWORD FirmwareTableID,PVOID pFirmwareTableBuffer,DWORD BufferSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) VirtualFreeEx(HANDLE hProcess,LPVOID lpAddress,SIZE_T dwSize,DWORD dwFreeType);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) VirtualProtectEx(HANDLE hProcess,LPVOID lpAddress,SIZE_T dwSize,DWORD flNewProtect,PDWORD lpflOldProtect);
  __attribute__((dllimport)) SIZE_T __attribute__((__stdcall__)) VirtualQueryEx(HANDLE hProcess,LPCVOID lpAddress,PMEMORY_BASIC_INFORMATION lpBuffer,SIZE_T dwLength);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) HeapCreate(DWORD flOptions,SIZE_T dwInitialSize,SIZE_T dwMaximumSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) HeapDestroy(HANDLE hHeap);
  __attribute__((dllimport)) LPVOID __attribute__((__stdcall__)) HeapAlloc(HANDLE hHeap,DWORD dwFlags,SIZE_T dwBytes);
  __attribute__((dllimport)) LPVOID __attribute__((__stdcall__)) HeapReAlloc(HANDLE hHeap,DWORD dwFlags,LPVOID lpMem,SIZE_T dwBytes);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) HeapFree(HANDLE hHeap,DWORD dwFlags,LPVOID lpMem);
  __attribute__((dllimport)) SIZE_T __attribute__((__stdcall__)) HeapSize(HANDLE hHeap,DWORD dwFlags,LPCVOID lpMem);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) HeapValidate(HANDLE hHeap,DWORD dwFlags,LPCVOID lpMem);
  __attribute__((dllimport)) SIZE_T __attribute__((__stdcall__)) HeapCompact(HANDLE hHeap,DWORD dwFlags);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) GetProcessHeap(void);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetProcessHeaps(DWORD NumberOfHeaps,PHANDLE ProcessHeaps);

  typedef struct _PROCESS_HEAP_ENTRY {
    PVOID lpData;
    DWORD cbData;
    BYTE cbOverhead;
    BYTE iRegionIndex;
    WORD wFlags;
    union {
      struct {
	HANDLE hMem;
	DWORD dwReserved[3];
      } Block;
      struct {
	DWORD dwCommittedSize;
	DWORD dwUnCommittedSize;
	LPVOID lpFirstBlock;
	LPVOID lpLastBlock;
      } Region;
    };
  } PROCESS_HEAP_ENTRY,*LPPROCESS_HEAP_ENTRY,*PPROCESS_HEAP_ENTRY;







  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) HeapLock(HANDLE hHeap);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) HeapUnlock(HANDLE hHeap);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) HeapWalk(HANDLE hHeap,LPPROCESS_HEAP_ENTRY lpEntry);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) HeapSetInformation(HANDLE HeapHandle,HEAP_INFORMATION_CLASS HeapInformationClass,PVOID HeapInformation,SIZE_T HeapInformationLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) HeapQueryInformation(HANDLE HeapHandle,HEAP_INFORMATION_CLASS HeapInformationClass,PVOID HeapInformation,SIZE_T HeapInformationLength,PSIZE_T ReturnLength);
# 1210 "../tinyccbinary/win32/include/winapi/winbase.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetBinaryTypeA(LPCSTR lpApplicationName,LPDWORD lpBinaryType);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetBinaryTypeW(LPCWSTR lpApplicationName,LPDWORD lpBinaryType);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetShortPathNameA(LPCSTR lpszLongPath,LPSTR lpszShortPath,DWORD cchBuffer);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetShortPathNameW(LPCWSTR lpszLongPath,LPWSTR lpszShortPath,DWORD cchBuffer);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetLongPathNameA(LPCSTR lpszShortPath,LPSTR lpszLongPath,DWORD cchBuffer);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetLongPathNameW(LPCWSTR lpszShortPath,LPWSTR lpszLongPath,DWORD cchBuffer);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetProcessAffinityMask(HANDLE hProcess,PDWORD_PTR lpProcessAffinityMask,PDWORD_PTR lpSystemAffinityMask);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetProcessAffinityMask(HANDLE hProcess,DWORD_PTR dwProcessAffinityMask);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetProcessHandleCount(HANDLE hProcess,PDWORD pdwHandleCount);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetProcessTimes(HANDLE hProcess,LPFILETIME lpCreationTime,LPFILETIME lpExitTime,LPFILETIME lpKernelTime,LPFILETIME lpUserTime);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetProcessIoCounters(HANDLE hProcess,PIO_COUNTERS lpIoCounters);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetProcessWorkingSetSize(HANDLE hProcess,PSIZE_T lpMinimumWorkingSetSize,PSIZE_T lpMaximumWorkingSetSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetProcessWorkingSetSizeEx(HANDLE hProcess,PSIZE_T lpMinimumWorkingSetSize,PSIZE_T lpMaximumWorkingSetSize,PDWORD Flags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetProcessWorkingSetSize(HANDLE hProcess,SIZE_T dwMinimumWorkingSetSize,SIZE_T dwMaximumWorkingSetSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetProcessWorkingSetSizeEx(HANDLE hProcess,SIZE_T dwMinimumWorkingSetSize,SIZE_T dwMaximumWorkingSetSize,DWORD Flags);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) OpenProcess(DWORD dwDesiredAccess,WINBOOL bInheritHandle,DWORD dwProcessId);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) GetCurrentProcess(void);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetCurrentProcessId(void);
  __attribute__((dllimport)) __attribute__((noreturn)) void __attribute__((__stdcall__)) ExitProcess(UINT uExitCode);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) TerminateProcess(HANDLE hProcess,UINT uExitCode);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetExitCodeProcess(HANDLE hProcess,LPDWORD lpExitCode);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) FatalExit(int ExitCode);

  __attribute__((dllimport)) LPWCH __attribute__((__stdcall__)) GetEnvironmentStringsW(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetEnvironmentStringsA(LPCH NewEnvironment);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetEnvironmentStringsW(LPWCH NewEnvironment);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FreeEnvironmentStringsA(LPCH);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FreeEnvironmentStringsW(LPWCH);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) RaiseException(DWORD dwExceptionCode,DWORD dwExceptionFlags,DWORD nNumberOfArguments,const ULONG_PTR *lpArguments);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) UnhandledExceptionFilter(struct _EXCEPTION_POINTERS *ExceptionInfo);

  typedef LONG (__attribute__((__stdcall__)) *PTOP_LEVEL_EXCEPTION_FILTER)(struct _EXCEPTION_POINTERS *ExceptionInfo);
  typedef PTOP_LEVEL_EXCEPTION_FILTER LPTOP_LEVEL_EXCEPTION_FILTER;

  __attribute__((dllimport)) LPTOP_LEVEL_EXCEPTION_FILTER __attribute__((__stdcall__)) SetUnhandledExceptionFilter(LPTOP_LEVEL_EXCEPTION_FILTER lpTopLevelExceptionFilter);



  __attribute__((dllimport)) LPVOID __attribute__((__stdcall__)) CreateFiber(SIZE_T dwStackSize,LPFIBER_START_ROUTINE lpStartAddress,LPVOID lpParameter);
  __attribute__((dllimport)) LPVOID __attribute__((__stdcall__)) CreateFiberEx(SIZE_T dwStackCommitSize,SIZE_T dwStackReserveSize,DWORD dwFlags,LPFIBER_START_ROUTINE lpStartAddress,LPVOID lpParameter);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) DeleteFiber(LPVOID lpFiber);
  __attribute__((dllimport)) LPVOID __attribute__((__stdcall__)) ConvertThreadToFiber(LPVOID lpParameter);
  __attribute__((dllimport)) LPVOID __attribute__((__stdcall__)) ConvertThreadToFiberEx(LPVOID lpParameter,DWORD dwFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ConvertFiberToThread(void);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) SwitchToFiber(LPVOID lpFiber);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SwitchToThread(void);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateThread(LPSECURITY_ATTRIBUTES lpThreadAttributes,SIZE_T dwStackSize,LPTHREAD_START_ROUTINE lpStartAddress,LPVOID lpParameter,DWORD dwCreationFlags,LPDWORD lpThreadId);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateRemoteThread(HANDLE hProcess,LPSECURITY_ATTRIBUTES lpThreadAttributes,SIZE_T dwStackSize,LPTHREAD_START_ROUTINE lpStartAddress,LPVOID lpParameter,DWORD dwCreationFlags,LPDWORD lpThreadId);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) GetCurrentThread(void);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetCurrentThreadId(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetThreadStackGuarantee (PULONG StackSizeInBytes);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetProcessIdOfThread(HANDLE Thread);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetThreadId(HANDLE Thread);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetProcessId(HANDLE Process);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetCurrentProcessorNumber(void);
  __attribute__((dllimport)) DWORD_PTR __attribute__((__stdcall__)) SetThreadAffinityMask(HANDLE hThread,DWORD_PTR dwThreadAffinityMask);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) SetThreadIdealProcessor(HANDLE hThread,DWORD dwIdealProcessor);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetProcessPriorityBoost(HANDLE hProcess,WINBOOL bDisablePriorityBoost);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetProcessPriorityBoost(HANDLE hProcess,PBOOL pDisablePriorityBoost);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) RequestWakeupLatency(LATENCY_TIME latency);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsSystemResumeAutomatic(void);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) OpenThread(DWORD dwDesiredAccess,WINBOOL bInheritHandle,DWORD dwThreadId);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetThreadPriority(HANDLE hThread,int nPriority);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetThreadPriorityBoost(HANDLE hThread,WINBOOL bDisablePriorityBoost);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetThreadPriorityBoost(HANDLE hThread,PBOOL pDisablePriorityBoost);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetThreadPriority(HANDLE hThread);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetThreadTimes(HANDLE hThread,LPFILETIME lpCreationTime,LPFILETIME lpExitTime,LPFILETIME lpKernelTime,LPFILETIME lpUserTime);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetThreadIOPendingFlag(HANDLE hThread,PBOOL lpIOIsPending);
  __attribute__((dllimport)) __attribute__((noreturn)) void __attribute__((__stdcall__)) ExitThread(DWORD dwExitCode);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) TerminateThread(HANDLE hThread,DWORD dwExitCode);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetExitCodeThread(HANDLE hThread,LPDWORD lpExitCode);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetThreadSelectorEntry(HANDLE hThread,DWORD dwSelector,LPLDT_ENTRY lpSelectorEntry);
  __attribute__((dllimport)) EXECUTION_STATE __attribute__((__stdcall__)) SetThreadExecutionState(EXECUTION_STATE esFlags);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetLastError(void);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) SetLastError(DWORD dwErrCode);
# 1300 "../tinyccbinary/win32/include/winapi/winbase.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetOverlappedResult(HANDLE hFile,LPOVERLAPPED lpOverlapped,LPDWORD lpNumberOfBytesTransferred,WINBOOL bWait);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateIoCompletionPort(HANDLE FileHandle,HANDLE ExistingCompletionPort,ULONG_PTR CompletionKey,DWORD NumberOfConcurrentThreads);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetQueuedCompletionStatus(HANDLE CompletionPort,LPDWORD lpNumberOfBytesTransferred,PULONG_PTR lpCompletionKey,LPOVERLAPPED *lpOverlapped,DWORD dwMilliseconds);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PostQueuedCompletionStatus(HANDLE CompletionPort,DWORD dwNumberOfBytesTransferred,ULONG_PTR dwCompletionKey,LPOVERLAPPED lpOverlapped);






  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) SetErrorMode(UINT uMode);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ReadProcessMemory(HANDLE hProcess,LPCVOID lpBaseAddress,LPVOID lpBuffer,SIZE_T nSize,SIZE_T *lpNumberOfBytesRead);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WriteProcessMemory(HANDLE hProcess,LPVOID lpBaseAddress,LPCVOID lpBuffer,SIZE_T nSize,SIZE_T *lpNumberOfBytesWritten);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetThreadContext(HANDLE hThread,LPCONTEXT lpContext);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetThreadContext(HANDLE hThread,const CONTEXT *lpContext);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) SuspendThread(HANDLE hThread);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) ResumeThread(HANDLE hThread);

  typedef void (__attribute__((__stdcall__)) *PAPCFUNC)(ULONG_PTR dwParam);

  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) QueueUserAPC(PAPCFUNC pfnAPC,HANDLE hThread,ULONG_PTR dwData);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsDebuggerPresent(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CheckRemoteDebuggerPresent(HANDLE hProcess,PBOOL pbDebuggerPresent);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) DebugBreak(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WaitForDebugEvent(LPDEBUG_EVENT lpDebugEvent,DWORD dwMilliseconds);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ContinueDebugEvent(DWORD dwProcessId,DWORD dwThreadId,DWORD dwContinueStatus);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DebugActiveProcess(DWORD dwProcessId);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DebugActiveProcessStop(DWORD dwProcessId);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DebugSetProcessKillOnExit(WINBOOL KillOnExit);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DebugBreakProcess(HANDLE Process);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) InitializeCriticalSection(LPCRITICAL_SECTION lpCriticalSection);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) EnterCriticalSection(LPCRITICAL_SECTION lpCriticalSection);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) LeaveCriticalSection(LPCRITICAL_SECTION lpCriticalSection);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) InitializeCriticalSectionAndSpinCount(LPCRITICAL_SECTION lpCriticalSection,DWORD dwSpinCount);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) SetCriticalSectionSpinCount(LPCRITICAL_SECTION lpCriticalSection,DWORD dwSpinCount);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) TryEnterCriticalSection(LPCRITICAL_SECTION lpCriticalSection);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) DeleteCriticalSection(LPCRITICAL_SECTION lpCriticalSection);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetEvent(HANDLE hEvent);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ResetEvent(HANDLE hEvent);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PulseEvent(HANDLE hEvent);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ReleaseSemaphore(HANDLE hSemaphore,LONG lReleaseCount,LPLONG lpPreviousCount);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ReleaseMutex(HANDLE hMutex);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) WaitForSingleObject(HANDLE hHandle,DWORD dwMilliseconds);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) WaitForMultipleObjects(DWORD nCount,const HANDLE *lpHandles,WINBOOL bWaitAll,DWORD dwMilliseconds);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) Sleep(DWORD dwMilliseconds);
  __attribute__((dllimport)) HGLOBAL __attribute__((__stdcall__)) LoadResource(HMODULE hModule,HRSRC hResInfo);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) SizeofResource(HMODULE hModule,HRSRC hResInfo);
  __attribute__((dllimport)) ATOM __attribute__((__stdcall__)) GlobalDeleteAtom(ATOM nAtom);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) InitAtomTable(DWORD nSize);
  __attribute__((dllimport)) ATOM __attribute__((__stdcall__)) DeleteAtom(ATOM nAtom);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) SetHandleCount(UINT uNumber);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetLogicalDrives(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) LockFile(HANDLE hFile,DWORD dwFileOffsetLow,DWORD dwFileOffsetHigh,DWORD nNumberOfBytesToLockLow,DWORD nNumberOfBytesToLockHigh);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) UnlockFile(HANDLE hFile,DWORD dwFileOffsetLow,DWORD dwFileOffsetHigh,DWORD nNumberOfBytesToUnlockLow,DWORD nNumberOfBytesToUnlockHigh);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) LockFileEx(HANDLE hFile,DWORD dwFlags,DWORD dwReserved,DWORD nNumberOfBytesToLockLow,DWORD nNumberOfBytesToLockHigh,LPOVERLAPPED lpOverlapped);




  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) UnlockFileEx(HANDLE hFile,DWORD dwReserved,DWORD nNumberOfBytesToUnlockLow,DWORD nNumberOfBytesToUnlockHigh,LPOVERLAPPED lpOverlapped);

  typedef struct _BY_HANDLE_FILE_INFORMATION {
    DWORD dwFileAttributes;
    FILETIME ftCreationTime;
    FILETIME ftLastAccessTime;
    FILETIME ftLastWriteTime;
    DWORD dwVolumeSerialNumber;
    DWORD nFileSizeHigh;
    DWORD nFileSizeLow;
    DWORD nNumberOfLinks;
    DWORD nFileIndexHigh;
    DWORD nFileIndexLow;
  } BY_HANDLE_FILE_INFORMATION,*PBY_HANDLE_FILE_INFORMATION,*LPBY_HANDLE_FILE_INFORMATION;







  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetFileInformationByHandle(HANDLE hFile,LPBY_HANDLE_FILE_INFORMATION lpFileInformation);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetFileType(HANDLE hFile);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetFileSize(HANDLE hFile,LPDWORD lpFileSizeHigh);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetFileSizeEx(HANDLE hFile,PLARGE_INTEGER lpFileSize);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) GetStdHandle(DWORD nStdHandle);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetStdHandle(DWORD nStdHandle,HANDLE hHandle);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WriteFile(HANDLE hFile,LPCVOID lpBuffer,DWORD nNumberOfBytesToWrite,LPDWORD lpNumberOfBytesWritten,LPOVERLAPPED lpOverlapped);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ReadFile(HANDLE hFile,LPVOID lpBuffer,DWORD nNumberOfBytesToRead,LPDWORD lpNumberOfBytesRead,LPOVERLAPPED lpOverlapped);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FlushFileBuffers(HANDLE hFile);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DeviceIoControl(HANDLE hDevice,DWORD dwIoControlCode,LPVOID lpInBuffer,DWORD nInBufferSize,LPVOID lpOutBuffer,DWORD nOutBufferSize,LPDWORD lpBytesReturned,LPOVERLAPPED lpOverlapped);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) RequestDeviceWakeup(HANDLE hDevice);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CancelDeviceWakeupRequest(HANDLE hDevice);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetDevicePowerState(HANDLE hDevice,WINBOOL *pfOn);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetMessageWaitingIndicator(HANDLE hMsgIndicator,ULONG ulMsgCount);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetEndOfFile(HANDLE hFile);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) SetFilePointer(HANDLE hFile,LONG lDistanceToMove,PLONG lpDistanceToMoveHigh,DWORD dwMoveMethod);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetFilePointerEx(HANDLE hFile,LARGE_INTEGER liDistanceToMove,PLARGE_INTEGER lpNewFilePointer,DWORD dwMoveMethod);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FindClose(HANDLE hFindFile);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetFileTime(HANDLE hFile,LPFILETIME lpCreationTime,LPFILETIME lpLastAccessTime,LPFILETIME lpLastWriteTime);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetFileTime(HANDLE hFile,const FILETIME *lpCreationTime,const FILETIME *lpLastAccessTime,const FILETIME *lpLastWriteTime);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetFileValidData(HANDLE hFile,LONGLONG ValidDataLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetFileShortNameA(HANDLE hFile,LPCSTR lpShortName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetFileShortNameW(HANDLE hFile,LPCWSTR lpShortName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CloseHandle(HANDLE hObject);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DuplicateHandle(HANDLE hSourceProcessHandle,HANDLE hSourceHandle,HANDLE hTargetProcessHandle,LPHANDLE lpTargetHandle,DWORD dwDesiredAccess,WINBOOL bInheritHandle,DWORD dwOptions);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetHandleInformation(HANDLE hObject,LPDWORD lpdwFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetHandleInformation(HANDLE hObject,DWORD dwMask,DWORD dwFlags);






  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) LoadModule(LPCSTR lpModuleName,LPVOID lpParameterBlock);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) WinExec(LPCSTR lpCmdLine,UINT uCmdShow);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ClearCommBreak(HANDLE hFile);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ClearCommError(HANDLE hFile,LPDWORD lpErrors,LPCOMSTAT lpStat);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetupComm(HANDLE hFile,DWORD dwInQueue,DWORD dwOutQueue);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EscapeCommFunction(HANDLE hFile,DWORD dwFunc);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCommConfig(HANDLE hCommDev,LPCOMMCONFIG lpCC,LPDWORD lpdwSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCommMask(HANDLE hFile,LPDWORD lpEvtMask);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCommProperties(HANDLE hFile,LPCOMMPROP lpCommProp);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCommModemStatus(HANDLE hFile,LPDWORD lpModemStat);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCommState(HANDLE hFile,LPDCB lpDCB);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCommTimeouts(HANDLE hFile,LPCOMMTIMEOUTS lpCommTimeouts);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PurgeComm(HANDLE hFile,DWORD dwFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetCommBreak(HANDLE hFile);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetCommConfig(HANDLE hCommDev,LPCOMMCONFIG lpCC,DWORD dwSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetCommMask(HANDLE hFile,DWORD dwEvtMask);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetCommState(HANDLE hFile,LPDCB lpDCB);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetCommTimeouts(HANDLE hFile,LPCOMMTIMEOUTS lpCommTimeouts);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) TransmitCommChar(HANDLE hFile,char cChar);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WaitCommEvent(HANDLE hFile,LPDWORD lpEvtMask,LPOVERLAPPED lpOverlapped);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) SetTapePosition(HANDLE hDevice,DWORD dwPositionMethod,DWORD dwPartition,DWORD dwOffsetLow,DWORD dwOffsetHigh,WINBOOL bImmediate);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetTapePosition(HANDLE hDevice,DWORD dwPositionType,LPDWORD lpdwPartition,LPDWORD lpdwOffsetLow,LPDWORD lpdwOffsetHigh);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) PrepareTape(HANDLE hDevice,DWORD dwOperation,WINBOOL bImmediate);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) EraseTape(HANDLE hDevice,DWORD dwEraseType,WINBOOL bImmediate);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) CreateTapePartition(HANDLE hDevice,DWORD dwPartitionMethod,DWORD dwCount,DWORD dwSize);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) WriteTapemark(HANDLE hDevice,DWORD dwTapemarkType,DWORD dwTapemarkCount,WINBOOL bImmediate);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetTapeStatus(HANDLE hDevice);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetTapeParameters(HANDLE hDevice,DWORD dwOperation,LPDWORD lpdwSize,LPVOID lpTapeInformation);




  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) SetTapeParameters(HANDLE hDevice,DWORD dwOperation,LPVOID lpTapeInformation);




  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) Beep(DWORD dwFreq,DWORD dwDuration);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) MulDiv(int nNumber,int nNumerator,int nDenominator);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) GetSystemTime(LPSYSTEMTIME lpSystemTime);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) GetSystemTimeAsFileTime(LPFILETIME lpSystemTimeAsFileTime);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetSystemTime(const SYSTEMTIME *lpSystemTime);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) GetLocalTime(LPSYSTEMTIME lpSystemTime);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetLocalTime(const SYSTEMTIME *lpSystemTime);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) GetSystemInfo(LPSYSTEM_INFO lpSystemInfo);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetSystemFileCacheSize(SIZE_T MinimumFileCacheSize,SIZE_T MaximumFileCacheSize,DWORD Flags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetSystemFileCacheSize(PSIZE_T lpMinimumFileCacheSize,PSIZE_T lpMaximumFileCacheSize,PDWORD lpFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetSystemRegistryQuota(PDWORD pdwQuotaAllowed,PDWORD pdwQuotaUsed);
  WINBOOL __attribute__((__stdcall__)) GetSystemTimes(LPFILETIME lpIdleTime,LPFILETIME lpKernelTime,LPFILETIME lpUserTime);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) GetNativeSystemInfo(LPSYSTEM_INFO lpSystemInfo);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsProcessorFeaturePresent(DWORD ProcessorFeature);

  typedef struct _TIME_ZONE_INFORMATION {
    LONG Bias;
    WCHAR StandardName[32];
    SYSTEMTIME StandardDate;
    LONG StandardBias;
    WCHAR DaylightName[32];
    SYSTEMTIME DaylightDate;
    LONG DaylightBias;
  } TIME_ZONE_INFORMATION,*PTIME_ZONE_INFORMATION,*LPTIME_ZONE_INFORMATION;







  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SystemTimeToTzSpecificLocalTime(LPTIME_ZONE_INFORMATION lpTimeZoneInformation,LPSYSTEMTIME lpUniversalTime,LPSYSTEMTIME lpLocalTime);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) TzSpecificLocalTimeToSystemTime(LPTIME_ZONE_INFORMATION lpTimeZoneInformation,LPSYSTEMTIME lpLocalTime,LPSYSTEMTIME lpUniversalTime);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetTimeZoneInformation(LPTIME_ZONE_INFORMATION lpTimeZoneInformation);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetTimeZoneInformation(const TIME_ZONE_INFORMATION *lpTimeZoneInformation);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SystemTimeToFileTime(const SYSTEMTIME *lpSystemTime,LPFILETIME lpFileTime);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FileTimeToLocalFileTime(const FILETIME *lpFileTime,LPFILETIME lpLocalFileTime);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) LocalFileTimeToFileTime(const FILETIME *lpLocalFileTime,LPFILETIME lpFileTime);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FileTimeToSystemTime(const FILETIME *lpFileTime,LPSYSTEMTIME lpSystemTime);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) CompareFileTime(const FILETIME *lpFileTime1,const FILETIME *lpFileTime2);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FileTimeToDosDateTime(const FILETIME *lpFileTime,LPWORD lpFatDate,LPWORD lpFatTime);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DosDateTimeToFileTime(WORD wFatDate,WORD wFatTime,LPFILETIME lpFileTime);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetTickCount(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetSystemTimeAdjustment(DWORD dwTimeAdjustment,WINBOOL bTimeAdjustmentDisabled);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetSystemTimeAdjustment(PDWORD lpTimeAdjustment,PDWORD lpTimeIncrement,PBOOL lpTimeAdjustmentDisabled);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) FormatMessageA(DWORD dwFlags,LPCVOID lpSource,DWORD dwMessageId,DWORD dwLanguageId,LPSTR lpBuffer,DWORD nSize,va_list *Arguments);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) FormatMessageW(DWORD dwFlags,LPCVOID lpSource,DWORD dwMessageId,DWORD dwLanguageId,LPWSTR lpBuffer,DWORD nSize,va_list *Arguments);
# 1518 "../tinyccbinary/win32/include/winapi/winbase.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CreatePipe(PHANDLE hReadPipe,PHANDLE hWritePipe,LPSECURITY_ATTRIBUTES lpPipeAttributes,DWORD nSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ConnectNamedPipe(HANDLE hNamedPipe,LPOVERLAPPED lpOverlapped);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DisconnectNamedPipe(HANDLE hNamedPipe);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetNamedPipeHandleState(HANDLE hNamedPipe,LPDWORD lpMode,LPDWORD lpMaxCollectionCount,LPDWORD lpCollectDataTimeout);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetNamedPipeInfo(HANDLE hNamedPipe,LPDWORD lpFlags,LPDWORD lpOutBufferSize,LPDWORD lpInBufferSize,LPDWORD lpMaxInstances);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PeekNamedPipe(HANDLE hNamedPipe,LPVOID lpBuffer,DWORD nBufferSize,LPDWORD lpBytesRead,LPDWORD lpTotalBytesAvail,LPDWORD lpBytesLeftThisMessage);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) TransactNamedPipe(HANDLE hNamedPipe,LPVOID lpInBuffer,DWORD nInBufferSize,LPVOID lpOutBuffer,DWORD nOutBufferSize,LPDWORD lpBytesRead,LPOVERLAPPED lpOverlapped);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateMailslotA(LPCSTR lpName,DWORD nMaxMessageSize,DWORD lReadTimeout,LPSECURITY_ATTRIBUTES lpSecurityAttributes);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateMailslotW(LPCWSTR lpName,DWORD nMaxMessageSize,DWORD lReadTimeout,LPSECURITY_ATTRIBUTES lpSecurityAttributes);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetMailslotInfo(HANDLE hMailslot,LPDWORD lpMaxMessageSize,LPDWORD lpNextSize,LPDWORD lpMessageCount,LPDWORD lpReadTimeout);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetMailslotInfo(HANDLE hMailslot,DWORD lReadTimeout);
  __attribute__((dllimport)) LPVOID __attribute__((__stdcall__)) MapViewOfFile(HANDLE hFileMappingObject,DWORD dwDesiredAccess,DWORD dwFileOffsetHigh,DWORD dwFileOffsetLow,SIZE_T dwNumberOfBytesToMap);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FlushViewOfFile(LPCVOID lpBaseAddress,SIZE_T dwNumberOfBytesToFlush);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) UnmapViewOfFile(LPCVOID lpBaseAddress);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EncryptFileA(LPCSTR lpFileName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EncryptFileW(LPCWSTR lpFileName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DecryptFileA(LPCSTR lpFileName,DWORD dwReserved);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DecryptFileW(LPCWSTR lpFileName,DWORD dwReserved);
# 1548 "../tinyccbinary/win32/include/winapi/winbase.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FileEncryptionStatusA(LPCSTR lpFileName,LPDWORD lpStatus);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FileEncryptionStatusW(LPCWSTR lpFileName,LPDWORD lpStatus);



  typedef DWORD (__attribute__((__stdcall__)) *PFE_EXPORT_FUNC)(PBYTE pbData,PVOID pvCallbackContext,ULONG ulLength);
  typedef DWORD (__attribute__((__stdcall__)) *PFE_IMPORT_FUNC)(PBYTE pbData,PVOID pvCallbackContext,PULONG ulLength);
# 1578 "../tinyccbinary/win32/include/winapi/winbase.h"
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) OpenEncryptedFileRawA(LPCSTR lpFileName,ULONG ulFlags,PVOID *pvContext);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) OpenEncryptedFileRawW(LPCWSTR lpFileName,ULONG ulFlags,PVOID *pvContext);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) ReadEncryptedFileRaw(PFE_EXPORT_FUNC pfExportCallback,PVOID pvCallbackContext,PVOID pvContext);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) WriteEncryptedFileRaw(PFE_IMPORT_FUNC pfImportCallback,PVOID pvCallbackContext,PVOID pvContext);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) CloseEncryptedFileRaw(PVOID pvContext);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) lstrcmpA(LPCSTR lpString1,LPCSTR lpString2);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) lstrcmpW(LPCWSTR lpString1,LPCWSTR lpString2);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) lstrcmpiA(LPCSTR lpString1,LPCSTR lpString2);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) lstrcmpiW(LPCWSTR lpString1,LPCWSTR lpString2);
  __attribute__((dllimport)) LPSTR __attribute__((__stdcall__)) lstrcpynA(LPSTR lpString1,LPCSTR lpString2,int iMaxLength);
  __attribute__((dllimport)) LPWSTR __attribute__((__stdcall__)) lstrcpynW(LPWSTR lpString1,LPCWSTR lpString2,int iMaxLength);
  __attribute__((dllimport)) LPSTR __attribute__((__stdcall__)) lstrcpyA(LPSTR lpString1,LPCSTR lpString2);
  __attribute__((dllimport)) LPWSTR __attribute__((__stdcall__)) lstrcpyW(LPWSTR lpString1,LPCWSTR lpString2);
  __attribute__((dllimport)) LPSTR __attribute__((__stdcall__)) lstrcatA(LPSTR lpString1,LPCSTR lpString2);
  __attribute__((dllimport)) LPWSTR __attribute__((__stdcall__)) lstrcatW(LPWSTR lpString1,LPCWSTR lpString2);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) lstrlenA(LPCSTR lpString);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) lstrlenW(LPCWSTR lpString);
  __attribute__((dllimport)) HFILE __attribute__((__stdcall__)) OpenFile(LPCSTR lpFileName,LPOFSTRUCT lpReOpenBuff,UINT uStyle);
  __attribute__((dllimport)) HFILE __attribute__((__stdcall__)) _lopen(LPCSTR lpPathName,int iReadWrite);
  __attribute__((dllimport)) HFILE __attribute__((__stdcall__)) _lcreat(LPCSTR lpPathName,int iAttribute);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) _lread(HFILE hFile,LPVOID lpBuffer,UINT uBytes);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) _lwrite(HFILE hFile,LPCCH lpBuffer,UINT uBytes);
  __attribute__((dllimport)) long __attribute__((__stdcall__)) _hread(HFILE hFile,LPVOID lpBuffer,long lBytes);
  __attribute__((dllimport)) long __attribute__((__stdcall__)) _hwrite(HFILE hFile,LPCCH lpBuffer,long lBytes);
  __attribute__((dllimport)) HFILE __attribute__((__stdcall__)) _lclose(HFILE hFile);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) _llseek(HFILE hFile,LONG lOffset,int iOrigin);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsTextUnicode(const void *lpv,int iSize,LPINT lpiResult);



  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) FlsAlloc(PFLS_CALLBACK_FUNCTION lpCallback);
  __attribute__((dllimport)) PVOID __attribute__((__stdcall__)) FlsGetValue(DWORD dwFlsIndex);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FlsSetValue(DWORD dwFlsIndex,PVOID lpFlsData);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FlsFree(DWORD dwFlsIndex);



  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) TlsAlloc(void);
  __attribute__((dllimport)) LPVOID __attribute__((__stdcall__)) TlsGetValue(DWORD dwTlsIndex);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) TlsSetValue(DWORD dwTlsIndex,LPVOID lpTlsValue);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) TlsFree(DWORD dwTlsIndex);

  typedef void (__attribute__((__stdcall__)) *LPOVERLAPPED_COMPLETION_ROUTINE)(DWORD dwErrorCode,DWORD dwNumberOfBytesTransfered,LPOVERLAPPED lpOverlapped);

  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) SleepEx(DWORD dwMilliseconds,WINBOOL bAlertable);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) WaitForSingleObjectEx(HANDLE hHandle,DWORD dwMilliseconds,WINBOOL bAlertable);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) WaitForMultipleObjectsEx(DWORD nCount,const HANDLE *lpHandles,WINBOOL bWaitAll,DWORD dwMilliseconds,WINBOOL bAlertable);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) SignalObjectAndWait(HANDLE hObjectToSignal,HANDLE hObjectToWaitOn,DWORD dwMilliseconds,WINBOOL bAlertable);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ReadFileEx(HANDLE hFile,LPVOID lpBuffer,DWORD nNumberOfBytesToRead,LPOVERLAPPED lpOverlapped,LPOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WriteFileEx(HANDLE hFile,LPCVOID lpBuffer,DWORD nNumberOfBytesToWrite,LPOVERLAPPED lpOverlapped,LPOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) BackupRead(HANDLE hFile,LPBYTE lpBuffer,DWORD nNumberOfBytesToRead,LPDWORD lpNumberOfBytesRead,WINBOOL bAbort,WINBOOL bProcessSecurity,LPVOID *lpContext);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) BackupSeek(HANDLE hFile,DWORD dwLowBytesToSeek,DWORD dwHighBytesToSeek,LPDWORD lpdwLowByteSeeked,LPDWORD lpdwHighByteSeeked,LPVOID *lpContext);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) BackupWrite(HANDLE hFile,LPBYTE lpBuffer,DWORD nNumberOfBytesToWrite,LPDWORD lpNumberOfBytesWritten,WINBOOL bAbort,WINBOOL bProcessSecurity,LPVOID *lpContext);

  typedef struct _WIN32_STREAM_ID {
    DWORD dwStreamId;
    DWORD dwStreamAttributes;
    LARGE_INTEGER Size;
    DWORD dwStreamNameSize;
    WCHAR cStreamName[1];
  } WIN32_STREAM_ID,*LPWIN32_STREAM_ID;
# 1657 "../tinyccbinary/win32/include/winapi/winbase.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ReadFileScatter(HANDLE hFile,FILE_SEGMENT_ELEMENT aSegmentArray[],DWORD nNumberOfBytesToRead,LPDWORD lpReserved,LPOVERLAPPED lpOverlapped);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WriteFileGather(HANDLE hFile,FILE_SEGMENT_ELEMENT aSegmentArray[],DWORD nNumberOfBytesToWrite,LPDWORD lpReserved,LPOVERLAPPED lpOverlapped);
# 1672 "../tinyccbinary/win32/include/winapi/winbase.h"
  typedef struct _STARTUPINFOA {
    DWORD cb;
    LPSTR lpReserved;
    LPSTR lpDesktop;
    LPSTR lpTitle;
    DWORD dwX;
    DWORD dwY;
    DWORD dwXSize;
    DWORD dwYSize;
    DWORD dwXCountChars;
    DWORD dwYCountChars;
    DWORD dwFillAttribute;
    DWORD dwFlags;
    WORD wShowWindow;
    WORD cbReserved2;
    LPBYTE lpReserved2;
    HANDLE hStdInput;
    HANDLE hStdOutput;
    HANDLE hStdError;
  } STARTUPINFOA,*LPSTARTUPINFOA;

  typedef struct _STARTUPINFOW {
    DWORD cb;
    LPWSTR lpReserved;
    LPWSTR lpDesktop;
    LPWSTR lpTitle;
    DWORD dwX;
    DWORD dwY;
    DWORD dwXSize;
    DWORD dwYSize;
    DWORD dwXCountChars;
    DWORD dwYCountChars;
    DWORD dwFillAttribute;
    DWORD dwFlags;
    WORD wShowWindow;
    WORD cbReserved2;
    LPBYTE lpReserved2;
    HANDLE hStdInput;
    HANDLE hStdOutput;
    HANDLE hStdError;
  } STARTUPINFOW,*LPSTARTUPINFOW;





  typedef STARTUPINFOA STARTUPINFO;
  typedef LPSTARTUPINFOA LPSTARTUPINFO;




  typedef struct _WIN32_FIND_DATAA {
    DWORD dwFileAttributes;
    FILETIME ftCreationTime;
    FILETIME ftLastAccessTime;
    FILETIME ftLastWriteTime;
    DWORD nFileSizeHigh;
    DWORD nFileSizeLow;
    DWORD dwReserved0;
    DWORD dwReserved1;
    CHAR cFileName[260];
    CHAR cAlternateFileName[14];
  } WIN32_FIND_DATAA,*PWIN32_FIND_DATAA,*LPWIN32_FIND_DATAA;

  typedef struct _WIN32_FIND_DATAW {
    DWORD dwFileAttributes;
    FILETIME ftCreationTime;
    FILETIME ftLastAccessTime;
    FILETIME ftLastWriteTime;
    DWORD nFileSizeHigh;
    DWORD nFileSizeLow;
    DWORD dwReserved0;
    DWORD dwReserved1;
    WCHAR cFileName[260];
    WCHAR cAlternateFileName[14];
  } WIN32_FIND_DATAW,*PWIN32_FIND_DATAW,*LPWIN32_FIND_DATAW;






  typedef WIN32_FIND_DATAA WIN32_FIND_DATA;
  typedef PWIN32_FIND_DATAA PWIN32_FIND_DATA;
  typedef LPWIN32_FIND_DATAA LPWIN32_FIND_DATA;


  typedef struct _WIN32_FILE_ATTRIBUTE_DATA {
    DWORD dwFileAttributes;
    FILETIME ftCreationTime;
    FILETIME ftLastAccessTime;
    FILETIME ftLastWriteTime;
    DWORD nFileSizeHigh;
    DWORD nFileSizeLow;
  } WIN32_FILE_ATTRIBUTE_DATA,*LPWIN32_FILE_ATTRIBUTE_DATA;
# 1785 "../tinyccbinary/win32/include/winapi/winbase.h"
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateMutexA(LPSECURITY_ATTRIBUTES lpMutexAttributes,WINBOOL bInitialOwner,LPCSTR lpName);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateMutexW(LPSECURITY_ATTRIBUTES lpMutexAttributes,WINBOOL bInitialOwner,LPCWSTR lpName);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) OpenMutexA(DWORD dwDesiredAccess,WINBOOL bInheritHandle,LPCSTR lpName);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) OpenMutexW(DWORD dwDesiredAccess,WINBOOL bInheritHandle,LPCWSTR lpName);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateEventA(LPSECURITY_ATTRIBUTES lpEventAttributes,WINBOOL bManualReset,WINBOOL bInitialState,LPCSTR lpName);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateEventW(LPSECURITY_ATTRIBUTES lpEventAttributes,WINBOOL bManualReset,WINBOOL bInitialState,LPCWSTR lpName);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) OpenEventA(DWORD dwDesiredAccess,WINBOOL bInheritHandle,LPCSTR lpName);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) OpenEventW(DWORD dwDesiredAccess,WINBOOL bInheritHandle,LPCWSTR lpName);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateSemaphoreA(LPSECURITY_ATTRIBUTES lpSemaphoreAttributes,LONG lInitialCount,LONG lMaximumCount,LPCSTR lpName);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateSemaphoreW(LPSECURITY_ATTRIBUTES lpSemaphoreAttributes,LONG lInitialCount,LONG lMaximumCount,LPCWSTR lpName);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) OpenSemaphoreA(DWORD dwDesiredAccess,WINBOOL bInheritHandle,LPCSTR lpName);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) OpenSemaphoreW(DWORD dwDesiredAccess,WINBOOL bInheritHandle,LPCWSTR lpName);

  typedef void (__attribute__((__stdcall__)) *PTIMERAPCROUTINE)(LPVOID lpArgToCompletionRoutine,DWORD dwTimerLowValue,DWORD dwTimerHighValue);
# 1822 "../tinyccbinary/win32/include/winapi/winbase.h"
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateWaitableTimerA(LPSECURITY_ATTRIBUTES lpTimerAttributes,WINBOOL bManualReset,LPCSTR lpTimerName);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateWaitableTimerW(LPSECURITY_ATTRIBUTES lpTimerAttributes,WINBOOL bManualReset,LPCWSTR lpTimerName);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) OpenWaitableTimerA(DWORD dwDesiredAccess,WINBOOL bInheritHandle,LPCSTR lpTimerName);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) OpenWaitableTimerW(DWORD dwDesiredAccess,WINBOOL bInheritHandle,LPCWSTR lpTimerName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetWaitableTimer(HANDLE hTimer,const LARGE_INTEGER *lpDueTime,LONG lPeriod,PTIMERAPCROUTINE pfnCompletionRoutine,LPVOID lpArgToCompletionRoutine,WINBOOL fResume);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CancelWaitableTimer(HANDLE hTimer);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateFileMappingA(HANDLE hFile,LPSECURITY_ATTRIBUTES lpFileMappingAttributes,DWORD flProtect,DWORD dwMaximumSizeHigh,DWORD dwMaximumSizeLow,LPCSTR lpName);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateFileMappingW(HANDLE hFile,LPSECURITY_ATTRIBUTES lpFileMappingAttributes,DWORD flProtect,DWORD dwMaximumSizeHigh,DWORD dwMaximumSizeLow,LPCWSTR lpName);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) OpenFileMappingA(DWORD dwDesiredAccess,WINBOOL bInheritHandle,LPCSTR lpName);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) OpenFileMappingW(DWORD dwDesiredAccess,WINBOOL bInheritHandle,LPCWSTR lpName);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetLogicalDriveStringsA(DWORD nBufferLength,LPSTR lpBuffer);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetLogicalDriveStringsW(DWORD nBufferLength,LPWSTR lpBuffer);

  typedef enum _MEMORY_RESOURCE_NOTIFICATION_TYPE {
    LowMemoryResourceNotification,HighMemoryResourceNotification
  } MEMORY_RESOURCE_NOTIFICATION_TYPE;

  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateMemoryResourceNotification(MEMORY_RESOURCE_NOTIFICATION_TYPE NotificationType);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) QueryMemoryResourceNotification(HANDLE ResourceNotificationHandle,PBOOL ResourceState);
  __attribute__((dllimport)) HMODULE __attribute__((__stdcall__)) LoadLibraryA(LPCSTR lpLibFileName);
  __attribute__((dllimport)) HMODULE __attribute__((__stdcall__)) LoadLibraryW(LPCWSTR lpLibFileName);
  __attribute__((dllimport)) HMODULE __attribute__((__stdcall__)) LoadLibraryExA(LPCSTR lpLibFileName,HANDLE hFile,DWORD dwFlags);
  __attribute__((dllimport)) HMODULE __attribute__((__stdcall__)) LoadLibraryExW(LPCWSTR lpLibFileName,HANDLE hFile,DWORD dwFlags);
# 1853 "../tinyccbinary/win32/include/winapi/winbase.h"
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetModuleFileNameA(HMODULE hModule,LPCH lpFilename,DWORD nSize);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetModuleFileNameW(HMODULE hModule,LPWCH lpFilename,DWORD nSize);
  __attribute__((dllimport)) HMODULE __attribute__((__stdcall__)) GetModuleHandleA(LPCSTR lpModuleName);
  __attribute__((dllimport)) HMODULE __attribute__((__stdcall__)) GetModuleHandleW(LPCWSTR lpModuleName);






  typedef WINBOOL (__attribute__((__stdcall__)) *PGET_MODULE_HANDLE_EXA)(DWORD dwFlags,LPCSTR lpModuleName,HMODULE *phModule);
  typedef WINBOOL (__attribute__((__stdcall__)) *PGET_MODULE_HANDLE_EXW)(DWORD dwFlags,LPCWSTR lpModuleName,HMODULE *phModule);
# 1874 "../tinyccbinary/win32/include/winapi/winbase.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetModuleHandleExA(DWORD dwFlags,LPCSTR lpModuleName,HMODULE *phModule);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetModuleHandleExW(DWORD dwFlags,LPCWSTR lpModuleName,HMODULE *phModule);
# 1908 "../tinyccbinary/win32/include/winapi/winbase.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) NeedCurrentDirectoryForExePathA(LPCSTR ExeName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) NeedCurrentDirectoryForExePathW(LPCWSTR ExeName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CreateProcessA(LPCSTR lpApplicationName,LPSTR lpCommandLine,LPSECURITY_ATTRIBUTES lpProcessAttributes,LPSECURITY_ATTRIBUTES lpThreadAttributes,WINBOOL bInheritHandles,DWORD dwCreationFlags,LPVOID lpEnvironment,LPCSTR lpCurrentDirectory,LPSTARTUPINFOA lpStartupInfo,LPPROCESS_INFORMATION lpProcessInformation);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CreateProcessW(LPCWSTR lpApplicationName,LPWSTR lpCommandLine,LPSECURITY_ATTRIBUTES lpProcessAttributes,LPSECURITY_ATTRIBUTES lpThreadAttributes,WINBOOL bInheritHandles,DWORD dwCreationFlags,LPVOID lpEnvironment,LPCWSTR lpCurrentDirectory,LPSTARTUPINFOW lpStartupInfo,LPPROCESS_INFORMATION lpProcessInformation);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) AddLocalAlternateComputerNameA(LPCSTR lpDnsFQHostname,ULONG ulFlags);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) AddLocalAlternateComputerNameW(LPCWSTR lpDnsFQHostname,ULONG ulFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetProcessShutdownParameters(DWORD dwLevel,DWORD dwFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetProcessShutdownParameters(LPDWORD lpdwLevel,LPDWORD lpdwFlags);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetProcessVersion(DWORD ProcessId);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) FatalAppExitA(UINT uAction,LPCSTR lpMessageText);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) FatalAppExitW(UINT uAction,LPCWSTR lpMessageText);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) GetStartupInfoA(LPSTARTUPINFOA lpStartupInfo);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) GetStartupInfoW(LPSTARTUPINFOW lpStartupInfo);
  __attribute__((dllimport)) LPSTR __attribute__((__stdcall__)) GetCommandLineA(void);
  __attribute__((dllimport)) LPWSTR __attribute__((__stdcall__)) GetCommandLineW(void);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetEnvironmentVariableA(LPCSTR lpName,LPSTR lpBuffer,DWORD nSize);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetEnvironmentVariableW(LPCWSTR lpName,LPWSTR lpBuffer,DWORD nSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetEnvironmentVariableA(LPCSTR lpName,LPCSTR lpValue);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetEnvironmentVariableW(LPCWSTR lpName,LPCWSTR lpValue);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) ExpandEnvironmentStringsA(LPCSTR lpSrc,LPSTR lpDst,DWORD nSize);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) ExpandEnvironmentStringsW(LPCWSTR lpSrc,LPWSTR lpDst,DWORD nSize);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetFirmwareEnvironmentVariableA(LPCSTR lpName,LPCSTR lpGuid,PVOID pBuffer,DWORD nSize);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetFirmwareEnvironmentVariableW(LPCWSTR lpName,LPCWSTR lpGuid,PVOID pBuffer,DWORD nSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetFirmwareEnvironmentVariableA(LPCSTR lpName,LPCSTR lpGuid,PVOID pValue,DWORD nSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetFirmwareEnvironmentVariableW(LPCWSTR lpName,LPCWSTR lpGuid,PVOID pValue,DWORD nSize);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) OutputDebugStringA(LPCSTR lpOutputString);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) OutputDebugStringW(LPCWSTR lpOutputString);
  __attribute__((dllimport)) HRSRC __attribute__((__stdcall__)) FindResourceA(HMODULE hModule,LPCSTR lpName,LPCSTR lpType);
  __attribute__((dllimport)) HRSRC __attribute__((__stdcall__)) FindResourceW(HMODULE hModule,LPCWSTR lpName,LPCWSTR lpType);
  __attribute__((dllimport)) HRSRC __attribute__((__stdcall__)) FindResourceExA(HMODULE hModule,LPCSTR lpType,LPCSTR lpName,WORD wLanguage);
  __attribute__((dllimport)) HRSRC __attribute__((__stdcall__)) FindResourceExW(HMODULE hModule,LPCWSTR lpType,LPCWSTR lpName,WORD wLanguage);
# 2014 "../tinyccbinary/win32/include/winapi/winbase.h"
  typedef WINBOOL (__attribute__((__stdcall__)) *ENUMRESTYPEPROCA)(HMODULE hModule,LPSTR lpType,LONG_PTR lParam);
  typedef WINBOOL (__attribute__((__stdcall__)) *ENUMRESTYPEPROCW)(HMODULE hModule,LPWSTR lpType,LONG_PTR lParam);
  typedef WINBOOL (__attribute__((__stdcall__)) *ENUMRESNAMEPROCA)(HMODULE hModule,LPCSTR lpType,LPSTR lpName,LONG_PTR lParam);
  typedef WINBOOL (__attribute__((__stdcall__)) *ENUMRESNAMEPROCW)(HMODULE hModule,LPCWSTR lpType,LPWSTR lpName,LONG_PTR lParam);
  typedef WINBOOL (__attribute__((__stdcall__)) *ENUMRESLANGPROCA)(HMODULE hModule,LPCSTR lpType,LPCSTR lpName,WORD wLanguage,LONG_PTR lParam);
  typedef WINBOOL (__attribute__((__stdcall__)) *ENUMRESLANGPROCW)(HMODULE hModule,LPCWSTR lpType,LPCWSTR lpName,WORD wLanguage,LONG_PTR lParam);

  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumResourceTypesA(HMODULE hModule,ENUMRESTYPEPROCA lpEnumFunc,LONG_PTR lParam);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumResourceTypesW(HMODULE hModule,ENUMRESTYPEPROCW lpEnumFunc,LONG_PTR lParam);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumResourceNamesA(HMODULE hModule,LPCSTR lpType,ENUMRESNAMEPROCA lpEnumFunc,LONG_PTR lParam);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumResourceNamesW(HMODULE hModule,LPCWSTR lpType,ENUMRESNAMEPROCW lpEnumFunc,LONG_PTR lParam);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumResourceLanguagesA(HMODULE hModule,LPCSTR lpType,LPCSTR lpName,ENUMRESLANGPROCA lpEnumFunc,LONG_PTR lParam);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumResourceLanguagesW(HMODULE hModule,LPCWSTR lpType,LPCWSTR lpName,ENUMRESLANGPROCW lpEnumFunc,LONG_PTR lParam);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) BeginUpdateResourceA(LPCSTR pFileName,WINBOOL bDeleteExistingResources);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) BeginUpdateResourceW(LPCWSTR pFileName,WINBOOL bDeleteExistingResources);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) UpdateResourceA(HANDLE hUpdate,LPCSTR lpType,LPCSTR lpName,WORD wLanguage,LPVOID lpData,DWORD cb);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) UpdateResourceW(HANDLE hUpdate,LPCWSTR lpType,LPCWSTR lpName,WORD wLanguage,LPVOID lpData,DWORD cb);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EndUpdateResourceA(HANDLE hUpdate,WINBOOL fDiscard);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EndUpdateResourceW(HANDLE hUpdate,WINBOOL fDiscard);
  __attribute__((dllimport)) ATOM __attribute__((__stdcall__)) GlobalAddAtomA(LPCSTR lpString);
  __attribute__((dllimport)) ATOM __attribute__((__stdcall__)) GlobalAddAtomW(LPCWSTR lpString);
  __attribute__((dllimport)) ATOM __attribute__((__stdcall__)) GlobalFindAtomA(LPCSTR lpString);
  __attribute__((dllimport)) ATOM __attribute__((__stdcall__)) GlobalFindAtomW(LPCWSTR lpString);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GlobalGetAtomNameA(ATOM nAtom,LPSTR lpBuffer,int nSize);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GlobalGetAtomNameW(ATOM nAtom,LPWSTR lpBuffer,int nSize);
  __attribute__((dllimport)) ATOM __attribute__((__stdcall__)) AddAtomA(LPCSTR lpString);
  __attribute__((dllimport)) ATOM __attribute__((__stdcall__)) AddAtomW(LPCWSTR lpString);
  __attribute__((dllimport)) ATOM __attribute__((__stdcall__)) FindAtomA(LPCSTR lpString);
  __attribute__((dllimport)) ATOM __attribute__((__stdcall__)) FindAtomW(LPCWSTR lpString);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetAtomNameA(ATOM nAtom,LPSTR lpBuffer,int nSize);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetAtomNameW(ATOM nAtom,LPWSTR lpBuffer,int nSize);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetProfileIntA(LPCSTR lpAppName,LPCSTR lpKeyName,INT nDefault);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetProfileIntW(LPCWSTR lpAppName,LPCWSTR lpKeyName,INT nDefault);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetProfileStringA(LPCSTR lpAppName,LPCSTR lpKeyName,LPCSTR lpDefault,LPSTR lpReturnedString,DWORD nSize);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetProfileStringW(LPCWSTR lpAppName,LPCWSTR lpKeyName,LPCWSTR lpDefault,LPWSTR lpReturnedString,DWORD nSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WriteProfileStringA(LPCSTR lpAppName,LPCSTR lpKeyName,LPCSTR lpString);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WriteProfileStringW(LPCWSTR lpAppName,LPCWSTR lpKeyName,LPCWSTR lpString);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetProfileSectionA(LPCSTR lpAppName,LPSTR lpReturnedString,DWORD nSize);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetProfileSectionW(LPCWSTR lpAppName,LPWSTR lpReturnedString,DWORD nSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WriteProfileSectionA(LPCSTR lpAppName,LPCSTR lpString);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WriteProfileSectionW(LPCWSTR lpAppName,LPCWSTR lpString);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetPrivateProfileIntA(LPCSTR lpAppName,LPCSTR lpKeyName,INT nDefault,LPCSTR lpFileName);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetPrivateProfileIntW(LPCWSTR lpAppName,LPCWSTR lpKeyName,INT nDefault,LPCWSTR lpFileName);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetPrivateProfileStringA(LPCSTR lpAppName,LPCSTR lpKeyName,LPCSTR lpDefault,LPSTR lpReturnedString,DWORD nSize,LPCSTR lpFileName);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetPrivateProfileStringW(LPCWSTR lpAppName,LPCWSTR lpKeyName,LPCWSTR lpDefault,LPWSTR lpReturnedString,DWORD nSize,LPCWSTR lpFileName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WritePrivateProfileStringA(LPCSTR lpAppName,LPCSTR lpKeyName,LPCSTR lpString,LPCSTR lpFileName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WritePrivateProfileStringW(LPCWSTR lpAppName,LPCWSTR lpKeyName,LPCWSTR lpString,LPCWSTR lpFileName);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetPrivateProfileSectionA(LPCSTR lpAppName,LPSTR lpReturnedString,DWORD nSize,LPCSTR lpFileName);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetPrivateProfileSectionW(LPCWSTR lpAppName,LPWSTR lpReturnedString,DWORD nSize,LPCWSTR lpFileName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WritePrivateProfileSectionA(LPCSTR lpAppName,LPCSTR lpString,LPCSTR lpFileName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WritePrivateProfileSectionW(LPCWSTR lpAppName,LPCWSTR lpString,LPCWSTR lpFileName);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetPrivateProfileSectionNamesA(LPSTR lpszReturnBuffer,DWORD nSize,LPCSTR lpFileName);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetPrivateProfileSectionNamesW(LPWSTR lpszReturnBuffer,DWORD nSize,LPCWSTR lpFileName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetPrivateProfileStructA(LPCSTR lpszSection,LPCSTR lpszKey,LPVOID lpStruct,UINT uSizeStruct,LPCSTR szFile);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetPrivateProfileStructW(LPCWSTR lpszSection,LPCWSTR lpszKey,LPVOID lpStruct,UINT uSizeStruct,LPCWSTR szFile);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WritePrivateProfileStructA(LPCSTR lpszSection,LPCSTR lpszKey,LPVOID lpStruct,UINT uSizeStruct,LPCSTR szFile);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WritePrivateProfileStructW(LPCWSTR lpszSection,LPCWSTR lpszKey,LPVOID lpStruct,UINT uSizeStruct,LPCWSTR szFile);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetDriveTypeA(LPCSTR lpRootPathName);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetDriveTypeW(LPCWSTR lpRootPathName);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetSystemDirectoryA(LPSTR lpBuffer,UINT uSize);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetSystemDirectoryW(LPWSTR lpBuffer,UINT uSize);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetTempPathA(DWORD nBufferLength,LPSTR lpBuffer);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetTempPathW(DWORD nBufferLength,LPWSTR lpBuffer);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetTempFileNameA(LPCSTR lpPathName,LPCSTR lpPrefixString,UINT uUnique,LPSTR lpTempFileName);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetTempFileNameW(LPCWSTR lpPathName,LPCWSTR lpPrefixString,UINT uUnique,LPWSTR lpTempFileName);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetWindowsDirectoryA(LPSTR lpBuffer,UINT uSize);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetWindowsDirectoryW(LPWSTR lpBuffer,UINT uSize);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetSystemWindowsDirectoryA(LPSTR lpBuffer,UINT uSize);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetSystemWindowsDirectoryW(LPWSTR lpBuffer,UINT uSize);
# 2091 "../tinyccbinary/win32/include/winapi/winbase.h"
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetSystemWow64DirectoryA(LPSTR lpBuffer,UINT uSize);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetSystemWow64DirectoryW(LPWSTR lpBuffer,UINT uSize);
  __attribute__((dllimport)) BOOLEAN __attribute__((__stdcall__)) Wow64EnableWow64FsRedirection(BOOLEAN Wow64FsEnableRedirection);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) Wow64DisableWow64FsRedirection(PVOID *OldValue);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) Wow64RevertWow64FsRedirection(PVOID OlValue);

  typedef UINT (__attribute__((__stdcall__)) *PGET_SYSTEM_WOW64_DIRECTORY_A)(LPSTR lpBuffer,UINT uSize);
  typedef UINT (__attribute__((__stdcall__)) *PGET_SYSTEM_WOW64_DIRECTORY_W)(LPWSTR lpBuffer,UINT uSize);
# 2152 "../tinyccbinary/win32/include/winapi/winbase.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetCurrentDirectoryA(LPCSTR lpPathName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetCurrentDirectoryW(LPCWSTR lpPathName);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetCurrentDirectoryA(DWORD nBufferLength,LPSTR lpBuffer);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetCurrentDirectoryW(DWORD nBufferLength,LPWSTR lpBuffer);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetDllDirectoryA(LPCSTR lpPathName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetDllDirectoryW(LPCWSTR lpPathName);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetDllDirectoryA(DWORD nBufferLength,LPSTR lpBuffer);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetDllDirectoryW(DWORD nBufferLength,LPWSTR lpBuffer);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetDiskFreeSpaceA(LPCSTR lpRootPathName,LPDWORD lpSectorsPerCluster,LPDWORD lpBytesPerSector,LPDWORD lpNumberOfFreeClusters,LPDWORD lpTotalNumberOfClusters);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetDiskFreeSpaceW(LPCWSTR lpRootPathName,LPDWORD lpSectorsPerCluster,LPDWORD lpBytesPerSector,LPDWORD lpNumberOfFreeClusters,LPDWORD lpTotalNumberOfClusters);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetDiskFreeSpaceExA(LPCSTR lpDirectoryName,PULARGE_INTEGER lpFreeBytesAvailableToCaller,PULARGE_INTEGER lpTotalNumberOfBytes,PULARGE_INTEGER lpTotalNumberOfFreeBytes);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetDiskFreeSpaceExW(LPCWSTR lpDirectoryName,PULARGE_INTEGER lpFreeBytesAvailableToCaller,PULARGE_INTEGER lpTotalNumberOfBytes,PULARGE_INTEGER lpTotalNumberOfFreeBytes);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CreateDirectoryA(LPCSTR lpPathName,LPSECURITY_ATTRIBUTES lpSecurityAttributes);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CreateDirectoryW(LPCWSTR lpPathName,LPSECURITY_ATTRIBUTES lpSecurityAttributes);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CreateDirectoryExA(LPCSTR lpTemplateDirectory,LPCSTR lpNewDirectory,LPSECURITY_ATTRIBUTES lpSecurityAttributes);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CreateDirectoryExW(LPCWSTR lpTemplateDirectory,LPCWSTR lpNewDirectory,LPSECURITY_ATTRIBUTES lpSecurityAttributes);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) RemoveDirectoryA(LPCSTR lpPathName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) RemoveDirectoryW(LPCWSTR lpPathName);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetFullPathNameA(LPCSTR lpFileName,DWORD nBufferLength,LPSTR lpBuffer,LPSTR *lpFilePart);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetFullPathNameW(LPCWSTR lpFileName,DWORD nBufferLength,LPWSTR lpBuffer,LPWSTR *lpFilePart);







  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DefineDosDeviceA(DWORD dwFlags,LPCSTR lpDeviceName,LPCSTR lpTargetPath);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DefineDosDeviceW(DWORD dwFlags,LPCWSTR lpDeviceName,LPCWSTR lpTargetPath);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) QueryDosDeviceA(LPCSTR lpDeviceName,LPSTR lpTargetPath,DWORD ucchMax);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) QueryDosDeviceW(LPCWSTR lpDeviceName,LPWSTR lpTargetPath,DWORD ucchMax);



  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateFileA(LPCSTR lpFileName,DWORD dwDesiredAccess,DWORD dwShareMode,LPSECURITY_ATTRIBUTES lpSecurityAttributes,DWORD dwCreationDisposition,DWORD dwFlagsAndAttributes,HANDLE hTemplateFile);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateFileW(LPCWSTR lpFileName,DWORD dwDesiredAccess,DWORD dwShareMode,LPSECURITY_ATTRIBUTES lpSecurityAttributes,DWORD dwCreationDisposition,DWORD dwFlagsAndAttributes,HANDLE hTemplateFile);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) ReOpenFile(HANDLE hOriginalFile,DWORD dwDesiredAccess,DWORD dwShareMode,DWORD dwFlagsAndAttributes);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetFileAttributesA(LPCSTR lpFileName,DWORD dwFileAttributes);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetFileAttributesW(LPCWSTR lpFileName,DWORD dwFileAttributes);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetFileAttributesA(LPCSTR lpFileName);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetFileAttributesW(LPCWSTR lpFileName);

  typedef enum _GET_FILEEX_INFO_LEVELS {
    GetFileExInfoStandard,GetFileExMaxInfoLevel
  } GET_FILEEX_INFO_LEVELS;
# 2210 "../tinyccbinary/win32/include/winapi/winbase.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetFileAttributesExA(LPCSTR lpFileName,GET_FILEEX_INFO_LEVELS fInfoLevelId,LPVOID lpFileInformation);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetFileAttributesExW(LPCWSTR lpFileName,GET_FILEEX_INFO_LEVELS fInfoLevelId,LPVOID lpFileInformation);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetCompressedFileSizeA(LPCSTR lpFileName,LPDWORD lpFileSizeHigh);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetCompressedFileSizeW(LPCWSTR lpFileName,LPDWORD lpFileSizeHigh);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DeleteFileA(LPCSTR lpFileName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DeleteFileW(LPCWSTR lpFileName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CheckNameLegalDOS8Dot3A(LPCSTR lpName,LPSTR lpOemName,DWORD OemNameSize,PBOOL pbNameContainsSpaces,PBOOL pbNameLegal);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CheckNameLegalDOS8Dot3W(LPCWSTR lpName,LPSTR lpOemName,DWORD OemNameSize,PBOOL pbNameContainsSpaces,PBOOL pbNameLegal);

  typedef enum _FINDEX_INFO_LEVELS {
    FindExInfoStandard,FindExInfoMaxInfoLevel
  } FINDEX_INFO_LEVELS;

  typedef enum _FINDEX_SEARCH_OPS {
    FindExSearchNameMatch,FindExSearchLimitToDirectories,FindExSearchLimitToDevices,FindExSearchMaxSearchOp
  } FINDEX_SEARCH_OPS;
# 2339 "../tinyccbinary/win32/include/winapi/winbase.h"
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) FindFirstFileExA(LPCSTR lpFileName,FINDEX_INFO_LEVELS fInfoLevelId,LPVOID lpFindFileData,FINDEX_SEARCH_OPS fSearchOp,LPVOID lpSearchFilter,DWORD dwAdditionalFlags);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) FindFirstFileExW(LPCWSTR lpFileName,FINDEX_INFO_LEVELS fInfoLevelId,LPVOID lpFindFileData,FINDEX_SEARCH_OPS fSearchOp,LPVOID lpSearchFilter,DWORD dwAdditionalFlags);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) FindFirstFileA(LPCSTR lpFileName,LPWIN32_FIND_DATAA lpFindFileData);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) FindFirstFileW(LPCWSTR lpFileName,LPWIN32_FIND_DATAW lpFindFileData);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FindNextFileA(HANDLE hFindFile,LPWIN32_FIND_DATAA lpFindFileData);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FindNextFileW(HANDLE hFindFile,LPWIN32_FIND_DATAW lpFindFileData);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) SearchPathA(LPCSTR lpPath,LPCSTR lpFileName,LPCSTR lpExtension,DWORD nBufferLength,LPSTR lpBuffer,LPSTR *lpFilePart);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) SearchPathW(LPCWSTR lpPath,LPCWSTR lpFileName,LPCWSTR lpExtension,DWORD nBufferLength,LPWSTR lpBuffer,LPWSTR *lpFilePart);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CopyFileA(LPCSTR lpExistingFileName,LPCSTR lpNewFileName,WINBOOL bFailIfExists);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CopyFileW(LPCWSTR lpExistingFileName,LPCWSTR lpNewFileName,WINBOOL bFailIfExists);

  typedef DWORD (__attribute__((__stdcall__)) *LPPROGRESS_ROUTINE)(LARGE_INTEGER TotalFileSize,LARGE_INTEGER TotalBytesTransferred,LARGE_INTEGER StreamSize,LARGE_INTEGER StreamBytesTransferred,DWORD dwStreamNumber,DWORD dwCallbackReason,HANDLE hSourceFile,HANDLE hDestinationFile,LPVOID lpData);

  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CopyFileExA(LPCSTR lpExistingFileName,LPCSTR lpNewFileName,LPPROGRESS_ROUTINE lpProgressRoutine,LPVOID lpData,LPBOOL pbCancel,DWORD dwCopyFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CopyFileExW(LPCWSTR lpExistingFileName,LPCWSTR lpNewFileName,LPPROGRESS_ROUTINE lpProgressRoutine,LPVOID lpData,LPBOOL pbCancel,DWORD dwCopyFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) MoveFileA(LPCSTR lpExistingFileName,LPCSTR lpNewFileName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) MoveFileW(LPCWSTR lpExistingFileName,LPCWSTR lpNewFileName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) MoveFileExA(LPCSTR lpExistingFileName,LPCSTR lpNewFileName,DWORD dwFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) MoveFileExW(LPCWSTR lpExistingFileName,LPCWSTR lpNewFileName,DWORD dwFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) MoveFileWithProgressA(LPCSTR lpExistingFileName,LPCSTR lpNewFileName,LPPROGRESS_ROUTINE lpProgressRoutine,LPVOID lpData,DWORD dwFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) MoveFileWithProgressW(LPCWSTR lpExistingFileName,LPCWSTR lpNewFileName,LPPROGRESS_ROUTINE lpProgressRoutine,LPVOID lpData,DWORD dwFlags);
# 2368 "../tinyccbinary/win32/include/winapi/winbase.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ReplaceFileA(LPCSTR lpReplacedFileName,LPCSTR lpReplacementFileName,LPCSTR lpBackupFileName,DWORD dwReplaceFlags,LPVOID lpExclude,LPVOID lpReserved);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ReplaceFileW(LPCWSTR lpReplacedFileName,LPCWSTR lpReplacementFileName,LPCWSTR lpBackupFileName,DWORD dwReplaceFlags,LPVOID lpExclude,LPVOID lpReserved);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CreateHardLinkA(LPCSTR lpFileName,LPCSTR lpExistingFileName,LPSECURITY_ATTRIBUTES lpSecurityAttributes);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CreateHardLinkW(LPCWSTR lpFileName,LPCWSTR lpExistingFileName,LPSECURITY_ATTRIBUTES lpSecurityAttributes);

  typedef enum _STREAM_INFO_LEVELS {
    FindStreamInfoStandard,FindStreamInfoMaxInfoLevel
  } STREAM_INFO_LEVELS;

  typedef struct _WIN32_FIND_STREAM_DATA {
    LARGE_INTEGER StreamSize;
    WCHAR cStreamName[260 + 36];
  } WIN32_FIND_STREAM_DATA,*PWIN32_FIND_STREAM_DATA;

  HANDLE __attribute__((__stdcall__)) FindFirstStreamW(LPCWSTR lpFileName,STREAM_INFO_LEVELS InfoLevel,LPVOID lpFindStreamData,DWORD dwFlags);
  WINBOOL __attribute__((__stdcall__)) FindNextStreamW(HANDLE hFindStream,LPVOID lpFindStreamData);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateNamedPipeA(LPCSTR lpName,DWORD dwOpenMode,DWORD dwPipeMode,DWORD nMaxInstances,DWORD nOutBufferSize,DWORD nInBufferSize,DWORD nDefaultTimeOut,LPSECURITY_ATTRIBUTES lpSecurityAttributes);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateNamedPipeW(LPCWSTR lpName,DWORD dwOpenMode,DWORD dwPipeMode,DWORD nMaxInstances,DWORD nOutBufferSize,DWORD nInBufferSize,DWORD nDefaultTimeOut,LPSECURITY_ATTRIBUTES lpSecurityAttributes);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetNamedPipeHandleStateA(HANDLE hNamedPipe,LPDWORD lpState,LPDWORD lpCurInstances,LPDWORD lpMaxCollectionCount,LPDWORD lpCollectDataTimeout,LPSTR lpUserName,DWORD nMaxUserNameSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetNamedPipeHandleStateW(HANDLE hNamedPipe,LPDWORD lpState,LPDWORD lpCurInstances,LPDWORD lpMaxCollectionCount,LPDWORD lpCollectDataTimeout,LPWSTR lpUserName,DWORD nMaxUserNameSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CallNamedPipeA(LPCSTR lpNamedPipeName,LPVOID lpInBuffer,DWORD nInBufferSize,LPVOID lpOutBuffer,DWORD nOutBufferSize,LPDWORD lpBytesRead,DWORD nTimeOut);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CallNamedPipeW(LPCWSTR lpNamedPipeName,LPVOID lpInBuffer,DWORD nInBufferSize,LPVOID lpOutBuffer,DWORD nOutBufferSize,LPDWORD lpBytesRead,DWORD nTimeOut);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WaitNamedPipeA(LPCSTR lpNamedPipeName,DWORD nTimeOut);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WaitNamedPipeW(LPCWSTR lpNamedPipeName,DWORD nTimeOut);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetVolumeLabelA(LPCSTR lpRootPathName,LPCSTR lpVolumeName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetVolumeLabelW(LPCWSTR lpRootPathName,LPCWSTR lpVolumeName);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) SetFileApisToOEM(void);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) SetFileApisToANSI(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AreFileApisANSI(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetVolumeInformationA(LPCSTR lpRootPathName,LPSTR lpVolumeNameBuffer,DWORD nVolumeNameSize,LPDWORD lpVolumeSerialNumber,LPDWORD lpMaximumComponentLength,LPDWORD lpFileSystemFlags,LPSTR lpFileSystemNameBuffer,DWORD nFileSystemNameSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetVolumeInformationW(LPCWSTR lpRootPathName,LPWSTR lpVolumeNameBuffer,DWORD nVolumeNameSize,LPDWORD lpVolumeSerialNumber,LPDWORD lpMaximumComponentLength,LPDWORD lpFileSystemFlags,LPWSTR lpFileSystemNameBuffer,DWORD nFileSystemNameSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CancelIo(HANDLE hFile);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ClearEventLogA(HANDLE hEventLog,LPCSTR lpBackupFileName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ClearEventLogW(HANDLE hEventLog,LPCWSTR lpBackupFileName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) BackupEventLogA(HANDLE hEventLog,LPCSTR lpBackupFileName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) BackupEventLogW(HANDLE hEventLog,LPCWSTR lpBackupFileName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CloseEventLog(HANDLE hEventLog);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DeregisterEventSource(HANDLE hEventLog);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) NotifyChangeEventLog(HANDLE hEventLog,HANDLE hEvent);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetNumberOfEventLogRecords(HANDLE hEventLog,PDWORD NumberOfRecords);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetOldestEventLogRecord(HANDLE hEventLog,PDWORD OldestRecord);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) OpenEventLogA(LPCSTR lpUNCServerName,LPCSTR lpSourceName);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) OpenEventLogW(LPCWSTR lpUNCServerName,LPCWSTR lpSourceName);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) RegisterEventSourceA(LPCSTR lpUNCServerName,LPCSTR lpSourceName);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) RegisterEventSourceW(LPCWSTR lpUNCServerName,LPCWSTR lpSourceName);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) OpenBackupEventLogA(LPCSTR lpUNCServerName,LPCSTR lpFileName);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) OpenBackupEventLogW(LPCWSTR lpUNCServerName,LPCWSTR lpFileName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ReadEventLogA(HANDLE hEventLog,DWORD dwReadFlags,DWORD dwRecordOffset,LPVOID lpBuffer,DWORD nNumberOfBytesToRead,DWORD *pnBytesRead,DWORD *pnMinNumberOfBytesNeeded);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ReadEventLogW(HANDLE hEventLog,DWORD dwReadFlags,DWORD dwRecordOffset,LPVOID lpBuffer,DWORD nNumberOfBytesToRead,DWORD *pnBytesRead,DWORD *pnMinNumberOfBytesNeeded);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ReportEventA(HANDLE hEventLog,WORD wType,WORD wCategory,DWORD dwEventID,PSID lpUserSid,WORD wNumStrings,DWORD dwDataSize,LPCSTR *lpStrings,LPVOID lpRawData);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ReportEventW(HANDLE hEventLog,WORD wType,WORD wCategory,DWORD dwEventID,PSID lpUserSid,WORD wNumStrings,DWORD dwDataSize,LPCWSTR *lpStrings,LPVOID lpRawData);



  typedef struct _EVENTLOG_FULL_INFORMATION {
    DWORD dwFull;
  } EVENTLOG_FULL_INFORMATION,*LPEVENTLOG_FULL_INFORMATION;

  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetEventLogInformation(HANDLE hEventLog,DWORD dwInfoLevel,LPVOID lpBuffer,DWORD cbBufSize,LPDWORD pcbBytesNeeded);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DuplicateToken(HANDLE ExistingTokenHandle,SECURITY_IMPERSONATION_LEVEL ImpersonationLevel,PHANDLE DuplicateTokenHandle);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetKernelObjectSecurity(HANDLE Handle,SECURITY_INFORMATION RequestedInformation,PSECURITY_DESCRIPTOR pSecurityDescriptor,DWORD nLength,LPDWORD lpnLengthNeeded);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ImpersonateNamedPipeClient(HANDLE hNamedPipe);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ImpersonateSelf(SECURITY_IMPERSONATION_LEVEL ImpersonationLevel);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) RevertToSelf(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetThreadToken (PHANDLE Thread,HANDLE Token);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AccessCheck(PSECURITY_DESCRIPTOR pSecurityDescriptor,HANDLE ClientToken,DWORD DesiredAccess,PGENERIC_MAPPING GenericMapping,PPRIVILEGE_SET PrivilegeSet,LPDWORD PrivilegeSetLength,LPDWORD GrantedAccess,LPBOOL AccessStatus);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AccessCheckByType(PSECURITY_DESCRIPTOR pSecurityDescriptor,PSID PrincipalSelfSid,HANDLE ClientToken,DWORD DesiredAccess,POBJECT_TYPE_LIST ObjectTypeList,DWORD ObjectTypeListLength,PGENERIC_MAPPING GenericMapping,PPRIVILEGE_SET PrivilegeSet,LPDWORD PrivilegeSetLength,LPDWORD GrantedAccess,LPBOOL AccessStatus);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AccessCheckByTypeResultList(PSECURITY_DESCRIPTOR pSecurityDescriptor,PSID PrincipalSelfSid,HANDLE ClientToken,DWORD DesiredAccess,POBJECT_TYPE_LIST ObjectTypeList,DWORD ObjectTypeListLength,PGENERIC_MAPPING GenericMapping,PPRIVILEGE_SET PrivilegeSet,LPDWORD PrivilegeSetLength,LPDWORD GrantedAccessList,LPDWORD AccessStatusList);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) OpenProcessToken(HANDLE ProcessHandle,DWORD DesiredAccess,PHANDLE TokenHandle);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) OpenThreadToken(HANDLE ThreadHandle,DWORD DesiredAccess,WINBOOL OpenAsSelf,PHANDLE TokenHandle);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetTokenInformation(HANDLE TokenHandle,TOKEN_INFORMATION_CLASS TokenInformationClass,LPVOID TokenInformation,DWORD TokenInformationLength,PDWORD ReturnLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetTokenInformation(HANDLE TokenHandle,TOKEN_INFORMATION_CLASS TokenInformationClass,LPVOID TokenInformation,DWORD TokenInformationLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AdjustTokenPrivileges(HANDLE TokenHandle,WINBOOL DisableAllPrivileges,PTOKEN_PRIVILEGES NewState,DWORD BufferLength,PTOKEN_PRIVILEGES PreviousState,PDWORD ReturnLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AdjustTokenGroups(HANDLE TokenHandle,WINBOOL ResetToDefault,PTOKEN_GROUPS NewState,DWORD BufferLength,PTOKEN_GROUPS PreviousState,PDWORD ReturnLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PrivilegeCheck(HANDLE ClientToken,PPRIVILEGE_SET RequiredPrivileges,LPBOOL pfResult);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AccessCheckAndAuditAlarmA(LPCSTR SubsystemName,LPVOID HandleId,LPSTR ObjectTypeName,LPSTR ObjectName,PSECURITY_DESCRIPTOR SecurityDescriptor,DWORD DesiredAccess,PGENERIC_MAPPING GenericMapping,WINBOOL ObjectCreation,LPDWORD GrantedAccess,LPBOOL AccessStatus,LPBOOL pfGenerateOnClose);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AccessCheckAndAuditAlarmW(LPCWSTR SubsystemName,LPVOID HandleId,LPWSTR ObjectTypeName,LPWSTR ObjectName,PSECURITY_DESCRIPTOR SecurityDescriptor,DWORD DesiredAccess,PGENERIC_MAPPING GenericMapping,WINBOOL ObjectCreation,LPDWORD GrantedAccess,LPBOOL AccessStatus,LPBOOL pfGenerateOnClose);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AccessCheckByTypeAndAuditAlarmA(LPCSTR SubsystemName,LPVOID HandleId,LPCSTR ObjectTypeName,LPCSTR ObjectName,PSECURITY_DESCRIPTOR SecurityDescriptor,PSID PrincipalSelfSid,DWORD DesiredAccess,AUDIT_EVENT_TYPE AuditType,DWORD Flags,POBJECT_TYPE_LIST ObjectTypeList,DWORD ObjectTypeListLength,PGENERIC_MAPPING GenericMapping,WINBOOL ObjectCreation,LPDWORD GrantedAccess,LPBOOL AccessStatus,LPBOOL pfGenerateOnClose);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AccessCheckByTypeAndAuditAlarmW(LPCWSTR SubsystemName,LPVOID HandleId,LPCWSTR ObjectTypeName,LPCWSTR ObjectName,PSECURITY_DESCRIPTOR SecurityDescriptor,PSID PrincipalSelfSid,DWORD DesiredAccess,AUDIT_EVENT_TYPE AuditType,DWORD Flags,POBJECT_TYPE_LIST ObjectTypeList,DWORD ObjectTypeListLength,PGENERIC_MAPPING GenericMapping,WINBOOL ObjectCreation,LPDWORD GrantedAccess,LPBOOL AccessStatus,LPBOOL pfGenerateOnClose);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AccessCheckByTypeResultListAndAuditAlarmA(LPCSTR SubsystemName,LPVOID HandleId,LPCSTR ObjectTypeName,LPCSTR ObjectName,PSECURITY_DESCRIPTOR SecurityDescriptor,PSID PrincipalSelfSid,DWORD DesiredAccess,AUDIT_EVENT_TYPE AuditType,DWORD Flags,POBJECT_TYPE_LIST ObjectTypeList,DWORD ObjectTypeListLength,PGENERIC_MAPPING GenericMapping,WINBOOL ObjectCreation,LPDWORD GrantedAccess,LPDWORD AccessStatusList,LPBOOL pfGenerateOnClose);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AccessCheckByTypeResultListAndAuditAlarmW(LPCWSTR SubsystemName,LPVOID HandleId,LPCWSTR ObjectTypeName,LPCWSTR ObjectName,PSECURITY_DESCRIPTOR SecurityDescriptor,PSID PrincipalSelfSid,DWORD DesiredAccess,AUDIT_EVENT_TYPE AuditType,DWORD Flags,POBJECT_TYPE_LIST ObjectTypeList,DWORD ObjectTypeListLength,PGENERIC_MAPPING GenericMapping,WINBOOL ObjectCreation,LPDWORD GrantedAccess,LPDWORD AccessStatusList,LPBOOL pfGenerateOnClose);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AccessCheckByTypeResultListAndAuditAlarmByHandleA(LPCSTR SubsystemName,LPVOID HandleId,HANDLE ClientToken,LPCSTR ObjectTypeName,LPCSTR ObjectName,PSECURITY_DESCRIPTOR SecurityDescriptor,PSID PrincipalSelfSid,DWORD DesiredAccess,AUDIT_EVENT_TYPE AuditType,DWORD Flags,POBJECT_TYPE_LIST ObjectTypeList,DWORD ObjectTypeListLength,PGENERIC_MAPPING GenericMapping,WINBOOL ObjectCreation,LPDWORD GrantedAccess,LPDWORD AccessStatusList,LPBOOL pfGenerateOnClose);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AccessCheckByTypeResultListAndAuditAlarmByHandleW(LPCWSTR SubsystemName,LPVOID HandleId,HANDLE ClientToken,LPCWSTR ObjectTypeName,LPCWSTR ObjectName,PSECURITY_DESCRIPTOR SecurityDescriptor,PSID PrincipalSelfSid,DWORD DesiredAccess,AUDIT_EVENT_TYPE AuditType,DWORD Flags,POBJECT_TYPE_LIST ObjectTypeList,DWORD ObjectTypeListLength,PGENERIC_MAPPING GenericMapping,WINBOOL ObjectCreation,LPDWORD GrantedAccess,LPDWORD AccessStatusList,LPBOOL pfGenerateOnClose);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ObjectOpenAuditAlarmA(LPCSTR SubsystemName,LPVOID HandleId,LPSTR ObjectTypeName,LPSTR ObjectName,PSECURITY_DESCRIPTOR pSecurityDescriptor,HANDLE ClientToken,DWORD DesiredAccess,DWORD GrantedAccess,PPRIVILEGE_SET Privileges,WINBOOL ObjectCreation,WINBOOL AccessGranted,LPBOOL GenerateOnClose);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ObjectOpenAuditAlarmW(LPCWSTR SubsystemName,LPVOID HandleId,LPWSTR ObjectTypeName,LPWSTR ObjectName,PSECURITY_DESCRIPTOR pSecurityDescriptor,HANDLE ClientToken,DWORD DesiredAccess,DWORD GrantedAccess,PPRIVILEGE_SET Privileges,WINBOOL ObjectCreation,WINBOOL AccessGranted,LPBOOL GenerateOnClose);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ObjectPrivilegeAuditAlarmA(LPCSTR SubsystemName,LPVOID HandleId,HANDLE ClientToken,DWORD DesiredAccess,PPRIVILEGE_SET Privileges,WINBOOL AccessGranted);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ObjectPrivilegeAuditAlarmW(LPCWSTR SubsystemName,LPVOID HandleId,HANDLE ClientToken,DWORD DesiredAccess,PPRIVILEGE_SET Privileges,WINBOOL AccessGranted);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ObjectCloseAuditAlarmA(LPCSTR SubsystemName,LPVOID HandleId,WINBOOL GenerateOnClose);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ObjectCloseAuditAlarmW(LPCWSTR SubsystemName,LPVOID HandleId,WINBOOL GenerateOnClose);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ObjectDeleteAuditAlarmA(LPCSTR SubsystemName,LPVOID HandleId,WINBOOL GenerateOnClose);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ObjectDeleteAuditAlarmW(LPCWSTR SubsystemName,LPVOID HandleId,WINBOOL GenerateOnClose);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PrivilegedServiceAuditAlarmA(LPCSTR SubsystemName,LPCSTR ServiceName,HANDLE ClientToken,PPRIVILEGE_SET Privileges,WINBOOL AccessGranted);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PrivilegedServiceAuditAlarmW(LPCWSTR SubsystemName,LPCWSTR ServiceName,HANDLE ClientToken,PPRIVILEGE_SET Privileges,WINBOOL AccessGranted);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsWellKnownSid(PSID pSid,WELL_KNOWN_SID_TYPE WellKnownSidType);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CreateWellKnownSid(WELL_KNOWN_SID_TYPE WellKnownSidType,PSID DomainSid,PSID pSid,DWORD *cbSid);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EqualDomainSid(PSID pSid1,PSID pSid2,WINBOOL *pfEqual);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetWindowsAccountDomainSid(PSID pSid,PSID pDomainSid,DWORD *cbDomainSid);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsValidSid(PSID pSid);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EqualSid(PSID pSid1,PSID pSid2);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EqualPrefixSid(PSID pSid1,PSID pSid2);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetSidLengthRequired (UCHAR nSubAuthorityCount);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AllocateAndInitializeSid(PSID_IDENTIFIER_AUTHORITY pIdentifierAuthority,BYTE nSubAuthorityCount,DWORD nSubAuthority0,DWORD nSubAuthority1,DWORD nSubAuthority2,DWORD nSubAuthority3,DWORD nSubAuthority4,DWORD nSubAuthority5,DWORD nSubAuthority6,DWORD nSubAuthority7,PSID *pSid);
  __attribute__((dllimport)) PVOID __attribute__((__stdcall__)) FreeSid(PSID pSid);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) InitializeSid(PSID Sid,PSID_IDENTIFIER_AUTHORITY pIdentifierAuthority,BYTE nSubAuthorityCount);
  __attribute__((dllimport)) PSID_IDENTIFIER_AUTHORITY __attribute__((__stdcall__)) GetSidIdentifierAuthority(PSID pSid);
  __attribute__((dllimport)) PDWORD __attribute__((__stdcall__)) GetSidSubAuthority(PSID pSid,DWORD nSubAuthority);
  __attribute__((dllimport)) PUCHAR __attribute__((__stdcall__)) GetSidSubAuthorityCount(PSID pSid);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetLengthSid(PSID pSid);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CopySid(DWORD nDestinationSidLength,PSID pDestinationSid,PSID pSourceSid);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AreAllAccessesGranted(DWORD GrantedAccess,DWORD DesiredAccess);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AreAnyAccessesGranted(DWORD GrantedAccess,DWORD DesiredAccess);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) MapGenericMask(PDWORD AccessMask,PGENERIC_MAPPING GenericMapping);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsValidAcl(PACL pAcl);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) InitializeAcl(PACL pAcl,DWORD nAclLength,DWORD dwAclRevision);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetAclInformation(PACL pAcl,LPVOID pAclInformation,DWORD nAclInformationLength,ACL_INFORMATION_CLASS dwAclInformationClass);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetAclInformation(PACL pAcl,LPVOID pAclInformation,DWORD nAclInformationLength,ACL_INFORMATION_CLASS dwAclInformationClass);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AddAce(PACL pAcl,DWORD dwAceRevision,DWORD dwStartingAceIndex,LPVOID pAceList,DWORD nAceListLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DeleteAce(PACL pAcl,DWORD dwAceIndex);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetAce(PACL pAcl,DWORD dwAceIndex,LPVOID *pAce);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AddAccessAllowedAce(PACL pAcl,DWORD dwAceRevision,DWORD AccessMask,PSID pSid);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AddAccessAllowedAceEx(PACL pAcl,DWORD dwAceRevision,DWORD AceFlags,DWORD AccessMask,PSID pSid);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AddAccessDeniedAce(PACL pAcl,DWORD dwAceRevision,DWORD AccessMask,PSID pSid);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AddAccessDeniedAceEx(PACL pAcl,DWORD dwAceRevision,DWORD AceFlags,DWORD AccessMask,PSID pSid);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AddAuditAccessAce(PACL pAcl,DWORD dwAceRevision,DWORD dwAccessMask,PSID pSid,WINBOOL bAuditSuccess,WINBOOL bAuditFailure);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AddAuditAccessAceEx(PACL pAcl,DWORD dwAceRevision,DWORD AceFlags,DWORD dwAccessMask,PSID pSid,WINBOOL bAuditSuccess,WINBOOL bAuditFailure);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AddAccessAllowedObjectAce(PACL pAcl,DWORD dwAceRevision,DWORD AceFlags,DWORD AccessMask,GUID *ObjectTypeGuid,GUID *InheritedObjectTypeGuid,PSID pSid);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AddAccessDeniedObjectAce(PACL pAcl,DWORD dwAceRevision,DWORD AceFlags,DWORD AccessMask,GUID *ObjectTypeGuid,GUID *InheritedObjectTypeGuid,PSID pSid);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AddAuditAccessObjectAce(PACL pAcl,DWORD dwAceRevision,DWORD AceFlags,DWORD AccessMask,GUID *ObjectTypeGuid,GUID *InheritedObjectTypeGuid,PSID pSid,WINBOOL bAuditSuccess,WINBOOL bAuditFailure);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FindFirstFreeAce(PACL pAcl,LPVOID *pAce);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) InitializeSecurityDescriptor(PSECURITY_DESCRIPTOR pSecurityDescriptor,DWORD dwRevision);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsValidSecurityDescriptor(PSECURITY_DESCRIPTOR pSecurityDescriptor);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetSecurityDescriptorLength(PSECURITY_DESCRIPTOR pSecurityDescriptor);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetSecurityDescriptorControl(PSECURITY_DESCRIPTOR pSecurityDescriptor,PSECURITY_DESCRIPTOR_CONTROL pControl,LPDWORD lpdwRevision);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetSecurityDescriptorControl(PSECURITY_DESCRIPTOR pSecurityDescriptor,SECURITY_DESCRIPTOR_CONTROL ControlBitsOfInterest,SECURITY_DESCRIPTOR_CONTROL ControlBitsToSet);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetSecurityDescriptorDacl(PSECURITY_DESCRIPTOR pSecurityDescriptor,WINBOOL bDaclPresent,PACL pDacl,WINBOOL bDaclDefaulted);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetSecurityDescriptorDacl(PSECURITY_DESCRIPTOR pSecurityDescriptor,LPBOOL lpbDaclPresent,PACL *pDacl,LPBOOL lpbDaclDefaulted);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetSecurityDescriptorSacl(PSECURITY_DESCRIPTOR pSecurityDescriptor,WINBOOL bSaclPresent,PACL pSacl,WINBOOL bSaclDefaulted);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetSecurityDescriptorSacl(PSECURITY_DESCRIPTOR pSecurityDescriptor,LPBOOL lpbSaclPresent,PACL *pSacl,LPBOOL lpbSaclDefaulted);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetSecurityDescriptorOwner(PSECURITY_DESCRIPTOR pSecurityDescriptor,PSID pOwner,WINBOOL bOwnerDefaulted);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetSecurityDescriptorOwner(PSECURITY_DESCRIPTOR pSecurityDescriptor,PSID *pOwner,LPBOOL lpbOwnerDefaulted);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetSecurityDescriptorGroup(PSECURITY_DESCRIPTOR pSecurityDescriptor,PSID pGroup,WINBOOL bGroupDefaulted);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetSecurityDescriptorGroup(PSECURITY_DESCRIPTOR pSecurityDescriptor,PSID *pGroup,LPBOOL lpbGroupDefaulted);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) SetSecurityDescriptorRMControl(PSECURITY_DESCRIPTOR SecurityDescriptor,PUCHAR RMControl);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetSecurityDescriptorRMControl(PSECURITY_DESCRIPTOR SecurityDescriptor,PUCHAR RMControl);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CreatePrivateObjectSecurity(PSECURITY_DESCRIPTOR ParentDescriptor,PSECURITY_DESCRIPTOR CreatorDescriptor,PSECURITY_DESCRIPTOR *NewDescriptor,WINBOOL IsDirectoryObject,HANDLE Token,PGENERIC_MAPPING GenericMapping);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ConvertToAutoInheritPrivateObjectSecurity(PSECURITY_DESCRIPTOR ParentDescriptor,PSECURITY_DESCRIPTOR CurrentSecurityDescriptor,PSECURITY_DESCRIPTOR *NewSecurityDescriptor,GUID *ObjectType,BOOLEAN IsDirectoryObject,PGENERIC_MAPPING GenericMapping);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CreatePrivateObjectSecurityEx(PSECURITY_DESCRIPTOR ParentDescriptor,PSECURITY_DESCRIPTOR CreatorDescriptor,PSECURITY_DESCRIPTOR *NewDescriptor,GUID *ObjectType,WINBOOL IsContainerObject,ULONG AutoInheritFlags,HANDLE Token,PGENERIC_MAPPING GenericMapping);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CreatePrivateObjectSecurityWithMultipleInheritance(PSECURITY_DESCRIPTOR ParentDescriptor,PSECURITY_DESCRIPTOR CreatorDescriptor,PSECURITY_DESCRIPTOR *NewDescriptor,GUID **ObjectTypes,ULONG GuidCount,WINBOOL IsContainerObject,ULONG AutoInheritFlags,HANDLE Token,PGENERIC_MAPPING GenericMapping);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetPrivateObjectSecurity (SECURITY_INFORMATION SecurityInformation,PSECURITY_DESCRIPTOR ModificationDescriptor,PSECURITY_DESCRIPTOR *ObjectsSecurityDescriptor,PGENERIC_MAPPING GenericMapping,HANDLE Token);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetPrivateObjectSecurityEx (SECURITY_INFORMATION SecurityInformation,PSECURITY_DESCRIPTOR ModificationDescriptor,PSECURITY_DESCRIPTOR *ObjectsSecurityDescriptor,ULONG AutoInheritFlags,PGENERIC_MAPPING GenericMapping,HANDLE Token);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetPrivateObjectSecurity(PSECURITY_DESCRIPTOR ObjectDescriptor,SECURITY_INFORMATION SecurityInformation,PSECURITY_DESCRIPTOR ResultantDescriptor,DWORD DescriptorLength,PDWORD ReturnLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DestroyPrivateObjectSecurity(PSECURITY_DESCRIPTOR *ObjectDescriptor);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) MakeSelfRelativeSD(PSECURITY_DESCRIPTOR pAbsoluteSecurityDescriptor,PSECURITY_DESCRIPTOR pSelfRelativeSecurityDescriptor,LPDWORD lpdwBufferLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) MakeAbsoluteSD(PSECURITY_DESCRIPTOR pSelfRelativeSecurityDescriptor,PSECURITY_DESCRIPTOR pAbsoluteSecurityDescriptor,LPDWORD lpdwAbsoluteSecurityDescriptorSize,PACL pDacl,LPDWORD lpdwDaclSize,PACL pSacl,LPDWORD lpdwSaclSize,PSID pOwner,LPDWORD lpdwOwnerSize,PSID pPrimaryGroup,LPDWORD lpdwPrimaryGroupSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) MakeAbsoluteSD2(PSECURITY_DESCRIPTOR pSelfRelativeSecurityDescriptor,LPDWORD lpdwBufferSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetFileSecurityA(LPCSTR lpFileName,SECURITY_INFORMATION SecurityInformation,PSECURITY_DESCRIPTOR pSecurityDescriptor);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetFileSecurityW(LPCWSTR lpFileName,SECURITY_INFORMATION SecurityInformation,PSECURITY_DESCRIPTOR pSecurityDescriptor);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetFileSecurityA(LPCSTR lpFileName,SECURITY_INFORMATION RequestedInformation,PSECURITY_DESCRIPTOR pSecurityDescriptor,DWORD nLength,LPDWORD lpnLengthNeeded);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetFileSecurityW(LPCWSTR lpFileName,SECURITY_INFORMATION RequestedInformation,PSECURITY_DESCRIPTOR pSecurityDescriptor,DWORD nLength,LPDWORD lpnLengthNeeded);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetKernelObjectSecurity(HANDLE Handle,SECURITY_INFORMATION SecurityInformation,PSECURITY_DESCRIPTOR SecurityDescriptor);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) FindFirstChangeNotificationA(LPCSTR lpPathName,WINBOOL bWatchSubtree,DWORD dwNotifyFilter);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) FindFirstChangeNotificationW(LPCWSTR lpPathName,WINBOOL bWatchSubtree,DWORD dwNotifyFilter);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FindNextChangeNotification(HANDLE hChangeHandle);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FindCloseChangeNotification(HANDLE hChangeHandle);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ReadDirectoryChangesW(HANDLE hDirectory,LPVOID lpBuffer,DWORD nBufferLength,WINBOOL bWatchSubtree,DWORD dwNotifyFilter,LPDWORD lpBytesReturned,LPOVERLAPPED lpOverlapped,LPOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) VirtualLock(LPVOID lpAddress,SIZE_T dwSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) VirtualUnlock(LPVOID lpAddress,SIZE_T dwSize);
  __attribute__((dllimport)) LPVOID __attribute__((__stdcall__)) MapViewOfFileEx(HANDLE hFileMappingObject,DWORD dwDesiredAccess,DWORD dwFileOffsetHigh,DWORD dwFileOffsetLow,SIZE_T dwNumberOfBytesToMap,LPVOID lpBaseAddress);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetPriorityClass(HANDLE hProcess,DWORD dwPriorityClass);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetPriorityClass(HANDLE hProcess);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsBadReadPtr(const void *lp,UINT_PTR ucb);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsBadWritePtr(LPVOID lp,UINT_PTR ucb);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsBadHugeReadPtr(const void *lp,UINT_PTR ucb);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsBadHugeWritePtr(LPVOID lp,UINT_PTR ucb);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsBadCodePtr(FARPROC lpfn);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsBadStringPtrA(LPCSTR lpsz,UINT_PTR ucchMax);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsBadStringPtrW(LPCWSTR lpsz,UINT_PTR ucchMax);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) LookupAccountSidA(LPCSTR lpSystemName,PSID Sid,LPSTR Name,LPDWORD cchName,LPSTR ReferencedDomainName,LPDWORD cchReferencedDomainName,PSID_NAME_USE peUse);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) LookupAccountSidW(LPCWSTR lpSystemName,PSID Sid,LPWSTR Name,LPDWORD cchName,LPWSTR ReferencedDomainName,LPDWORD cchReferencedDomainName,PSID_NAME_USE peUse);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) LookupAccountNameA(LPCSTR lpSystemName,LPCSTR lpAccountName,PSID Sid,LPDWORD cbSid,LPSTR ReferencedDomainName,LPDWORD cchReferencedDomainName,PSID_NAME_USE peUse);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) LookupAccountNameW(LPCWSTR lpSystemName,LPCWSTR lpAccountName,PSID Sid,LPDWORD cbSid,LPWSTR ReferencedDomainName,LPDWORD cchReferencedDomainName,PSID_NAME_USE peUse);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) LookupPrivilegeValueA(LPCSTR lpSystemName,LPCSTR lpName,PLUID lpLuid);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) LookupPrivilegeValueW(LPCWSTR lpSystemName,LPCWSTR lpName,PLUID lpLuid);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) LookupPrivilegeNameA(LPCSTR lpSystemName,PLUID lpLuid,LPSTR lpName,LPDWORD cchName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) LookupPrivilegeNameW(LPCWSTR lpSystemName,PLUID lpLuid,LPWSTR lpName,LPDWORD cchName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) LookupPrivilegeDisplayNameA(LPCSTR lpSystemName,LPCSTR lpName,LPSTR lpDisplayName,LPDWORD cchDisplayName,LPDWORD lpLanguageId);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) LookupPrivilegeDisplayNameW(LPCWSTR lpSystemName,LPCWSTR lpName,LPWSTR lpDisplayName,LPDWORD cchDisplayName,LPDWORD lpLanguageId);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AllocateLocallyUniqueId(PLUID Luid);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) BuildCommDCBA(LPCSTR lpDef,LPDCB lpDCB);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) BuildCommDCBW(LPCWSTR lpDef,LPDCB lpDCB);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) BuildCommDCBAndTimeoutsA(LPCSTR lpDef,LPDCB lpDCB,LPCOMMTIMEOUTS lpCommTimeouts);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) BuildCommDCBAndTimeoutsW(LPCWSTR lpDef,LPDCB lpDCB,LPCOMMTIMEOUTS lpCommTimeouts);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CommConfigDialogA(LPCSTR lpszName,HWND hWnd,LPCOMMCONFIG lpCC);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CommConfigDialogW(LPCWSTR lpszName,HWND hWnd,LPCOMMCONFIG lpCC);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetDefaultCommConfigA(LPCSTR lpszName,LPCOMMCONFIG lpCC,LPDWORD lpdwSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetDefaultCommConfigW(LPCWSTR lpszName,LPCOMMCONFIG lpCC,LPDWORD lpdwSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetDefaultCommConfigA(LPCSTR lpszName,LPCOMMCONFIG lpCC,DWORD dwSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetDefaultCommConfigW(LPCWSTR lpszName,LPCOMMCONFIG lpCC,DWORD dwSize);



  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetComputerNameA(LPSTR lpBuffer,LPDWORD nSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetComputerNameW(LPWSTR lpBuffer,LPDWORD nSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetComputerNameA(LPCSTR lpComputerName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetComputerNameW(LPCWSTR lpComputerName);

  typedef enum _COMPUTER_NAME_FORMAT {
    ComputerNameNetBIOS,ComputerNameDnsHostname,ComputerNameDnsDomain,ComputerNameDnsFullyQualified,ComputerNamePhysicalNetBIOS,ComputerNamePhysicalDnsHostname,ComputerNamePhysicalDnsDomain,ComputerNamePhysicalDnsFullyQualified,ComputerNameMax
  } COMPUTER_NAME_FORMAT;

  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetComputerNameExA(COMPUTER_NAME_FORMAT NameType,LPSTR lpBuffer,LPDWORD nSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetComputerNameExW(COMPUTER_NAME_FORMAT NameType,LPWSTR lpBuffer,LPDWORD nSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetComputerNameExA(COMPUTER_NAME_FORMAT NameType,LPCSTR lpBuffer);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetComputerNameExW(COMPUTER_NAME_FORMAT NameType,LPCWSTR lpBuffer);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DnsHostnameToComputerNameA(LPCSTR Hostname,LPSTR ComputerName,LPDWORD nSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DnsHostnameToComputerNameW(LPCWSTR Hostname,LPWSTR ComputerName,LPDWORD nSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetUserNameA(LPSTR lpBuffer,LPDWORD pcbBuffer);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetUserNameW(LPWSTR lpBuffer,LPDWORD pcbBuffer);
# 2610 "../tinyccbinary/win32/include/winapi/winbase.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) LogonUserA(LPCSTR lpszUsername,LPCSTR lpszDomain,LPCSTR lpszPassword,DWORD dwLogonType,DWORD dwLogonProvider,PHANDLE phToken);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) LogonUserW(LPCWSTR lpszUsername,LPCWSTR lpszDomain,LPCWSTR lpszPassword,DWORD dwLogonType,DWORD dwLogonProvider,PHANDLE phToken);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) LogonUserExA(LPCSTR lpszUsername,LPCSTR lpszDomain,LPCSTR lpszPassword,DWORD dwLogonType,DWORD dwLogonProvider,PHANDLE phToken,PSID *ppLogonSid,PVOID *ppProfileBuffer,LPDWORD pdwProfileLength,PQUOTA_LIMITS pQuotaLimits);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) LogonUserExW(LPCWSTR lpszUsername,LPCWSTR lpszDomain,LPCWSTR lpszPassword,DWORD dwLogonType,DWORD dwLogonProvider,PHANDLE phToken,PSID *ppLogonSid,PVOID *ppProfileBuffer,LPDWORD pdwProfileLength,PQUOTA_LIMITS pQuotaLimits);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ImpersonateLoggedOnUser(HANDLE hToken);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CreateProcessAsUserA(HANDLE hToken,LPCSTR lpApplicationName,LPSTR lpCommandLine,LPSECURITY_ATTRIBUTES lpProcessAttributes,LPSECURITY_ATTRIBUTES lpThreadAttributes,WINBOOL bInheritHandles,DWORD dwCreationFlags,LPVOID lpEnvironment,LPCSTR lpCurrentDirectory,LPSTARTUPINFOA lpStartupInfo,LPPROCESS_INFORMATION lpProcessInformation);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CreateProcessAsUserW(HANDLE hToken,LPCWSTR lpApplicationName,LPWSTR lpCommandLine,LPSECURITY_ATTRIBUTES lpProcessAttributes,LPSECURITY_ATTRIBUTES lpThreadAttributes,WINBOOL bInheritHandles,DWORD dwCreationFlags,LPVOID lpEnvironment,LPCWSTR lpCurrentDirectory,LPSTARTUPINFOW lpStartupInfo,LPPROCESS_INFORMATION lpProcessInformation);





  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CreateProcessWithLogonW(LPCWSTR lpUsername,LPCWSTR lpDomain,LPCWSTR lpPassword,DWORD dwLogonFlags,LPCWSTR lpApplicationName,LPWSTR lpCommandLine,DWORD dwCreationFlags,LPVOID lpEnvironment,LPCWSTR lpCurrentDirectory,LPSTARTUPINFOW lpStartupInfo,LPPROCESS_INFORMATION lpProcessInformation);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CreateProcessWithTokenW(HANDLE hToken,DWORD dwLogonFlags,LPCWSTR lpApplicationName,LPWSTR lpCommandLine,DWORD dwCreationFlags,LPVOID lpEnvironment,LPCWSTR lpCurrentDirectory,LPSTARTUPINFOW lpStartupInfo,LPPROCESS_INFORMATION lpProcessInformation);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ImpersonateAnonymousToken(HANDLE ThreadHandle);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DuplicateTokenEx(HANDLE hExistingToken,DWORD dwDesiredAccess,LPSECURITY_ATTRIBUTES lpTokenAttributes,SECURITY_IMPERSONATION_LEVEL ImpersonationLevel,TOKEN_TYPE TokenType,PHANDLE phNewToken);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CreateRestrictedToken(HANDLE ExistingTokenHandle,DWORD Flags,DWORD DisableSidCount,PSID_AND_ATTRIBUTES SidsToDisable,DWORD DeletePrivilegeCount,PLUID_AND_ATTRIBUTES PrivilegesToDelete,DWORD RestrictedSidCount,PSID_AND_ATTRIBUTES SidsToRestrict,PHANDLE NewTokenHandle);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsTokenRestricted(HANDLE TokenHandle);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsTokenUntrusted(HANDLE TokenHandle);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CheckTokenMembership(HANDLE TokenHandle,PSID SidToCheck,PBOOL IsMember);

  typedef WAITORTIMERCALLBACKFUNC WAITORTIMERCALLBACK;

  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) RegisterWaitForSingleObject(PHANDLE phNewWaitObject,HANDLE hObject,WAITORTIMERCALLBACK Callback,PVOID Context,ULONG dwMilliseconds,ULONG dwFlags);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) RegisterWaitForSingleObjectEx(HANDLE hObject,WAITORTIMERCALLBACK Callback,PVOID Context,ULONG dwMilliseconds,ULONG dwFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) UnregisterWait(HANDLE WaitHandle);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) UnregisterWaitEx(HANDLE WaitHandle,HANDLE CompletionEvent);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) QueueUserWorkItem(LPTHREAD_START_ROUTINE Function,PVOID Context,ULONG Flags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) BindIoCompletionCallback(HANDLE FileHandle,LPOVERLAPPED_COMPLETION_ROUTINE Function,ULONG Flags);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateTimerQueue(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CreateTimerQueueTimer(PHANDLE phNewTimer,HANDLE TimerQueue,WAITORTIMERCALLBACK Callback,PVOID Parameter,DWORD DueTime,DWORD Period,ULONG Flags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ChangeTimerQueueTimer(HANDLE TimerQueue,HANDLE Timer,ULONG DueTime,ULONG Period);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DeleteTimerQueueTimer(HANDLE TimerQueue,HANDLE Timer,HANDLE CompletionEvent);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DeleteTimerQueueEx(HANDLE TimerQueue,HANDLE CompletionEvent);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) SetTimerQueueTimer(HANDLE TimerQueue,WAITORTIMERCALLBACK Callback,PVOID Parameter,DWORD DueTime,DWORD Period,WINBOOL PreferIo);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CancelTimerQueueTimer(HANDLE TimerQueue,HANDLE Timer);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DeleteTimerQueue(HANDLE TimerQueue);
# 2657 "../tinyccbinary/win32/include/winapi/winbase.h"
  typedef struct tagHW_PROFILE_INFOA {
    DWORD dwDockInfo;
    CHAR szHwProfileGuid[39];
    CHAR szHwProfileName[80];
  } HW_PROFILE_INFOA,*LPHW_PROFILE_INFOA;

  typedef struct tagHW_PROFILE_INFOW {
    DWORD dwDockInfo;
    WCHAR szHwProfileGuid[39];
    WCHAR szHwProfileName[80];
  } HW_PROFILE_INFOW,*LPHW_PROFILE_INFOW;





  typedef HW_PROFILE_INFOA HW_PROFILE_INFO;
  typedef LPHW_PROFILE_INFOA LPHW_PROFILE_INFO;
# 2687 "../tinyccbinary/win32/include/winapi/winbase.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCurrentHwProfileA (LPHW_PROFILE_INFOA lpHwProfileInfo);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCurrentHwProfileW (LPHW_PROFILE_INFOW lpHwProfileInfo);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) QueryPerformanceCounter(LARGE_INTEGER *lpPerformanceCount);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) QueryPerformanceFrequency(LARGE_INTEGER *lpFrequency);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetVersionExA(LPOSVERSIONINFOA lpVersionInformation);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetVersionExW(LPOSVERSIONINFOW lpVersionInformation);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) VerifyVersionInfoA(LPOSVERSIONINFOEXA lpVersionInformation,DWORD dwTypeMask,DWORDLONG dwlConditionMask);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) VerifyVersionInfoW(LPOSVERSIONINFOEXW lpVersionInformation,DWORD dwTypeMask,DWORDLONG dwlConditionMask);

# 1 "../tinyccbinary/win32/include/winapi/winerror.h" 1
# 2697 "../tinyccbinary/win32/include/winapi/winbase.h" 2
# 2719 "../tinyccbinary/win32/include/winapi/winbase.h"
  typedef struct _SYSTEM_POWER_STATUS {
    BYTE ACLineStatus;
    BYTE BatteryFlag;
    BYTE BatteryLifePercent;
    BYTE Reserved1;
    DWORD BatteryLifeTime;
    DWORD BatteryFullLifeTime;
  } SYSTEM_POWER_STATUS,*LPSYSTEM_POWER_STATUS;
# 2754 "../tinyccbinary/win32/include/winapi/winbase.h"
  WINBOOL __attribute__((__stdcall__)) GetSystemPowerStatus(LPSYSTEM_POWER_STATUS lpSystemPowerStatus);
  WINBOOL __attribute__((__stdcall__)) SetSystemPowerState(WINBOOL fSuspend,WINBOOL fForce);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AllocateUserPhysicalPages(HANDLE hProcess,PULONG_PTR NumberOfPages,PULONG_PTR PageArray);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FreeUserPhysicalPages(HANDLE hProcess,PULONG_PTR NumberOfPages,PULONG_PTR PageArray);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) MapUserPhysicalPages(PVOID VirtualAddress,ULONG_PTR NumberOfPages,PULONG_PTR PageArray);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) MapUserPhysicalPagesScatter(PVOID *VirtualAddresses,ULONG_PTR NumberOfPages,PULONG_PTR PageArray);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateJobObjectA(LPSECURITY_ATTRIBUTES lpJobAttributes,LPCSTR lpName);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateJobObjectW(LPSECURITY_ATTRIBUTES lpJobAttributes,LPCWSTR lpName);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) OpenJobObjectA(DWORD dwDesiredAccess,WINBOOL bInheritHandle,LPCSTR lpName);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) OpenJobObjectW(DWORD dwDesiredAccess,WINBOOL bInheritHandle,LPCWSTR lpName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AssignProcessToJobObject(HANDLE hJob,HANDLE hProcess);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) TerminateJobObject(HANDLE hJob,UINT uExitCode);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) QueryInformationJobObject(HANDLE hJob,JOBOBJECTINFOCLASS JobObjectInformationClass,LPVOID lpJobObjectInformation,DWORD cbJobObjectInformationLength,LPDWORD lpReturnLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetInformationJobObject(HANDLE hJob,JOBOBJECTINFOCLASS JobObjectInformationClass,LPVOID lpJobObjectInformation,DWORD cbJobObjectInformationLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsProcessInJob(HANDLE ProcessHandle,HANDLE JobHandle,PBOOL Result);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CreateJobSet(ULONG NumJob,PJOB_SET_ARRAY UserJobSet,ULONG Flags);
  __attribute__((dllimport)) PVOID __attribute__((__stdcall__)) AddVectoredExceptionHandler (ULONG First,PVECTORED_EXCEPTION_HANDLER Handler);
  __attribute__((dllimport)) ULONG __attribute__((__stdcall__)) RemoveVectoredExceptionHandler(PVOID Handle);
  __attribute__((dllimport)) PVOID __attribute__((__stdcall__)) AddVectoredContinueHandler (ULONG First,PVECTORED_EXCEPTION_HANDLER Handler);
  __attribute__((dllimport)) ULONG __attribute__((__stdcall__)) RemoveVectoredContinueHandler(PVOID Handle);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) FindFirstVolumeA(LPSTR lpszVolumeName,DWORD cchBufferLength);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) FindFirstVolumeW(LPWSTR lpszVolumeName,DWORD cchBufferLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FindNextVolumeA(HANDLE hFindVolume,LPSTR lpszVolumeName,DWORD cchBufferLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FindNextVolumeW(HANDLE hFindVolume,LPWSTR lpszVolumeName,DWORD cchBufferLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FindVolumeClose(HANDLE hFindVolume);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) FindFirstVolumeMountPointA(LPCSTR lpszRootPathName,LPSTR lpszVolumeMountPoint,DWORD cchBufferLength);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) FindFirstVolumeMountPointW(LPCWSTR lpszRootPathName,LPWSTR lpszVolumeMountPoint,DWORD cchBufferLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FindNextVolumeMountPointA(HANDLE hFindVolumeMountPoint,LPSTR lpszVolumeMountPoint,DWORD cchBufferLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FindNextVolumeMountPointW(HANDLE hFindVolumeMountPoint,LPWSTR lpszVolumeMountPoint,DWORD cchBufferLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FindVolumeMountPointClose(HANDLE hFindVolumeMountPoint);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetVolumeMountPointA(LPCSTR lpszVolumeMountPoint,LPCSTR lpszVolumeName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetVolumeMountPointW(LPCWSTR lpszVolumeMountPoint,LPCWSTR lpszVolumeName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DeleteVolumeMountPointA(LPCSTR lpszVolumeMountPoint);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DeleteVolumeMountPointW(LPCWSTR lpszVolumeMountPoint);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetVolumeNameForVolumeMountPointA(LPCSTR lpszVolumeMountPoint,LPSTR lpszVolumeName,DWORD cchBufferLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetVolumeNameForVolumeMountPointW(LPCWSTR lpszVolumeMountPoint,LPWSTR lpszVolumeName,DWORD cchBufferLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetVolumePathNameA(LPCSTR lpszFileName,LPSTR lpszVolumePathName,DWORD cchBufferLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetVolumePathNameW(LPCWSTR lpszFileName,LPWSTR lpszVolumePathName,DWORD cchBufferLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetVolumePathNamesForVolumeNameA(LPCSTR lpszVolumeName,LPCH lpszVolumePathNames,DWORD cchBufferLength,PDWORD lpcchReturnLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetVolumePathNamesForVolumeNameW(LPCWSTR lpszVolumeName,LPWCH lpszVolumePathNames,DWORD cchBufferLength,PDWORD lpcchReturnLength);
# 2804 "../tinyccbinary/win32/include/winapi/winbase.h"
  typedef struct tagACTCTXA {
    ULONG cbSize;
    DWORD dwFlags;
    LPCSTR lpSource;
    USHORT wProcessorArchitecture;
    LANGID wLangId;
    LPCSTR lpAssemblyDirectory;
    LPCSTR lpResourceName;
    LPCSTR lpApplicationName;
    HMODULE hModule;
  } ACTCTXA,*PACTCTXA;

  typedef struct tagACTCTXW {
    ULONG cbSize;
    DWORD dwFlags;
    LPCWSTR lpSource;
    USHORT wProcessorArchitecture;
    LANGID wLangId;
    LPCWSTR lpAssemblyDirectory;
    LPCWSTR lpResourceName;
    LPCWSTR lpApplicationName;
    HMODULE hModule;
  } ACTCTXW,*PACTCTXW;

  typedef const ACTCTXA *PCACTCTXA;
  typedef const ACTCTXW *PCACTCTXW;






  typedef ACTCTXA ACTCTX;
  typedef PACTCTXA PACTCTX;
  typedef PCACTCTXA PCACTCTX;
# 2847 "../tinyccbinary/win32/include/winapi/winbase.h"
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateActCtxA(PCACTCTXA pActCtx);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateActCtxW(PCACTCTXW pActCtx);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) AddRefActCtx(HANDLE hActCtx);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) ReleaseActCtx(HANDLE hActCtx);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ZombifyActCtx(HANDLE hActCtx);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ActivateActCtx(HANDLE hActCtx,ULONG_PTR *lpCookie);



  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DeactivateActCtx(DWORD dwFlags,ULONG_PTR ulCookie);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCurrentActCtx(HANDLE *lphActCtx);

  typedef struct tagACTCTX_SECTION_KEYED_DATA_2600 {
    ULONG cbSize;
    ULONG ulDataFormatVersion;
    PVOID lpData;
    ULONG ulLength;
    PVOID lpSectionGlobalData;
    ULONG ulSectionGlobalDataLength;
    PVOID lpSectionBase;
    ULONG ulSectionTotalLength;
    HANDLE hActCtx;
    ULONG ulAssemblyRosterIndex;
  } ACTCTX_SECTION_KEYED_DATA_2600,*PACTCTX_SECTION_KEYED_DATA_2600;

  typedef const ACTCTX_SECTION_KEYED_DATA_2600 *PCACTCTX_SECTION_KEYED_DATA_2600;

  typedef struct tagACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA {
    PVOID lpInformation;
    PVOID lpSectionBase;
    ULONG ulSectionLength;
    PVOID lpSectionGlobalDataBase;
    ULONG ulSectionGlobalDataLength;
  } ACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA,*PACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA;

  typedef const ACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA *PCACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA;

  typedef struct tagACTCTX_SECTION_KEYED_DATA {
    ULONG cbSize;
    ULONG ulDataFormatVersion;
    PVOID lpData;
    ULONG ulLength;
    PVOID lpSectionGlobalData;
    ULONG ulSectionGlobalDataLength;
    PVOID lpSectionBase;
    ULONG ulSectionTotalLength;
    HANDLE hActCtx;
    ULONG ulAssemblyRosterIndex;

    ULONG ulFlags;
    ACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA AssemblyMetadata;
  } ACTCTX_SECTION_KEYED_DATA,*PACTCTX_SECTION_KEYED_DATA;

  typedef const ACTCTX_SECTION_KEYED_DATA *PCACTCTX_SECTION_KEYED_DATA;
# 2912 "../tinyccbinary/win32/include/winapi/winbase.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FindActCtxSectionStringA(DWORD dwFlags,const GUID *lpExtensionGuid,ULONG ulSectionId,LPCSTR lpStringToFind,PACTCTX_SECTION_KEYED_DATA ReturnedData);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FindActCtxSectionStringW(DWORD dwFlags,const GUID *lpExtensionGuid,ULONG ulSectionId,LPCWSTR lpStringToFind,PACTCTX_SECTION_KEYED_DATA ReturnedData);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FindActCtxSectionGuid(DWORD dwFlags,const GUID *lpExtensionGuid,ULONG ulSectionId,const GUID *lpGuidToFind,PACTCTX_SECTION_KEYED_DATA ReturnedData);




  typedef struct _ACTIVATION_CONTEXT_BASIC_INFORMATION {
    HANDLE hActCtx;
    DWORD dwFlags;
  } ACTIVATION_CONTEXT_BASIC_INFORMATION,*PACTIVATION_CONTEXT_BASIC_INFORMATION;

  typedef const struct _ACTIVATION_CONTEXT_BASIC_INFORMATION *PCACTIVATION_CONTEXT_BASIC_INFORMATION;
# 2935 "../tinyccbinary/win32/include/winapi/winbase.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) QueryActCtxW(DWORD dwFlags,HANDLE hActCtx,PVOID pvSubInstance,ULONG ulInfoClass,PVOID pvBuffer,SIZE_T cbBuffer,SIZE_T *pcbWrittenOrRequired);

  typedef WINBOOL (__attribute__((__stdcall__)) *PQUERYACTCTXW_FUNC)(DWORD dwFlags,HANDLE hActCtx,PVOID pvSubInstance,ULONG ulInfoClass,PVOID pvBuffer,SIZE_T cbBuffer,SIZE_T *pcbWrittenOrRequired);

  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ProcessIdToSessionId(DWORD dwProcessId,DWORD *pSessionId);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) WTSGetActiveConsoleSessionId();
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsWow64Process(HANDLE hProcess,PBOOL Wow64Process);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetLogicalProcessorInformation(PSYSTEM_LOGICAL_PROCESSOR_INFORMATION Buffer,PDWORD ReturnedLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetNumaHighestNodeNumber(PULONG HighestNodeNumber);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetNumaProcessorNode(UCHAR Processor,PUCHAR NodeNumber);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetNumaNodeProcessorMask(UCHAR Node,PULONGLONG ProcessorMask);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetNumaAvailableMemoryNode(UCHAR Node,PULONGLONG AvailableBytes);
# 68 "../tinyccbinary/win32/include/winapi/windows.h" 2
# 1 "../tinyccbinary/win32/include/winapi/wingdi.h" 1
# 208 "../tinyccbinary/win32/include/winapi/wingdi.h"
  typedef struct _DRAWPATRECT {
    POINT ptPosition;
    POINT ptSize;
    WORD wStyle;
    WORD wPattern;
  } DRAWPATRECT,*PDRAWPATRECT;
# 309 "../tinyccbinary/win32/include/winapi/wingdi.h"
  typedef struct _PSINJECTDATA {
    DWORD DataBytes;
    WORD InjectionPoint;
    WORD PageNumber;
  } PSINJECTDATA,*PPSINJECTDATA;
# 363 "../tinyccbinary/win32/include/winapi/wingdi.h"
  typedef struct _PSFEATURE_OUTPUT {
    WINBOOL bPageIndependent;
    WINBOOL bSetPageDevice;
  } PSFEATURE_OUTPUT,*PPSFEATURE_OUTPUT;

  typedef struct _PSFEATURE_CUSTPAPER {
    LONG lOrientation;
    LONG lWidth;
    LONG lHeight;
    LONG lWidthOffset;
    LONG lHeightOffset;
  } PSFEATURE_CUSTPAPER,*PPSFEATURE_CUSTPAPER;
# 418 "../tinyccbinary/win32/include/winapi/wingdi.h"
  typedef struct tagXFORM {
    FLOAT eM11;
    FLOAT eM12;
    FLOAT eM21;
    FLOAT eM22;
    FLOAT eDx;
    FLOAT eDy;
  } XFORM,*PXFORM,*LPXFORM;

  typedef struct tagBITMAP {
    LONG bmType;
    LONG bmWidth;
    LONG bmHeight;
    LONG bmWidthBytes;
    WORD bmPlanes;
    WORD bmBitsPixel;
    LPVOID bmBits;
  } BITMAP,*PBITMAP,*NPBITMAP,*LPBITMAP;

# 1 "../tinyccbinary/win32/include/winapi/pshpack1.h" 1






#pragma pack(push,1)
# 438 "../tinyccbinary/win32/include/winapi/wingdi.h" 2
  typedef struct tagRGBTRIPLE {
    BYTE rgbtBlue;
    BYTE rgbtGreen;
    BYTE rgbtRed;
  } RGBTRIPLE;
# 1 "../tinyccbinary/win32/include/winapi/poppack.h" 1






#pragma pack(pop)
# 444 "../tinyccbinary/win32/include/winapi/wingdi.h" 2

  typedef struct tagRGBQUAD {
    BYTE rgbBlue;
    BYTE rgbGreen;
    BYTE rgbRed;
    BYTE rgbReserved;
  } RGBQUAD;
  typedef RGBQUAD *LPRGBQUAD;
# 461 "../tinyccbinary/win32/include/winapi/wingdi.h"
  typedef LONG LCSCSTYPE;


  typedef LONG LCSGAMUTMATCH;
# 488 "../tinyccbinary/win32/include/winapi/wingdi.h"
  typedef long FXPT16DOT16,*LPFXPT16DOT16;
  typedef long FXPT2DOT30,*LPFXPT2DOT30;

  typedef struct tagCIEXYZ {
    FXPT2DOT30 ciexyzX;
    FXPT2DOT30 ciexyzY;
    FXPT2DOT30 ciexyzZ;
  } CIEXYZ;
  typedef CIEXYZ *LPCIEXYZ;

  typedef struct tagICEXYZTRIPLE {
    CIEXYZ ciexyzRed;
    CIEXYZ ciexyzGreen;
    CIEXYZ ciexyzBlue;
  } CIEXYZTRIPLE;

  typedef CIEXYZTRIPLE *LPCIEXYZTRIPLE;

  typedef struct tagLOGCOLORSPACEA {
    DWORD lcsSignature;
    DWORD lcsVersion;
    DWORD lcsSize;
    LCSCSTYPE lcsCSType;
    LCSGAMUTMATCH lcsIntent;
    CIEXYZTRIPLE lcsEndpoints;
    DWORD lcsGammaRed;
    DWORD lcsGammaGreen;
    DWORD lcsGammaBlue;
    CHAR lcsFilename[260];
  } LOGCOLORSPACEA,*LPLOGCOLORSPACEA;

  typedef struct tagLOGCOLORSPACEW {
    DWORD lcsSignature;
    DWORD lcsVersion;
    DWORD lcsSize;
    LCSCSTYPE lcsCSType;
    LCSGAMUTMATCH lcsIntent;
    CIEXYZTRIPLE lcsEndpoints;
    DWORD lcsGammaRed;
    DWORD lcsGammaGreen;
    DWORD lcsGammaBlue;
    WCHAR lcsFilename[260];
  } LOGCOLORSPACEW,*LPLOGCOLORSPACEW;





  typedef LOGCOLORSPACEA LOGCOLORSPACE;
  typedef LPLOGCOLORSPACEA LPLOGCOLORSPACE;


  typedef struct tagBITMAPCOREHEADER {
    DWORD bcSize;
    WORD bcWidth;
    WORD bcHeight;
    WORD bcPlanes;
    WORD bcBitCount;
  } BITMAPCOREHEADER,*LPBITMAPCOREHEADER,*PBITMAPCOREHEADER;

  typedef struct tagBITMAPINFOHEADER {
    DWORD biSize;
    LONG biWidth;
    LONG biHeight;
    WORD biPlanes;
    WORD biBitCount;
    DWORD biCompression;
    DWORD biSizeImage;
    LONG biXPelsPerMeter;
    LONG biYPelsPerMeter;
    DWORD biClrUsed;
    DWORD biClrImportant;
  } BITMAPINFOHEADER,*LPBITMAPINFOHEADER,*PBITMAPINFOHEADER;

  typedef struct {
    DWORD bV4Size;
    LONG bV4Width;
    LONG bV4Height;
    WORD bV4Planes;
    WORD bV4BitCount;
    DWORD bV4V4Compression;
    DWORD bV4SizeImage;
    LONG bV4XPelsPerMeter;
    LONG bV4YPelsPerMeter;
    DWORD bV4ClrUsed;
    DWORD bV4ClrImportant;
    DWORD bV4RedMask;
    DWORD bV4GreenMask;
    DWORD bV4BlueMask;
    DWORD bV4AlphaMask;
    DWORD bV4CSType;
    CIEXYZTRIPLE bV4Endpoints;
    DWORD bV4GammaRed;
    DWORD bV4GammaGreen;
    DWORD bV4GammaBlue;
  } BITMAPV4HEADER,*LPBITMAPV4HEADER,*PBITMAPV4HEADER;

  typedef struct {
    DWORD bV5Size;
    LONG bV5Width;
    LONG bV5Height;
    WORD bV5Planes;
    WORD bV5BitCount;
    DWORD bV5Compression;
    DWORD bV5SizeImage;
    LONG bV5XPelsPerMeter;
    LONG bV5YPelsPerMeter;
    DWORD bV5ClrUsed;
    DWORD bV5ClrImportant;
    DWORD bV5RedMask;
    DWORD bV5GreenMask;
    DWORD bV5BlueMask;
    DWORD bV5AlphaMask;
    DWORD bV5CSType;
    CIEXYZTRIPLE bV5Endpoints;
    DWORD bV5GammaRed;
    DWORD bV5GammaGreen;
    DWORD bV5GammaBlue;
    DWORD bV5Intent;
    DWORD bV5ProfileData;
    DWORD bV5ProfileSize;
    DWORD bV5Reserved;
  } BITMAPV5HEADER,*LPBITMAPV5HEADER,*PBITMAPV5HEADER;
# 622 "../tinyccbinary/win32/include/winapi/wingdi.h"
  typedef struct tagBITMAPINFO {
    BITMAPINFOHEADER bmiHeader;
    RGBQUAD bmiColors[1];
  } BITMAPINFO,*LPBITMAPINFO,*PBITMAPINFO;

  typedef struct tagBITMAPCOREINFO {
    BITMAPCOREHEADER bmciHeader;
    RGBTRIPLE bmciColors[1];
  } BITMAPCOREINFO,*LPBITMAPCOREINFO,*PBITMAPCOREINFO;

# 1 "../tinyccbinary/win32/include/winapi/pshpack2.h" 1






#pragma pack(push,2)
# 633 "../tinyccbinary/win32/include/winapi/wingdi.h" 2
  typedef struct tagBITMAPFILEHEADER {
    WORD bfType;
    DWORD bfSize;
    WORD bfReserved1;
    WORD bfReserved2;
    DWORD bfOffBits;
  } BITMAPFILEHEADER,*LPBITMAPFILEHEADER,*PBITMAPFILEHEADER;
# 1 "../tinyccbinary/win32/include/winapi/poppack.h" 1






#pragma pack(pop)
# 641 "../tinyccbinary/win32/include/winapi/wingdi.h" 2




  typedef struct tagFONTSIGNATURE {
    DWORD fsUsb[4];
    DWORD fsCsb[2];
  } FONTSIGNATURE,*PFONTSIGNATURE,*LPFONTSIGNATURE;

  typedef struct tagCHARSETINFO {
    UINT ciCharset;
    UINT ciACP;
    FONTSIGNATURE fs;
  } CHARSETINFO,*PCHARSETINFO,*NPCHARSETINFO,*LPCHARSETINFO;






  typedef struct tagLOCALESIGNATURE {
    DWORD lsUsb[4];
    DWORD lsCsbDefault[2];
    DWORD lsCsbSupported[2];
  } LOCALESIGNATURE,*PLOCALESIGNATURE,*LPLOCALESIGNATURE;




  typedef struct tagHANDLETABLE {
    HGDIOBJ objectHandle[1];
  } HANDLETABLE,*PHANDLETABLE,*LPHANDLETABLE;

  typedef struct tagMETARECORD {
    DWORD rdSize;
    WORD rdFunction;
    WORD rdParm[1];
  } METARECORD;
  typedef struct tagMETARECORD  *PMETARECORD;
  typedef struct tagMETARECORD  *LPMETARECORD;

  typedef struct tagMETAFILEPICT {
    LONG mm;
    LONG xExt;
    LONG yExt;
    HMETAFILE hMF;
  } METAFILEPICT,*LPMETAFILEPICT;

# 1 "../tinyccbinary/win32/include/winapi/pshpack2.h" 1






#pragma pack(push,2)
# 690 "../tinyccbinary/win32/include/winapi/wingdi.h" 2
  typedef struct tagMETAHEADER {
    WORD mtType;
    WORD mtHeaderSize;
    WORD mtVersion;
    DWORD mtSize;
    WORD mtNoObjects;
    DWORD mtMaxRecord;
    WORD mtNoParameters;
  } METAHEADER;
  typedef struct tagMETAHEADER  *PMETAHEADER;
  typedef struct tagMETAHEADER  *LPMETAHEADER;

# 1 "../tinyccbinary/win32/include/winapi/poppack.h" 1






#pragma pack(pop)
# 703 "../tinyccbinary/win32/include/winapi/wingdi.h" 2

  typedef struct tagENHMETARECORD {
    DWORD iType;
    DWORD nSize;
    DWORD dParm[1];
  } ENHMETARECORD,*PENHMETARECORD,*LPENHMETARECORD;

  typedef struct tagENHMETAHEADER {
    DWORD iType;
    DWORD nSize;
    RECTL rclBounds;
    RECTL rclFrame;
    DWORD dSignature;
    DWORD nVersion;
    DWORD nBytes;
    DWORD nRecords;
    WORD nHandles;
    WORD sReserved;
    DWORD nDescription;
    DWORD offDescription;
    DWORD nPalEntries;
    SIZEL szlDevice;
    SIZEL szlMillimeters;
    DWORD cbPixelFormat;
    DWORD offPixelFormat;
    DWORD bOpenGL;
    SIZEL szlMicrometers;
  } ENHMETAHEADER,*PENHMETAHEADER,*LPENHMETAHEADER;
# 742 "../tinyccbinary/win32/include/winapi/wingdi.h"
  typedef BYTE BCHAR;




  typedef struct tagTEXTMETRICA {
    LONG tmHeight;
    LONG tmAscent;
    LONG tmDescent;
    LONG tmInternalLeading;
    LONG tmExternalLeading;
    LONG tmAveCharWidth;
    LONG tmMaxCharWidth;
    LONG tmWeight;
    LONG tmOverhang;
    LONG tmDigitizedAspectX;
    LONG tmDigitizedAspectY;
    BYTE tmFirstChar;
    BYTE tmLastChar;
    BYTE tmDefaultChar;
    BYTE tmBreakChar;
    BYTE tmItalic;
    BYTE tmUnderlined;
    BYTE tmStruckOut;
    BYTE tmPitchAndFamily;
    BYTE tmCharSet;
  } TEXTMETRICA,*PTEXTMETRICA,*NPTEXTMETRICA,*LPTEXTMETRICA;

  typedef struct tagTEXTMETRICW {
    LONG tmHeight;
    LONG tmAscent;
    LONG tmDescent;
    LONG tmInternalLeading;
    LONG tmExternalLeading;
    LONG tmAveCharWidth;
    LONG tmMaxCharWidth;
    LONG tmWeight;
    LONG tmOverhang;
    LONG tmDigitizedAspectX;
    LONG tmDigitizedAspectY;
    WCHAR tmFirstChar;
    WCHAR tmLastChar;
    WCHAR tmDefaultChar;
    WCHAR tmBreakChar;
    BYTE tmItalic;
    BYTE tmUnderlined;
    BYTE tmStruckOut;
    BYTE tmPitchAndFamily;
    BYTE tmCharSet;
  } TEXTMETRICW,*PTEXTMETRICW,*NPTEXTMETRICW,*LPTEXTMETRICW;






  typedef TEXTMETRICA TEXTMETRIC;
  typedef PTEXTMETRICA PTEXTMETRIC;
  typedef NPTEXTMETRICA NPTEXTMETRIC;
  typedef LPTEXTMETRICA LPTEXTMETRIC;
# 816 "../tinyccbinary/win32/include/winapi/wingdi.h"
# 1 "../tinyccbinary/win32/include/winapi/pshpack4.h" 1






#pragma pack(push,4)
# 817 "../tinyccbinary/win32/include/winapi/wingdi.h" 2
  typedef struct tagNEWTEXTMETRICA {
    LONG tmHeight;
    LONG tmAscent;
    LONG tmDescent;
    LONG tmInternalLeading;
    LONG tmExternalLeading;
    LONG tmAveCharWidth;
    LONG tmMaxCharWidth;
    LONG tmWeight;
    LONG tmOverhang;
    LONG tmDigitizedAspectX;
    LONG tmDigitizedAspectY;
    BYTE tmFirstChar;
    BYTE tmLastChar;
    BYTE tmDefaultChar;
    BYTE tmBreakChar;
    BYTE tmItalic;
    BYTE tmUnderlined;
    BYTE tmStruckOut;
    BYTE tmPitchAndFamily;
    BYTE tmCharSet;
    DWORD ntmFlags;
    UINT ntmSizeEM;
    UINT ntmCellHeight;
    UINT ntmAvgWidth;
  } NEWTEXTMETRICA,*PNEWTEXTMETRICA,*NPNEWTEXTMETRICA,*LPNEWTEXTMETRICA;

  typedef struct tagNEWTEXTMETRICW {
    LONG tmHeight;
    LONG tmAscent;
    LONG tmDescent;
    LONG tmInternalLeading;
    LONG tmExternalLeading;
    LONG tmAveCharWidth;
    LONG tmMaxCharWidth;
    LONG tmWeight;
    LONG tmOverhang;
    LONG tmDigitizedAspectX;
    LONG tmDigitizedAspectY;
    WCHAR tmFirstChar;
    WCHAR tmLastChar;
    WCHAR tmDefaultChar;
    WCHAR tmBreakChar;
    BYTE tmItalic;
    BYTE tmUnderlined;
    BYTE tmStruckOut;
    BYTE tmPitchAndFamily;
    BYTE tmCharSet;
    DWORD ntmFlags;
    UINT ntmSizeEM;
    UINT ntmCellHeight;
    UINT ntmAvgWidth;
  } NEWTEXTMETRICW,*PNEWTEXTMETRICW,*NPNEWTEXTMETRICW,*LPNEWTEXTMETRICW;






  typedef NEWTEXTMETRICA NEWTEXTMETRIC;
  typedef PNEWTEXTMETRICA PNEWTEXTMETRIC;
  typedef NPNEWTEXTMETRICA NPNEWTEXTMETRIC;
  typedef LPNEWTEXTMETRICA LPNEWTEXTMETRIC;

# 1 "../tinyccbinary/win32/include/winapi/poppack.h" 1






#pragma pack(pop)
# 882 "../tinyccbinary/win32/include/winapi/wingdi.h" 2

  typedef struct tagNEWTEXTMETRICEXA {
    NEWTEXTMETRICA ntmTm;
    FONTSIGNATURE ntmFontSig;
  } NEWTEXTMETRICEXA;

  typedef struct tagNEWTEXTMETRICEXW {
    NEWTEXTMETRICW ntmTm;
    FONTSIGNATURE ntmFontSig;
  } NEWTEXTMETRICEXW;



  typedef NEWTEXTMETRICEXA NEWTEXTMETRICEX;



  typedef struct tagPELARRAY {
    LONG paXCount;
    LONG paYCount;
    LONG paXExt;
    LONG paYExt;
    BYTE paRGBs;
  } PELARRAY,*PPELARRAY,*NPPELARRAY,*LPPELARRAY;

  typedef struct tagLOGBRUSH {
    UINT lbStyle;
    COLORREF lbColor;
    ULONG_PTR lbHatch;
  } LOGBRUSH,*PLOGBRUSH,*NPLOGBRUSH,*LPLOGBRUSH;

  typedef struct tagLOGBRUSH32 {
    UINT lbStyle;
    COLORREF lbColor;
    ULONG lbHatch;
  } LOGBRUSH32,*PLOGBRUSH32,*NPLOGBRUSH32,*LPLOGBRUSH32;

  typedef LOGBRUSH PATTERN;
  typedef PATTERN *PPATTERN;
  typedef PATTERN *NPPATTERN;
  typedef PATTERN *LPPATTERN;

  typedef struct tagLOGPEN {
    UINT lopnStyle;
    POINT lopnWidth;
    COLORREF lopnColor;
  } LOGPEN,*PLOGPEN,*NPLOGPEN,*LPLOGPEN;

  typedef struct tagEXTLOGPEN {
    DWORD elpPenStyle;
    DWORD elpWidth;
    UINT elpBrushStyle;
    COLORREF elpColor;
    ULONG_PTR elpHatch;
    DWORD elpNumEntries;
    DWORD elpStyleEntry[1];
  } EXTLOGPEN,*PEXTLOGPEN,*NPEXTLOGPEN,*LPEXTLOGPEN;



  typedef struct tagPALETTEENTRY {
    BYTE peRed;
    BYTE peGreen;
    BYTE peBlue;
    BYTE peFlags;
  } PALETTEENTRY,*PPALETTEENTRY,*LPPALETTEENTRY;





  typedef struct tagLOGPALETTE {
    WORD palVersion;
    WORD palNumEntries;
    PALETTEENTRY palPalEntry[1];
  } LOGPALETTE,*PLOGPALETTE,*NPLOGPALETTE,*LPLOGPALETTE;




  typedef struct tagLOGFONTA {
    LONG lfHeight;
    LONG lfWidth;
    LONG lfEscapement;
    LONG lfOrientation;
    LONG lfWeight;
    BYTE lfItalic;
    BYTE lfUnderline;
    BYTE lfStrikeOut;
    BYTE lfCharSet;
    BYTE lfOutPrecision;
    BYTE lfClipPrecision;
    BYTE lfQuality;
    BYTE lfPitchAndFamily;
    CHAR lfFaceName[32];
  } LOGFONTA,*PLOGFONTA,*NPLOGFONTA,*LPLOGFONTA;

  typedef struct tagLOGFONTW {
    LONG lfHeight;
    LONG lfWidth;
    LONG lfEscapement;
    LONG lfOrientation;
    LONG lfWeight;
    BYTE lfItalic;
    BYTE lfUnderline;
    BYTE lfStrikeOut;
    BYTE lfCharSet;
    BYTE lfOutPrecision;
    BYTE lfClipPrecision;
    BYTE lfQuality;
    BYTE lfPitchAndFamily;
    WCHAR lfFaceName[32];
  } LOGFONTW,*PLOGFONTW,*NPLOGFONTW,*LPLOGFONTW;






  typedef LOGFONTA LOGFONT;
  typedef PLOGFONTA PLOGFONT;
  typedef NPLOGFONTA NPLOGFONT;
  typedef LPLOGFONTA LPLOGFONT;




  typedef struct tagENUMLOGFONTA {
    LOGFONTA elfLogFont;
    BYTE elfFullName[64];
    BYTE elfStyle[32];
  } ENUMLOGFONTA,*LPENUMLOGFONTA;

  typedef struct tagENUMLOGFONTW {
    LOGFONTW elfLogFont;
    WCHAR elfFullName[64];
    WCHAR elfStyle[32];
  } ENUMLOGFONTW,*LPENUMLOGFONTW;




  typedef ENUMLOGFONTA ENUMLOGFONT;
  typedef LPENUMLOGFONTA LPENUMLOGFONT;


  typedef struct tagENUMLOGFONTEXA {
    LOGFONTA elfLogFont;
    BYTE elfFullName[64];
    BYTE elfStyle[32];
    BYTE elfScript[32];
  } ENUMLOGFONTEXA,*LPENUMLOGFONTEXA;

  typedef struct tagENUMLOGFONTEXW {
    LOGFONTW elfLogFont;
    WCHAR elfFullName[64];
    WCHAR elfStyle[32];
    WCHAR elfScript[32];
  } ENUMLOGFONTEXW,*LPENUMLOGFONTEXW;




  typedef ENUMLOGFONTEXA ENUMLOGFONTEX;
  typedef LPENUMLOGFONTEXA LPENUMLOGFONTEX;
# 1164 "../tinyccbinary/win32/include/winapi/wingdi.h"
  typedef struct tagPANOSE {
    BYTE bFamilyType;
    BYTE bSerifStyle;
    BYTE bWeight;
    BYTE bProportion;
    BYTE bContrast;
    BYTE bStrokeVariation;
    BYTE bArmStyle;
    BYTE bLetterform;
    BYTE bMidline;
    BYTE bXHeight;
  } PANOSE,*LPPANOSE;
# 1285 "../tinyccbinary/win32/include/winapi/wingdi.h"
  typedef struct tagEXTLOGFONTA {
    LOGFONTA elfLogFont;
    BYTE elfFullName[64];
    BYTE elfStyle[32];
    DWORD elfVersion;
    DWORD elfStyleSize;
    DWORD elfMatch;
    DWORD elfReserved;
    BYTE elfVendorId[4];
    DWORD elfCulture;
    PANOSE elfPanose;
  } EXTLOGFONTA,*PEXTLOGFONTA,*NPEXTLOGFONTA,*LPEXTLOGFONTA;

  typedef struct tagEXTLOGFONTW {
    LOGFONTW elfLogFont;
    WCHAR elfFullName[64];
    WCHAR elfStyle[32];
    DWORD elfVersion;
    DWORD elfStyleSize;
    DWORD elfMatch;
    DWORD elfReserved;
    BYTE elfVendorId[4];
    DWORD elfCulture;
    PANOSE elfPanose;
  } EXTLOGFONTW,*PEXTLOGFONTW,*NPEXTLOGFONTW,*LPEXTLOGFONTW;






  typedef EXTLOGFONTA EXTLOGFONT;
  typedef PEXTLOGFONTA PEXTLOGFONT;
  typedef NPEXTLOGFONTA NPEXTLOGFONT;
  typedef LPEXTLOGFONTA LPEXTLOGFONT;
# 1606 "../tinyccbinary/win32/include/winapi/wingdi.h"
  typedef struct _devicemodeA {
    BYTE dmDeviceName[32];
    WORD dmSpecVersion;
    WORD dmDriverVersion;
    WORD dmSize;
    WORD dmDriverExtra;
    DWORD dmFields;
    union {
      struct {
        short dmOrientation;
        short dmPaperSize;
        short dmPaperLength;
        short dmPaperWidth;
        short dmScale;
        short dmCopies;
        short dmDefaultSource;
        short dmPrintQuality;
      };
      struct {
        POINTL dmPosition;
        DWORD dmDisplayOrientation;
        DWORD dmDisplayFixedOutput;
      };
    };
    short dmColor;
    short dmDuplex;
    short dmYResolution;
    short dmTTOption;
    short dmCollate;
    BYTE dmFormName[32];
    WORD dmLogPixels;
    DWORD dmBitsPerPel;
    DWORD dmPelsWidth;
    DWORD dmPelsHeight;
    union {
      DWORD dmDisplayFlags;
      DWORD dmNup;
    };
    DWORD dmDisplayFrequency;
    DWORD dmICMMethod;
    DWORD dmICMIntent;
    DWORD dmMediaType;
    DWORD dmDitherType;
    DWORD dmReserved1;
    DWORD dmReserved2;
    DWORD dmPanningWidth;
    DWORD dmPanningHeight;
  } DEVMODEA,*PDEVMODEA,*NPDEVMODEA,*LPDEVMODEA;

  typedef struct _devicemodeW {
    WCHAR dmDeviceName[32];
    WORD dmSpecVersion;
    WORD dmDriverVersion;
    WORD dmSize;
    WORD dmDriverExtra;
    DWORD dmFields;
    union {
      struct {
        short dmOrientation;
        short dmPaperSize;
        short dmPaperLength;
        short dmPaperWidth;
        short dmScale;
        short dmCopies;
        short dmDefaultSource;
        short dmPrintQuality;
      };
      struct {
        POINTL dmPosition;
        DWORD dmDisplayOrientation;
        DWORD dmDisplayFixedOutput;
      };
    };
    short dmColor;
    short dmDuplex;
    short dmYResolution;
    short dmTTOption;
    short dmCollate;
    WCHAR dmFormName[32];
    WORD dmLogPixels;
    DWORD dmBitsPerPel;
    DWORD dmPelsWidth;
    DWORD dmPelsHeight;
    union {
      DWORD dmDisplayFlags;
      DWORD dmNup;
    };
    DWORD dmDisplayFrequency;
    DWORD dmICMMethod;
    DWORD dmICMIntent;
    DWORD dmMediaType;
    DWORD dmDitherType;
    DWORD dmReserved1;
    DWORD dmReserved2;
    DWORD dmPanningWidth;
    DWORD dmPanningHeight;
  } DEVMODEW,*PDEVMODEW,*NPDEVMODEW,*LPDEVMODEW;






  typedef DEVMODEA DEVMODE;
  typedef PDEVMODEA PDEVMODE;
  typedef NPDEVMODEA NPDEVMODE;
  typedef LPDEVMODEA LPDEVMODE;
# 1961 "../tinyccbinary/win32/include/winapi/wingdi.h"
  typedef struct _DISPLAY_DEVICEA {
    DWORD cb;
    CHAR DeviceName[32];
    CHAR DeviceString[128];
    DWORD StateFlags;
    CHAR DeviceID[128];
    CHAR DeviceKey[128];
  } DISPLAY_DEVICEA,*PDISPLAY_DEVICEA,*LPDISPLAY_DEVICEA;
  typedef struct _DISPLAY_DEVICEW {
    DWORD cb;
    WCHAR DeviceName[32];
    WCHAR DeviceString[128];
    DWORD StateFlags;
    WCHAR DeviceID[128];
    WCHAR DeviceKey[128];
  } DISPLAY_DEVICEW,*PDISPLAY_DEVICEW,*LPDISPLAY_DEVICEW;





  typedef DISPLAY_DEVICEA DISPLAY_DEVICE;
  typedef PDISPLAY_DEVICEA PDISPLAY_DEVICE;
  typedef LPDISPLAY_DEVICEA LPDISPLAY_DEVICE;
# 2002 "../tinyccbinary/win32/include/winapi/wingdi.h"
  typedef struct _RGNDATAHEADER {
    DWORD dwSize;
    DWORD iType;
    DWORD nCount;
    DWORD nRgnSize;
    RECT rcBound;
  } RGNDATAHEADER,*PRGNDATAHEADER;

  typedef struct _RGNDATA {
    RGNDATAHEADER rdh;
    char Buffer[1];
  } RGNDATA,*PRGNDATA,*NPRGNDATA,*LPRGNDATA;



  typedef struct _ABC {
    int abcA;
    UINT abcB;
    int abcC;
  } ABC,*PABC,*NPABC,*LPABC;

  typedef struct _ABCFLOAT {
    FLOAT abcfA;
    FLOAT abcfB;
    FLOAT abcfC;
  } ABCFLOAT,*PABCFLOAT,*NPABCFLOAT,*LPABCFLOAT;



  typedef struct _OUTLINETEXTMETRICA {
    UINT otmSize;
    TEXTMETRICA otmTextMetrics;
    BYTE otmFiller;
    PANOSE otmPanoseNumber;
    UINT otmfsSelection;
    UINT otmfsType;
    int otmsCharSlopeRise;
    int otmsCharSlopeRun;
    int otmItalicAngle;
    UINT otmEMSquare;
    int otmAscent;
    int otmDescent;
    UINT otmLineGap;
    UINT otmsCapEmHeight;
    UINT otmsXHeight;
    RECT otmrcFontBox;
    int otmMacAscent;
    int otmMacDescent;
    UINT otmMacLineGap;
    UINT otmusMinimumPPEM;
    POINT otmptSubscriptSize;
    POINT otmptSubscriptOffset;
    POINT otmptSuperscriptSize;
    POINT otmptSuperscriptOffset;
    UINT otmsStrikeoutSize;
    int otmsStrikeoutPosition;
    int otmsUnderscoreSize;
    int otmsUnderscorePosition;
    PSTR otmpFamilyName;
    PSTR otmpFaceName;
    PSTR otmpStyleName;
    PSTR otmpFullName;
  } OUTLINETEXTMETRICA,*POUTLINETEXTMETRICA,*NPOUTLINETEXTMETRICA,*LPOUTLINETEXTMETRICA;

  typedef struct _OUTLINETEXTMETRICW {
    UINT otmSize;
    TEXTMETRICW otmTextMetrics;
    BYTE otmFiller;
    PANOSE otmPanoseNumber;
    UINT otmfsSelection;
    UINT otmfsType;
    int otmsCharSlopeRise;
    int otmsCharSlopeRun;
    int otmItalicAngle;
    UINT otmEMSquare;
    int otmAscent;
    int otmDescent;
    UINT otmLineGap;
    UINT otmsCapEmHeight;
    UINT otmsXHeight;
    RECT otmrcFontBox;
    int otmMacAscent;
    int otmMacDescent;
    UINT otmMacLineGap;
    UINT otmusMinimumPPEM;
    POINT otmptSubscriptSize;
    POINT otmptSubscriptOffset;
    POINT otmptSuperscriptSize;
    POINT otmptSuperscriptOffset;
    UINT otmsStrikeoutSize;
    int otmsStrikeoutPosition;
    int otmsUnderscoreSize;
    int otmsUnderscorePosition;
    PSTR otmpFamilyName;
    PSTR otmpFaceName;
    PSTR otmpStyleName;
    PSTR otmpFullName;
  } OUTLINETEXTMETRICW,*POUTLINETEXTMETRICW,*NPOUTLINETEXTMETRICW,*LPOUTLINETEXTMETRICW;






  typedef OUTLINETEXTMETRICA OUTLINETEXTMETRIC;
  typedef POUTLINETEXTMETRICA POUTLINETEXTMETRIC;
  typedef NPOUTLINETEXTMETRICA NPOUTLINETEXTMETRIC;
  typedef LPOUTLINETEXTMETRICA LPOUTLINETEXTMETRIC;



  typedef struct tagPOLYTEXTA {
    int x;
    int y;
    UINT n;
    LPCSTR lpstr;
    UINT uiFlags;
    RECT rcl;
    int *pdx;
  } POLYTEXTA,*PPOLYTEXTA,*NPPOLYTEXTA,*LPPOLYTEXTA;

  typedef struct tagPOLYTEXTW {
    int x;
    int y;
    UINT n;
    LPCWSTR lpstr;
    UINT uiFlags;
    RECT rcl;
    int *pdx;
  } POLYTEXTW,*PPOLYTEXTW,*NPPOLYTEXTW,*LPPOLYTEXTW;






  typedef POLYTEXTA POLYTEXT;
  typedef PPOLYTEXTA PPOLYTEXT;
  typedef NPPOLYTEXTA NPPOLYTEXT;
  typedef LPPOLYTEXTA LPPOLYTEXT;


  typedef struct _FIXED {
    WORD fract;
    short value;
  } FIXED;

  typedef struct _MAT2 {
    FIXED eM11;
    FIXED eM12;
    FIXED eM21;
    FIXED eM22;
  } MAT2,*LPMAT2;

  typedef struct _GLYPHMETRICS {
    UINT gmBlackBoxX;
    UINT gmBlackBoxY;
    POINT gmptGlyphOrigin;
    short gmCellIncX;
    short gmCellIncY;
  } GLYPHMETRICS,*LPGLYPHMETRICS;
# 2181 "../tinyccbinary/win32/include/winapi/wingdi.h"
  typedef struct tagPOINTFX {
    FIXED x;
    FIXED y;
  } POINTFX,*LPPOINTFX;

  typedef struct tagTTPOLYCURVE {
    WORD wType;
    WORD cpfx;
    POINTFX apfx[1];
  } TTPOLYCURVE,*LPTTPOLYCURVE;

  typedef struct tagTTPOLYGONHEADER {
    DWORD cb;
    DWORD dwType;
    POINTFX pfxStart;
  } TTPOLYGONHEADER,*LPTTPOLYGONHEADER;
# 2239 "../tinyccbinary/win32/include/winapi/wingdi.h"
  typedef struct tagGCP_RESULTSA {
    DWORD lStructSize;
    LPSTR lpOutString;
    UINT *lpOrder;
    int *lpDx;
    int *lpCaretPos;
    LPSTR lpClass;
    LPWSTR lpGlyphs;
    UINT nGlyphs;
    int nMaxFit;
  } GCP_RESULTSA,*LPGCP_RESULTSA;
  typedef struct tagGCP_RESULTSW {
    DWORD lStructSize;
    LPWSTR lpOutString;
    UINT *lpOrder;
    int *lpDx;
    int *lpCaretPos;
    LPSTR lpClass;
    LPWSTR lpGlyphs;
    UINT nGlyphs;
    int nMaxFit;
  } GCP_RESULTSW,*LPGCP_RESULTSW;




  typedef GCP_RESULTSA GCP_RESULTS;
  typedef LPGCP_RESULTSA LPGCP_RESULTS;


  typedef struct _RASTERIZER_STATUS {
    short nSize;
    short wFlags;
    short nLanguageID;
  } RASTERIZER_STATUS,*LPRASTERIZER_STATUS;




  typedef struct tagPIXELFORMATDESCRIPTOR {
    WORD nSize;
    WORD nVersion;
    DWORD dwFlags;
    BYTE iPixelType;
    BYTE cColorBits;
    BYTE cRedBits;
    BYTE cRedShift;
    BYTE cGreenBits;
    BYTE cGreenShift;
    BYTE cBlueBits;
    BYTE cBlueShift;
    BYTE cAlphaBits;
    BYTE cAlphaShift;
    BYTE cAccumBits;
    BYTE cAccumRedBits;
    BYTE cAccumGreenBits;
    BYTE cAccumBlueBits;
    BYTE cAccumAlphaBits;
    BYTE cDepthBits;
    BYTE cStencilBits;
    BYTE cAuxBuffers;
    BYTE iLayerType;
    BYTE bReserved;
    DWORD dwLayerMask;
    DWORD dwVisibleMask;
    DWORD dwDamageMask;
  } PIXELFORMATDESCRIPTOR,*PPIXELFORMATDESCRIPTOR,*LPPIXELFORMATDESCRIPTOR;
# 2334 "../tinyccbinary/win32/include/winapi/wingdi.h"
  typedef int (__attribute__((__stdcall__)) *OLDFONTENUMPROCA)(const LOGFONTA *,const TEXTMETRICA *,DWORD,LPARAM);
  typedef int (__attribute__((__stdcall__)) *OLDFONTENUMPROCW)(const LOGFONTW *,const TEXTMETRICW *,DWORD,LPARAM);
# 2351 "../tinyccbinary/win32/include/winapi/wingdi.h"
  typedef OLDFONTENUMPROCA FONTENUMPROCA;
  typedef OLDFONTENUMPROCW FONTENUMPROCW;



  typedef FONTENUMPROCA FONTENUMPROC;


  typedef int (__attribute__((__stdcall__)) *GOBJENUMPROC)(LPVOID,LPARAM);
  typedef void (__attribute__((__stdcall__)) *LINEDDAPROC)(int,int,LPARAM);
# 2382 "../tinyccbinary/win32/include/winapi/wingdi.h"
  __attribute__((dllimport)) int __attribute__((__stdcall__)) AddFontResourceA(LPCSTR);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) AddFontResourceW(LPCWSTR);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AnimatePalette(HPALETTE hPal,UINT iStartIndex,UINT cEntries,const PALETTEENTRY *ppe);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) Arc(HDC hdc,int x1,int y1,int x2,int y2,int x3,int y3,int x4,int y4);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) BitBlt(HDC hdc,int x,int y,int cx,int cy,HDC hdcSrc,int x1,int y1,DWORD rop);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CancelDC(HDC hdc);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) Chord(HDC hdc,int x1,int y1,int x2,int y2,int x3,int y3,int x4,int y4);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) ChoosePixelFormat(HDC hdc,const PIXELFORMATDESCRIPTOR *ppfd);
  __attribute__((dllimport)) HMETAFILE __attribute__((__stdcall__)) CloseMetaFile(HDC hdc);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) CombineRgn(HRGN hrgnDst,HRGN hrgnSrc1,HRGN hrgnSrc2,int iMode);
  __attribute__((dllimport)) HMETAFILE __attribute__((__stdcall__)) CopyMetaFileA(HMETAFILE,LPCSTR);
  __attribute__((dllimport)) HMETAFILE __attribute__((__stdcall__)) CopyMetaFileW(HMETAFILE,LPCWSTR);
  __attribute__((dllimport)) HBITMAP __attribute__((__stdcall__)) CreateBitmap(int nWidth,int nHeight,UINT nPlanes,UINT nBitCount,const void *lpBits);
  __attribute__((dllimport)) HBITMAP __attribute__((__stdcall__)) CreateBitmapIndirect(const BITMAP *pbm);
  __attribute__((dllimport)) HBRUSH __attribute__((__stdcall__)) CreateBrushIndirect(const LOGBRUSH *plbrush);
  __attribute__((dllimport)) HBITMAP __attribute__((__stdcall__)) CreateCompatibleBitmap(HDC hdc,int cx,int cy);
  __attribute__((dllimport)) HBITMAP __attribute__((__stdcall__)) CreateDiscardableBitmap(HDC hdc,int cx,int cy);
  __attribute__((dllimport)) HDC __attribute__((__stdcall__)) CreateCompatibleDC(HDC hdc);
  __attribute__((dllimport)) HDC __attribute__((__stdcall__)) CreateDCA(LPCSTR pwszDriver,LPCSTR pwszDevice,LPCSTR pszPort,const DEVMODEA *pdm);
  __attribute__((dllimport)) HDC __attribute__((__stdcall__)) CreateDCW(LPCWSTR pwszDriver,LPCWSTR pwszDevice,LPCWSTR pszPort,const DEVMODEW *pdm);
  __attribute__((dllimport)) HBITMAP __attribute__((__stdcall__)) CreateDIBitmap(HDC hdc,const BITMAPINFOHEADER *pbmih,DWORD flInit,const void *pjBits,const BITMAPINFO *pbmi,UINT iUsage);
  __attribute__((dllimport)) HBRUSH __attribute__((__stdcall__)) CreateDIBPatternBrush(HGLOBAL h,UINT iUsage);
  __attribute__((dllimport)) HBRUSH __attribute__((__stdcall__)) CreateDIBPatternBrushPt(const void *lpPackedDIB,UINT iUsage);
  __attribute__((dllimport)) HRGN __attribute__((__stdcall__)) CreateEllipticRgn(int x1,int y1,int x2,int y2);
  __attribute__((dllimport)) HRGN __attribute__((__stdcall__)) CreateEllipticRgnIndirect(const RECT *lprect);
  __attribute__((dllimport)) HFONT __attribute__((__stdcall__)) CreateFontIndirectA(const LOGFONTA *lplf);
  __attribute__((dllimport)) HFONT __attribute__((__stdcall__)) CreateFontIndirectW(const LOGFONTW *lplf);
  __attribute__((dllimport)) HFONT __attribute__((__stdcall__)) CreateFontA(int cHeight,int cWidth,int cEscapement,int cOrientation,int cWeight,DWORD bItalic,DWORD bUnderline,DWORD bStrikeOut,DWORD iCharSet,DWORD iOutPrecision,DWORD iClipPrecision,DWORD iQuality,DWORD iPitchAndFamily,LPCSTR pszFaceName);
  __attribute__((dllimport)) HFONT __attribute__((__stdcall__)) CreateFontW(int cHeight,int cWidth,int cEscapement,int cOrientation,int cWeight,DWORD bItalic,DWORD bUnderline,DWORD bStrikeOut,DWORD iCharSet,DWORD iOutPrecision,DWORD iClipPrecision,DWORD iQuality,DWORD iPitchAndFamily,LPCWSTR pszFaceName);
  __attribute__((dllimport)) HBRUSH __attribute__((__stdcall__)) CreateHatchBrush(int iHatch,COLORREF color);
  __attribute__((dllimport)) HDC __attribute__((__stdcall__)) CreateICA(LPCSTR pszDriver,LPCSTR pszDevice,LPCSTR pszPort,const DEVMODEA *pdm);
  __attribute__((dllimport)) HDC __attribute__((__stdcall__)) CreateICW(LPCWSTR pszDriver,LPCWSTR pszDevice,LPCWSTR pszPort,const DEVMODEW *pdm);
  __attribute__((dllimport)) HDC __attribute__((__stdcall__)) CreateMetaFileA(LPCSTR pszFile);
  __attribute__((dllimport)) HDC __attribute__((__stdcall__)) CreateMetaFileW(LPCWSTR pszFile);
  __attribute__((dllimport)) HPALETTE __attribute__((__stdcall__)) CreatePalette(const LOGPALETTE *plpal);
  __attribute__((dllimport)) HPEN __attribute__((__stdcall__)) CreatePen(int iStyle,int cWidth,COLORREF color);
  __attribute__((dllimport)) HPEN __attribute__((__stdcall__)) CreatePenIndirect(const LOGPEN *plpen);
  __attribute__((dllimport)) HRGN __attribute__((__stdcall__)) CreatePolyPolygonRgn(const POINT *pptl,const INT *pc,int cPoly,int iMode);
  __attribute__((dllimport)) HBRUSH __attribute__((__stdcall__)) CreatePatternBrush(HBITMAP hbm);
  __attribute__((dllimport)) HRGN __attribute__((__stdcall__)) CreateRectRgn(int x1,int y1,int x2,int y2);
  __attribute__((dllimport)) HRGN __attribute__((__stdcall__)) CreateRectRgnIndirect(const RECT *lprect);
  __attribute__((dllimport)) HRGN __attribute__((__stdcall__)) CreateRoundRectRgn(int x1,int y1,int x2,int y2,int w,int h);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CreateScalableFontResourceA(DWORD fdwHidden,LPCSTR lpszFont,LPCSTR lpszFile,LPCSTR lpszPath);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CreateScalableFontResourceW(DWORD fdwHidden,LPCWSTR lpszFont,LPCWSTR lpszFile,LPCWSTR lpszPath);
  __attribute__((dllimport)) HBRUSH __attribute__((__stdcall__)) CreateSolidBrush(COLORREF color);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DeleteDC(HDC hdc);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DeleteMetaFile(HMETAFILE hmf);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DeleteObject(HGDIOBJ ho);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) DescribePixelFormat(HDC hdc,int iPixelFormat,UINT nBytes,LPPIXELFORMATDESCRIPTOR ppfd);

  typedef UINT (__attribute__((__stdcall__)) *LPFNDEVMODE)(HWND,HMODULE,LPDEVMODE,LPSTR,LPSTR,LPDEVMODE,LPSTR,UINT);
  typedef DWORD (__attribute__((__stdcall__)) *LPFNDEVCAPS)(LPSTR,LPSTR,UINT,LPSTR,LPDEVMODE);
# 2525 "../tinyccbinary/win32/include/winapi/wingdi.h"
  __attribute__((dllimport)) int __attribute__((__stdcall__)) DeviceCapabilitiesA(LPCSTR pDevice,LPCSTR pPort,WORD fwCapability,LPSTR pOutput,const DEVMODEA *pDevMode);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) DeviceCapabilitiesW(LPCWSTR pDevice,LPCWSTR pPort,WORD fwCapability,LPWSTR pOutput,const DEVMODEW *pDevMode);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) DrawEscape(HDC hdc,int iEscape,int cjIn,LPCSTR lpIn);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) Ellipse(HDC hdc,int left,int top,int right,int bottom);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) EnumFontFamiliesExA(HDC hdc,LPLOGFONTA lpLogfont,FONTENUMPROCA lpProc,LPARAM lParam,DWORD dwFlags);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) EnumFontFamiliesExW(HDC hdc,LPLOGFONTW lpLogfont,FONTENUMPROCW lpProc,LPARAM lParam,DWORD dwFlags);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) EnumFontFamiliesA(HDC hdc,LPCSTR lpLogfont,FONTENUMPROCA lpProc,LPARAM lParam);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) EnumFontFamiliesW(HDC hdc,LPCWSTR lpLogfont,FONTENUMPROCW lpProc,LPARAM lParam);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) EnumFontsA(HDC hdc,LPCSTR lpLogfont,FONTENUMPROCA lpProc,LPARAM lParam);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) EnumFontsW(HDC hdc,LPCWSTR lpLogfont,FONTENUMPROCW lpProc,LPARAM lParam);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) EnumObjects(HDC hdc,int nType,GOBJENUMPROC lpFunc,LPARAM lParam);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EqualRgn(HRGN hrgn1,HRGN hrgn2);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) Escape(HDC hdc,int iEscape,int cjIn,LPCSTR pvIn,LPVOID pvOut);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) ExtEscape(HDC hdc,int iEscape,int cjInput,LPCSTR lpInData,int cjOutput,LPSTR lpOutData);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) ExcludeClipRect(HDC hdc,int left,int top,int right,int bottom);
  __attribute__((dllimport)) HRGN __attribute__((__stdcall__)) ExtCreateRegion(const XFORM *lpx,DWORD nCount,const RGNDATA *lpData);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ExtFloodFill(HDC hdc,int x,int y,COLORREF color,UINT type);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FillRgn(HDC hdc,HRGN hrgn,HBRUSH hbr);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FloodFill(HDC hdc,int x,int y,COLORREF color);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FrameRgn(HDC hdc,HRGN hrgn,HBRUSH hbr,int w,int h);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetROP2(HDC hdc);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetAspectRatioFilterEx(HDC hdc,LPSIZE lpsize);
  __attribute__((dllimport)) COLORREF __attribute__((__stdcall__)) GetBkColor(HDC hdc);
  __attribute__((dllimport)) COLORREF __attribute__((__stdcall__)) GetDCBrushColor(HDC hdc);
  __attribute__((dllimport)) COLORREF __attribute__((__stdcall__)) GetDCPenColor(HDC hdc);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetBkMode(HDC hdc);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) GetBitmapBits(HBITMAP hbit,LONG cb,LPVOID lpvBits);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetBitmapDimensionEx(HBITMAP hbit,LPSIZE lpsize);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetBoundsRect(HDC hdc,LPRECT lprect,UINT flags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetBrushOrgEx(HDC hdc,LPPOINT lppt);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCharWidthA(HDC hdc,UINT iFirst,UINT iLast,LPINT lpBuffer);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCharWidthW(HDC hdc,UINT iFirst,UINT iLast,LPINT lpBuffer);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCharWidth32A(HDC hdc,UINT iFirst,UINT iLast,LPINT lpBuffer);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCharWidth32W(HDC hdc,UINT iFirst,UINT iLast,LPINT lpBuffer);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCharWidthFloatA(HDC hdc,UINT iFirst,UINT iLast,PFLOAT lpBuffer);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCharWidthFloatW(HDC hdc,UINT iFirst,UINT iLast,PFLOAT lpBuffer);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCharABCWidthsA(HDC hdc,UINT wFirst,UINT wLast,LPABC lpABC);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCharABCWidthsW(HDC hdc,UINT wFirst,UINT wLast,LPABC lpABC);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCharABCWidthsFloatA(HDC hdc,UINT iFirst,UINT iLast,LPABCFLOAT lpABC);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCharABCWidthsFloatW(HDC hdc,UINT iFirst,UINT iLast,LPABCFLOAT lpABC);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetClipBox(HDC hdc,LPRECT lprect);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetClipRgn(HDC hdc,HRGN hrgn);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetMetaRgn(HDC hdc,HRGN hrgn);
  __attribute__((dllimport)) HGDIOBJ __attribute__((__stdcall__)) GetCurrentObject(HDC hdc,UINT type);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCurrentPositionEx(HDC hdc,LPPOINT lppt);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetDeviceCaps(HDC hdc,int index);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetDIBits(HDC hdc,HBITMAP hbm,UINT start,UINT cLines,LPVOID lpvBits,LPBITMAPINFO lpbmi,UINT usage);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetFontData (HDC hdc,DWORD dwTable,DWORD dwOffset,PVOID pvBuffer,DWORD cjBuffer);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetGlyphOutlineA(HDC hdc,UINT uChar,UINT fuFormat,LPGLYPHMETRICS lpgm,DWORD cjBuffer,LPVOID pvBuffer,const MAT2 *lpmat2);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetGlyphOutlineW(HDC hdc,UINT uChar,UINT fuFormat,LPGLYPHMETRICS lpgm,DWORD cjBuffer,LPVOID pvBuffer,const MAT2 *lpmat2);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetGraphicsMode(HDC hdc);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetMapMode(HDC hdc);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetMetaFileBitsEx(HMETAFILE hMF,UINT cbBuffer,LPVOID lpData);
  __attribute__((dllimport)) HMETAFILE __attribute__((__stdcall__)) GetMetaFileA(LPCSTR lpName);
  __attribute__((dllimport)) HMETAFILE __attribute__((__stdcall__)) GetMetaFileW(LPCWSTR lpName);
  __attribute__((dllimport)) COLORREF __attribute__((__stdcall__)) GetNearestColor(HDC hdc,COLORREF color);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetNearestPaletteIndex(HPALETTE h,COLORREF color);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetObjectType(HGDIOBJ h);
# 2591 "../tinyccbinary/win32/include/winapi/wingdi.h"
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetOutlineTextMetricsA(HDC hdc,UINT cjCopy,LPOUTLINETEXTMETRICA potm);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetOutlineTextMetricsW(HDC hdc,UINT cjCopy,LPOUTLINETEXTMETRICW potm);
# 2607 "../tinyccbinary/win32/include/winapi/wingdi.h"
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetPaletteEntries(HPALETTE hpal,UINT iStart,UINT cEntries,LPPALETTEENTRY pPalEntries);
  __attribute__((dllimport)) COLORREF __attribute__((__stdcall__)) GetPixel(HDC hdc,int x,int y);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetPixelFormat(HDC hdc);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetPolyFillMode(HDC hdc);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetRasterizerCaps(LPRASTERIZER_STATUS lpraststat,UINT cjBytes);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetRandomRgn (HDC hdc,HRGN hrgn,INT i);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetRegionData(HRGN hrgn,DWORD nCount,LPRGNDATA lpRgnData);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetRgnBox(HRGN hrgn,LPRECT lprc);
  __attribute__((dllimport)) HGDIOBJ __attribute__((__stdcall__)) GetStockObject(int i);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetStretchBltMode(HDC hdc);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetSystemPaletteEntries(HDC hdc,UINT iStart,UINT cEntries,LPPALETTEENTRY pPalEntries);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetSystemPaletteUse(HDC hdc);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetTextCharacterExtra(HDC hdc);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetTextAlign(HDC hdc);
  __attribute__((dllimport)) COLORREF __attribute__((__stdcall__)) GetTextColor(HDC hdc);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetTextExtentPointA(HDC hdc,LPCSTR lpString,int c,LPSIZE lpsz);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetTextExtentPointW(HDC hdc,LPCWSTR lpString,int c,LPSIZE lpsz);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetTextExtentPoint32A(HDC hdc,LPCSTR lpString,int c,LPSIZE psizl);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetTextExtentPoint32W(HDC hdc,LPCWSTR lpString,int c,LPSIZE psizl);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetTextExtentExPointA(HDC hdc,LPCSTR lpszString,int cchString,int nMaxExtent,LPINT lpnFit,LPINT lpnDx,LPSIZE lpSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetTextExtentExPointW(HDC hdc,LPCWSTR lpszString,int cchString,int nMaxExtent,LPINT lpnFit,LPINT lpnDx,LPSIZE lpSize);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetTextCharset(HDC hdc);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetTextCharsetInfo(HDC hdc,LPFONTSIGNATURE lpSig,DWORD dwFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) TranslateCharsetInfo(DWORD *lpSrc,LPCHARSETINFO lpCs,DWORD dwFlags);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetFontLanguageInfo(HDC hdc);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetCharacterPlacementA(HDC hdc,LPCSTR lpString,int nCount,int nMexExtent,LPGCP_RESULTSA lpResults,DWORD dwFlags);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetCharacterPlacementW(HDC hdc,LPCWSTR lpString,int nCount,int nMexExtent,LPGCP_RESULTSW lpResults,DWORD dwFlags);

  typedef struct tagWCRANGE {
    WCHAR wcLow;
    USHORT cGlyphs;
  } WCRANGE,*PWCRANGE,*LPWCRANGE;

  typedef struct tagGLYPHSET {
    DWORD cbThis;
    DWORD flAccel;
    DWORD cGlyphsSupported;
    DWORD cRanges;
    WCRANGE ranges[1];
  } GLYPHSET,*PGLYPHSET,*LPGLYPHSET;
# 2658 "../tinyccbinary/win32/include/winapi/wingdi.h"
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetFontUnicodeRanges(HDC hdc,LPGLYPHSET lpgs);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetGlyphIndicesA(HDC hdc,LPCSTR lpstr,int c,LPWORD pgi,DWORD fl);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetGlyphIndicesW(HDC hdc,LPCWSTR lpstr,int c,LPWORD pgi,DWORD fl);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetTextExtentPointI(HDC hdc,LPWORD pgiIn,int cgi,LPSIZE psize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetTextExtentExPointI (HDC hdc,LPWORD lpwszString,int cwchString,int nMaxExtent,LPINT lpnFit,LPINT lpnDx,LPSIZE lpSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCharWidthI(HDC hdc,UINT giFirst,UINT cgi,LPWORD pgi,LPINT piWidths);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCharABCWidthsI(HDC hdc,UINT giFirst,UINT cgi,LPWORD pgi,LPABC pabc);





  typedef struct tagDESIGNVECTOR {
    DWORD dvReserved;
    DWORD dvNumAxes;
    LONG dvValues[16];
  } DESIGNVECTOR,*PDESIGNVECTOR,*LPDESIGNVECTOR;
# 2684 "../tinyccbinary/win32/include/winapi/wingdi.h"
  __attribute__((dllimport)) int __attribute__((__stdcall__)) AddFontResourceExA(LPCSTR name,DWORD fl,PVOID res);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) AddFontResourceExW(LPCWSTR name,DWORD fl,PVOID res);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) RemoveFontResourceExA(LPCSTR name,DWORD fl,PVOID pdv);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) RemoveFontResourceExW(LPCWSTR name,DWORD fl,PVOID pdv);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) AddFontMemResourceEx(PVOID pFileView,DWORD cjSize,PVOID pvResrved,DWORD *pNumFonts);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) RemoveFontMemResourceEx(HANDLE h);






  typedef struct tagAXISINFOA {
    LONG axMinValue;
    LONG axMaxValue;
    BYTE axAxisName[16];
  } AXISINFOA,*PAXISINFOA,*LPAXISINFOA;

  typedef struct tagAXISINFOW {
    LONG axMinValue;
    LONG axMaxValue;
    WCHAR axAxisName[16];
  } AXISINFOW,*PAXISINFOW,*LPAXISINFOW;





  typedef AXISINFOA AXISINFO;
  typedef PAXISINFOA PAXISINFO;
  typedef LPAXISINFOA LPAXISINFO;


  typedef struct tagAXESLISTA {
    DWORD axlReserved;
    DWORD axlNumAxes;
    AXISINFOA axlAxisInfo[16];
  } AXESLISTA,*PAXESLISTA,*LPAXESLISTA;

  typedef struct tagAXESLISTW {
    DWORD axlReserved;
    DWORD axlNumAxes;
    AXISINFOW axlAxisInfo[16];
  } AXESLISTW,*PAXESLISTW,*LPAXESLISTW;





  typedef AXESLISTA AXESLIST;
  typedef PAXESLISTA PAXESLIST;
  typedef LPAXESLISTA LPAXESLIST;


  typedef struct tagENUMLOGFONTEXDVA {
    ENUMLOGFONTEXA elfEnumLogfontEx;
    DESIGNVECTOR elfDesignVector;
  } ENUMLOGFONTEXDVA,*PENUMLOGFONTEXDVA,*LPENUMLOGFONTEXDVA;

  typedef struct tagENUMLOGFONTEXDVW {
    ENUMLOGFONTEXW elfEnumLogfontEx;
    DESIGNVECTOR elfDesignVector;
  } ENUMLOGFONTEXDVW,*PENUMLOGFONTEXDVW,*LPENUMLOGFONTEXDVW;





  typedef ENUMLOGFONTEXDVA ENUMLOGFONTEXDV;
  typedef PENUMLOGFONTEXDVA PENUMLOGFONTEXDV;
  typedef LPENUMLOGFONTEXDVA LPENUMLOGFONTEXDV;
# 2763 "../tinyccbinary/win32/include/winapi/wingdi.h"
  __attribute__((dllimport)) HFONT __attribute__((__stdcall__)) CreateFontIndirectExA(const ENUMLOGFONTEXDVA *);
  __attribute__((dllimport)) HFONT __attribute__((__stdcall__)) CreateFontIndirectExW(const ENUMLOGFONTEXDVW *);


  typedef struct tagENUMTEXTMETRICA {
    NEWTEXTMETRICEXA etmNewTextMetricEx;
    AXESLISTA etmAxesList;
  } ENUMTEXTMETRICA,*PENUMTEXTMETRICA,*LPENUMTEXTMETRICA;
  typedef struct tagENUMTEXTMETRICW
  {
    NEWTEXTMETRICEXW etmNewTextMetricEx;
    AXESLISTW etmAxesList;
  } ENUMTEXTMETRICW,*PENUMTEXTMETRICW,*LPENUMTEXTMETRICW;





  typedef ENUMTEXTMETRICA ENUMTEXTMETRIC;
  typedef PENUMTEXTMETRICA PENUMTEXTMETRIC;
  typedef LPENUMTEXTMETRICA LPENUMTEXTMETRIC;
# 2795 "../tinyccbinary/win32/include/winapi/wingdi.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetViewportExtEx(HDC hdc,LPSIZE lpsize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetViewportOrgEx(HDC hdc,LPPOINT lppoint);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetWindowExtEx(HDC hdc,LPSIZE lpsize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetWindowOrgEx(HDC hdc,LPPOINT lppoint);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) IntersectClipRect(HDC hdc,int left,int top,int right,int bottom);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) InvertRgn(HDC hdc,HRGN hrgn);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) LineDDA(int xStart,int yStart,int xEnd,int yEnd,LINEDDAPROC lpProc,LPARAM data);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) LineTo(HDC hdc,int x,int y);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) MaskBlt(HDC hdcDest,int xDest,int yDest,int width,int height,HDC hdcSrc,int xSrc,int ySrc,HBITMAP hbmMask,int xMask,int yMask,DWORD rop);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PlgBlt(HDC hdcDest,const POINT *lpPoint,HDC hdcSrc,int xSrc,int ySrc,int width,int height,HBITMAP hbmMask,int xMask,int yMask);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) OffsetClipRgn(HDC hdc,int x,int y);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) OffsetRgn(HRGN hrgn,int x,int y);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PatBlt(HDC hdc,int x,int y,int w,int h,DWORD rop);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) Pie(HDC hdc,int left,int top,int right,int bottom,int xr1,int yr1,int xr2,int yr2);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PlayMetaFile(HDC hdc,HMETAFILE hmf);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PaintRgn(HDC hdc,HRGN hrgn);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PolyPolygon(HDC hdc,const POINT *apt,const INT *asz,int csz);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PtInRegion(HRGN hrgn,int x,int y);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PtVisible(HDC hdc,int x,int y);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) RectInRegion(HRGN hrgn,const RECT *lprect);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) RectVisible(HDC hdc,const RECT *lprect);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) Rectangle(HDC hdc,int left,int top,int right,int bottom);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) RestoreDC(HDC hdc,int nSavedDC);
  __attribute__((dllimport)) HDC __attribute__((__stdcall__)) ResetDCA(HDC hdc,const DEVMODEA *lpdm);
  __attribute__((dllimport)) HDC __attribute__((__stdcall__)) ResetDCW(HDC hdc,const DEVMODEW *lpdm);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) RealizePalette(HDC hdc);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) RemoveFontResourceA(LPCSTR lpFileName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) RemoveFontResourceW(LPCWSTR lpFileName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) RoundRect(HDC hdc,int left,int top,int right,int bottom,int width,int height);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ResizePalette(HPALETTE hpal,UINT n);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) SaveDC(HDC hdc);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) SelectClipRgn(HDC hdc,HRGN hrgn);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) ExtSelectClipRgn(HDC hdc,HRGN hrgn,int mode);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) SetMetaRgn(HDC hdc);
  __attribute__((dllimport)) HGDIOBJ __attribute__((__stdcall__)) SelectObject(HDC hdc,HGDIOBJ h);
  __attribute__((dllimport)) HPALETTE __attribute__((__stdcall__)) SelectPalette(HDC hdc,HPALETTE hPal,WINBOOL bForceBkgd);
  __attribute__((dllimport)) COLORREF __attribute__((__stdcall__)) SetBkColor(HDC hdc,COLORREF color);
  __attribute__((dllimport)) COLORREF __attribute__((__stdcall__)) SetDCBrushColor(HDC hdc,COLORREF color);
  __attribute__((dllimport)) COLORREF __attribute__((__stdcall__)) SetDCPenColor(HDC hdc,COLORREF color);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) SetBkMode(HDC hdc,int mode);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) SetBitmapBits(HBITMAP hbm,DWORD cb,const void *pvBits);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) SetBoundsRect(HDC hdc,const RECT *lprect,UINT flags);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) SetDIBits(HDC hdc,HBITMAP hbm,UINT start,UINT cLines,const void *lpBits,const BITMAPINFO *lpbmi,UINT ColorUse);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) SetDIBitsToDevice(HDC hdc,int xDest,int yDest,DWORD w,DWORD h,int xSrc,int ySrc,UINT StartScan,UINT cLines,const void *lpvBits,const BITMAPINFO *lpbmi,UINT ColorUse);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) SetMapperFlags(HDC hdc,DWORD flags);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) SetGraphicsMode(HDC hdc,int iMode);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) SetMapMode(HDC hdc,int iMode);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) SetLayout(HDC hdc,DWORD l);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetLayout(HDC hdc);
  __attribute__((dllimport)) HMETAFILE __attribute__((__stdcall__)) SetMetaFileBitsEx(UINT cbBuffer,const BYTE *lpData);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) SetPaletteEntries(HPALETTE hpal,UINT iStart,UINT cEntries,const PALETTEENTRY *pPalEntries);
  __attribute__((dllimport)) COLORREF __attribute__((__stdcall__)) SetPixel(HDC hdc,int x,int y,COLORREF color);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetPixelV(HDC hdc,int x,int y,COLORREF color);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetPixelFormat(HDC hdc,int format,const PIXELFORMATDESCRIPTOR *ppfd);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) SetPolyFillMode(HDC hdc,int mode);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) StretchBlt(HDC hdcDest,int xDest,int yDest,int wDest,int hDest,HDC hdcSrc,int xSrc,int ySrc,int wSrc,int hSrc,DWORD rop);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetRectRgn(HRGN hrgn,int left,int top,int right,int bottom);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) StretchDIBits(HDC hdc,int xDest,int yDest,int DestWidth,int DestHeight,int xSrc,int ySrc,int SrcWidth,int SrcHeight,const void *lpBits,const BITMAPINFO *lpbmi,UINT iUsage,DWORD rop);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) SetROP2(HDC hdc,int rop2);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) SetStretchBltMode(HDC hdc,int mode);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) SetSystemPaletteUse(HDC hdc,UINT use);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) SetTextCharacterExtra(HDC hdc,int extra);
  __attribute__((dllimport)) COLORREF __attribute__((__stdcall__)) SetTextColor(HDC hdc,COLORREF color);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) SetTextAlign(HDC hdc,UINT align);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetTextJustification(HDC hdc,int extra,int count);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) UpdateColors(HDC hdc);

  typedef USHORT COLOR16;

  typedef struct _TRIVERTEX {
    LONG x;
    LONG y;
    COLOR16 Red;
    COLOR16 Green;
    COLOR16 Blue;
    COLOR16 Alpha;
  } TRIVERTEX,*PTRIVERTEX,*LPTRIVERTEX;

  typedef struct _GRADIENT_TRIANGLE {
    ULONG Vertex1;
    ULONG Vertex2;
    ULONG Vertex3;
  } GRADIENT_TRIANGLE,*PGRADIENT_TRIANGLE,*LPGRADIENT_TRIANGLE;

  typedef struct _GRADIENT_RECT {
    ULONG UpperLeft;
    ULONG LowerRight;
  } GRADIENT_RECT,*PGRADIENT_RECT,*LPGRADIENT_RECT;

  typedef struct _BLENDFUNCTION {
    BYTE BlendOp;
    BYTE BlendFlags;
    BYTE SourceConstantAlpha;
    BYTE AlphaFormat;
  } BLENDFUNCTION,*PBLENDFUNCTION;




  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AlphaBlend(HDC hdcDest,int xoriginDest,int yoriginDest,int wDest,int hDest,HDC hdcSrc,int xoriginSrc,int yoriginSrc,int wSrc,int hSrc,BLENDFUNCTION ftn);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) TransparentBlt(HDC hdcDest,int xoriginDest,int yoriginDest,int wDest,int hDest,HDC hdcSrc,int xoriginSrc,int yoriginSrc,int wSrc,int hSrc,UINT crTransparent);






  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GradientFill(HDC hdc,PTRIVERTEX pVertex,ULONG nVertex,PVOID pMesh,ULONG nMesh,ULONG ulMode);
# 2918 "../tinyccbinary/win32/include/winapi/wingdi.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PlayMetaFileRecord(HDC hdc,LPHANDLETABLE lpHandleTable,LPMETARECORD lpMR,UINT noObjs);

  typedef int (__attribute__((__stdcall__)) *MFENUMPROC)(HDC hdc,HANDLETABLE *lpht,METARECORD *lpMR,int nObj,LPARAM param);

  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumMetaFile(HDC hdc,HMETAFILE hmf,MFENUMPROC proc,LPARAM param);

  typedef int (__attribute__((__stdcall__)) *ENHMFENUMPROC)(HDC hdc,HANDLETABLE *lpht,const ENHMETARECORD *lpmr,int hHandles,LPARAM data);

  __attribute__((dllimport)) HENHMETAFILE __attribute__((__stdcall__)) CloseEnhMetaFile(HDC hdc);
  __attribute__((dllimport)) HENHMETAFILE __attribute__((__stdcall__)) CopyEnhMetaFileA(HENHMETAFILE hEnh,LPCSTR lpFileName);
  __attribute__((dllimport)) HENHMETAFILE __attribute__((__stdcall__)) CopyEnhMetaFileW(HENHMETAFILE hEnh,LPCWSTR lpFileName);
  __attribute__((dllimport)) HDC __attribute__((__stdcall__)) CreateEnhMetaFileA(HDC hdc,LPCSTR lpFilename,const RECT *lprc,LPCSTR lpDesc);
  __attribute__((dllimport)) HDC __attribute__((__stdcall__)) CreateEnhMetaFileW(HDC hdc,LPCWSTR lpFilename,const RECT *lprc,LPCWSTR lpDesc);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DeleteEnhMetaFile(HENHMETAFILE hmf);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumEnhMetaFile(HDC hdc,HENHMETAFILE hmf,ENHMFENUMPROC proc,LPVOID param,const RECT *lpRect);
  __attribute__((dllimport)) HENHMETAFILE __attribute__((__stdcall__)) GetEnhMetaFileA(LPCSTR lpName);
  __attribute__((dllimport)) HENHMETAFILE __attribute__((__stdcall__)) GetEnhMetaFileW(LPCWSTR lpName);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetEnhMetaFileBits(HENHMETAFILE hEMF,UINT nSize,LPBYTE lpData);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetEnhMetaFileDescriptionA(HENHMETAFILE hemf,UINT cchBuffer,LPSTR lpDescription);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetEnhMetaFileDescriptionW(HENHMETAFILE hemf,UINT cchBuffer,LPWSTR lpDescription);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetEnhMetaFileHeader(HENHMETAFILE hemf,UINT nSize,LPENHMETAHEADER lpEnhMetaHeader);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetEnhMetaFilePaletteEntries(HENHMETAFILE hemf,UINT nNumEntries,LPPALETTEENTRY lpPaletteEntries);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetEnhMetaFilePixelFormat(HENHMETAFILE hemf,UINT cbBuffer,PIXELFORMATDESCRIPTOR *ppfd);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetWinMetaFileBits(HENHMETAFILE hemf,UINT cbData16,LPBYTE pData16,INT iMapMode,HDC hdcRef);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PlayEnhMetaFile(HDC hdc,HENHMETAFILE hmf,const RECT *lprect);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PlayEnhMetaFileRecord(HDC hdc,LPHANDLETABLE pht,const ENHMETARECORD *pmr,UINT cht);
  __attribute__((dllimport)) HENHMETAFILE __attribute__((__stdcall__)) SetEnhMetaFileBits(UINT nSize,const BYTE *pb);
  __attribute__((dllimport)) HENHMETAFILE __attribute__((__stdcall__)) SetWinMetaFileBits(UINT nSize,const BYTE *lpMeta16Data,HDC hdcRef,const METAFILEPICT *lpMFP);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GdiComment(HDC hdc,UINT nSize,const BYTE *lpData);
# 2956 "../tinyccbinary/win32/include/winapi/wingdi.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetTextMetricsA(HDC hdc,LPTEXTMETRICA lptm);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetTextMetricsW(HDC hdc,LPTEXTMETRICW lptm);


  typedef struct tagDIBSECTION {
    BITMAP dsBm;
    BITMAPINFOHEADER dsBmih;
    DWORD dsBitfields[3];
    HANDLE dshSection;
    DWORD dsOffset;
  } DIBSECTION,*LPDIBSECTION,*PDIBSECTION;

  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AngleArc(HDC hdc,int x,int y,DWORD r,FLOAT StartAngle,FLOAT SweepAngle);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PolyPolyline(HDC hdc,const POINT *apt,const DWORD *asz,DWORD csz);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetWorldTransform(HDC hdc,LPXFORM lpxf);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetWorldTransform(HDC hdc,const XFORM *lpxf);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ModifyWorldTransform(HDC hdc,const XFORM *lpxf,DWORD mode);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CombineTransform(LPXFORM lpxfOut,const XFORM *lpxf1,const XFORM *lpxf2);
  __attribute__((dllimport)) HBITMAP __attribute__((__stdcall__)) CreateDIBSection(HDC hdc,const BITMAPINFO *lpbmi,UINT usage,void **ppvBits,HANDLE hSection,DWORD offset);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetDIBColorTable(HDC hdc,UINT iStart,UINT cEntries,RGBQUAD *prgbq);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) SetDIBColorTable(HDC hdc,UINT iStart,UINT cEntries,const RGBQUAD *prgbq);
# 3008 "../tinyccbinary/win32/include/winapi/wingdi.h"
  typedef struct tagCOLORADJUSTMENT {
    WORD caSize;
    WORD caFlags;
    WORD caIlluminantIndex;
    WORD caRedGamma;
    WORD caGreenGamma;
    WORD caBlueGamma;
    WORD caReferenceBlack;
    WORD caReferenceWhite;
    SHORT caContrast;
    SHORT caBrightness;
    SHORT caColorfulness;
    SHORT caRedGreenTint;
  } COLORADJUSTMENT,*PCOLORADJUSTMENT,*LPCOLORADJUSTMENT;

  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetColorAdjustment(HDC hdc,const COLORADJUSTMENT *lpca);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetColorAdjustment(HDC hdc,LPCOLORADJUSTMENT lpca);
  __attribute__((dllimport)) HPALETTE __attribute__((__stdcall__)) CreateHalftonePalette(HDC hdc);

  typedef WINBOOL (__attribute__((__stdcall__)) *ABORTPROC)(HDC,int);

  typedef struct _DOCINFOA {
    int cbSize;
    LPCSTR lpszDocName;
    LPCSTR lpszOutput;
    LPCSTR lpszDatatype;
    DWORD fwType;
  } DOCINFOA,*LPDOCINFOA;

  typedef struct _DOCINFOW {
    int cbSize;
    LPCWSTR lpszDocName;
    LPCWSTR lpszOutput;
    LPCWSTR lpszDatatype;
    DWORD fwType;
  } DOCINFOW,*LPDOCINFOW;





  typedef DOCINFOA DOCINFO;
  typedef LPDOCINFOA LPDOCINFO;
# 3072 "../tinyccbinary/win32/include/winapi/wingdi.h"
  __attribute__((dllimport)) int __attribute__((__stdcall__)) StartDocA(HDC hdc,const DOCINFOA *lpdi);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) StartDocW(HDC hdc,const DOCINFOW *lpdi);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) EndDoc(HDC hdc);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) StartPage(HDC hdc);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) EndPage(HDC hdc);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) AbortDoc(HDC hdc);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) SetAbortProc(HDC hdc,ABORTPROC proc);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AbortPath(HDC hdc);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ArcTo(HDC hdc,int left,int top,int right,int bottom,int xr1,int yr1,int xr2,int yr2);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) BeginPath(HDC hdc);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CloseFigure(HDC hdc);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EndPath(HDC hdc);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FillPath(HDC hdc);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FlattenPath(HDC hdc);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetPath(HDC hdc,LPPOINT apt,LPBYTE aj,int cpt);
  __attribute__((dllimport)) HRGN __attribute__((__stdcall__)) PathToRegion(HDC hdc);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PolyDraw(HDC hdc,const POINT *apt,const BYTE *aj,int cpt);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SelectClipPath(HDC hdc,int mode);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) SetArcDirection(HDC hdc,int dir);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetMiterLimit(HDC hdc,FLOAT limit,PFLOAT old);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) StrokeAndFillPath(HDC hdc);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) StrokePath(HDC hdc);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WidenPath(HDC hdc);
  __attribute__((dllimport)) HPEN __attribute__((__stdcall__)) ExtCreatePen(DWORD iPenStyle,DWORD cWidth,const LOGBRUSH *plbrush,DWORD cStyle,const DWORD *pstyle);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetMiterLimit(HDC hdc,PFLOAT plimit);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetArcDirection(HDC hdc);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetObjectA(HANDLE h,int c,LPVOID pv);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetObjectW(HANDLE h,int c,LPVOID pv);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) MoveToEx(HDC hdc,int x,int y,LPPOINT lppt);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) TextOutA(HDC hdc,int x,int y,LPCSTR lpString,int c);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) TextOutW(HDC hdc,int x,int y,LPCWSTR lpString,int c);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ExtTextOutA(HDC hdc,int x,int y,UINT options,const RECT *lprect,LPCSTR lpString,UINT c,const INT *lpDx);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ExtTextOutW(HDC hdc,int x,int y,UINT options,const RECT *lprect,LPCWSTR lpString,UINT c,const INT *lpDx);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PolyTextOutA(HDC hdc,const POLYTEXTA *ppt,int nstrings);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PolyTextOutW(HDC hdc,const POLYTEXTW *ppt,int nstrings);
  __attribute__((dllimport)) HRGN __attribute__((__stdcall__)) CreatePolygonRgn(const POINT *pptl,int cPoint,int iMode);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DPtoLP(HDC hdc,LPPOINT lppt,int c);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) LPtoDP(HDC hdc,LPPOINT lppt,int c);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) Polygon(HDC hdc,const POINT *apt,int cpt);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) Polyline(HDC hdc,const POINT *apt,int cpt);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PolyBezier(HDC hdc,const POINT *apt,DWORD cpt);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PolyBezierTo(HDC hdc,const POINT *apt,DWORD cpt);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PolylineTo(HDC hdc,const POINT *apt,DWORD cpt);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetViewportExtEx(HDC hdc,int x,int y,LPSIZE lpsz);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetViewportOrgEx(HDC hdc,int x,int y,LPPOINT lppt);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetWindowExtEx(HDC hdc,int x,int y,LPSIZE lpsz);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetWindowOrgEx(HDC hdc,int x,int y,LPPOINT lppt);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) OffsetViewportOrgEx(HDC hdc,int x,int y,LPPOINT lppt);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) OffsetWindowOrgEx(HDC hdc,int x,int y,LPPOINT lppt);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ScaleViewportExtEx(HDC hdc,int xn,int dx,int yn,int yd,LPSIZE lpsz);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ScaleWindowExtEx(HDC hdc,int xn,int xd,int yn,int yd,LPSIZE lpsz);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetBitmapDimensionEx(HBITMAP hbm,int w,int h,LPSIZE lpsz);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetBrushOrgEx(HDC hdc,int x,int y,LPPOINT lppt);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetTextFaceA(HDC hdc,int c,LPSTR lpName);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetTextFaceW(HDC hdc,int c,LPWSTR lpName);



  typedef struct tagKERNINGPAIR {
    WORD wFirst;
    WORD wSecond;
    int iKernAmount;
  } KERNINGPAIR,*LPKERNINGPAIR;







  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetKerningPairsA(HDC hdc,DWORD nPairs,LPKERNINGPAIR lpKernPair);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetKerningPairsW(HDC hdc,DWORD nPairs,LPKERNINGPAIR lpKernPair);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetDCOrgEx(HDC hdc,LPPOINT lppt);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FixBrushOrgEx(HDC hdc,int x,int y,LPPOINT ptl);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) UnrealizeObject(HGDIOBJ h);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GdiFlush();
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GdiSetBatchLimit(DWORD dw);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GdiGetBatchLimit();






  typedef int (__attribute__((__stdcall__)) *ICMENUMPROCA)(LPSTR,LPARAM);
  typedef int (__attribute__((__stdcall__)) *ICMENUMPROCW)(LPWSTR,LPARAM);
# 3177 "../tinyccbinary/win32/include/winapi/wingdi.h"
  __attribute__((dllimport)) int __attribute__((__stdcall__)) SetICMMode(HDC hdc,int mode);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CheckColorsInGamut(HDC hdc,LPVOID lpRGBTriple,LPVOID dlpBuffer,DWORD nCount);
  __attribute__((dllimport)) HCOLORSPACE __attribute__((__stdcall__)) GetColorSpace(HDC hdc);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetLogColorSpaceA(HCOLORSPACE hColorSpace,LPLOGCOLORSPACEA lpBuffer,DWORD nSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetLogColorSpaceW(HCOLORSPACE hColorSpace,LPLOGCOLORSPACEW lpBuffer,DWORD nSize);
  __attribute__((dllimport)) HCOLORSPACE __attribute__((__stdcall__)) CreateColorSpaceA(LPLOGCOLORSPACEA lplcs);
  __attribute__((dllimport)) HCOLORSPACE __attribute__((__stdcall__)) CreateColorSpaceW(LPLOGCOLORSPACEW lplcs);
  __attribute__((dllimport)) HCOLORSPACE __attribute__((__stdcall__)) SetColorSpace(HDC hdc,HCOLORSPACE hcs);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DeleteColorSpace(HCOLORSPACE hcs);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetICMProfileA(HDC hdc,LPDWORD pBufSize,LPSTR pszFilename);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetICMProfileW(HDC hdc,LPDWORD pBufSize,LPWSTR pszFilename);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetICMProfileA(HDC hdc,LPSTR lpFileName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetICMProfileW(HDC hdc,LPWSTR lpFileName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetDeviceGammaRamp(HDC hdc,LPVOID lpRamp);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetDeviceGammaRamp(HDC hdc,LPVOID lpRamp);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ColorMatchToTarget(HDC hdc,HDC hdcTarget,DWORD action);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) EnumICMProfilesA(HDC hdc,ICMENUMPROCA proc,LPARAM param);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) EnumICMProfilesW(HDC hdc,ICMENUMPROCW proc,LPARAM param);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) UpdateICMRegKeyA(DWORD reserved,LPSTR lpszCMID,LPSTR lpszFileName,UINT command);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) UpdateICMRegKeyW(DWORD reserved,LPWSTR lpszCMID,LPWSTR lpszFileName,UINT command);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ColorCorrectPalette(HDC hdc,HPALETTE hPal,DWORD deFirst,DWORD num);
# 3332 "../tinyccbinary/win32/include/winapi/wingdi.h"
  typedef struct tagEMR {
    DWORD iType;
    DWORD nSize;
  } EMR,*PEMR;

  typedef struct tagEMRTEXT {
    POINTL ptlReference;
    DWORD nChars;
    DWORD offString;
    DWORD fOptions;
    RECTL rcl;
    DWORD offDx;
  } EMRTEXT,*PEMRTEXT;

  typedef struct tagABORTPATH {
    EMR emr;
  } EMRABORTPATH,*PEMRABORTPATH,EMRBEGINPATH,*PEMRBEGINPATH,EMRENDPATH,*PEMRENDPATH,EMRCLOSEFIGURE,*PEMRCLOSEFIGURE,EMRFLATTENPATH,*PEMRFLATTENPATH,EMRWIDENPATH,*PEMRWIDENPATH,EMRSETMETARGN,*PEMRSETMETARGN,EMRSAVEDC,*PEMRSAVEDC,EMRREALIZEPALETTE,*PEMRREALIZEPALETTE;

  typedef struct tagEMRSELECTCLIPPATH {
    EMR emr;
    DWORD iMode;
  } EMRSELECTCLIPPATH,*PEMRSELECTCLIPPATH,EMRSETBKMODE,*PEMRSETBKMODE,EMRSETMAPMODE,*PEMRSETMAPMODE,EMRSETLAYOUT,*PEMRSETLAYOUT,
    EMRSETPOLYFILLMODE,*PEMRSETPOLYFILLMODE,EMRSETROP2,*PEMRSETROP2,EMRSETSTRETCHBLTMODE,*PEMRSETSTRETCHBLTMODE,EMRSETICMMODE,
    *PEMRSETICMMODE,EMRSETTEXTALIGN,*PEMRSETTEXTALIGN;

  typedef struct tagEMRSETMITERLIMIT {
    EMR emr;
    FLOAT eMiterLimit;
  } EMRSETMITERLIMIT,*PEMRSETMITERLIMIT;

  typedef struct tagEMRRESTOREDC {
    EMR emr;
    LONG iRelative;
  } EMRRESTOREDC,*PEMRRESTOREDC;

  typedef struct tagEMRSETARCDIRECTION {
    EMR emr;
    DWORD iArcDirection;

  } EMRSETARCDIRECTION,*PEMRSETARCDIRECTION;

  typedef struct tagEMRSETMAPPERFLAGS {
    EMR emr;
    DWORD dwFlags;
  } EMRSETMAPPERFLAGS,*PEMRSETMAPPERFLAGS;

  typedef struct tagEMRSETTEXTCOLOR {
    EMR emr;
    COLORREF crColor;
  } EMRSETBKCOLOR,*PEMRSETBKCOLOR,EMRSETTEXTCOLOR,*PEMRSETTEXTCOLOR;

  typedef struct tagEMRSELECTOBJECT {
    EMR emr;
    DWORD ihObject;
  } EMRSELECTOBJECT,*PEMRSELECTOBJECT,EMRDELETEOBJECT,*PEMRDELETEOBJECT;

  typedef struct tagEMRSELECTPALETTE {
    EMR emr;
    DWORD ihPal;
  } EMRSELECTPALETTE,*PEMRSELECTPALETTE;

  typedef struct tagEMRRESIZEPALETTE {
    EMR emr;
    DWORD ihPal;
    DWORD cEntries;
  } EMRRESIZEPALETTE,*PEMRRESIZEPALETTE;

  typedef struct tagEMRSETPALETTEENTRIES {
    EMR emr;
    DWORD ihPal;
    DWORD iStart;
    DWORD cEntries;
    PALETTEENTRY aPalEntries[1];
  } EMRSETPALETTEENTRIES,*PEMRSETPALETTEENTRIES;

  typedef struct tagEMRSETCOLORADJUSTMENT {
    EMR emr;
    COLORADJUSTMENT ColorAdjustment;
  } EMRSETCOLORADJUSTMENT,*PEMRSETCOLORADJUSTMENT;

  typedef struct tagEMRGDICOMMENT {
    EMR emr;
    DWORD cbData;
    BYTE Data[1];
  } EMRGDICOMMENT,*PEMRGDICOMMENT;

  typedef struct tagEMREOF {
    EMR emr;
    DWORD nPalEntries;
    DWORD offPalEntries;
    DWORD nSizeLast;
  } EMREOF,*PEMREOF;

  typedef struct tagEMRLINETO {
    EMR emr;
    POINTL ptl;
  } EMRLINETO,*PEMRLINETO,EMRMOVETOEX,*PEMRMOVETOEX;

  typedef struct tagEMROFFSETCLIPRGN {
    EMR emr;
    POINTL ptlOffset;
  } EMROFFSETCLIPRGN,*PEMROFFSETCLIPRGN;

  typedef struct tagEMRFILLPATH {
    EMR emr;
    RECTL rclBounds;
  } EMRFILLPATH,*PEMRFILLPATH,EMRSTROKEANDFILLPATH,*PEMRSTROKEANDFILLPATH,EMRSTROKEPATH,*PEMRSTROKEPATH;

  typedef struct tagEMREXCLUDECLIPRECT {
    EMR emr;
    RECTL rclClip;
  } EMREXCLUDECLIPRECT,*PEMREXCLUDECLIPRECT,EMRINTERSECTCLIPRECT,*PEMRINTERSECTCLIPRECT;

  typedef struct tagEMRSETVIEWPORTORGEX {
    EMR emr;
    POINTL ptlOrigin;
  } EMRSETVIEWPORTORGEX,*PEMRSETVIEWPORTORGEX,EMRSETWINDOWORGEX,*PEMRSETWINDOWORGEX,EMRSETBRUSHORGEX,*PEMRSETBRUSHORGEX;

  typedef struct tagEMRSETVIEWPORTEXTEX {
    EMR emr;
    SIZEL szlExtent;
  } EMRSETVIEWPORTEXTEX,*PEMRSETVIEWPORTEXTEX,EMRSETWINDOWEXTEX,*PEMRSETWINDOWEXTEX;

  typedef struct tagEMRSCALEVIEWPORTEXTEX {
    EMR emr;
    LONG xNum;
    LONG xDenom;
    LONG yNum;
    LONG yDenom;
  } EMRSCALEVIEWPORTEXTEX,*PEMRSCALEVIEWPORTEXTEX,EMRSCALEWINDOWEXTEX,*PEMRSCALEWINDOWEXTEX;

  typedef struct tagEMRSETWORLDTRANSFORM {
    EMR emr;
    XFORM xform;
  } EMRSETWORLDTRANSFORM,*PEMRSETWORLDTRANSFORM;

  typedef struct tagEMRMODIFYWORLDTRANSFORM {
    EMR emr;
    XFORM xform;
    DWORD iMode;
  } EMRMODIFYWORLDTRANSFORM,*PEMRMODIFYWORLDTRANSFORM;

  typedef struct tagEMRSETPIXELV {
    EMR emr;
    POINTL ptlPixel;
    COLORREF crColor;
  } EMRSETPIXELV,*PEMRSETPIXELV;

  typedef struct tagEMREXTFLOODFILL {
    EMR emr;
    POINTL ptlStart;
    COLORREF crColor;
    DWORD iMode;
  } EMREXTFLOODFILL,*PEMREXTFLOODFILL;

  typedef struct tagEMRELLIPSE {
    EMR emr;
    RECTL rclBox;
  } EMRELLIPSE,*PEMRELLIPSE,EMRRECTANGLE,*PEMRRECTANGLE;

  typedef struct tagEMRROUNDRECT {
    EMR emr;
    RECTL rclBox;
    SIZEL szlCorner;
  } EMRROUNDRECT,*PEMRROUNDRECT;

  typedef struct tagEMRARC {
    EMR emr;
    RECTL rclBox;
    POINTL ptlStart;
    POINTL ptlEnd;
  } EMRARC,*PEMRARC,EMRARCTO,*PEMRARCTO,EMRCHORD,*PEMRCHORD,EMRPIE,*PEMRPIE;

  typedef struct tagEMRANGLEARC {
    EMR emr;
    POINTL ptlCenter;
    DWORD nRadius;
    FLOAT eStartAngle;
    FLOAT eSweepAngle;
  } EMRANGLEARC,*PEMRANGLEARC;

  typedef struct tagEMRPOLYLINE {
    EMR emr;
    RECTL rclBounds;
    DWORD cptl;
    POINTL aptl[1];
  } EMRPOLYLINE,*PEMRPOLYLINE,EMRPOLYBEZIER,*PEMRPOLYBEZIER,EMRPOLYGON,*PEMRPOLYGON,EMRPOLYBEZIERTO,*PEMRPOLYBEZIERTO,EMRPOLYLINETO,*PEMRPOLYLINETO;

  typedef struct tagEMRPOLYLINE16 {
    EMR emr;
    RECTL rclBounds;
    DWORD cpts;
    POINTS apts[1];
  } EMRPOLYLINE16,*PEMRPOLYLINE16,EMRPOLYBEZIER16,*PEMRPOLYBEZIER16,EMRPOLYGON16,*PEMRPOLYGON16,EMRPOLYBEZIERTO16,*PEMRPOLYBEZIERTO16,EMRPOLYLINETO16,*PEMRPOLYLINETO16;

  typedef struct tagEMRPOLYDRAW {
    EMR emr;
    RECTL rclBounds;
    DWORD cptl;
    POINTL aptl[1];
    BYTE abTypes[1];
  } EMRPOLYDRAW,*PEMRPOLYDRAW;

  typedef struct tagEMRPOLYDRAW16 {
    EMR emr;
    RECTL rclBounds;
    DWORD cpts;
    POINTS apts[1];
    BYTE abTypes[1];
  } EMRPOLYDRAW16,*PEMRPOLYDRAW16;

  typedef struct tagEMRPOLYPOLYLINE {
    EMR emr;
    RECTL rclBounds;
    DWORD nPolys;
    DWORD cptl;
    DWORD aPolyCounts[1];
    POINTL aptl[1];
  } EMRPOLYPOLYLINE,*PEMRPOLYPOLYLINE,EMRPOLYPOLYGON,*PEMRPOLYPOLYGON;

  typedef struct tagEMRPOLYPOLYLINE16 {
    EMR emr;
    RECTL rclBounds;
    DWORD nPolys;
    DWORD cpts;
    DWORD aPolyCounts[1];
    POINTS apts[1];
  } EMRPOLYPOLYLINE16,*PEMRPOLYPOLYLINE16,EMRPOLYPOLYGON16,*PEMRPOLYPOLYGON16;

  typedef struct tagEMRINVERTRGN {
    EMR emr;
    RECTL rclBounds;
    DWORD cbRgnData;
    BYTE RgnData[1];
  } EMRINVERTRGN,*PEMRINVERTRGN,EMRPAINTRGN,*PEMRPAINTRGN;

  typedef struct tagEMRFILLRGN {
    EMR emr;
    RECTL rclBounds;
    DWORD cbRgnData;
    DWORD ihBrush;
    BYTE RgnData[1];
  } EMRFILLRGN,*PEMRFILLRGN;

  typedef struct tagEMRFRAMERGN {
    EMR emr;
    RECTL rclBounds;
    DWORD cbRgnData;
    DWORD ihBrush;
    SIZEL szlStroke;
    BYTE RgnData[1];
  } EMRFRAMERGN,*PEMRFRAMERGN;

  typedef struct tagEMREXTSELECTCLIPRGN {
    EMR emr;
    DWORD cbRgnData;
    DWORD iMode;
    BYTE RgnData[1];
  } EMREXTSELECTCLIPRGN,*PEMREXTSELECTCLIPRGN;

  typedef struct tagEMREXTTEXTOUTA {
    EMR emr;
    RECTL rclBounds;
    DWORD iGraphicsMode;
    FLOAT exScale;
    FLOAT eyScale;
    EMRTEXT emrtext;
  } EMREXTTEXTOUTA,*PEMREXTTEXTOUTA,EMREXTTEXTOUTW,*PEMREXTTEXTOUTW;

  typedef struct tagEMRPOLYTEXTOUTA {
    EMR emr;
    RECTL rclBounds;
    DWORD iGraphicsMode;
    FLOAT exScale;
    FLOAT eyScale;
    LONG cStrings;
    EMRTEXT aemrtext[1];
  } EMRPOLYTEXTOUTA,*PEMRPOLYTEXTOUTA,EMRPOLYTEXTOUTW,*PEMRPOLYTEXTOUTW;

  typedef struct tagEMRBITBLT {
    EMR emr;
    RECTL rclBounds;
    LONG xDest;
    LONG yDest;
    LONG cxDest;
    LONG cyDest;
    DWORD dwRop;
    LONG xSrc;
    LONG ySrc;
    XFORM xformSrc;
    COLORREF crBkColorSrc;
    DWORD iUsageSrc;
    DWORD offBmiSrc;
    DWORD cbBmiSrc;
    DWORD offBitsSrc;
    DWORD cbBitsSrc;
  } EMRBITBLT,*PEMRBITBLT;

  typedef struct tagEMRSTRETCHBLT {
    EMR emr;
    RECTL rclBounds;
    LONG xDest;
    LONG yDest;
    LONG cxDest;
    LONG cyDest;
    DWORD dwRop;
    LONG xSrc;
    LONG ySrc;
    XFORM xformSrc;
    COLORREF crBkColorSrc;
    DWORD iUsageSrc;
    DWORD offBmiSrc;
    DWORD cbBmiSrc;
    DWORD offBitsSrc;
    DWORD cbBitsSrc;
    LONG cxSrc;
    LONG cySrc;
  } EMRSTRETCHBLT,*PEMRSTRETCHBLT;

  typedef struct tagEMRMASKBLT {
    EMR emr;
    RECTL rclBounds;
    LONG xDest;
    LONG yDest;
    LONG cxDest;
    LONG cyDest;
    DWORD dwRop;
    LONG xSrc;
    LONG ySrc;
    XFORM xformSrc;
    COLORREF crBkColorSrc;
    DWORD iUsageSrc;
    DWORD offBmiSrc;
    DWORD cbBmiSrc;
    DWORD offBitsSrc;
    DWORD cbBitsSrc;
    LONG xMask;
    LONG yMask;
    DWORD iUsageMask;
    DWORD offBmiMask;
    DWORD cbBmiMask;
    DWORD offBitsMask;
    DWORD cbBitsMask;
  } EMRMASKBLT,*PEMRMASKBLT;

  typedef struct tagEMRPLGBLT {
    EMR emr;
    RECTL rclBounds;
    POINTL aptlDest[3];
    LONG xSrc;
    LONG ySrc;
    LONG cxSrc;
    LONG cySrc;
    XFORM xformSrc;
    COLORREF crBkColorSrc;
    DWORD iUsageSrc;
    DWORD offBmiSrc;
    DWORD cbBmiSrc;
    DWORD offBitsSrc;
    DWORD cbBitsSrc;
    LONG xMask;
    LONG yMask;
    DWORD iUsageMask;
    DWORD offBmiMask;
    DWORD cbBmiMask;
    DWORD offBitsMask;
    DWORD cbBitsMask;
  } EMRPLGBLT,*PEMRPLGBLT;

  typedef struct tagEMRSETDIBITSTODEVICE {
    EMR emr;
    RECTL rclBounds;
    LONG xDest;
    LONG yDest;
    LONG xSrc;
    LONG ySrc;
    LONG cxSrc;
    LONG cySrc;
    DWORD offBmiSrc;
    DWORD cbBmiSrc;
    DWORD offBitsSrc;
    DWORD cbBitsSrc;
    DWORD iUsageSrc;
    DWORD iStartScan;
    DWORD cScans;
  } EMRSETDIBITSTODEVICE,*PEMRSETDIBITSTODEVICE;

  typedef struct tagEMRSTRETCHDIBITS {
    EMR emr;
    RECTL rclBounds;
    LONG xDest;
    LONG yDest;
    LONG xSrc;
    LONG ySrc;
    LONG cxSrc;
    LONG cySrc;
    DWORD offBmiSrc;
    DWORD cbBmiSrc;
    DWORD offBitsSrc;
    DWORD cbBitsSrc;
    DWORD iUsageSrc;
    DWORD dwRop;
    LONG cxDest;
    LONG cyDest;
  } EMRSTRETCHDIBITS,*PEMRSTRETCHDIBITS;

  typedef struct tagEMREXTCREATEFONTINDIRECTW {
    EMR emr;
    DWORD ihFont;
    EXTLOGFONTW elfw;
  } EMREXTCREATEFONTINDIRECTW,*PEMREXTCREATEFONTINDIRECTW;

  typedef struct tagEMRCREATEPALETTE {
    EMR emr;
    DWORD ihPal;
    LOGPALETTE lgpl;
  } EMRCREATEPALETTE,*PEMRCREATEPALETTE;

  typedef struct tagEMRCREATEPEN {
    EMR emr;
    DWORD ihPen;
    LOGPEN lopn;
  } EMRCREATEPEN,*PEMRCREATEPEN;

  typedef struct tagEMREXTCREATEPEN {
    EMR emr;
    DWORD ihPen;
    DWORD offBmi;
    DWORD cbBmi;
    DWORD offBits;
    DWORD cbBits;
    EXTLOGPEN elp;
  } EMREXTCREATEPEN,*PEMREXTCREATEPEN;

  typedef struct tagEMRCREATEBRUSHINDIRECT {
    EMR emr;
    DWORD ihBrush;
    LOGBRUSH32 lb;
  } EMRCREATEBRUSHINDIRECT,*PEMRCREATEBRUSHINDIRECT;

  typedef struct tagEMRCREATEMONOBRUSH {
    EMR emr;
    DWORD ihBrush;
    DWORD iUsage;
    DWORD offBmi;
    DWORD cbBmi;
    DWORD offBits;
    DWORD cbBits;
  } EMRCREATEMONOBRUSH,*PEMRCREATEMONOBRUSH;

  typedef struct tagEMRCREATEDIBPATTERNBRUSHPT {
    EMR emr;
    DWORD ihBrush;
    DWORD iUsage;
    DWORD offBmi;
    DWORD cbBmi;
    DWORD offBits;
    DWORD cbBits;
  } EMRCREATEDIBPATTERNBRUSHPT,*PEMRCREATEDIBPATTERNBRUSHPT;

  typedef struct tagEMRFORMAT {
    DWORD dSignature;
    DWORD nVersion;
    DWORD cbData;
    DWORD offData;
  } EMRFORMAT,*PEMRFORMAT;

  typedef struct tagEMRGLSRECORD {
    EMR emr;
    DWORD cbData;
    BYTE Data[1];
  } EMRGLSRECORD,*PEMRGLSRECORD;

  typedef struct tagEMRGLSBOUNDEDRECORD {
    EMR emr;
    RECTL rclBounds;
    DWORD cbData;
    BYTE Data[1];
  } EMRGLSBOUNDEDRECORD,*PEMRGLSBOUNDEDRECORD;

  typedef struct tagEMRPIXELFORMAT {
    EMR emr;
    PIXELFORMATDESCRIPTOR pfd;
  } EMRPIXELFORMAT,*PEMRPIXELFORMAT;

  typedef struct tagEMRCREATECOLORSPACE {
    EMR emr;
    DWORD ihCS;
    LOGCOLORSPACEA lcs;
  } EMRCREATECOLORSPACE,*PEMRCREATECOLORSPACE;

  typedef struct tagEMRSETCOLORSPACE {
    EMR emr;
    DWORD ihCS;
  } EMRSETCOLORSPACE,*PEMRSETCOLORSPACE,EMRSELECTCOLORSPACE,*PEMRSELECTCOLORSPACE,EMRDELETECOLORSPACE,*PEMRDELETECOLORSPACE;

  typedef struct tagEMREXTESCAPE {
    EMR emr;
    INT iEscape;
    INT cbEscData;
    BYTE EscData[1];
  } EMREXTESCAPE,*PEMREXTESCAPE,EMRDRAWESCAPE,*PEMRDRAWESCAPE;

  typedef struct tagEMRNAMEDESCAPE {
    EMR emr;
    INT iEscape;
    INT cbDriver;
    INT cbEscData;
    BYTE EscData[1];
  } EMRNAMEDESCAPE,*PEMRNAMEDESCAPE;



  typedef struct tagEMRSETICMPROFILE {
    EMR emr;
    DWORD dwFlags;
    DWORD cbName;
    DWORD cbData;
    BYTE Data[1];
  } EMRSETICMPROFILE,*PEMRSETICMPROFILE,EMRSETICMPROFILEA,*PEMRSETICMPROFILEA,EMRSETICMPROFILEW,*PEMRSETICMPROFILEW;



  typedef struct tagEMRCREATECOLORSPACEW {
    EMR emr;
    DWORD ihCS;
    LOGCOLORSPACEW lcs;
    DWORD dwFlags;
    DWORD cbData;
    BYTE Data[1];
  } EMRCREATECOLORSPACEW,*PEMRCREATECOLORSPACEW;



  typedef struct tagCOLORMATCHTOTARGET {
    EMR emr;
    DWORD dwAction;
    DWORD dwFlags;
    DWORD cbName;
    DWORD cbData;
    BYTE Data[1];
  } EMRCOLORMATCHTOTARGET,*PEMRCOLORMATCHTOTARGET;

  typedef struct tagCOLORCORRECTPALETTE {
    EMR emr;
    DWORD ihPalette;
    DWORD nFirstEntry;
    DWORD nPalEntries;
    DWORD nReserved;
  } EMRCOLORCORRECTPALETTE,*PEMRCOLORCORRECTPALETTE;

  typedef struct tagEMRALPHABLEND {
    EMR emr;
    RECTL rclBounds;
    LONG xDest;
    LONG yDest;
    LONG cxDest;
    LONG cyDest;
    DWORD dwRop;
    LONG xSrc;
    LONG ySrc;
    XFORM xformSrc;
    COLORREF crBkColorSrc;
    DWORD iUsageSrc;
    DWORD offBmiSrc;
    DWORD cbBmiSrc;
    DWORD offBitsSrc;
    DWORD cbBitsSrc;
    LONG cxSrc;
    LONG cySrc;
  } EMRALPHABLEND,*PEMRALPHABLEND;

  typedef struct tagEMRGRADIENTFILL {
    EMR emr;
    RECTL rclBounds;
    DWORD nVer;
    DWORD nTri;
    ULONG ulMode;
    TRIVERTEX Ver[1];
  } EMRGRADIENTFILL,*PEMRGRADIENTFILL;

  typedef struct tagEMRTRANSPARENTBLT {
    EMR emr;
    RECTL rclBounds;
    LONG xDest;
    LONG yDest;
    LONG cxDest;
    LONG cyDest;
    DWORD dwRop;
    LONG xSrc;
    LONG ySrc;
    XFORM xformSrc;
    COLORREF crBkColorSrc;
    DWORD iUsageSrc;
    DWORD offBmiSrc;
    DWORD cbBmiSrc;
    DWORD offBitsSrc;
    DWORD cbBitsSrc;
    LONG cxSrc;
    LONG cySrc;
  } EMRTRANSPARENTBLT,*PEMRTRANSPARENTBLT;
# 3950 "../tinyccbinary/win32/include/winapi/wingdi.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) wglCopyContext(HGLRC,HGLRC,UINT);
  __attribute__((dllimport)) HGLRC __attribute__((__stdcall__)) wglCreateContext(HDC);
  __attribute__((dllimport)) HGLRC __attribute__((__stdcall__)) wglCreateLayerContext(HDC,int);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) wglDeleteContext(HGLRC);
  __attribute__((dllimport)) HGLRC __attribute__((__stdcall__)) wglGetCurrentContext(void);
  __attribute__((dllimport)) HDC __attribute__((__stdcall__)) wglGetCurrentDC(void);
  __attribute__((dllimport)) PROC __attribute__((__stdcall__)) wglGetProcAddress(LPCSTR);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) wglMakeCurrent(HDC,HGLRC);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) wglShareLists(HGLRC,HGLRC);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) wglUseFontBitmapsA(HDC,DWORD,DWORD,DWORD);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) wglUseFontBitmapsW(HDC,DWORD,DWORD,DWORD);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SwapBuffers(HDC);

  typedef struct _POINTFLOAT {
    FLOAT x;
    FLOAT y;
  } POINTFLOAT,*PPOINTFLOAT;

  typedef struct _GLYPHMETRICSFLOAT {
    FLOAT gmfBlackBoxX;
    FLOAT gmfBlackBoxY;
    POINTFLOAT gmfptGlyphOrigin;
    FLOAT gmfCellIncX;
    FLOAT gmfCellIncY;
  } GLYPHMETRICSFLOAT,*PGLYPHMETRICSFLOAT,*LPGLYPHMETRICSFLOAT;
# 3985 "../tinyccbinary/win32/include/winapi/wingdi.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) wglUseFontOutlinesA(HDC,DWORD,DWORD,DWORD,FLOAT,FLOAT,int,LPGLYPHMETRICSFLOAT);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) wglUseFontOutlinesW(HDC,DWORD,DWORD,DWORD,FLOAT,FLOAT,int,LPGLYPHMETRICSFLOAT);

  typedef struct tagLAYERPLANEDESCRIPTOR {
    WORD nSize;
    WORD nVersion;
    DWORD dwFlags;
    BYTE iPixelType;
    BYTE cColorBits;
    BYTE cRedBits;
    BYTE cRedShift;
    BYTE cGreenBits;
    BYTE cGreenShift;
    BYTE cBlueBits;
    BYTE cBlueShift;
    BYTE cAlphaBits;
    BYTE cAlphaShift;
    BYTE cAccumBits;
    BYTE cAccumRedBits;
    BYTE cAccumGreenBits;
    BYTE cAccumBlueBits;
    BYTE cAccumAlphaBits;
    BYTE cDepthBits;
    BYTE cStencilBits;
    BYTE cAuxBuffers;
    BYTE iLayerPlane;
    BYTE bReserved;
    COLORREF crTransparent;
  } LAYERPLANEDESCRIPTOR,*PLAYERPLANEDESCRIPTOR,*LPLAYERPLANEDESCRIPTOR;
# 4061 "../tinyccbinary/win32/include/winapi/wingdi.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) wglDescribeLayerPlane(HDC,int,int,UINT,LPLAYERPLANEDESCRIPTOR);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) wglSetLayerPaletteEntries(HDC,int,int,int,const COLORREF *);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) wglGetLayerPaletteEntries(HDC,int,int,int,COLORREF *);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) wglRealizeLayerPalette(HDC,int,WINBOOL);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) wglSwapLayerBuffers(HDC,UINT);

  typedef struct _WGLSWAP {
    HDC hdc;
    UINT uiFlags;
  } WGLSWAP,*PWGLSWAP,*LPWGLSWAP;



  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) wglSwapMultipleBuffers(UINT,const WGLSWAP *);
# 69 "../tinyccbinary/win32/include/winapi/windows.h" 2
# 1 "../tinyccbinary/win32/include/winapi/winuser.h" 1
# 19 "../tinyccbinary/win32/include/winapi/winuser.h"
# 1 "../tinyccbinary/win32/include/stdarg.h" 1
# 20 "../tinyccbinary/win32/include/winapi/winuser.h" 2


  typedef HANDLE HDWP;
  typedef void MENUTEMPLATEA;
  typedef void MENUTEMPLATEW;
  typedef PVOID LPMENUTEMPLATEA;
  typedef PVOID LPMENUTEMPLATEW;





  typedef MENUTEMPLATEA MENUTEMPLATE;
  typedef LPMENUTEMPLATEA LPMENUTEMPLATE;


  typedef LRESULT (__attribute__((__stdcall__)) *WNDPROC)(HWND,UINT,WPARAM,LPARAM);
  typedef INT_PTR (__attribute__((__stdcall__)) *DLGPROC)(HWND,UINT,WPARAM,LPARAM);
  typedef void (__attribute__((__stdcall__)) *TIMERPROC)(HWND,UINT,UINT_PTR,DWORD);
  typedef WINBOOL (__attribute__((__stdcall__)) *GRAYSTRINGPROC)(HDC,LPARAM,int);
  typedef WINBOOL (__attribute__((__stdcall__)) *WNDENUMPROC)(HWND,LPARAM);
  typedef LRESULT (__attribute__((__stdcall__)) *HOOKPROC)(int code,WPARAM wParam,LPARAM lParam);
  typedef void (__attribute__((__stdcall__)) *SENDASYNCPROC)(HWND,UINT,ULONG_PTR,LRESULT);
  typedef WINBOOL (__attribute__((__stdcall__)) *PROPENUMPROCA)(HWND,LPCSTR,HANDLE);
  typedef WINBOOL (__attribute__((__stdcall__)) *PROPENUMPROCW)(HWND,LPCWSTR,HANDLE);
  typedef WINBOOL (__attribute__((__stdcall__)) *PROPENUMPROCEXA)(HWND,LPSTR,HANDLE,ULONG_PTR);
  typedef WINBOOL (__attribute__((__stdcall__)) *PROPENUMPROCEXW)(HWND,LPWSTR,HANDLE,ULONG_PTR);
  typedef int (__attribute__((__stdcall__)) *EDITWORDBREAKPROCA)(LPSTR lpch,int ichCurrent,int cch,int code);
  typedef int (__attribute__((__stdcall__)) *EDITWORDBREAKPROCW)(LPWSTR lpch,int ichCurrent,int cch,int code);
  typedef WINBOOL (__attribute__((__stdcall__)) *DRAWSTATEPROC)(HDC hdc,LPARAM lData,WPARAM wData,int cx,int cy);






  typedef PROPENUMPROCA PROPENUMPROC;
  typedef PROPENUMPROCEXA PROPENUMPROCEX;
  typedef EDITWORDBREAKPROCA EDITWORDBREAKPROC;


  typedef WINBOOL (__attribute__((__stdcall__)) *NAMEENUMPROCA)(LPSTR,LPARAM);
  typedef WINBOOL (__attribute__((__stdcall__)) *NAMEENUMPROCW)(LPWSTR,LPARAM);
  typedef NAMEENUMPROCA WINSTAENUMPROCA;
  typedef NAMEENUMPROCA DESKTOPENUMPROCA;
  typedef NAMEENUMPROCW WINSTAENUMPROCW;
  typedef NAMEENUMPROCW DESKTOPENUMPROCW;





  typedef WINSTAENUMPROCA WINSTAENUMPROC;
  typedef DESKTOPENUMPROCA DESKTOPENUMPROC;
# 134 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) int __attribute__((__stdcall__)) wvsprintfA(LPSTR,LPCSTR,va_list arglist);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) wvsprintfW(LPWSTR,LPCWSTR,va_list arglist);
  __attribute__((dllimport)) int  wsprintfA(LPSTR,LPCSTR,...);
  __attribute__((dllimport)) int  wsprintfW(LPWSTR,LPCWSTR,...);
# 420 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct tagCBT_CREATEWNDA {
    struct tagCREATESTRUCTA *lpcs;
    HWND hwndInsertAfter;
  } CBT_CREATEWNDA,*LPCBT_CREATEWNDA;

  typedef struct tagCBT_CREATEWNDW {
    struct tagCREATESTRUCTW *lpcs;
    HWND hwndInsertAfter;
  } CBT_CREATEWNDW,*LPCBT_CREATEWNDW;




  typedef CBT_CREATEWNDA CBT_CREATEWND;
  typedef LPCBT_CREATEWNDA LPCBT_CREATEWND;


  typedef struct tagCBTACTIVATESTRUCT
  {
    WINBOOL fMouse;
    HWND hWndActive;
  } CBTACTIVATESTRUCT,*LPCBTACTIVATESTRUCT;

  typedef struct tagWTSSESSION_NOTIFICATION {
    DWORD cbSize;
    DWORD dwSessionId;

  } WTSSESSION_NOTIFICATION,*PWTSSESSION_NOTIFICATION;
# 554 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct {
    HWND hwnd;
    RECT rc;
  } SHELLHOOKINFO,*LPSHELLHOOKINFO;

  typedef struct tagEVENTMSG {
    UINT message;
    UINT paramL;
    UINT paramH;
    DWORD time;
    HWND hwnd;
  } EVENTMSG,*PEVENTMSGMSG,*NPEVENTMSGMSG,*LPEVENTMSGMSG;

  typedef struct tagEVENTMSG *PEVENTMSG,*NPEVENTMSG,*LPEVENTMSG;

  typedef struct tagCWPSTRUCT {
    LPARAM lParam;
    WPARAM wParam;
    UINT message;
    HWND hwnd;
  } CWPSTRUCT,*PCWPSTRUCT,*NPCWPSTRUCT,*LPCWPSTRUCT;

  typedef struct tagCWPRETSTRUCT {
    LRESULT lResult;
    LPARAM lParam;
    WPARAM wParam;
    UINT message;
    HWND hwnd;
  } CWPRETSTRUCT,*PCWPRETSTRUCT,*NPCWPRETSTRUCT,*LPCWPRETSTRUCT;
# 591 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct tagKBDLLHOOKSTRUCT {
    DWORD vkCode;
    DWORD scanCode;
    DWORD flags;
    DWORD time;
    ULONG_PTR dwExtraInfo;
  } KBDLLHOOKSTRUCT,*LPKBDLLHOOKSTRUCT,*PKBDLLHOOKSTRUCT;

  typedef struct tagMSLLHOOKSTRUCT {
    POINT pt;
    DWORD mouseData;
    DWORD flags;
    DWORD time;
    ULONG_PTR dwExtraInfo;
  } MSLLHOOKSTRUCT,*LPMSLLHOOKSTRUCT,*PMSLLHOOKSTRUCT;

  typedef struct tagDEBUGHOOKINFO {
    DWORD idThread;
    DWORD idThreadInstaller;
    LPARAM lParam;
    WPARAM wParam;
    int code;
  } DEBUGHOOKINFO,*PDEBUGHOOKINFO,*NPDEBUGHOOKINFO,*LPDEBUGHOOKINFO;

  typedef struct tagMOUSEHOOKSTRUCT {
    POINT pt;
    HWND hwnd;
    UINT wHitTestCode;
    ULONG_PTR dwExtraInfo;
  } MOUSEHOOKSTRUCT,*LPMOUSEHOOKSTRUCT,*PMOUSEHOOKSTRUCT;






  typedef struct tagMOUSEHOOKSTRUCTEX {
    MOUSEHOOKSTRUCT _unnamed;
    DWORD mouseData;
  } MOUSEHOOKSTRUCTEX,*LPMOUSEHOOKSTRUCTEX,*PMOUSEHOOKSTRUCTEX;


  typedef struct tagHARDWAREHOOKSTRUCT {
    HWND hwnd;
    UINT message;
    WPARAM wParam;
    LPARAM lParam;
  } HARDWAREHOOKSTRUCT,*LPHARDWAREHOOKSTRUCT,*PHARDWAREHOOKSTRUCT;
# 667 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) HKL __attribute__((__stdcall__)) LoadKeyboardLayoutA(LPCSTR pwszKLID,UINT Flags);
  __attribute__((dllimport)) HKL __attribute__((__stdcall__)) LoadKeyboardLayoutW(LPCWSTR pwszKLID,UINT Flags);
  __attribute__((dllimport)) HKL __attribute__((__stdcall__)) ActivateKeyboardLayout(HKL hkl,UINT Flags);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) ToUnicodeEx(UINT wVirtKey,UINT wScanCode,const BYTE *lpKeyState,LPWSTR pwszBuff,int cchBuff,UINT wFlags,HKL dwhkl);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) UnloadKeyboardLayout(HKL hkl);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetKeyboardLayoutNameA(LPSTR pwszKLID);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetKeyboardLayoutNameW(LPWSTR pwszKLID);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetKeyboardLayoutList(int nBuff,HKL *lpList);
  __attribute__((dllimport)) HKL __attribute__((__stdcall__)) GetKeyboardLayout(DWORD idThread);

  typedef struct tagMOUSEMOVEPOINT {
    int x;
    int y;
    DWORD time;
    ULONG_PTR dwExtraInfo;
  } MOUSEMOVEPOINT,*PMOUSEMOVEPOINT,*LPMOUSEMOVEPOINT;




  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetMouseMovePointsEx(UINT cbSize,LPMOUSEMOVEPOINT lppt,LPMOUSEMOVEPOINT lpptBuf,int nBufPoints,DWORD resolution);
# 711 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) HDESK __attribute__((__stdcall__)) CreateDesktopA(LPCSTR lpszDesktop,LPCSTR lpszDevice,LPDEVMODEA pDevmode,DWORD dwFlags,ACCESS_MASK dwDesiredAccess,LPSECURITY_ATTRIBUTES lpsa);
  __attribute__((dllimport)) HDESK __attribute__((__stdcall__)) CreateDesktopW(LPCWSTR lpszDesktop,LPCWSTR lpszDevice,LPDEVMODEW pDevmode,DWORD dwFlags,ACCESS_MASK dwDesiredAccess,LPSECURITY_ATTRIBUTES lpsa);
# 724 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) HDESK __attribute__((__stdcall__)) OpenDesktopA(LPCSTR lpszDesktop,DWORD dwFlags,WINBOOL fInherit,ACCESS_MASK dwDesiredAccess);
  __attribute__((dllimport)) HDESK __attribute__((__stdcall__)) OpenDesktopW(LPCWSTR lpszDesktop,DWORD dwFlags,WINBOOL fInherit,ACCESS_MASK dwDesiredAccess);
  __attribute__((dllimport)) HDESK __attribute__((__stdcall__)) OpenInputDesktop(DWORD dwFlags,WINBOOL fInherit,ACCESS_MASK dwDesiredAccess);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumDesktopsA(HWINSTA hwinsta,DESKTOPENUMPROCA lpEnumFunc,LPARAM lParam);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumDesktopsW(HWINSTA hwinsta,DESKTOPENUMPROCW lpEnumFunc,LPARAM lParam);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumDesktopWindows(HDESK hDesktop,WNDENUMPROC lpfn,LPARAM lParam);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SwitchDesktop(HDESK hDesktop);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetThreadDesktop(HDESK hDesktop);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CloseDesktop(HDESK hDesktop);
  __attribute__((dllimport)) HDESK __attribute__((__stdcall__)) GetThreadDesktop(DWORD dwThreadId);
# 762 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) HWINSTA __attribute__((__stdcall__)) CreateWindowStationA(LPCSTR lpwinsta,DWORD dwFlags,ACCESS_MASK dwDesiredAccess,LPSECURITY_ATTRIBUTES lpsa);
  __attribute__((dllimport)) HWINSTA __attribute__((__stdcall__)) CreateWindowStationW(LPCWSTR lpwinsta,DWORD dwFlags,ACCESS_MASK dwDesiredAccess,LPSECURITY_ATTRIBUTES lpsa);
  __attribute__((dllimport)) HWINSTA __attribute__((__stdcall__)) OpenWindowStationA(LPCSTR lpszWinSta,WINBOOL fInherit,ACCESS_MASK dwDesiredAccess);
  __attribute__((dllimport)) HWINSTA __attribute__((__stdcall__)) OpenWindowStationW(LPCWSTR lpszWinSta,WINBOOL fInherit,ACCESS_MASK dwDesiredAccess);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumWindowStationsA(WINSTAENUMPROCA lpEnumFunc,LPARAM lParam);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumWindowStationsW(WINSTAENUMPROCW lpEnumFunc,LPARAM lParam);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CloseWindowStation(HWINSTA hWinSta);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetProcessWindowStation(HWINSTA hWinSta);
  __attribute__((dllimport)) HWINSTA __attribute__((__stdcall__)) GetProcessWindowStation(void);



  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetUserObjectSecurity(HANDLE hObj,PSECURITY_INFORMATION pSIRequested,PSECURITY_DESCRIPTOR pSID);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetUserObjectSecurity(HANDLE hObj,PSECURITY_INFORMATION pSIRequested,PSECURITY_DESCRIPTOR pSID,DWORD nLength,LPDWORD lpnLengthNeeded);






  typedef struct tagUSEROBJECTFLAGS {
    WINBOOL fInherit;
    WINBOOL fReserved;
    DWORD dwFlags;
  } USEROBJECTFLAGS,*PUSEROBJECTFLAGS;
# 796 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetUserObjectInformationA(HANDLE hObj,int nIndex,PVOID pvInfo,DWORD nLength,LPDWORD lpnLengthNeeded);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetUserObjectInformationW(HANDLE hObj,int nIndex,PVOID pvInfo,DWORD nLength,LPDWORD lpnLengthNeeded);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetUserObjectInformationA(HANDLE hObj,int nIndex,PVOID pvInfo,DWORD nLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetUserObjectInformationW(HANDLE hObj,int nIndex,PVOID pvInfo,DWORD nLength);


  typedef struct tagWNDCLASSEXA {
    UINT cbSize;
    UINT style;
    WNDPROC lpfnWndProc;
    int cbClsExtra;
    int cbWndExtra;
    HINSTANCE hInstance;
    HICON hIcon;
    HCURSOR hCursor;
    HBRUSH hbrBackground;
    LPCSTR lpszMenuName;
    LPCSTR lpszClassName;
    HICON hIconSm;
  } WNDCLASSEXA,*PWNDCLASSEXA,*NPWNDCLASSEXA,*LPWNDCLASSEXA;

  typedef struct tagWNDCLASSEXW {
    UINT cbSize;
    UINT style;
    WNDPROC lpfnWndProc;
    int cbClsExtra;
    int cbWndExtra;
    HINSTANCE hInstance;
    HICON hIcon;
    HCURSOR hCursor;
    HBRUSH hbrBackground;
    LPCWSTR lpszMenuName;
    LPCWSTR lpszClassName;

    HICON hIconSm;
  } WNDCLASSEXW,*PWNDCLASSEXW,*NPWNDCLASSEXW,*LPWNDCLASSEXW;







  typedef WNDCLASSEXA WNDCLASSEX;
  typedef PWNDCLASSEXA PWNDCLASSEX;
  typedef NPWNDCLASSEXA NPWNDCLASSEX;
  typedef LPWNDCLASSEXA LPWNDCLASSEX;


  typedef struct tagWNDCLASSA {
    UINT style;
    WNDPROC lpfnWndProc;
    int cbClsExtra;
    int cbWndExtra;
    HINSTANCE hInstance;
    HICON hIcon;
    HCURSOR hCursor;
    HBRUSH hbrBackground;
    LPCSTR lpszMenuName;
    LPCSTR lpszClassName;
  } WNDCLASSA,*PWNDCLASSA,*NPWNDCLASSA,*LPWNDCLASSA;

  typedef struct tagWNDCLASSW {
    UINT style;
    WNDPROC lpfnWndProc;
    int cbClsExtra;
    int cbWndExtra;
    HINSTANCE hInstance;
    HICON hIcon;
    HCURSOR hCursor;
    HBRUSH hbrBackground;
    LPCWSTR lpszMenuName;
    LPCWSTR lpszClassName;
  } WNDCLASSW,*PWNDCLASSW,*NPWNDCLASSW,*LPWNDCLASSW;







  typedef WNDCLASSA WNDCLASS;
  typedef PWNDCLASSA PWNDCLASS;
  typedef NPWNDCLASSA NPWNDCLASS;
  typedef LPWNDCLASSA LPWNDCLASS;


  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsHungAppWindow(HWND hwnd);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) DisableProcessWindowsGhosting(void);


  typedef struct tagMSG {
    HWND hwnd;
    UINT message;
    WPARAM wParam;
    LPARAM lParam;
    DWORD time;
    POINT pt;
  } MSG,*PMSG,*NPMSG,*LPMSG;
# 1004 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct tagMINMAXINFO {
    POINT ptReserved;
    POINT ptMaxSize;
    POINT ptMaxPosition;
    POINT ptMinTrackSize;
    POINT ptMaxTrackSize;
  } MINMAXINFO,*PMINMAXINFO,*LPMINMAXINFO;
# 1046 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct tagCOPYDATASTRUCT {
    ULONG_PTR dwData;
    DWORD cbData;
    PVOID lpData;
  } COPYDATASTRUCT,*PCOPYDATASTRUCT;

  typedef struct tagMDINEXTMENU {
    HMENU hmenuIn;
    HMENU hmenuNext;
    HWND hwndNext;
  } MDINEXTMENU,*PMDINEXTMENU,*LPMDINEXTMENU;
# 1354 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) RegisterWindowMessageA(LPCSTR lpString);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) RegisterWindowMessageW(LPCWSTR lpString);
# 1369 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct tagWINDOWPOS {
    HWND hwnd;
    HWND hwndInsertAfter;
    int x;
    int y;
    int cx;
    int cy;
    UINT flags;
  } WINDOWPOS,*LPWINDOWPOS,*PWINDOWPOS;

  typedef struct tagNCCALCSIZE_PARAMS {
    RECT rgrc[3];
    PWINDOWPOS lppos;
  } NCCALCSIZE_PARAMS,*LPNCCALCSIZE_PARAMS;
# 1414 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct tagTRACKMOUSEEVENT {
    DWORD cbSize;
    DWORD dwFlags;
    HWND hwndTrack;
    DWORD dwHoverTime;
  } TRACKMOUSEEVENT,*LPTRACKMOUSEEVENT;

  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) TrackMouseEvent(LPTRACKMOUSEEVENT lpEventTrack);
# 1542 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DrawEdge(HDC hdc,LPRECT qrc,UINT edge,UINT grfFlags);
# 1586 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DrawFrameControl(HDC,LPRECT,UINT,UINT);
# 1596 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DrawCaption(HWND hwnd,HDC hdc,const RECT *lprect,UINT flags);




  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DrawAnimatedRects(HWND hwnd,int idAni,const RECT *lprcFrom,const RECT *lprcTo);
# 1643 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct tagACCEL {
    BYTE fVirt;
    WORD key;
    WORD cmd;
  } ACCEL,*LPACCEL;

  typedef struct tagPAINTSTRUCT {
    HDC hdc;
    WINBOOL fErase;
    RECT rcPaint;
    WINBOOL fRestore;
    WINBOOL fIncUpdate;
    BYTE rgbReserved[32];
  } PAINTSTRUCT,*PPAINTSTRUCT,*NPPAINTSTRUCT,*LPPAINTSTRUCT;

  typedef struct tagCREATESTRUCTA {
    LPVOID lpCreateParams;
    HINSTANCE hInstance;
    HMENU hMenu;
    HWND hwndParent;
    int cy;
    int cx;
    int y;
    int x;
    LONG style;
    LPCSTR lpszName;
    LPCSTR lpszClass;
    DWORD dwExStyle;
  } CREATESTRUCTA,*LPCREATESTRUCTA;

  typedef struct tagCREATESTRUCTW {
    LPVOID lpCreateParams;
    HINSTANCE hInstance;
    HMENU hMenu;
    HWND hwndParent;
    int cy;
    int cx;
    int y;
    int x;
    LONG style;
    LPCWSTR lpszName;
    LPCWSTR lpszClass;
    DWORD dwExStyle;
  } CREATESTRUCTW,*LPCREATESTRUCTW;





  typedef CREATESTRUCTA CREATESTRUCT;
  typedef LPCREATESTRUCTA LPCREATESTRUCT;


  typedef struct tagWINDOWPLACEMENT {
    UINT length;
    UINT flags;
    UINT showCmd;
    POINT ptMinPosition;
    POINT ptMaxPosition;
    RECT rcNormalPosition;
  } WINDOWPLACEMENT;
  typedef WINDOWPLACEMENT *PWINDOWPLACEMENT,*LPWINDOWPLACEMENT;





  typedef struct tagNMHDR {
    HWND hwndFrom;
    UINT_PTR idFrom;
    UINT code;
  } NMHDR;

  typedef NMHDR *LPNMHDR;

  typedef struct tagSTYLESTRUCT {
    DWORD styleOld;
    DWORD styleNew;
  } STYLESTRUCT,*LPSTYLESTRUCT;
# 1745 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct tagMEASUREITEMSTRUCT {
    UINT CtlType;
    UINT CtlID;
    UINT itemID;
    UINT itemWidth;
    UINT itemHeight;
    ULONG_PTR itemData;
  } MEASUREITEMSTRUCT,*PMEASUREITEMSTRUCT,*LPMEASUREITEMSTRUCT;

  typedef struct tagDRAWITEMSTRUCT {
    UINT CtlType;
    UINT CtlID;
    UINT itemID;
    UINT itemAction;
    UINT itemState;
    HWND hwndItem;
    HDC hDC;
    RECT rcItem;
    ULONG_PTR itemData;
  } DRAWITEMSTRUCT,*PDRAWITEMSTRUCT,*LPDRAWITEMSTRUCT;

  typedef struct tagDELETEITEMSTRUCT {
    UINT CtlType;
    UINT CtlID;
    UINT itemID;
    HWND hwndItem;
    ULONG_PTR itemData;
  } DELETEITEMSTRUCT,*PDELETEITEMSTRUCT,*LPDELETEITEMSTRUCT;

  typedef struct tagCOMPAREITEMSTRUCT {
    UINT CtlType;
    UINT CtlID;
    HWND hwndItem;
    UINT itemID1;
    ULONG_PTR itemData1;
    UINT itemID2;
    ULONG_PTR itemData2;
    DWORD dwLocaleId;
  } COMPAREITEMSTRUCT,*PCOMPAREITEMSTRUCT,*LPCOMPAREITEMSTRUCT;
# 1796 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetMessageA(LPMSG lpMsg,HWND hWnd,UINT wMsgFilterMin,UINT wMsgFilterMax);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetMessageW(LPMSG lpMsg,HWND hWnd,UINT wMsgFilterMin,UINT wMsgFilterMax);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) TranslateMessage(const MSG *lpMsg);
  __attribute__((dllimport)) LRESULT __attribute__((__stdcall__)) DispatchMessageA(const MSG *lpMsg);
  __attribute__((dllimport)) LRESULT __attribute__((__stdcall__)) DispatchMessageW(const MSG *lpMsg);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetMessageQueue(int cMessagesMax);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PeekMessageA(LPMSG lpMsg,HWND hWnd,UINT wMsgFilterMin,UINT wMsgFilterMax,UINT wRemoveMsg);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PeekMessageW(LPMSG lpMsg,HWND hWnd,UINT wMsgFilterMin,UINT wMsgFilterMax,UINT wRemoveMsg);
# 1814 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) RegisterHotKey(HWND hWnd,int id,UINT fsModifiers,UINT vk);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) UnregisterHotKey(HWND hWnd,int id);
# 1857 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ExitWindowsEx(UINT uFlags,DWORD dwReason);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SwapMouseButton(WINBOOL fSwap);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetMessagePos(void);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) GetMessageTime(void);
  __attribute__((dllimport)) LPARAM __attribute__((__stdcall__)) GetMessageExtraInfo(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsWow64Message(void);
  __attribute__((dllimport)) LPARAM __attribute__((__stdcall__)) SetMessageExtraInfo(LPARAM lParam);
  __attribute__((dllimport)) LRESULT __attribute__((__stdcall__)) SendMessageA(HWND hWnd,UINT Msg,WPARAM wParam,LPARAM lParam);
  __attribute__((dllimport)) LRESULT __attribute__((__stdcall__)) SendMessageW(HWND hWnd,UINT Msg,WPARAM wParam,LPARAM lParam);
  __attribute__((dllimport)) LRESULT __attribute__((__stdcall__)) SendMessageTimeoutA(HWND hWnd,UINT Msg,WPARAM wParam,LPARAM lParam,UINT fuFlags,UINT uTimeout,PDWORD_PTR lpdwResult);
  __attribute__((dllimport)) LRESULT __attribute__((__stdcall__)) SendMessageTimeoutW(HWND hWnd,UINT Msg,WPARAM wParam,LPARAM lParam,UINT fuFlags,UINT uTimeout,PDWORD_PTR lpdwResult);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SendNotifyMessageA(HWND hWnd,UINT Msg,WPARAM wParam,LPARAM lParam);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SendNotifyMessageW(HWND hWnd,UINT Msg,WPARAM wParam,LPARAM lParam);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SendMessageCallbackA(HWND hWnd,UINT Msg,WPARAM wParam,LPARAM lParam,SENDASYNCPROC lpResultCallBack,ULONG_PTR dwData);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SendMessageCallbackW(HWND hWnd,UINT Msg,WPARAM wParam,LPARAM lParam,SENDASYNCPROC lpResultCallBack,ULONG_PTR dwData);

  typedef struct {
    UINT cbSize;
    HDESK hdesk;
    HWND hwnd;
    LUID luid;
  } BSMINFO,*PBSMINFO;
# 1888 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) long __attribute__((__stdcall__)) BroadcastSystemMessageExA(DWORD flags,LPDWORD lpInfo,UINT Msg,WPARAM wParam,LPARAM lParam,PBSMINFO pbsmInfo);
  __attribute__((dllimport)) long __attribute__((__stdcall__)) BroadcastSystemMessageExW(DWORD flags,LPDWORD lpInfo,UINT Msg,WPARAM wParam,LPARAM lParam,PBSMINFO pbsmInfo);
  __attribute__((dllimport)) long __attribute__((__stdcall__)) BroadcastSystemMessageA(DWORD flags,LPDWORD lpInfo,UINT Msg,WPARAM wParam,LPARAM lParam);
  __attribute__((dllimport)) long __attribute__((__stdcall__)) BroadcastSystemMessageW(DWORD flags,LPDWORD lpInfo,UINT Msg,WPARAM wParam,LPARAM lParam);
# 1914 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef PVOID HDEVNOTIFY;
  typedef HDEVNOTIFY *PHDEVNOTIFY;
# 1947 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) HDEVNOTIFY __attribute__((__stdcall__)) RegisterDeviceNotificationA(HANDLE hRecipient,LPVOID NotificationFilter,DWORD Flags);
  __attribute__((dllimport)) HDEVNOTIFY __attribute__((__stdcall__)) RegisterDeviceNotificationW(HANDLE hRecipient,LPVOID NotificationFilter,DWORD Flags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) UnregisterDeviceNotification(HDEVNOTIFY Handle);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PostMessageA(HWND hWnd,UINT Msg,WPARAM wParam,LPARAM lParam);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PostMessageW(HWND hWnd,UINT Msg,WPARAM wParam,LPARAM lParam);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PostThreadMessageA(DWORD idThread,UINT Msg,WPARAM wParam,LPARAM lParam);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PostThreadMessageW(DWORD idThread,UINT Msg,WPARAM wParam,LPARAM lParam);






  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AttachThreadInput(DWORD idAttach,DWORD idAttachTo,WINBOOL fAttach);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ReplyMessage(LRESULT lResult);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WaitMessage(void);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) WaitForInputIdle(HANDLE hProcess,DWORD dwMilliseconds);
  __attribute__((dllimport)) LRESULT __attribute__((__stdcall__)) DefWindowProcA(HWND hWnd,UINT Msg,WPARAM wParam,LPARAM lParam);
  __attribute__((dllimport)) LRESULT __attribute__((__stdcall__)) DefWindowProcW(HWND hWnd,UINT Msg,WPARAM wParam,LPARAM lParam);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) PostQuitMessage(int nExitCode);
  __attribute__((dllimport)) LRESULT __attribute__((__stdcall__)) CallWindowProcA(WNDPROC lpPrevWndFunc,HWND hWnd,UINT Msg,WPARAM wParam,LPARAM lParam);
  __attribute__((dllimport)) LRESULT __attribute__((__stdcall__)) CallWindowProcW(WNDPROC lpPrevWndFunc,HWND hWnd,UINT Msg,WPARAM wParam,LPARAM lParam);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) InSendMessage(void);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) InSendMessageEx(LPVOID lpReserved);







  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetDoubleClickTime(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetDoubleClickTime(UINT);
  __attribute__((dllimport)) ATOM __attribute__((__stdcall__)) RegisterClassA(const WNDCLASSA *lpWndClass);
  __attribute__((dllimport)) ATOM __attribute__((__stdcall__)) RegisterClassW(const WNDCLASSW *lpWndClass);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) UnregisterClassA(LPCSTR lpClassName,HINSTANCE hInstance);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) UnregisterClassW(LPCWSTR lpClassName,HINSTANCE hInstance);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetClassInfoA(HINSTANCE hInstance,LPCSTR lpClassName,LPWNDCLASSA lpWndClass);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetClassInfoW(HINSTANCE hInstance,LPCWSTR lpClassName,LPWNDCLASSW lpWndClass);
  __attribute__((dllimport)) ATOM __attribute__((__stdcall__)) RegisterClassExA(const WNDCLASSEXA *);
  __attribute__((dllimport)) ATOM __attribute__((__stdcall__)) RegisterClassExW(const WNDCLASSEXW *);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetClassInfoExA(HINSTANCE hInstance,LPCSTR lpszClass,LPWNDCLASSEXA lpwcx);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetClassInfoExW(HINSTANCE hInstance,LPCWSTR lpszClass,LPWNDCLASSEXW lpwcx);





  typedef BOOLEAN (__attribute__((__stdcall__)) *PREGISTERCLASSNAMEW)(LPCWSTR);
# 2005 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) CreateWindowExA(DWORD dwExStyle,LPCSTR lpClassName,LPCSTR lpWindowName,DWORD dwStyle,int X,int Y,int nWidth,int nHeight,HWND hWndParent,HMENU hMenu,HINSTANCE hInstance,LPVOID lpParam);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) CreateWindowExW(DWORD dwExStyle,LPCWSTR lpClassName,LPCWSTR lpWindowName,DWORD dwStyle,int X,int Y,int nWidth,int nHeight,HWND hWndParent,HMENU hMenu,HINSTANCE hInstance,LPVOID lpParam);


  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsWindow(HWND hWnd);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsMenu(HMENU hMenu);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsChild(HWND hWndParent,HWND hWnd);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DestroyWindow(HWND hWnd);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ShowWindow(HWND hWnd,int nCmdShow);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AnimateWindow(HWND hWnd,DWORD dwTime,DWORD dwFlags);


  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) UpdateLayeredWindow(HWND hWnd,HDC hdcDst,POINT *pptDst,SIZE *psize,HDC hdcSrc,POINT *pptSrc,COLORREF crKey,BLENDFUNCTION *pblend,DWORD dwFlags);

  typedef struct tagUPDATELAYEREDWINDOWINFO {
    DWORD cbSize;
    HDC hdcDst;
    POINT const *pptDst;
    SIZE const *psize;
    HDC hdcSrc;
    POINT const *pptSrc;
    COLORREF crKey;
    BLENDFUNCTION const *pblend;
    DWORD dwFlags;
    RECT const *prcDirty;
  } UPDATELAYEREDWINDOWINFO,*PUPDATELAYEREDWINDOWINFO;

  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) UpdateLayeredWindowIndirect(HWND hWnd,UPDATELAYEREDWINDOWINFO const *pULWInfo);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetLayeredWindowAttributes(HWND hwnd,COLORREF *pcrKey,BYTE *pbAlpha,DWORD *pdwFlags);



  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PrintWindow(HWND hwnd,HDC hdcBlt,UINT nFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetLayeredWindowAttributes(HWND hwnd,COLORREF crKey,BYTE bAlpha,DWORD dwFlags);
# 2049 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ShowWindowAsync(HWND hWnd,int nCmdShow);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FlashWindow(HWND hWnd,WINBOOL bInvert);

  typedef struct {
    UINT cbSize;
    HWND hwnd;
    DWORD dwFlags;
    UINT uCount;
    DWORD dwTimeout;
  } FLASHWINFO,*PFLASHWINFO;

  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FlashWindowEx(PFLASHWINFO pfwi);
# 2069 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ShowOwnedPopups(HWND hWnd,WINBOOL fShow);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) OpenIcon(HWND hWnd);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CloseWindow(HWND hWnd);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) MoveWindow(HWND hWnd,int X,int Y,int nWidth,int nHeight,WINBOOL bRepaint);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetWindowPos(HWND hWnd,HWND hWndInsertAfter,int X,int Y,int cx,int cy,UINT uFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetWindowPlacement(HWND hWnd,WINDOWPLACEMENT *lpwndpl);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetWindowPlacement(HWND hWnd,const WINDOWPLACEMENT *lpwndpl);


  __attribute__((dllimport)) HDWP __attribute__((__stdcall__)) BeginDeferWindowPos(int nNumWindows);
  __attribute__((dllimport)) HDWP __attribute__((__stdcall__)) DeferWindowPos(HDWP hWinPosInfo,HWND hWnd,HWND hWndInsertAfter,int x,int y,int cx,int cy,UINT uFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EndDeferWindowPos(HDWP hWinPosInfo);


  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsWindowVisible(HWND hWnd);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsIconic(HWND hWnd);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AnyPopup(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) BringWindowToTop(HWND hWnd);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsZoomed(HWND hWnd);
# 2113 "../tinyccbinary/win32/include/winapi/winuser.h"
# 1 "../tinyccbinary/win32/include/winapi/pshpack2.h" 1






#pragma pack(push,2)
# 2114 "../tinyccbinary/win32/include/winapi/winuser.h" 2

  typedef struct {
    DWORD style;
    DWORD dwExtendedStyle;
    WORD cdit;
    short x;
    short y;
    short cx;
    short cy;
  } DLGTEMPLATE;

  typedef DLGTEMPLATE *LPDLGTEMPLATEA;
  typedef DLGTEMPLATE *LPDLGTEMPLATEW;




  typedef LPDLGTEMPLATEA LPDLGTEMPLATE;


  typedef const DLGTEMPLATE *LPCDLGTEMPLATEA;
  typedef const DLGTEMPLATE *LPCDLGTEMPLATEW;




  typedef LPCDLGTEMPLATEA LPCDLGTEMPLATE;


  typedef struct {
    DWORD style;
    DWORD dwExtendedStyle;
    short x;
    short y;
    short cx;
    short cy;
    WORD id;
  } DLGITEMTEMPLATE;

  typedef DLGITEMTEMPLATE *PDLGITEMTEMPLATEA;
  typedef DLGITEMTEMPLATE *PDLGITEMTEMPLATEW;




  typedef PDLGITEMTEMPLATEA PDLGITEMTEMPLATE;


  typedef DLGITEMTEMPLATE *LPDLGITEMTEMPLATEA;
  typedef DLGITEMTEMPLATE *LPDLGITEMTEMPLATEW;




  typedef LPDLGITEMTEMPLATEA LPDLGITEMTEMPLATE;


# 1 "../tinyccbinary/win32/include/winapi/poppack.h" 1






#pragma pack(pop)
# 2172 "../tinyccbinary/win32/include/winapi/winuser.h" 2
# 2201 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) CreateDialogParamA(HINSTANCE hInstance,LPCSTR lpTemplateName,HWND hWndParent,DLGPROC lpDialogFunc,LPARAM dwInitParam);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) CreateDialogParamW(HINSTANCE hInstance,LPCWSTR lpTemplateName,HWND hWndParent,DLGPROC lpDialogFunc,LPARAM dwInitParam);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) CreateDialogIndirectParamA(HINSTANCE hInstance,LPCDLGTEMPLATEA lpTemplate,HWND hWndParent,DLGPROC lpDialogFunc,LPARAM dwInitParam);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) CreateDialogIndirectParamW(HINSTANCE hInstance,LPCDLGTEMPLATEW lpTemplate,HWND hWndParent,DLGPROC lpDialogFunc,LPARAM dwInitParam);




  __attribute__((dllimport)) INT_PTR __attribute__((__stdcall__)) DialogBoxParamA(HINSTANCE hInstance,LPCSTR lpTemplateName,HWND hWndParent,DLGPROC lpDialogFunc,LPARAM dwInitParam);
  __attribute__((dllimport)) INT_PTR __attribute__((__stdcall__)) DialogBoxParamW(HINSTANCE hInstance,LPCWSTR lpTemplateName,HWND hWndParent,DLGPROC lpDialogFunc,LPARAM dwInitParam);
  __attribute__((dllimport)) INT_PTR __attribute__((__stdcall__)) DialogBoxIndirectParamA(HINSTANCE hInstance,LPCDLGTEMPLATEA hDialogTemplate,HWND hWndParent,DLGPROC lpDialogFunc,LPARAM dwInitParam);
  __attribute__((dllimport)) INT_PTR __attribute__((__stdcall__)) DialogBoxIndirectParamW(HINSTANCE hInstance,LPCDLGTEMPLATEW hDialogTemplate,HWND hWndParent,DLGPROC lpDialogFunc,LPARAM dwInitParam);




  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EndDialog(HWND hDlg,INT_PTR nResult);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) GetDlgItem(HWND hDlg,int nIDDlgItem);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetDlgItemInt(HWND hDlg,int nIDDlgItem,UINT uValue,WINBOOL bSigned);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetDlgItemInt(HWND hDlg,int nIDDlgItem,WINBOOL *lpTranslated,WINBOOL bSigned);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetDlgItemTextA(HWND hDlg,int nIDDlgItem,LPCSTR lpString);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetDlgItemTextW(HWND hDlg,int nIDDlgItem,LPCWSTR lpString);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetDlgItemTextA(HWND hDlg,int nIDDlgItem,LPSTR lpString,int cchMax);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetDlgItemTextW(HWND hDlg,int nIDDlgItem,LPWSTR lpString,int cchMax);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CheckDlgButton(HWND hDlg,int nIDButton,UINT uCheck);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CheckRadioButton(HWND hDlg,int nIDFirstButton,int nIDLastButton,int nIDCheckButton);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) IsDlgButtonChecked(HWND hDlg,int nIDButton);
  __attribute__((dllimport)) LRESULT __attribute__((__stdcall__)) SendDlgItemMessageA(HWND hDlg,int nIDDlgItem,UINT Msg,WPARAM wParam,LPARAM lParam);
  __attribute__((dllimport)) LRESULT __attribute__((__stdcall__)) SendDlgItemMessageW(HWND hDlg,int nIDDlgItem,UINT Msg,WPARAM wParam,LPARAM lParam);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) GetNextDlgGroupItem(HWND hDlg,HWND hCtl,WINBOOL bPrevious);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) GetNextDlgTabItem(HWND hDlg,HWND hCtl,WINBOOL bPrevious);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetDlgCtrlID(HWND hWnd);
  __attribute__((dllimport)) long __attribute__((__stdcall__)) GetDialogBaseUnits(void);
  __attribute__((dllimport)) LRESULT __attribute__((__stdcall__)) DefDlgProcA(HWND hDlg,UINT Msg,WPARAM wParam,LPARAM lParam);
  __attribute__((dllimport)) LRESULT __attribute__((__stdcall__)) DefDlgProcW(HWND hDlg,UINT Msg,WPARAM wParam,LPARAM lParam);
# 2248 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CallMsgFilterA(LPMSG lpMsg,int nCode);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CallMsgFilterW(LPMSG lpMsg,int nCode);
# 2262 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) OpenClipboard(HWND hWndNewOwner);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CloseClipboard(void);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetClipboardSequenceNumber(void);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) GetClipboardOwner(void);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) SetClipboardViewer(HWND hWndNewViewer);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) GetClipboardViewer(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ChangeClipboardChain(HWND hWndRemove,HWND hWndNewNext);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) SetClipboardData(UINT uFormat,HANDLE hMem);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) GetClipboardData(UINT uFormat);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) RegisterClipboardFormatA(LPCSTR lpszFormat);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) RegisterClipboardFormatW(LPCWSTR lpszFormat);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) CountClipboardFormats(void);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) EnumClipboardFormats(UINT format);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetClipboardFormatNameA(UINT format,LPSTR lpszFormatName,int cchMaxCount);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetClipboardFormatNameW(UINT format,LPWSTR lpszFormatName,int cchMaxCount);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EmptyClipboard(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsClipboardFormatAvailable(UINT format);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetPriorityClipboardFormat(UINT *paFormatPriorityList,int cFormats);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) GetOpenClipboardWindow(void);
# 2307 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CharToOemA(LPCSTR lpszSrc,LPSTR lpszDst);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CharToOemW(LPCWSTR lpszSrc,LPSTR lpszDst);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) OemToCharA(LPCSTR lpszSrc,LPSTR lpszDst);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) OemToCharW(LPCSTR lpszSrc,LPWSTR lpszDst);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CharToOemBuffA(LPCSTR lpszSrc,LPSTR lpszDst,DWORD cchDstLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CharToOemBuffW(LPCWSTR lpszSrc,LPSTR lpszDst,DWORD cchDstLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) OemToCharBuffA(LPCSTR lpszSrc,LPSTR lpszDst,DWORD cchDstLength);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) OemToCharBuffW(LPCSTR lpszSrc,LPWSTR lpszDst,DWORD cchDstLength);
  __attribute__((dllimport)) LPSTR __attribute__((__stdcall__)) CharUpperA(LPSTR lpsz);
  __attribute__((dllimport)) LPWSTR __attribute__((__stdcall__)) CharUpperW(LPWSTR lpsz);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) CharUpperBuffA(LPSTR lpsz,DWORD cchLength);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) CharUpperBuffW(LPWSTR lpsz,DWORD cchLength);
  __attribute__((dllimport)) LPSTR __attribute__((__stdcall__)) CharLowerA(LPSTR lpsz);
  __attribute__((dllimport)) LPWSTR __attribute__((__stdcall__)) CharLowerW(LPWSTR lpsz);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) CharLowerBuffA(LPSTR lpsz,DWORD cchLength);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) CharLowerBuffW(LPWSTR lpsz,DWORD cchLength);
  __attribute__((dllimport)) LPSTR __attribute__((__stdcall__)) CharNextA(LPCSTR lpsz);
  __attribute__((dllimport)) LPWSTR __attribute__((__stdcall__)) CharNextW(LPCWSTR lpsz);
  __attribute__((dllimport)) LPSTR __attribute__((__stdcall__)) CharPrevA(LPCSTR lpszStart,LPCSTR lpszCurrent);
  __attribute__((dllimport)) LPWSTR __attribute__((__stdcall__)) CharPrevW(LPCWSTR lpszStart,LPCWSTR lpszCurrent);
  __attribute__((dllimport)) LPSTR __attribute__((__stdcall__)) CharNextExA(WORD CodePage,LPCSTR lpCurrentChar,DWORD dwFlags);
  __attribute__((dllimport)) LPSTR __attribute__((__stdcall__)) CharPrevExA(WORD CodePage,LPCSTR lpStart,LPCSTR lpCurrentChar,DWORD dwFlags);
# 2355 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsCharAlphaA(CHAR ch);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsCharAlphaW(WCHAR ch);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsCharAlphaNumericA(CHAR ch);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsCharAlphaNumericW(WCHAR ch);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsCharUpperA(CHAR ch);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsCharUpperW(WCHAR ch);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsCharLowerA(CHAR ch);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsCharLowerW(WCHAR ch);
# 2375 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) SetFocus(HWND hWnd);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) GetActiveWindow(void);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) GetFocus(void);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetKBCodePage(void);
  __attribute__((dllimport)) SHORT __attribute__((__stdcall__)) GetKeyState(int nVirtKey);
  __attribute__((dllimport)) SHORT __attribute__((__stdcall__)) GetAsyncKeyState(int vKey);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetKeyboardState(PBYTE lpKeyState);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetKeyboardState(LPBYTE lpKeyState);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetKeyNameTextA(LONG lParam,LPSTR lpString,int cchSize);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetKeyNameTextW(LONG lParam,LPWSTR lpString,int cchSize);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetKeyboardType(int nTypeFlag);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) ToAscii(UINT uVirtKey,UINT uScanCode,const BYTE *lpKeyState,LPWORD lpChar,UINT uFlags);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) ToAsciiEx(UINT uVirtKey,UINT uScanCode,const BYTE *lpKeyState,LPWORD lpChar,UINT uFlags,HKL dwhkl);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) ToUnicode(UINT wVirtKey,UINT wScanCode,const BYTE *lpKeyState,LPWSTR pwszBuff,int cchBuff,UINT wFlags);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) OemKeyScan(WORD wOemChar);
  __attribute__((dllimport)) SHORT __attribute__((__stdcall__)) VkKeyScanA(CHAR ch);
  __attribute__((dllimport)) SHORT __attribute__((__stdcall__)) VkKeyScanW(WCHAR ch);
  __attribute__((dllimport)) SHORT __attribute__((__stdcall__)) VkKeyScanExA(CHAR ch,HKL dwhkl);
  __attribute__((dllimport)) SHORT __attribute__((__stdcall__)) VkKeyScanExW(WCHAR ch,HKL dwhkl);






  __attribute__((dllimport)) void __attribute__((__stdcall__)) keybd_event(BYTE bVk,BYTE bScan,DWORD dwFlags,ULONG_PTR dwExtraInfo);
# 2415 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) void __attribute__((__stdcall__)) mouse_event(DWORD dwFlags,DWORD dx,DWORD dy,DWORD dwData,ULONG_PTR dwExtraInfo);

  typedef struct tagMOUSEINPUT {
    LONG dx;
    LONG dy;
    DWORD mouseData;
    DWORD dwFlags;
    DWORD time;
    ULONG_PTR dwExtraInfo;
  } MOUSEINPUT,*PMOUSEINPUT,*LPMOUSEINPUT;

  typedef struct tagKEYBDINPUT {
    WORD wVk;
    WORD wScan;
    DWORD dwFlags;
    DWORD time;
    ULONG_PTR dwExtraInfo;
  } KEYBDINPUT,*PKEYBDINPUT,*LPKEYBDINPUT;

  typedef struct tagHARDWAREINPUT {
    DWORD uMsg;
    WORD wParamL;
    WORD wParamH;
  } HARDWAREINPUT,*PHARDWAREINPUT,*LPHARDWAREINPUT;





  typedef struct tagINPUT {
    DWORD type;
    union {
      MOUSEINPUT mi;
      KEYBDINPUT ki;
      HARDWAREINPUT hi;
    };
  } INPUT,*PINPUT,*LPINPUT;

  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) SendInput(UINT cInputs,LPINPUT pInputs,int cbSize);

  typedef struct tagLASTINPUTINFO {
    UINT cbSize;
    DWORD dwTime;
  } LASTINPUTINFO,*PLASTINPUTINFO;
# 2468 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetLastInputInfo(PLASTINPUTINFO plii);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) MapVirtualKeyA(UINT uCode,UINT uMapType);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) MapVirtualKeyW(UINT uCode,UINT uMapType);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) MapVirtualKeyExA(UINT uCode,UINT uMapType,HKL dwhkl);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) MapVirtualKeyExW(UINT uCode,UINT uMapType,HKL dwhkl);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetInputState(void);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetQueueStatus(UINT flags);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) GetCapture(void);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) SetCapture(HWND hWnd);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ReleaseCapture(void);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) MsgWaitForMultipleObjects(DWORD nCount,const HANDLE *pHandles,WINBOOL fWaitAll,DWORD dwMilliseconds,DWORD dwWakeMask);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) MsgWaitForMultipleObjectsEx(DWORD nCount,const HANDLE *pHandles,DWORD dwMilliseconds,DWORD dwWakeMask,DWORD dwFlags);
# 2513 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) UINT_PTR __attribute__((__stdcall__)) SetTimer(HWND hWnd,UINT_PTR nIDEvent,UINT uElapse,TIMERPROC lpTimerFunc);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) KillTimer(HWND hWnd,UINT_PTR uIDEvent);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsWindowUnicode(HWND hWnd);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnableWindow(HWND hWnd,WINBOOL bEnable);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsWindowEnabled(HWND hWnd);
  __attribute__((dllimport)) HACCEL __attribute__((__stdcall__)) LoadAcceleratorsA(HINSTANCE hInstance,LPCSTR lpTableName);
  __attribute__((dllimport)) HACCEL __attribute__((__stdcall__)) LoadAcceleratorsW(HINSTANCE hInstance,LPCWSTR lpTableName);
  __attribute__((dllimport)) HACCEL __attribute__((__stdcall__)) CreateAcceleratorTableA(LPACCEL paccel,int cAccel);
  __attribute__((dllimport)) HACCEL __attribute__((__stdcall__)) CreateAcceleratorTableW(LPACCEL paccel,int cAccel);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DestroyAcceleratorTable(HACCEL hAccel);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) CopyAcceleratorTableA(HACCEL hAccelSrc,LPACCEL lpAccelDst,int cAccelEntries);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) CopyAcceleratorTableW(HACCEL hAccelSrc,LPACCEL lpAccelDst,int cAccelEntries);
# 2534 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) int __attribute__((__stdcall__)) TranslateAcceleratorA(HWND hWnd,HACCEL hAccTable,LPMSG lpMsg);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) TranslateAcceleratorW(HWND hWnd,HACCEL hAccTable,LPMSG lpMsg);
# 2638 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetSystemMetrics(int nIndex);
# 2661 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) HMENU __attribute__((__stdcall__)) LoadMenuA(HINSTANCE hInstance,LPCSTR lpMenuName);
  __attribute__((dllimport)) HMENU __attribute__((__stdcall__)) LoadMenuW(HINSTANCE hInstance,LPCWSTR lpMenuName);
  __attribute__((dllimport)) HMENU __attribute__((__stdcall__)) LoadMenuIndirectA(const MENUTEMPLATEA *lpMenuTemplate);
  __attribute__((dllimport)) HMENU __attribute__((__stdcall__)) LoadMenuIndirectW(const MENUTEMPLATEW *lpMenuTemplate);
  __attribute__((dllimport)) HMENU __attribute__((__stdcall__)) GetMenu(HWND hWnd);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetMenu(HWND hWnd,HMENU hMenu);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ChangeMenuA(HMENU hMenu,UINT cmd,LPCSTR lpszNewItem,UINT cmdInsert,UINT flags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ChangeMenuW(HMENU hMenu,UINT cmd,LPCWSTR lpszNewItem,UINT cmdInsert,UINT flags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) HiliteMenuItem(HWND hWnd,HMENU hMenu,UINT uIDHiliteItem,UINT uHilite);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetMenuStringA(HMENU hMenu,UINT uIDItem,LPSTR lpString,int cchMax,UINT flags);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetMenuStringW(HMENU hMenu,UINT uIDItem,LPWSTR lpString,int cchMax,UINT flags);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetMenuState(HMENU hMenu,UINT uId,UINT uFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DrawMenuBar(HWND hWnd);



  __attribute__((dllimport)) HMENU __attribute__((__stdcall__)) GetSystemMenu(HWND hWnd,WINBOOL bRevert);
  __attribute__((dllimport)) HMENU __attribute__((__stdcall__)) CreateMenu(void);
  __attribute__((dllimport)) HMENU __attribute__((__stdcall__)) CreatePopupMenu(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DestroyMenu(HMENU hMenu);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) CheckMenuItem(HMENU hMenu,UINT uIDCheckItem,UINT uCheck);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnableMenuItem(HMENU hMenu,UINT uIDEnableItem,UINT uEnable);
  __attribute__((dllimport)) HMENU __attribute__((__stdcall__)) GetSubMenu(HMENU hMenu,int nPos);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetMenuItemID(HMENU hMenu,int nPos);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetMenuItemCount(HMENU hMenu);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) InsertMenuA(HMENU hMenu,UINT uPosition,UINT uFlags,UINT_PTR uIDNewItem,LPCSTR lpNewItem);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) InsertMenuW(HMENU hMenu,UINT uPosition,UINT uFlags,UINT_PTR uIDNewItem,LPCWSTR lpNewItem);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AppendMenuA(HMENU hMenu,UINT uFlags,UINT_PTR uIDNewItem,LPCSTR lpNewItem);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AppendMenuW(HMENU hMenu,UINT uFlags,UINT_PTR uIDNewItem,LPCWSTR lpNewItem);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ModifyMenuA(HMENU hMnu,UINT uPosition,UINT uFlags,UINT_PTR uIDNewItem,LPCSTR lpNewItem);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ModifyMenuW(HMENU hMnu,UINT uPosition,UINT uFlags,UINT_PTR uIDNewItem,LPCWSTR lpNewItem);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) RemoveMenu(HMENU hMenu,UINT uPosition,UINT uFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DeleteMenu(HMENU hMenu,UINT uPosition,UINT uFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetMenuItemBitmaps(HMENU hMenu,UINT uPosition,UINT uFlags,HBITMAP hBitmapUnchecked,HBITMAP hBitmapChecked);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) GetMenuCheckMarkDimensions(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) TrackPopupMenu(HMENU hMenu,UINT uFlags,int x,int y,int nReserved,HWND hWnd,const RECT *prcRect);






  typedef struct tagTPMPARAMS {
    UINT cbSize;
    RECT rcExclude;
  } TPMPARAMS;

  typedef TPMPARAMS *LPTPMPARAMS;

  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) TrackPopupMenuEx(HMENU,UINT,int,int,HWND,LPTPMPARAMS);
# 2726 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct tagMENUINFO {
    DWORD cbSize;
    DWORD fMask;
    DWORD dwStyle;
    UINT cyMax;
    HBRUSH hbrBack;
    DWORD dwContextHelpID;
    ULONG_PTR dwMenuData;
  } MENUINFO,*LPMENUINFO;

  typedef MENUINFO const *LPCMENUINFO;

  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetMenuInfo(HMENU,LPMENUINFO);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetMenuInfo(HMENU,LPCMENUINFO);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EndMenu(void);




  typedef struct tagMENUGETOBJECTINFO {
    DWORD dwFlags;
    UINT uPos;
    HMENU hmenu;
    PVOID riid;
    PVOID pvObj;
  } MENUGETOBJECTINFO,*PMENUGETOBJECTINFO;
# 2782 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct tagMENUITEMINFOA {
    UINT cbSize;
    UINT fMask;
    UINT fType;
    UINT fState;
    UINT wID;
    HMENU hSubMenu;
    HBITMAP hbmpChecked;
    HBITMAP hbmpUnchecked;
    ULONG_PTR dwItemData;
    LPSTR dwTypeData;
    UINT cch;
    HBITMAP hbmpItem;
  } MENUITEMINFOA,*LPMENUITEMINFOA;

  typedef struct tagMENUITEMINFOW {
    UINT cbSize;
    UINT fMask;
    UINT fType;
    UINT fState;
    UINT wID;
    HMENU hSubMenu;
    HBITMAP hbmpChecked;
    HBITMAP hbmpUnchecked;
    ULONG_PTR dwItemData;
    LPWSTR dwTypeData;
    UINT cch;
    HBITMAP hbmpItem;
  } MENUITEMINFOW,*LPMENUITEMINFOW;





  typedef MENUITEMINFOA MENUITEMINFO;
  typedef LPMENUITEMINFOA LPMENUITEMINFO;

  typedef MENUITEMINFOA const *LPCMENUITEMINFOA;
  typedef MENUITEMINFOW const *LPCMENUITEMINFOW;



  typedef LPCMENUITEMINFOA LPCMENUITEMINFO;
# 2837 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) InsertMenuItemA(HMENU hmenu,UINT item,WINBOOL fByPosition,LPCMENUITEMINFOA lpmi);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) InsertMenuItemW(HMENU hmenu,UINT item,WINBOOL fByPosition,LPCMENUITEMINFOW lpmi);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetMenuItemInfoA(HMENU hmenu,UINT item,WINBOOL fByPosition,LPMENUITEMINFOA lpmii);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetMenuItemInfoW(HMENU hmenu,UINT item,WINBOOL fByPosition,LPMENUITEMINFOW lpmii);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetMenuItemInfoA(HMENU hmenu,UINT item,WINBOOL fByPositon,LPCMENUITEMINFOA lpmii);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetMenuItemInfoW(HMENU hmenu,UINT item,WINBOOL fByPositon,LPCMENUITEMINFOW lpmii);




  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetMenuDefaultItem(HMENU hMenu,UINT fByPos,UINT gmdiFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetMenuDefaultItem(HMENU hMenu,UINT uItem,UINT fByPos);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetMenuItemRect(HWND hWnd,HMENU hMenu,UINT uItem,LPRECT lprcItem);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) MenuItemFromPoint(HWND hWnd,HMENU hMenu,POINT ptScreen);
# 2874 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct tagDROPSTRUCT {
    HWND hwndSource;
    HWND hwndSink;
    DWORD wFmt;
    ULONG_PTR dwData;
    POINT ptDrop;
    DWORD dwControlData;
  } DROPSTRUCT,*PDROPSTRUCT,*LPDROPSTRUCT;
# 2893 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) DragObject(HWND hwndParent,HWND hwndFrom,UINT fmt,ULONG_PTR data,HCURSOR hcur);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DragDetect(HWND hwnd,POINT pt);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DrawIcon(HDC hDC,int X,int Y,HICON hIcon);
# 2925 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct tagDRAWTEXTPARAMS {
    UINT cbSize;
    int iTabLength;
    int iLeftMargin;
    int iRightMargin;
    UINT uiLengthDrawn;
  } DRAWTEXTPARAMS,*LPDRAWTEXTPARAMS;
# 2941 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) int __attribute__((__stdcall__)) DrawTextA(HDC hdc,LPCSTR lpchText,int cchText,LPRECT lprc,UINT format);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) DrawTextW(HDC hdc,LPCWSTR lpchText,int cchText,LPRECT lprc,UINT format);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) DrawTextExA(HDC hdc,LPSTR lpchText,int cchText,LPRECT lprc,UINT format,LPDRAWTEXTPARAMS lpdtp);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) DrawTextExW(HDC hdc,LPWSTR lpchText,int cchText,LPRECT lprc,UINT format,LPDRAWTEXTPARAMS lpdtp);
# 2959 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GrayStringA(HDC hDC,HBRUSH hBrush,GRAYSTRINGPROC lpOutputFunc,LPARAM lpData,int nCount,int X,int Y,int nWidth,int nHeight);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GrayStringW(HDC hDC,HBRUSH hBrush,GRAYSTRINGPROC lpOutputFunc,LPARAM lpData,int nCount,int X,int Y,int nWidth,int nHeight);
# 2976 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DrawStateA(HDC hdc,HBRUSH hbrFore,DRAWSTATEPROC qfnCallBack,LPARAM lData,WPARAM wData,int x,int y,int cx,int cy,UINT uFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DrawStateW(HDC hdc,HBRUSH hbrFore,DRAWSTATEPROC qfnCallBack,LPARAM lData,WPARAM wData,int x,int y,int cx,int cy,UINT uFlags);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) TabbedTextOutA(HDC hdc,int x,int y,LPCSTR lpString,int chCount,int nTabPositions,const INT *lpnTabStopPositions,int nTabOrigin);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) TabbedTextOutW(HDC hdc,int x,int y,LPCWSTR lpString,int chCount,int nTabPositions,const INT *lpnTabStopPositions,int nTabOrigin);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetTabbedTextExtentA(HDC hdc,LPCSTR lpString,int chCount,int nTabPositions,const INT *lpnTabStopPositions);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetTabbedTextExtentW(HDC hdc,LPCWSTR lpString,int chCount,int nTabPositions,const INT *lpnTabStopPositions);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) UpdateWindow(HWND hWnd);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) SetActiveWindow(HWND hWnd);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) GetForegroundWindow(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PaintDesktop(HDC hdc);
  __attribute__((dllimport)) void __attribute__((__stdcall__)) SwitchToThisWindow(HWND hwnd,WINBOOL fUnknown);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetForegroundWindow(HWND hWnd);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AllowSetForegroundWindow(DWORD dwProcessId);



  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) LockSetForegroundWindow(UINT uLockCode);




  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) WindowFromDC(HDC hDC);
  __attribute__((dllimport)) HDC __attribute__((__stdcall__)) GetDC(HWND hWnd);
  __attribute__((dllimport)) HDC __attribute__((__stdcall__)) GetDCEx(HWND hWnd,HRGN hrgnClip,DWORD flags);
# 3015 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) HDC __attribute__((__stdcall__)) GetWindowDC(HWND hWnd);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) ReleaseDC(HWND hWnd,HDC hDC);
  __attribute__((dllimport)) HDC __attribute__((__stdcall__)) BeginPaint(HWND hWnd,LPPAINTSTRUCT lpPaint);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EndPaint(HWND hWnd,const PAINTSTRUCT *lpPaint);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetUpdateRect(HWND hWnd,LPRECT lpRect,WINBOOL bErase);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetUpdateRgn(HWND hWnd,HRGN hRgn,WINBOOL bErase);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) SetWindowRgn(HWND hWnd,HRGN hRgn,WINBOOL bRedraw);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetWindowRgn(HWND hWnd,HRGN hRgn);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetWindowRgnBox(HWND hWnd,LPRECT lprc);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) ExcludeUpdateRgn(HDC hDC,HWND hWnd);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) InvalidateRect(HWND hWnd,const RECT *lpRect,WINBOOL bErase);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ValidateRect(HWND hWnd,const RECT *lpRect);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) InvalidateRgn(HWND hWnd,HRGN hRgn,WINBOOL bErase);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ValidateRgn(HWND hWnd,HRGN hRgn);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) RedrawWindow(HWND hWnd,const RECT *lprcUpdate,HRGN hrgnUpdate,UINT flags);
# 3048 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) LockWindowUpdate(HWND hWndLock);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ScrollWindow(HWND hWnd,int XAmount,int YAmount,const RECT *lpRect,const RECT *lpClipRect);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ScrollDC(HDC hDC,int dx,int dy,const RECT *lprcScroll,const RECT *lprcClip,HRGN hrgnUpdate,LPRECT lprcUpdate);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) ScrollWindowEx(HWND hWnd,int dx,int dy,const RECT *prcScroll,const RECT *prcClip,HRGN hrgnUpdate,LPRECT prcUpdate,UINT flags);







  __attribute__((dllimport)) int __attribute__((__stdcall__)) SetScrollPos(HWND hWnd,int nBar,int nPos,WINBOOL bRedraw);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetScrollPos(HWND hWnd,int nBar);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetScrollRange(HWND hWnd,int nBar,int nMinPos,int nMaxPos,WINBOOL bRedraw);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetScrollRange(HWND hWnd,int nBar,LPINT lpMinPos,LPINT lpMaxPos);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ShowScrollBar(HWND hWnd,int wBar,WINBOOL bShow);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnableScrollBar(HWND hWnd,UINT wSBflags,UINT wArrows);
# 3099 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetPropA(HWND hWnd,LPCSTR lpString,HANDLE hData);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetPropW(HWND hWnd,LPCWSTR lpString,HANDLE hData);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) GetPropA(HWND hWnd,LPCSTR lpString);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) GetPropW(HWND hWnd,LPCWSTR lpString);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) RemovePropA(HWND hWnd,LPCSTR lpString);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) RemovePropW(HWND hWnd,LPCWSTR lpString);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) EnumPropsExA(HWND hWnd,PROPENUMPROCEXA lpEnumFunc,LPARAM lParam);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) EnumPropsExW(HWND hWnd,PROPENUMPROCEXW lpEnumFunc,LPARAM lParam);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) EnumPropsA(HWND hWnd,PROPENUMPROCA lpEnumFunc);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) EnumPropsW(HWND hWnd,PROPENUMPROCW lpEnumFunc);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetWindowTextA(HWND hWnd,LPCSTR lpString);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetWindowTextW(HWND hWnd,LPCWSTR lpString);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetWindowTextA(HWND hWnd,LPSTR lpString,int nMaxCount);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetWindowTextW(HWND hWnd,LPWSTR lpString,int nMaxCount);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetWindowTextLengthA(HWND hWnd);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetWindowTextLengthW(HWND hWnd);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetClientRect(HWND hWnd,LPRECT lpRect);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetWindowRect(HWND hWnd,LPRECT lpRect);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AdjustWindowRect(LPRECT lpRect,DWORD dwStyle,WINBOOL bMenu);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AdjustWindowRectEx(LPRECT lpRect,DWORD dwStyle,WINBOOL bMenu,DWORD dwExStyle);




  typedef struct tagHELPINFO {
    UINT cbSize;
    int iContextType;
    int iCtrlId;
    HANDLE hItemHandle;
    DWORD_PTR dwContextId;
    POINT MousePos;
  } HELPINFO,*LPHELPINFO;

  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetWindowContextHelpId(HWND,DWORD);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetWindowContextHelpId(HWND);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetMenuContextHelpId(HMENU,DWORD);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetMenuContextHelpId(HMENU);
# 3185 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) int __attribute__((__stdcall__)) MessageBoxA(HWND hWnd,LPCSTR lpText,LPCSTR lpCaption,UINT uType);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) MessageBoxW(HWND hWnd,LPCWSTR lpText,LPCWSTR lpCaption,UINT uType);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) MessageBoxExA(HWND hWnd,LPCSTR lpText,LPCSTR lpCaption,UINT uType,WORD wLanguageId);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) MessageBoxExW(HWND hWnd,LPCWSTR lpText,LPCWSTR lpCaption,UINT uType,WORD wLanguageId);

  typedef void (__attribute__((__stdcall__)) *MSGBOXCALLBACK)(LPHELPINFO lpHelpInfo);

  typedef struct tagMSGBOXPARAMSA {
    UINT cbSize;
    HWND hwndOwner;
    HINSTANCE hInstance;
    LPCSTR lpszText;
    LPCSTR lpszCaption;
    DWORD dwStyle;
    LPCSTR lpszIcon;
    DWORD_PTR dwContextHelpId;
    MSGBOXCALLBACK lpfnMsgBoxCallback;
    DWORD dwLanguageId;
  } MSGBOXPARAMSA,*PMSGBOXPARAMSA,*LPMSGBOXPARAMSA;

  typedef struct tagMSGBOXPARAMSW {
    UINT cbSize;
    HWND hwndOwner;
    HINSTANCE hInstance;
    LPCWSTR lpszText;
    LPCWSTR lpszCaption;
    DWORD dwStyle;
    LPCWSTR lpszIcon;
    DWORD_PTR dwContextHelpId;
    MSGBOXCALLBACK lpfnMsgBoxCallback;
    DWORD dwLanguageId;
  } MSGBOXPARAMSW,*PMSGBOXPARAMSW,*LPMSGBOXPARAMSW;






  typedef MSGBOXPARAMSA MSGBOXPARAMS;
  typedef PMSGBOXPARAMSA PMSGBOXPARAMS;
  typedef LPMSGBOXPARAMSA LPMSGBOXPARAMS;
# 3234 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) int __attribute__((__stdcall__)) MessageBoxIndirectA(const MSGBOXPARAMSA *lpmbp);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) MessageBoxIndirectW(const MSGBOXPARAMSW *lpmbp);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) MessageBeep(UINT uType);


  __attribute__((dllimport)) int __attribute__((__stdcall__)) ShowCursor(WINBOOL bShow);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetCursorPos(int X,int Y);
  __attribute__((dllimport)) HCURSOR __attribute__((__stdcall__)) SetCursor(HCURSOR hCursor);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCursorPos(LPPOINT lpPoint);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ClipCursor(const RECT *lpRect);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetClipCursor(LPRECT lpRect);
  __attribute__((dllimport)) HCURSOR __attribute__((__stdcall__)) GetCursor(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CreateCaret(HWND hWnd,HBITMAP hBitmap,int nWidth,int nHeight);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetCaretBlinkTime(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetCaretBlinkTime(UINT uMSeconds);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DestroyCaret(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) HideCaret(HWND hWnd);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ShowCaret(HWND hWnd);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetCaretPos(int X,int Y);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCaretPos(LPPOINT lpPoint);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ClientToScreen(HWND hWnd,LPPOINT lpPoint);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ScreenToClient(HWND hWnd,LPPOINT lpPoint);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) MapWindowPoints(HWND hWndFrom,HWND hWndTo,LPPOINT lpPoints,UINT cPoints);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) WindowFromPoint(POINT Point);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) ChildWindowFromPoint(HWND hWndParent,POINT Point);






  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) ChildWindowFromPointEx(HWND hwnd,POINT pt,UINT flags);
# 3318 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetSysColor(int nIndex);
  __attribute__((dllimport)) HBRUSH __attribute__((__stdcall__)) GetSysColorBrush(int nIndex);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetSysColors(int cElements,const INT *lpaElements,const COLORREF *lpaRgbValues);


  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DrawFocusRect(HDC hDC,const RECT *lprc);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) FillRect(HDC hDC,const RECT *lprc,HBRUSH hbr);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) FrameRect(HDC hDC,const RECT *lprc,HBRUSH hbr);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) InvertRect(HDC hDC,const RECT *lprc);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetRect(LPRECT lprc,int xLeft,int yTop,int xRight,int yBottom);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetRectEmpty(LPRECT lprc);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CopyRect(LPRECT lprcDst,const RECT *lprcSrc);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) InflateRect(LPRECT lprc,int dx,int dy);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IntersectRect(LPRECT lprcDst,const RECT *lprcSrc1,const RECT *lprcSrc2);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) UnionRect(LPRECT lprcDst,const RECT *lprcSrc1,const RECT *lprcSrc2);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SubtractRect(LPRECT lprcDst,const RECT *lprcSrc1,const RECT *lprcSrc2);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) OffsetRect(LPRECT lprc,int dx,int dy);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsRectEmpty(const RECT *lprc);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EqualRect(const RECT *lprc1,const RECT *lprc2);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PtInRect(const RECT *lprc,POINT pt);
# 3349 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WORD __attribute__((__stdcall__)) GetWindowWord(HWND hWnd,int nIndex);
  __attribute__((dllimport)) WORD __attribute__((__stdcall__)) SetWindowWord(HWND hWnd,int nIndex,WORD wNewWord);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) GetWindowLongA(HWND hWnd,int nIndex);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) GetWindowLongW(HWND hWnd,int nIndex);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) SetWindowLongA(HWND hWnd,int nIndex,LONG dwNewLong);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) SetWindowLongW(HWND hWnd,int nIndex,LONG dwNewLong);
# 3394 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WORD __attribute__((__stdcall__)) GetClassWord(HWND hWnd,int nIndex);
  __attribute__((dllimport)) WORD __attribute__((__stdcall__)) SetClassWord(HWND hWnd,int nIndex,WORD wNewWord);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetClassLongA(HWND hWnd,int nIndex);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetClassLongW(HWND hWnd,int nIndex);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) SetClassLongA(HWND hWnd,int nIndex,LONG dwNewLong);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) SetClassLongW(HWND hWnd,int nIndex,LONG dwNewLong);
# 3441 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetProcessDefaultLayout(DWORD *pdwDefaultLayout);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetProcessDefaultLayout(DWORD dwDefaultLayout);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) GetDesktopWindow(void);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) GetParent(HWND hWnd);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) SetParent(HWND hWndChild,HWND hWndNewParent);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumChildWindows(HWND hWndParent,WNDENUMPROC lpEnumFunc,LPARAM lParam);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) FindWindowA(LPCSTR lpClassName,LPCSTR lpWindowName);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) FindWindowW(LPCWSTR lpClassName,LPCWSTR lpWindowName);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) FindWindowExA(HWND hWndParent,HWND hWndChildAfter,LPCSTR lpszClass,LPCSTR lpszWindow);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) FindWindowExW(HWND hWndParent,HWND hWndChildAfter,LPCWSTR lpszClass,LPCWSTR lpszWindow);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) GetShellWindow(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) RegisterShellHookWindow(HWND hwnd);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DeregisterShellHookWindow(HWND hwnd);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumWindows(WNDENUMPROC lpEnumFunc,LPARAM lParam);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumThreadWindows(DWORD dwThreadId,WNDENUMPROC lpfn,LPARAM lParam);



  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetClassNameA(HWND hWnd,LPSTR lpClassName,int nMaxCount);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetClassNameW(HWND hWnd,LPWSTR lpClassName,int nMaxCount);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) GetTopWindow(HWND hWnd);





  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetWindowThreadProcessId(HWND hWnd,LPDWORD lpdwProcessId);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsGUIThread(WINBOOL bConvert);



  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) GetLastActivePopup(HWND hWnd);
# 3483 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) GetWindow(HWND hWnd,UINT uCmd);
# 3495 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) HHOOK __attribute__((__stdcall__)) SetWindowsHookA(int nFilterType,HOOKPROC pfnFilterProc);
  __attribute__((dllimport)) HHOOK __attribute__((__stdcall__)) SetWindowsHookW(int nFilterType,HOOKPROC pfnFilterProc);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) UnhookWindowsHook(int nCode,HOOKPROC pfnFilterProc);
  __attribute__((dllimport)) HHOOK __attribute__((__stdcall__)) SetWindowsHookExA(int idHook,HOOKPROC lpfn,HINSTANCE hmod,DWORD dwThreadId);
  __attribute__((dllimport)) HHOOK __attribute__((__stdcall__)) SetWindowsHookExW(int idHook,HOOKPROC lpfn,HINSTANCE hmod,DWORD dwThreadId);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) UnhookWindowsHookEx(HHOOK hhk);
  __attribute__((dllimport)) LRESULT __attribute__((__stdcall__)) CallNextHookEx(HHOOK hhk,int nCode,WPARAM wParam,LPARAM lParam);
# 3555 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) CheckMenuRadioItem(HMENU hmenu,UINT first,UINT last,UINT check,UINT flags);

  typedef struct {
    WORD versionNumber;
    WORD offset;
  } MENUITEMTEMPLATEHEADER,*PMENUITEMTEMPLATEHEADER;

  typedef struct {
    WORD mtOption;
    WORD mtID;
    WCHAR mtString[1];
  } MENUITEMTEMPLATE,*PMENUITEMTEMPLATE;
# 3606 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) HBITMAP __attribute__((__stdcall__)) LoadBitmapA(HINSTANCE hInstance,LPCSTR lpBitmapName);
  __attribute__((dllimport)) HBITMAP __attribute__((__stdcall__)) LoadBitmapW(HINSTANCE hInstance,LPCWSTR lpBitmapName);
  __attribute__((dllimport)) HCURSOR __attribute__((__stdcall__)) LoadCursorA(HINSTANCE hInstance,LPCSTR lpCursorName);
  __attribute__((dllimport)) HCURSOR __attribute__((__stdcall__)) LoadCursorW(HINSTANCE hInstance,LPCWSTR lpCursorName);
  __attribute__((dllimport)) HCURSOR __attribute__((__stdcall__)) LoadCursorFromFileA(LPCSTR lpFileName);
  __attribute__((dllimport)) HCURSOR __attribute__((__stdcall__)) LoadCursorFromFileW(LPCWSTR lpFileName);
  __attribute__((dllimport)) HCURSOR __attribute__((__stdcall__)) CreateCursor(HINSTANCE hInst,int xHotSpot,int yHotSpot,int nWidth,int nHeight,const void *pvANDPlane,const void *pvXORPlane);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DestroyCursor(HCURSOR hCursor);
# 3634 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetSystemCursor(HCURSOR hcur,DWORD id);

  typedef struct _ICONINFO {
    WINBOOL fIcon;
    DWORD xHotspot;
    DWORD yHotspot;
    HBITMAP hbmMask;
    HBITMAP hbmColor;
  } ICONINFO;
  typedef ICONINFO *PICONINFO;
# 3653 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) HICON __attribute__((__stdcall__)) LoadIconA(HINSTANCE hInstance,LPCSTR lpIconName);
  __attribute__((dllimport)) HICON __attribute__((__stdcall__)) LoadIconW(HINSTANCE hInstance,LPCWSTR lpIconName);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) PrivateExtractIconsA(LPCSTR szFileName,int nIconIndex,int cxIcon,int cyIcon,HICON *phicon,UINT *piconid,UINT nIcons,UINT flags);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) PrivateExtractIconsW(LPCWSTR szFileName,int nIconIndex,int cxIcon,int cyIcon,HICON *phicon,UINT *piconid,UINT nIcons,UINT flags);
  __attribute__((dllimport)) HICON __attribute__((__stdcall__)) CreateIcon(HINSTANCE hInstance,int nWidth,int nHeight,BYTE cPlanes,BYTE cBitsPixel,const BYTE *lpbANDbits,const BYTE *lpbXORbits);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DestroyIcon(HICON hIcon);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) LookupIconIdFromDirectory(PBYTE presbits,WINBOOL fIcon);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) LookupIconIdFromDirectoryEx(PBYTE presbits,WINBOOL fIcon,int cxDesired,int cyDesired,UINT Flags);
  __attribute__((dllimport)) HICON __attribute__((__stdcall__)) CreateIconFromResource(PBYTE presbits,DWORD dwResSize,WINBOOL fIcon,DWORD dwVer);
  __attribute__((dllimport)) HICON __attribute__((__stdcall__)) CreateIconFromResourceEx(PBYTE presbits,DWORD dwResSize,WINBOOL fIcon,DWORD dwVer,int cxDesired,int cyDesired,UINT Flags);

  typedef struct tagCURSORSHAPE {
    int xHotSpot;
    int yHotSpot;
    int cx;
    int cy;
    int cbWidth;
    BYTE Planes;
    BYTE BitsPixel;
  } CURSORSHAPE,*LPCURSORSHAPE;
# 3699 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) LoadImageA(HINSTANCE hInst,LPCSTR name,UINT type,int cx,int cy,UINT fuLoad);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) LoadImageW(HINSTANCE hInst,LPCWSTR name,UINT type,int cx,int cy,UINT fuLoad);
  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CopyImage(HANDLE h,UINT type,int cx,int cy,UINT flags);
# 3710 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DrawIconEx(HDC hdc,int xLeft,int yTop,HICON hIcon,int cxWidth,int cyWidth,UINT istepIfAniCur,HBRUSH hbrFlickerFreeDraw,UINT diFlags);
  __attribute__((dllimport)) HICON __attribute__((__stdcall__)) CreateIconIndirect(PICONINFO piconinfo);
  __attribute__((dllimport)) HICON __attribute__((__stdcall__)) CopyIcon(HICON hIcon);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetIconInfo(HICON hIcon,PICONINFO piconinfo);
# 3815 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) int __attribute__((__stdcall__)) LoadStringA(HINSTANCE hInstance,UINT uID,LPSTR lpBuffer,int cchBufferMax);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) LoadStringW(HINSTANCE hInstance,UINT uID,LPWSTR lpBuffer,int cchBufferMax);
# 4048 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsDialogMessageA(HWND hDlg,LPMSG lpMsg);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsDialogMessageW(HWND hDlg,LPMSG lpMsg);
# 4064 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) MapDialogRect(HWND hDlg,LPRECT lpRect);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) DlgDirListA(HWND hDlg,LPSTR lpPathSpec,int nIDListBox,int nIDStaticPath,UINT uFileType);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) DlgDirListW(HWND hDlg,LPWSTR lpPathSpec,int nIDListBox,int nIDStaticPath,UINT uFileType);
# 4079 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DlgDirSelectExA(HWND hwndDlg,LPSTR lpString,int chCount,int idListBox);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DlgDirSelectExW(HWND hwndDlg,LPWSTR lpString,int chCount,int idListBox);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) DlgDirListComboBoxA(HWND hDlg,LPSTR lpPathSpec,int nIDComboBox,int nIDStaticPath,UINT uFiletype);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) DlgDirListComboBoxW(HWND hDlg,LPWSTR lpPathSpec,int nIDComboBox,int nIDStaticPath,UINT uFiletype);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DlgDirSelectComboBoxExA(HWND hwndDlg,LPSTR lpString,int cchOut,int idComboBox);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) DlgDirSelectComboBoxExW(HWND hwndDlg,LPWSTR lpString,int cchOut,int idComboBox);
# 4317 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct tagSCROLLINFO {
    UINT cbSize;
    UINT fMask;
    int nMin;
    int nMax;
    UINT nPage;
    int nPos;
    int nTrackPos;
  } SCROLLINFO,*LPSCROLLINFO;
  typedef SCROLLINFO const *LPCSCROLLINFO;

  __attribute__((dllimport)) int __attribute__((__stdcall__)) SetScrollInfo(HWND hwnd,int nBar,LPCSCROLLINFO lpsi,WINBOOL redraw);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetScrollInfo(HWND hwnd,int nBar,LPSCROLLINFO lpsi);
# 4342 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct tagMDICREATESTRUCTA {
    LPCSTR szClass;
    LPCSTR szTitle;
    HANDLE hOwner;
    int x;
    int y;
    int cx;
    int cy;
    DWORD style;
    LPARAM lParam;
  } MDICREATESTRUCTA,*LPMDICREATESTRUCTA;

  typedef struct tagMDICREATESTRUCTW {
    LPCWSTR szClass;
    LPCWSTR szTitle;
    HANDLE hOwner;
    int x;
    int y;
    int cx;
    int cy;
    DWORD style;
    LPARAM lParam;
  } MDICREATESTRUCTW,*LPMDICREATESTRUCTW;





  typedef MDICREATESTRUCTA MDICREATESTRUCT;
  typedef LPMDICREATESTRUCTA LPMDICREATESTRUCT;


  typedef struct tagCLIENTCREATESTRUCT {
    HANDLE hWindowMenu;
    UINT idFirstChild;
  } CLIENTCREATESTRUCT,*LPCLIENTCREATESTRUCT;
# 4389 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) LRESULT __attribute__((__stdcall__)) DefFrameProcA(HWND hWnd,HWND hWndMDIClient,UINT uMsg,WPARAM wParam,LPARAM lParam);
  __attribute__((dllimport)) LRESULT __attribute__((__stdcall__)) DefFrameProcW(HWND hWnd,HWND hWndMDIClient,UINT uMsg,WPARAM wParam,LPARAM lParam);
  __attribute__((dllimport)) LRESULT __attribute__((__stdcall__)) DefMDIChildProcA(HWND hWnd,UINT uMsg,WPARAM wParam,LPARAM lParam);
  __attribute__((dllimport)) LRESULT __attribute__((__stdcall__)) DefMDIChildProcW(HWND hWnd,UINT uMsg,WPARAM wParam,LPARAM lParam);


  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) TranslateMDISysAccel(HWND hWndClient,LPMSG lpMsg);


  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) ArrangeIconicWindows(HWND hWnd);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) CreateMDIWindowA(LPCSTR lpClassName,LPCSTR lpWindowName,DWORD dwStyle,int X,int Y,int nWidth,int nHeight,HWND hWndParent,HINSTANCE hInstance,LPARAM lParam);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) CreateMDIWindowW(LPCWSTR lpClassName,LPCWSTR lpWindowName,DWORD dwStyle,int X,int Y,int nWidth,int nHeight,HWND hWndParent,HINSTANCE hInstance,LPARAM lParam);
  __attribute__((dllimport)) WORD __attribute__((__stdcall__)) TileWindows(HWND hwndParent,UINT wHow,const RECT *lpRect,UINT cKids,const HWND *lpKids);
  __attribute__((dllimport)) WORD __attribute__((__stdcall__)) CascadeWindows(HWND hwndParent,UINT wHow,const RECT *lpRect,UINT cKids,const HWND *lpKids);





  typedef DWORD HELPPOLY;
  typedef struct tagMULTIKEYHELPA {
    DWORD mkSize;
    CHAR mkKeylist;
    CHAR szKeyphrase[1];
  } MULTIKEYHELPA,*PMULTIKEYHELPA,*LPMULTIKEYHELPA;

  typedef struct tagMULTIKEYHELPW {
    DWORD mkSize;
    WCHAR mkKeylist;
    WCHAR szKeyphrase[1];
  } MULTIKEYHELPW,*PMULTIKEYHELPW,*LPMULTIKEYHELPW;






  typedef MULTIKEYHELPA MULTIKEYHELP;
  typedef PMULTIKEYHELPA PMULTIKEYHELP;
  typedef LPMULTIKEYHELPA LPMULTIKEYHELP;


  typedef struct tagHELPWININFOA {
    int wStructSize;
    int x;
    int y;
    int dx;
    int dy;
    int wMax;
    CHAR rgchMember[2];
  } HELPWININFOA,*PHELPWININFOA,*LPHELPWININFOA;

  typedef struct tagHELPWININFOW {
    int wStructSize;
    int x;
    int y;
    int dx;
    int dy;
    int wMax;
    WCHAR rgchMember[2];
  } HELPWININFOW,*PHELPWININFOW,*LPHELPWININFOW;






  typedef HELPWININFOA HELPWININFO;
  typedef PHELPWININFOA PHELPWININFO;
  typedef LPHELPWININFOA LPHELPWININFO;
# 4497 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WinHelpA(HWND hWndMain,LPCSTR lpszHelp,UINT uCommand,ULONG_PTR dwData);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WinHelpW(HWND hWndMain,LPCWSTR lpszHelp,UINT uCommand,ULONG_PTR dwData);





  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetGuiResources(HANDLE hProcess,DWORD uiFlags);
# 4697 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct tagNONCLIENTMETRICSA {
    UINT cbSize;
    int iBorderWidth;
    int iScrollWidth;
    int iScrollHeight;
    int iCaptionWidth;
    int iCaptionHeight;
    LOGFONTA lfCaptionFont;
    int iSmCaptionWidth;
    int iSmCaptionHeight;
    LOGFONTA lfSmCaptionFont;
    int iMenuWidth;
    int iMenuHeight;
    LOGFONTA lfMenuFont;
    LOGFONTA lfStatusFont;
    LOGFONTA lfMessageFont;
  } NONCLIENTMETRICSA,*PNONCLIENTMETRICSA,*LPNONCLIENTMETRICSA;

  typedef struct tagNONCLIENTMETRICSW {
    UINT cbSize;
    int iBorderWidth;
    int iScrollWidth;
    int iScrollHeight;
    int iCaptionWidth;
    int iCaptionHeight;
    LOGFONTW lfCaptionFont;
    int iSmCaptionWidth;
    int iSmCaptionHeight;
    LOGFONTW lfSmCaptionFont;
    int iMenuWidth;
    int iMenuHeight;
    LOGFONTW lfMenuFont;
    LOGFONTW lfStatusFont;
    LOGFONTW lfMessageFont;
  } NONCLIENTMETRICSW,*PNONCLIENTMETRICSW,*LPNONCLIENTMETRICSW;






  typedef NONCLIENTMETRICSA NONCLIENTMETRICS;
  typedef PNONCLIENTMETRICSA PNONCLIENTMETRICS;
  typedef LPNONCLIENTMETRICSA LPNONCLIENTMETRICS;
# 4759 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct tagMINIMIZEDMETRICS {
    UINT cbSize;
    int iWidth;
    int iHorzGap;
    int iVertGap;
    int iArrange;
  } MINIMIZEDMETRICS,*PMINIMIZEDMETRICS,*LPMINIMIZEDMETRICS;



  typedef struct tagICONMETRICSA {
    UINT cbSize;
    int iHorzSpacing;
    int iVertSpacing;
    int iTitleWrap;
    LOGFONTA lfFont;
  } ICONMETRICSA,*PICONMETRICSA,*LPICONMETRICSA;

  typedef struct tagICONMETRICSW {
    UINT cbSize;
    int iHorzSpacing;
    int iVertSpacing;
    int iTitleWrap;
    LOGFONTW lfFont;
  } ICONMETRICSW,*PICONMETRICSW,*LPICONMETRICSW;






  typedef ICONMETRICSA ICONMETRICS;
  typedef PICONMETRICSA PICONMETRICS;
  typedef LPICONMETRICSA LPICONMETRICS;




  typedef struct tagANIMATIONINFO {
    UINT cbSize;
    int iMinAnimate;
  } ANIMATIONINFO,*LPANIMATIONINFO;

  typedef struct tagSERIALKEYSA {
    UINT cbSize;
    DWORD dwFlags;
    LPSTR lpszActivePort;
    LPSTR lpszPort;
    UINT iBaudRate;
    UINT iPortState;
    UINT iActive;
  } SERIALKEYSA,*LPSERIALKEYSA;

  typedef struct tagSERIALKEYSW {
    UINT cbSize;
    DWORD dwFlags;
    LPWSTR lpszActivePort;
    LPWSTR lpszPort;
    UINT iBaudRate;
    UINT iPortState;
    UINT iActive;
  } SERIALKEYSW,*LPSERIALKEYSW;





  typedef SERIALKEYSA SERIALKEYS;
  typedef LPSERIALKEYSA LPSERIALKEYS;






  typedef struct tagHIGHCONTRASTA {
    UINT cbSize;
    DWORD dwFlags;
    LPSTR lpszDefaultScheme;
  } HIGHCONTRASTA,*LPHIGHCONTRASTA;

  typedef struct tagHIGHCONTRASTW {
    UINT cbSize;
    DWORD dwFlags;
    LPWSTR lpszDefaultScheme;
  } HIGHCONTRASTW,*LPHIGHCONTRASTW;





  typedef HIGHCONTRASTA HIGHCONTRAST;
  typedef LPHIGHCONTRASTA LPHIGHCONTRAST;
# 4901 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) ChangeDisplaySettingsA(LPDEVMODEA lpDevMode,DWORD dwFlags);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) ChangeDisplaySettingsW(LPDEVMODEW lpDevMode,DWORD dwFlags);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) ChangeDisplaySettingsExA(LPCSTR lpszDeviceName,LPDEVMODEA lpDevMode,HWND hwnd,DWORD dwflags,LPVOID lParam);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) ChangeDisplaySettingsExW(LPCWSTR lpszDeviceName,LPDEVMODEW lpDevMode,HWND hwnd,DWORD dwflags,LPVOID lParam);




  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumDisplaySettingsA(LPCSTR lpszDeviceName,DWORD iModeNum,LPDEVMODEA lpDevMode);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumDisplaySettingsW(LPCWSTR lpszDeviceName,DWORD iModeNum,LPDEVMODEW lpDevMode);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumDisplaySettingsExA(LPCSTR lpszDeviceName,DWORD iModeNum,LPDEVMODEA lpDevMode,DWORD dwFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumDisplaySettingsExW(LPCWSTR lpszDeviceName,DWORD iModeNum,LPDEVMODEW lpDevMode,DWORD dwFlags);



  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumDisplayDevicesA(LPCSTR lpDevice,DWORD iDevNum,PDISPLAY_DEVICEA lpDisplayDevice,DWORD dwFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumDisplayDevicesW(LPCWSTR lpDevice,DWORD iDevNum,PDISPLAY_DEVICEW lpDisplayDevice,DWORD dwFlags);
# 4927 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SystemParametersInfoA(UINT uiAction,UINT uiParam,PVOID pvParam,UINT fWinIni);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SystemParametersInfoW(UINT uiAction,UINT uiParam,PVOID pvParam,UINT fWinIni);


  typedef struct tagFILTERKEYS {
    UINT cbSize;
    DWORD dwFlags;
    DWORD iWaitMSec;
    DWORD iDelayMSec;
    DWORD iRepeatMSec;
    DWORD iBounceMSec;
  } FILTERKEYS,*LPFILTERKEYS;
# 4948 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct tagSTICKYKEYS {
    UINT cbSize;
    DWORD dwFlags;
  } STICKYKEYS,*LPSTICKYKEYS;
# 4979 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct tagMOUSEKEYS {
    UINT cbSize;
    DWORD dwFlags;
    DWORD iMaxSpeed;
    DWORD iTimeToMaxSpeed;
    DWORD iCtrlSpeed;
    DWORD dwReserved1;
    DWORD dwReserved2;
  } MOUSEKEYS,*LPMOUSEKEYS;
# 5003 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct tagACCESSTIMEOUT {
    UINT cbSize;
    DWORD dwFlags;
    DWORD iTimeOutMSec;
  } ACCESSTIMEOUT,*LPACCESSTIMEOUT;
# 5026 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct tagSOUNDSENTRYA {
    UINT cbSize;
    DWORD dwFlags;
    DWORD iFSTextEffect;
    DWORD iFSTextEffectMSec;
    DWORD iFSTextEffectColorBits;
    DWORD iFSGrafEffect;
    DWORD iFSGrafEffectMSec;
    DWORD iFSGrafEffectColor;
    DWORD iWindowsEffect;
    DWORD iWindowsEffectMSec;
    LPSTR lpszWindowsEffectDLL;
    DWORD iWindowsEffectOrdinal;
  } SOUNDSENTRYA,*LPSOUNDSENTRYA;

  typedef struct tagSOUNDSENTRYW {
    UINT cbSize;
    DWORD dwFlags;
    DWORD iFSTextEffect;
    DWORD iFSTextEffectMSec;
    DWORD iFSTextEffectColorBits;
    DWORD iFSGrafEffect;
    DWORD iFSGrafEffectMSec;
    DWORD iFSGrafEffectColor;
    DWORD iWindowsEffect;
    DWORD iWindowsEffectMSec;
    LPWSTR lpszWindowsEffectDLL;
    DWORD iWindowsEffectOrdinal;
  } SOUNDSENTRYW,*LPSOUNDSENTRYW;





  typedef SOUNDSENTRYA SOUNDSENTRY;
  typedef LPSOUNDSENTRYA LPSOUNDSENTRY;






  typedef struct tagTOGGLEKEYS {
    UINT cbSize;
    DWORD dwFlags;
  } TOGGLEKEYS,*LPTOGGLEKEYS;
# 5080 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) void __attribute__((__stdcall__)) SetDebugErrorLevel(DWORD dwLevel);





  __attribute__((dllimport)) void __attribute__((__stdcall__)) SetLastErrorEx(DWORD dwErrCode,DWORD dwType);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) InternalGetWindowText(HWND hWnd,LPWSTR pString,int cchMaxCount);
# 5097 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) HMONITOR __attribute__((__stdcall__)) MonitorFromPoint(POINT pt,DWORD dwFlags);
  __attribute__((dllimport)) HMONITOR __attribute__((__stdcall__)) MonitorFromRect(LPCRECT lprc,DWORD dwFlags);
  __attribute__((dllimport)) HMONITOR __attribute__((__stdcall__)) MonitorFromWindow(HWND hwnd,DWORD dwFlags);







  typedef struct tagMONITORINFO {
    DWORD cbSize;
    RECT rcMonitor;
    RECT rcWork;
    DWORD dwFlags;
  } MONITORINFO,*LPMONITORINFO;
# 5131 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct tagMONITORINFOEXA {
    MONITORINFO mi;
    CHAR szDevice[32];
  } MONITORINFOEXA,*LPMONITORINFOEXA;

  typedef struct tagMONITORINFOEXW {
    MONITORINFO mi;
    WCHAR szDevice[32];
  } MONITORINFOEXW,*LPMONITORINFOEXW;




  typedef MONITORINFOEXA MONITORINFOEX;
  typedef LPMONITORINFOEXA LPMONITORINFOEX;
# 5155 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetMonitorInfoA(HMONITOR hMonitor,LPMONITORINFO lpmi);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetMonitorInfoW(HMONITOR hMonitor,LPMONITORINFO lpmi);

  typedef WINBOOL (__attribute__((__stdcall__)) *MONITORENUMPROC)(HMONITOR,HDC,LPRECT,LPARAM);

  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumDisplayMonitors(HDC hdc,LPCRECT lprcClip,MONITORENUMPROC lpfnEnum,LPARAM dwData);


  __attribute__((dllimport)) void __attribute__((__stdcall__)) NotifyWinEvent(DWORD event,HWND hwnd,LONG idObject,LONG idChild);

  typedef void (__attribute__((__stdcall__)) *WINEVENTPROC)(HWINEVENTHOOK hWinEventHook,DWORD event,HWND hwnd,LONG idObject,LONG idChild,DWORD idEventThread,DWORD dwmsEventTime);

  __attribute__((dllimport)) HWINEVENTHOOK __attribute__((__stdcall__)) SetWinEventHook(DWORD eventMin,DWORD eventMax,HMODULE hmodWinEventProc,WINEVENTPROC pfnWinEventProc,DWORD idProcess,DWORD idThread,DWORD dwFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsWinEventHookInstalled(DWORD event);






  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) UnhookWinEvent(HWINEVENTHOOK hWinEventHook);
# 5285 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct tagGUITHREADINFO {
    DWORD cbSize;
    DWORD flags;
    HWND hwndActive;
    HWND hwndFocus;
    HWND hwndCapture;
    HWND hwndMenuOwner;
    HWND hwndMoveSize;
    HWND hwndCaret;
    RECT rcCaret;
  } GUITHREADINFO,*PGUITHREADINFO,*LPGUITHREADINFO;
# 5310 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetGUIThreadInfo(DWORD idThread,PGUITHREADINFO pgui);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetWindowModuleFileNameA(HWND hwnd,LPSTR pszFileName,UINT cchFileNameMax);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetWindowModuleFileNameW(HWND hwnd,LPWSTR pszFileName,UINT cchFileNameMax);
# 5352 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct tagCURSORINFO {
    DWORD cbSize;
    DWORD flags;
    HCURSOR hCursor;
    POINT ptScreenPos;
  } CURSORINFO,*PCURSORINFO,*LPCURSORINFO;



  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCursorInfo(PCURSORINFO pci);

  typedef struct tagWINDOWINFO {
    DWORD cbSize;
    RECT rcWindow;
    RECT rcClient;
    DWORD dwStyle;
    DWORD dwExStyle;
    DWORD dwWindowStatus;
    UINT cxWindowBorders;
    UINT cyWindowBorders;
    ATOM atomWindowType;
    WORD wCreatorVersion;
  } WINDOWINFO,*PWINDOWINFO,*LPWINDOWINFO;



  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetWindowInfo(HWND hwnd,PWINDOWINFO pwi);

  typedef struct tagTITLEBARINFO {
    DWORD cbSize;
    RECT rcTitleBar;
    DWORD rgstate[5 + 1];
  } TITLEBARINFO,*PTITLEBARINFO,*LPTITLEBARINFO;

  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetTitleBarInfo(HWND hwnd,PTITLEBARINFO pti);

  typedef struct tagMENUBARINFO {
    DWORD cbSize;
    RECT rcBar;
    HMENU hMenu;
    HWND hwndMenu;
    WINBOOL fBarFocused:1;
    WINBOOL fFocused:1;
  } MENUBARINFO,*PMENUBARINFO,*LPMENUBARINFO;

  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetMenuBarInfo(HWND hwnd,LONG idObject,LONG idItem,PMENUBARINFO pmbi);

  typedef struct tagSCROLLBARINFO {
    DWORD cbSize;
    RECT rcScrollBar;
    int dxyLineButton;
    int xyThumbTop;
    int xyThumbBottom;
    int reserved;
    DWORD rgstate[5 + 1];
  } SCROLLBARINFO,*PSCROLLBARINFO,*LPSCROLLBARINFO;

  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetScrollBarInfo(HWND hwnd,LONG idObject,PSCROLLBARINFO psbi);

  typedef struct tagCOMBOBOXINFO {
    DWORD cbSize;
    RECT rcItem;
    RECT rcButton;
    DWORD stateButton;
    HWND hwndCombo;
    HWND hwndItem;
    HWND hwndList;
  } COMBOBOXINFO,*PCOMBOBOXINFO,*LPCOMBOBOXINFO;

  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetComboBoxInfo(HWND hwndCombo,PCOMBOBOXINFO pcbi);





  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) GetAncestor(HWND hwnd,UINT gaFlags);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) RealChildWindowFromPoint(HWND hwndParent,POINT ptParentClientCoords);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) RealGetWindowClassA(HWND hwnd,LPSTR ptszClassName,UINT cchClassNameMax);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) RealGetWindowClassW(HWND hwnd,LPWSTR ptszClassName,UINT cchClassNameMax);






  typedef struct tagALTTABINFO {
    DWORD cbSize;
    int cItems;
    int cColumns;
    int cRows;
    int iColFocus;
    int iRowFocus;
    int cxItem;
    int cyItem;
    POINT ptStart;
  } ALTTABINFO,*PALTTABINFO,*LPALTTABINFO;







  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetAltTabInfoA(HWND hwnd,int iItem,PALTTABINFO pati,LPSTR pszItemText,UINT cchItemText);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetAltTabInfoW(HWND hwnd,int iItem,PALTTABINFO pati,LPWSTR pszItemText,UINT cchItemText);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetListBoxInfo(HWND hwnd);


  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) LockWorkStation(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) UserHandleGrantAccess(HANDLE hUserHandle,HANDLE hJob,WINBOOL bGrant);

  struct HRAWINPUT__ { int unused; }; typedef struct HRAWINPUT__ *HRAWINPUT;






  typedef struct tagRAWINPUTHEADER {
    DWORD dwType;
    DWORD dwSize;
    HANDLE hDevice;
    WPARAM wParam;
  } RAWINPUTHEADER,*PRAWINPUTHEADER,*LPRAWINPUTHEADER;





  typedef struct tagRAWMOUSE {
    USHORT usFlags;
    union {
      ULONG ulButtons;
      struct {
	USHORT usButtonFlags;
	USHORT usButtonData;
      };
    };
    ULONG ulRawButtons;
    LONG lLastX;
    LONG lLastY;
    ULONG ulExtraInformation;
  } RAWMOUSE,*PRAWMOUSE,*LPRAWMOUSE;
# 5522 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct tagRAWKEYBOARD {
    USHORT MakeCode;
    USHORT Flags;
    USHORT Reserved;
    USHORT VKey;
    UINT Message;
    ULONG ExtraInformation;
  } RAWKEYBOARD,*PRAWKEYBOARD,*LPRAWKEYBOARD;
# 5540 "../tinyccbinary/win32/include/winapi/winuser.h"
  typedef struct tagRAWHID {
    DWORD dwSizeHid;
    DWORD dwCount;
    BYTE bRawData[1];
  } RAWHID,*PRAWHID,*LPRAWHID;

  typedef struct tagRAWINPUT {
    RAWINPUTHEADER header;
    union {
      RAWMOUSE mouse;
      RAWKEYBOARD keyboard;
      RAWHID hid;
    } data;
  } RAWINPUT,*PRAWINPUT,*LPRAWINPUT;
# 5566 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetRawInputData(HRAWINPUT hRawInput,UINT uiCommand,LPVOID pData,PUINT pcbSize,UINT cbSizeHeader);





  typedef struct tagRID_DEVICE_INFO_MOUSE {
    DWORD dwId;
    DWORD dwNumberOfButtons;
    DWORD dwSampleRate;
  } RID_DEVICE_INFO_MOUSE,*PRID_DEVICE_INFO_MOUSE;

  typedef struct tagRID_DEVICE_INFO_KEYBOARD {
    DWORD dwType;
    DWORD dwSubType;
    DWORD dwKeyboardMode;
    DWORD dwNumberOfFunctionKeys;
    DWORD dwNumberOfIndicators;
    DWORD dwNumberOfKeysTotal;
  } RID_DEVICE_INFO_KEYBOARD,*PRID_DEVICE_INFO_KEYBOARD;

  typedef struct tagRID_DEVICE_INFO_HID {
    DWORD dwVendorId;
    DWORD dwProductId;
    DWORD dwVersionNumber;
    USHORT usUsagePage;
    USHORT usUsage;
  } RID_DEVICE_INFO_HID,*PRID_DEVICE_INFO_HID;

  typedef struct tagRID_DEVICE_INFO {
    DWORD cbSize;
    DWORD dwType;
    union {
      RID_DEVICE_INFO_MOUSE mouse;
      RID_DEVICE_INFO_KEYBOARD keyboard;
      RID_DEVICE_INFO_HID hid;
    };
  } RID_DEVICE_INFO,*PRID_DEVICE_INFO,*LPRID_DEVICE_INFO;







  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetRawInputDeviceInfoA(HANDLE hDevice,UINT uiCommand,LPVOID pData,PUINT pcbSize);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetRawInputDeviceInfoW(HANDLE hDevice,UINT uiCommand,LPVOID pData,PUINT pcbSize);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetRawInputBuffer(PRAWINPUT pData,PUINT pcbSize,UINT cbSizeHeader);

  typedef struct tagRAWINPUTDEVICE {
    USHORT usUsagePage;
    USHORT usUsage;
    DWORD dwFlags;
    HWND hwndTarget;
  } RAWINPUTDEVICE,*PRAWINPUTDEVICE,*LPRAWINPUTDEVICE;

  typedef const RAWINPUTDEVICE *PCRAWINPUTDEVICE;
# 5635 "../tinyccbinary/win32/include/winapi/winuser.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) RegisterRawInputDevices(PCRAWINPUTDEVICE pRawInputDevices,UINT uiNumDevices,UINT cbSize);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetRegisteredRawInputDevices(PRAWINPUTDEVICE pRawInputDevices,PUINT puiNumDevices,UINT cbSize);

  typedef struct tagRAWINPUTDEVICELIST {
    HANDLE hDevice;
    DWORD dwType;
  } RAWINPUTDEVICELIST,*PRAWINPUTDEVICELIST;

  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetRawInputDeviceList(PRAWINPUTDEVICELIST pRawInputDeviceList,PUINT puiNumDevices,UINT cbSize);
  __attribute__((dllimport)) LRESULT __attribute__((__stdcall__)) DefRawInputProc(PRAWINPUT *paRawInput,INT nInput,UINT cbSizeHeader);
# 70 "../tinyccbinary/win32/include/winapi/windows.h" 2
# 1 "../tinyccbinary/win32/include/winapi/winnls.h" 1
# 467 "../tinyccbinary/win32/include/winapi/winnls.h"
  typedef DWORD LGRPID;
  typedef DWORD LCTYPE;
  typedef DWORD CALTYPE;
  typedef DWORD CALID;

  typedef struct _cpinfo {
    UINT MaxCharSize;
    BYTE DefaultChar[2];
    BYTE LeadByte[12];
  } CPINFO,*LPCPINFO;

  typedef struct _cpinfoexA {
    UINT MaxCharSize;
    BYTE DefaultChar[2];
    BYTE LeadByte[12];
    WCHAR UnicodeDefaultChar;
    UINT CodePage;
    CHAR CodePageName[260];
  } CPINFOEXA,*LPCPINFOEXA;

  typedef struct _cpinfoexW {
    UINT MaxCharSize;
    BYTE DefaultChar[2];
    BYTE LeadByte[12];
    WCHAR UnicodeDefaultChar;
    UINT CodePage;
    WCHAR CodePageName[260];
  } CPINFOEXW,*LPCPINFOEXW;





  typedef CPINFOEXA CPINFOEX;
  typedef LPCPINFOEXA LPCPINFOEX;


  typedef struct _numberfmtA {
    UINT NumDigits;
    UINT LeadingZero;
    UINT Grouping;
    LPSTR lpDecimalSep;
    LPSTR lpThousandSep;
    UINT NegativeOrder;
  } NUMBERFMTA,*LPNUMBERFMTA;

  typedef struct _numberfmtW {
    UINT NumDigits;
    UINT LeadingZero;
    UINT Grouping;
    LPWSTR lpDecimalSep;
    LPWSTR lpThousandSep;
    UINT NegativeOrder;
  } NUMBERFMTW,*LPNUMBERFMTW;





  typedef NUMBERFMTA NUMBERFMT;
  typedef LPNUMBERFMTA LPNUMBERFMT;


  typedef struct _currencyfmtA {
    UINT NumDigits;
    UINT LeadingZero;
    UINT Grouping;
    LPSTR lpDecimalSep;
    LPSTR lpThousandSep;
    UINT NegativeOrder;
    UINT PositiveOrder;
    LPSTR lpCurrencySymbol;
  } CURRENCYFMTA,*LPCURRENCYFMTA;

  typedef struct _currencyfmtW {
    UINT NumDigits;
    UINT LeadingZero;
    UINT Grouping;
    LPWSTR lpDecimalSep;
    LPWSTR lpThousandSep;
    UINT NegativeOrder;
    UINT PositiveOrder;
    LPWSTR lpCurrencySymbol;
  } CURRENCYFMTW,*LPCURRENCYFMTW;





  typedef CURRENCYFMTA CURRENCYFMT;
  typedef LPCURRENCYFMTA LPCURRENCYFMT;


  enum SYSNLS_FUNCTION {
    COMPARE_STRING = 0x0001
  };

  typedef DWORD NLS_FUNCTION;

  typedef struct _nlsversioninfo{
    DWORD dwNLSVersionInfoSize;
    DWORD dwNLSVersion;
    DWORD dwDefinedVersion;
  } NLSVERSIONINFO,*LPNLSVERSIONINFO;

  typedef LONG GEOID;
  typedef DWORD GEOTYPE;
  typedef DWORD GEOCLASS;



  enum SYSGEOTYPE {
    GEO_NATION = 0x0001,GEO_LATITUDE = 0x0002,GEO_LONGITUDE = 0x0003,GEO_ISO2 = 0x0004,GEO_ISO3 = 0x0005,GEO_RFC1766 = 0x0006,GEO_LCID = 0x0007,
    GEO_FRIENDLYNAME= 0x0008,GEO_OFFICIALNAME= 0x0009,GEO_TIMEZONES = 0x000A,GEO_OFFICIALLANGUAGES = 0x000B
  };

  enum SYSGEOCLASS {
    GEOCLASS_NATION = 16,GEOCLASS_REGION = 14
  };

  typedef enum  _NORM_FORM  {
  NormalizationOther   = 0,
  NormalizationC       = 0x1,
  NormalizationD       = 0x2,
  NormalizationKC      = 0x5,
  NormalizationKD      = 0x6
} NORM_FORM;

  typedef WINBOOL (__attribute__((__stdcall__)) *LANGUAGEGROUP_ENUMPROCA)(LGRPID,LPSTR,LPSTR,DWORD,LONG_PTR);
  typedef WINBOOL (__attribute__((__stdcall__)) *LANGGROUPLOCALE_ENUMPROCA)(LGRPID,LCID,LPSTR,LONG_PTR);
  typedef WINBOOL (__attribute__((__stdcall__)) *UILANGUAGE_ENUMPROCA)(LPSTR,LONG_PTR);
  typedef WINBOOL (__attribute__((__stdcall__)) *LOCALE_ENUMPROCA)(LPSTR);
  typedef WINBOOL (__attribute__((__stdcall__)) *CODEPAGE_ENUMPROCA)(LPSTR);
  typedef WINBOOL (__attribute__((__stdcall__)) *DATEFMT_ENUMPROCA)(LPSTR);
  typedef WINBOOL (__attribute__((__stdcall__)) *DATEFMT_ENUMPROCEXA)(LPSTR,CALID);
  typedef WINBOOL (__attribute__((__stdcall__)) *TIMEFMT_ENUMPROCA)(LPSTR);
  typedef WINBOOL (__attribute__((__stdcall__)) *CALINFO_ENUMPROCA)(LPSTR);
  typedef WINBOOL (__attribute__((__stdcall__)) *CALINFO_ENUMPROCEXA)(LPSTR,CALID);
  typedef WINBOOL (__attribute__((__stdcall__)) *LANGUAGEGROUP_ENUMPROCW)(LGRPID,LPWSTR,LPWSTR,DWORD,LONG_PTR);
  typedef WINBOOL (__attribute__((__stdcall__)) *LANGGROUPLOCALE_ENUMPROCW)(LGRPID,LCID,LPWSTR,LONG_PTR);
  typedef WINBOOL (__attribute__((__stdcall__)) *UILANGUAGE_ENUMPROCW)(LPWSTR,LONG_PTR);
  typedef WINBOOL (__attribute__((__stdcall__)) *LOCALE_ENUMPROCW)(LPWSTR);
  typedef WINBOOL (__attribute__((__stdcall__)) *CODEPAGE_ENUMPROCW)(LPWSTR);
  typedef WINBOOL (__attribute__((__stdcall__)) *DATEFMT_ENUMPROCW)(LPWSTR);
  typedef WINBOOL (__attribute__((__stdcall__)) *DATEFMT_ENUMPROCEXW)(LPWSTR,CALID);
  typedef WINBOOL (__attribute__((__stdcall__)) *TIMEFMT_ENUMPROCW)(LPWSTR);
  typedef WINBOOL (__attribute__((__stdcall__)) *CALINFO_ENUMPROCW)(LPWSTR);
  typedef WINBOOL (__attribute__((__stdcall__)) *CALINFO_ENUMPROCEXW)(LPWSTR,CALID);
  typedef WINBOOL (__attribute__((__stdcall__)) *GEO_ENUMPROC)(GEOID);
# 693 "../tinyccbinary/win32/include/winapi/winnls.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsValidCodePage(UINT CodePage);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetACP(void);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetOEMCP(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCPInfo(UINT CodePage,LPCPINFO lpCPInfo);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCPInfoExA(UINT CodePage,DWORD dwFlags,LPCPINFOEXA lpCPInfoEx);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCPInfoExW(UINT CodePage,DWORD dwFlags,LPCPINFOEXW lpCPInfoEx);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsDBCSLeadByte(BYTE TestChar);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsDBCSLeadByteEx(UINT CodePage,BYTE TestChar);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) MultiByteToWideChar(UINT CodePage,DWORD dwFlags,LPCSTR lpMultiByteStr,int cbMultiByte,LPWSTR lpWideCharStr,int cchWideChar);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) WideCharToMultiByte(UINT CodePage,DWORD dwFlags,LPCWSTR lpWideCharStr,int cchWideChar,LPSTR lpMultiByteStr,int cbMultiByte,LPCSTR lpDefaultChar,LPBOOL lpUsedDefaultChar);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) CompareStringA(LCID Locale,DWORD dwCmpFlags,LPCSTR lpString1,int cchCount1,LPCSTR lpString2,int cchCount2);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) CompareStringW(LCID Locale,DWORD dwCmpFlags,LPCWSTR lpString1,int cchCount1,LPCWSTR lpString2,int cchCount2);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) LCMapStringA(LCID Locale,DWORD dwMapFlags,LPCSTR lpSrcStr,int cchSrc,LPSTR lpDestStr,int cchDest);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) LCMapStringW(LCID Locale,DWORD dwMapFlags,LPCWSTR lpSrcStr,int cchSrc,LPWSTR lpDestStr,int cchDest);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetLocaleInfoA(LCID Locale,LCTYPE LCType,LPSTR lpLCData,int cchData);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetLocaleInfoW(LCID Locale,LCTYPE LCType,LPWSTR lpLCData,int cchData);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetLocaleInfoA(LCID Locale,LCTYPE LCType,LPCSTR lpLCData);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetLocaleInfoW(LCID Locale,LCTYPE LCType,LPCWSTR lpLCData);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetCalendarInfoA(LCID Locale,CALID Calendar,CALTYPE CalType,LPSTR lpCalData,int cchData,LPDWORD lpValue);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetCalendarInfoW(LCID Locale,CALID Calendar,CALTYPE CalType,LPWSTR lpCalData,int cchData,LPDWORD lpValue);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetCalendarInfoA(LCID Locale,CALID Calendar,CALTYPE CalType,LPCSTR lpCalData);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetCalendarInfoW(LCID Locale,CALID Calendar,CALTYPE CalType,LPCWSTR lpCalData);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetTimeFormatA(LCID Locale,DWORD dwFlags,const SYSTEMTIME *lpTime,LPCSTR lpFormat,LPSTR lpTimeStr,int cchTime);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetTimeFormatW(LCID Locale,DWORD dwFlags,const SYSTEMTIME *lpTime,LPCWSTR lpFormat,LPWSTR lpTimeStr,int cchTime);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetDateFormatA(LCID Locale,DWORD dwFlags,const SYSTEMTIME *lpDate,LPCSTR lpFormat,LPSTR lpDateStr,int cchDate);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetDateFormatW(LCID Locale,DWORD dwFlags,const SYSTEMTIME *lpDate,LPCWSTR lpFormat,LPWSTR lpDateStr,int cchDate);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetNumberFormatA(LCID Locale,DWORD dwFlags,LPCSTR lpValue,const NUMBERFMTA *lpFormat,LPSTR lpNumberStr,int cchNumber);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetNumberFormatW(LCID Locale,DWORD dwFlags,LPCWSTR lpValue,const NUMBERFMTW *lpFormat,LPWSTR lpNumberStr,int cchNumber);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetCurrencyFormatA(LCID Locale,DWORD dwFlags,LPCSTR lpValue,const CURRENCYFMTA *lpFormat,LPSTR lpCurrencyStr,int cchCurrency);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetCurrencyFormatW(LCID Locale,DWORD dwFlags,LPCWSTR lpValue,const CURRENCYFMTW *lpFormat,LPWSTR lpCurrencyStr,int cchCurrency);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumCalendarInfoA(CALINFO_ENUMPROCA lpCalInfoEnumProc,LCID Locale,CALID Calendar,CALTYPE CalType);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumCalendarInfoW(CALINFO_ENUMPROCW lpCalInfoEnumProc,LCID Locale,CALID Calendar,CALTYPE CalType);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumCalendarInfoExA(CALINFO_ENUMPROCEXA lpCalInfoEnumProcEx,LCID Locale,CALID Calendar,CALTYPE CalType);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumCalendarInfoExW(CALINFO_ENUMPROCEXW lpCalInfoEnumProcEx,LCID Locale,CALID Calendar,CALTYPE CalType);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumTimeFormatsA(TIMEFMT_ENUMPROCA lpTimeFmtEnumProc,LCID Locale,DWORD dwFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumTimeFormatsW(TIMEFMT_ENUMPROCW lpTimeFmtEnumProc,LCID Locale,DWORD dwFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumDateFormatsA(DATEFMT_ENUMPROCA lpDateFmtEnumProc,LCID Locale,DWORD dwFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumDateFormatsW(DATEFMT_ENUMPROCW lpDateFmtEnumProc,LCID Locale,DWORD dwFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumDateFormatsExA(DATEFMT_ENUMPROCEXA lpDateFmtEnumProcEx,LCID Locale,DWORD dwFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumDateFormatsExW(DATEFMT_ENUMPROCEXW lpDateFmtEnumProcEx,LCID Locale,DWORD dwFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsValidLanguageGroup(LGRPID LanguageGroup,DWORD dwFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetNLSVersion(NLS_FUNCTION Function,LCID Locale,LPNLSVERSIONINFO lpVersionInformation);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsNLSDefinedString(NLS_FUNCTION Function,DWORD dwFlags,LPNLSVERSIONINFO lpVersionInformation,LPCWSTR lpString,INT cchStr);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsValidLocale(LCID Locale,DWORD dwFlags);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetGeoInfoA(GEOID Location,GEOTYPE GeoType,LPSTR lpGeoData,int cchData,LANGID LangId);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) GetGeoInfoW(GEOID Location,GEOTYPE GeoType,LPWSTR lpGeoData,int cchData,LANGID LangId);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumSystemGeoID(GEOCLASS GeoClass,GEOID ParentGeoId,GEO_ENUMPROC lpGeoEnumProc);
  __attribute__((dllimport)) GEOID __attribute__((__stdcall__)) GetUserGeoID(GEOCLASS GeoClass);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetUserGeoID(GEOID GeoId);
  __attribute__((dllimport)) LCID __attribute__((__stdcall__)) ConvertDefaultLocale(LCID Locale);
  __attribute__((dllimport)) LCID __attribute__((__stdcall__)) GetThreadLocale(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetThreadLocale(LCID Locale);
  __attribute__((dllimport)) LANGID __attribute__((__stdcall__)) GetSystemDefaultUILanguage(void);
  __attribute__((dllimport)) LANGID __attribute__((__stdcall__)) GetUserDefaultUILanguage(void);
  __attribute__((dllimport)) LANGID __attribute__((__stdcall__)) GetSystemDefaultLangID(void);
  __attribute__((dllimport)) LANGID __attribute__((__stdcall__)) GetUserDefaultLangID(void);
  __attribute__((dllimport)) LCID __attribute__((__stdcall__)) GetSystemDefaultLCID(void);
  __attribute__((dllimport)) LCID __attribute__((__stdcall__)) GetUserDefaultLCID(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetStringTypeExA(LCID Locale,DWORD dwInfoType,LPCSTR lpSrcStr,int cchSrc,LPWORD lpCharType);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetStringTypeExW(LCID Locale,DWORD dwInfoType,LPCWSTR lpSrcStr,int cchSrc,LPWORD lpCharType);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetStringTypeA(LCID Locale,DWORD dwInfoType,LPCSTR lpSrcStr,int cchSrc,LPWORD lpCharType);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetStringTypeW(DWORD dwInfoType,LPCWSTR lpSrcStr,int cchSrc,LPWORD lpCharType);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) FoldStringA(DWORD dwMapFlags,LPCSTR lpSrcStr,int cchSrc,LPSTR lpDestStr,int cchDest);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) FoldStringW(DWORD dwMapFlags,LPCWSTR lpSrcStr,int cchSrc,LPWSTR lpDestStr,int cchDest);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumSystemLanguageGroupsA(LANGUAGEGROUP_ENUMPROCA lpLanguageGroupEnumProc,DWORD dwFlags,LONG_PTR lParam);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumSystemLanguageGroupsW(LANGUAGEGROUP_ENUMPROCW lpLanguageGroupEnumProc,DWORD dwFlags,LONG_PTR lParam);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumLanguageGroupLocalesA(LANGGROUPLOCALE_ENUMPROCA lpLangGroupLocaleEnumProc,LGRPID LanguageGroup,DWORD dwFlags,LONG_PTR lParam);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumLanguageGroupLocalesW(LANGGROUPLOCALE_ENUMPROCW lpLangGroupLocaleEnumProc,LGRPID LanguageGroup,DWORD dwFlags,LONG_PTR lParam);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumUILanguagesA(UILANGUAGE_ENUMPROCA lpUILanguageEnumProc,DWORD dwFlags,LONG_PTR lParam);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumUILanguagesW(UILANGUAGE_ENUMPROCW lpUILanguageEnumProc,DWORD dwFlags,LONG_PTR lParam);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumSystemLocalesA(LOCALE_ENUMPROCA lpLocaleEnumProc,DWORD dwFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumSystemLocalesW(LOCALE_ENUMPROCW lpLocaleEnumProc,DWORD dwFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumSystemCodePagesA(CODEPAGE_ENUMPROCA lpCodePageEnumProc,DWORD dwFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) EnumSystemCodePagesW(CODEPAGE_ENUMPROCW lpCodePageEnumProc,DWORD dwFlags);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) IsNormalizedString(NORM_FORM NormForm,LPCWSTR lpString,int cwLength);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) NormalizeString(NORM_FORM NormForm,LPCWSTR lpSrcString,int cwSrcLength,LPWSTR lpDstString,int cwDstLength);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) IdnToAscii(DWORD dwFlags,LPCWSTR lpUnicodeCharStr,int cchUnicodeChar,LPWSTR lpASCIICharStr,int cchASCIIChar);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) IdnToNameprepUnicode(DWORD dwFlags,LPCWSTR lpUnicodeCharStr,int cchUnicodeChar,LPWSTR lpNameprepCharStr,int cchNameprepChar);
  __attribute__((dllimport)) int __attribute__((__stdcall__)) IdnToUnicode(DWORD dwFlags,LPCWSTR lpASCIICharStr,int cchASCIIChar,LPWSTR lpUnicodeCharStr,int cchUnicodeChar);
# 71 "../tinyccbinary/win32/include/winapi/windows.h" 2
# 1 "../tinyccbinary/win32/include/winapi/wincon.h" 1
# 13 "../tinyccbinary/win32/include/winapi/wincon.h"
  typedef struct _COORD {
    SHORT X;
    SHORT Y;
  } COORD,*PCOORD;

  typedef struct _SMALL_RECT {
    SHORT Left;
    SHORT Top;
    SHORT Right;
    SHORT Bottom;
  } SMALL_RECT,*PSMALL_RECT;

  typedef struct _KEY_EVENT_RECORD {
    WINBOOL bKeyDown;
    WORD wRepeatCount;
    WORD wVirtualKeyCode;
    WORD wVirtualScanCode;
    union {
      WCHAR UnicodeChar;
      CHAR AsciiChar;
    } uChar;
    DWORD dwControlKeyState;
  } KEY_EVENT_RECORD,*PKEY_EVENT_RECORD;
# 54 "../tinyccbinary/win32/include/winapi/wincon.h"
  typedef struct _MOUSE_EVENT_RECORD {
    COORD dwMousePosition;
    DWORD dwButtonState;
    DWORD dwControlKeyState;
    DWORD dwEventFlags;
  } MOUSE_EVENT_RECORD,*PMOUSE_EVENT_RECORD;
# 71 "../tinyccbinary/win32/include/winapi/wincon.h"
  typedef struct _WINDOW_BUFFER_SIZE_RECORD {
    COORD dwSize;
  } WINDOW_BUFFER_SIZE_RECORD,*PWINDOW_BUFFER_SIZE_RECORD;

  typedef struct _MENU_EVENT_RECORD {
    UINT dwCommandId;
  } MENU_EVENT_RECORD,*PMENU_EVENT_RECORD;

  typedef struct _FOCUS_EVENT_RECORD {
    WINBOOL bSetFocus;
  } FOCUS_EVENT_RECORD,*PFOCUS_EVENT_RECORD;

  typedef struct _INPUT_RECORD {
    WORD EventType;
    union {
      KEY_EVENT_RECORD KeyEvent;
      MOUSE_EVENT_RECORD MouseEvent;
      WINDOW_BUFFER_SIZE_RECORD WindowBufferSizeEvent;
      MENU_EVENT_RECORD MenuEvent;
      FOCUS_EVENT_RECORD FocusEvent;
    } Event;
  } INPUT_RECORD,*PINPUT_RECORD;







  typedef struct _CHAR_INFO {
    union {
      WCHAR UnicodeChar;
      CHAR AsciiChar;
    } Char;
    WORD Attributes;
  } CHAR_INFO,*PCHAR_INFO;
# 126 "../tinyccbinary/win32/include/winapi/wincon.h"
  typedef struct _CONSOLE_SCREEN_BUFFER_INFO {
    COORD dwSize;
    COORD dwCursorPosition;
    WORD wAttributes;
    SMALL_RECT srWindow;
    COORD dwMaximumWindowSize;
  } CONSOLE_SCREEN_BUFFER_INFO,*PCONSOLE_SCREEN_BUFFER_INFO;

  typedef struct _CONSOLE_CURSOR_INFO {
    DWORD dwSize;
    WINBOOL bVisible;
  } CONSOLE_CURSOR_INFO,*PCONSOLE_CURSOR_INFO;

  typedef struct _CONSOLE_FONT_INFO {
    DWORD nFont;
    COORD dwFontSize;
  } CONSOLE_FONT_INFO,*PCONSOLE_FONT_INFO;

  typedef struct _CONSOLE_SELECTION_INFO {
    DWORD dwFlags;
    COORD dwSelectionAnchor;
    SMALL_RECT srSelection;
  } CONSOLE_SELECTION_INFO,*PCONSOLE_SELECTION_INFO;







  typedef WINBOOL (__attribute__((__stdcall__)) *PHANDLER_ROUTINE)(DWORD CtrlType);
# 216 "../tinyccbinary/win32/include/winapi/wincon.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PeekConsoleInputA(HANDLE hConsoleInput,PINPUT_RECORD lpBuffer,DWORD nLength,LPDWORD lpNumberOfEventsRead);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) PeekConsoleInputW(HANDLE hConsoleInput,PINPUT_RECORD lpBuffer,DWORD nLength,LPDWORD lpNumberOfEventsRead);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ReadConsoleInputA(HANDLE hConsoleInput,PINPUT_RECORD lpBuffer,DWORD nLength,LPDWORD lpNumberOfEventsRead);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ReadConsoleInputW(HANDLE hConsoleInput,PINPUT_RECORD lpBuffer,DWORD nLength,LPDWORD lpNumberOfEventsRead);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WriteConsoleInputA(HANDLE hConsoleInput,const INPUT_RECORD *lpBuffer,DWORD nLength,LPDWORD lpNumberOfEventsWritten);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WriteConsoleInputW(HANDLE hConsoleInput,const INPUT_RECORD *lpBuffer,DWORD nLength,LPDWORD lpNumberOfEventsWritten);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ReadConsoleOutputA(HANDLE hConsoleOutput,PCHAR_INFO lpBuffer,COORD dwBufferSize,COORD dwBufferCoord,PSMALL_RECT lpReadRegion);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ReadConsoleOutputW(HANDLE hConsoleOutput,PCHAR_INFO lpBuffer,COORD dwBufferSize,COORD dwBufferCoord,PSMALL_RECT lpReadRegion);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WriteConsoleOutputA(HANDLE hConsoleOutput,const CHAR_INFO *lpBuffer,COORD dwBufferSize,COORD dwBufferCoord,PSMALL_RECT lpWriteRegion);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WriteConsoleOutputW(HANDLE hConsoleOutput,const CHAR_INFO *lpBuffer,COORD dwBufferSize,COORD dwBufferCoord,PSMALL_RECT lpWriteRegion);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ReadConsoleOutputCharacterA(HANDLE hConsoleOutput,LPSTR lpCharacter,DWORD nLength,COORD dwReadCoord,LPDWORD lpNumberOfCharsRead);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ReadConsoleOutputCharacterW(HANDLE hConsoleOutput,LPWSTR lpCharacter,DWORD nLength,COORD dwReadCoord,LPDWORD lpNumberOfCharsRead);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ReadConsoleOutputAttribute(HANDLE hConsoleOutput,LPWORD lpAttribute,DWORD nLength,COORD dwReadCoord,LPDWORD lpNumberOfAttrsRead);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WriteConsoleOutputCharacterA(HANDLE hConsoleOutput,LPCSTR lpCharacter,DWORD nLength,COORD dwWriteCoord,LPDWORD lpNumberOfCharsWritten);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WriteConsoleOutputCharacterW(HANDLE hConsoleOutput,LPCWSTR lpCharacter,DWORD nLength,COORD dwWriteCoord,LPDWORD lpNumberOfCharsWritten);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WriteConsoleOutputAttribute(HANDLE hConsoleOutput,const WORD *lpAttribute,DWORD nLength,COORD dwWriteCoord,LPDWORD lpNumberOfAttrsWritten);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FillConsoleOutputCharacterA(HANDLE hConsoleOutput,CHAR cCharacter,DWORD nLength,COORD dwWriteCoord,LPDWORD lpNumberOfCharsWritten);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FillConsoleOutputCharacterW(HANDLE hConsoleOutput,WCHAR cCharacter,DWORD nLength,COORD dwWriteCoord,LPDWORD lpNumberOfCharsWritten);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FillConsoleOutputAttribute(HANDLE hConsoleOutput,WORD wAttribute,DWORD nLength,COORD dwWriteCoord,LPDWORD lpNumberOfAttrsWritten);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetConsoleMode(HANDLE hConsoleHandle,LPDWORD lpMode);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetNumberOfConsoleInputEvents(HANDLE hConsoleInput,LPDWORD lpNumberOfEvents);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetConsoleScreenBufferInfo(HANDLE hConsoleOutput,PCONSOLE_SCREEN_BUFFER_INFO lpConsoleScreenBufferInfo);
  __attribute__((dllimport)) COORD __attribute__((__stdcall__)) GetLargestConsoleWindowSize(HANDLE hConsoleOutput);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetConsoleCursorInfo(HANDLE hConsoleOutput,PCONSOLE_CURSOR_INFO lpConsoleCursorInfo);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetCurrentConsoleFont(HANDLE hConsoleOutput,WINBOOL bMaximumWindow,PCONSOLE_FONT_INFO lpConsoleCurrentFont);
  __attribute__((dllimport)) COORD __attribute__((__stdcall__)) GetConsoleFontSize(HANDLE hConsoleOutput,DWORD nFont);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetConsoleSelectionInfo(PCONSOLE_SELECTION_INFO lpConsoleSelectionInfo);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetNumberOfConsoleMouseButtons(LPDWORD lpNumberOfMouseButtons);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetConsoleMode(HANDLE hConsoleHandle,DWORD dwMode);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetConsoleActiveScreenBuffer(HANDLE hConsoleOutput);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FlushConsoleInputBuffer(HANDLE hConsoleInput);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetConsoleScreenBufferSize(HANDLE hConsoleOutput,COORD dwSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetConsoleCursorPosition(HANDLE hConsoleOutput,COORD dwCursorPosition);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetConsoleCursorInfo(HANDLE hConsoleOutput,const CONSOLE_CURSOR_INFO *lpConsoleCursorInfo);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ScrollConsoleScreenBufferA(HANDLE hConsoleOutput,const SMALL_RECT *lpScrollRectangle,const SMALL_RECT *lpClipRectangle,COORD dwDestinationOrigin,const CHAR_INFO *lpFill);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ScrollConsoleScreenBufferW(HANDLE hConsoleOutput,const SMALL_RECT *lpScrollRectangle,const SMALL_RECT *lpClipRectangle,COORD dwDestinationOrigin,const CHAR_INFO *lpFill);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetConsoleWindowInfo(HANDLE hConsoleOutput,WINBOOL bAbsolute,const SMALL_RECT *lpConsoleWindow);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetConsoleTextAttribute(HANDLE hConsoleOutput,WORD wAttributes);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetConsoleCtrlHandler(PHANDLER_ROUTINE HandlerRoutine,WINBOOL Add);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GenerateConsoleCtrlEvent(DWORD dwCtrlEvent,DWORD dwProcessGroupId);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AllocConsole(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) FreeConsole(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AttachConsole(DWORD dwProcessId);



  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetConsoleTitleA(LPSTR lpConsoleTitle,DWORD nSize);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetConsoleTitleW(LPWSTR lpConsoleTitle,DWORD nSize);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetConsoleTitleA(LPCSTR lpConsoleTitle);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetConsoleTitleW(LPCWSTR lpConsoleTitle);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ReadConsoleA(HANDLE hConsoleInput,LPVOID lpBuffer,DWORD nNumberOfCharsToRead,LPDWORD lpNumberOfCharsRead,LPVOID lpReserved);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) ReadConsoleW(HANDLE hConsoleInput,LPVOID lpBuffer,DWORD nNumberOfCharsToRead,LPDWORD lpNumberOfCharsRead,LPVOID lpReserved);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WriteConsoleA(HANDLE hConsoleOutput,const void *lpBuffer,DWORD nNumberOfCharsToWrite,LPDWORD lpNumberOfCharsWritten,LPVOID lpReserved);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) WriteConsoleW(HANDLE hConsoleOutput,const void *lpBuffer,DWORD nNumberOfCharsToWrite,LPDWORD lpNumberOfCharsWritten,LPVOID lpReserved);



  __attribute__((dllimport)) HANDLE __attribute__((__stdcall__)) CreateConsoleScreenBuffer(DWORD dwDesiredAccess,DWORD dwShareMode,const SECURITY_ATTRIBUTES *lpSecurityAttributes,DWORD dwFlags,LPVOID lpScreenBufferData);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetConsoleCP(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetConsoleCP(UINT wCodePageID);
  __attribute__((dllimport)) UINT __attribute__((__stdcall__)) GetConsoleOutputCP(void);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) SetConsoleOutputCP(UINT wCodePageID);




  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) GetConsoleDisplayMode(LPDWORD lpModeFlags);
  __attribute__((dllimport)) HWND __attribute__((__stdcall__)) GetConsoleWindow(void);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetConsoleProcessList(LPDWORD lpdwProcessList,DWORD dwProcessCount);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AddConsoleAliasA(LPSTR Source,LPSTR Target,LPSTR ExeName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AddConsoleAliasW(LPWSTR Source,LPWSTR Target,LPWSTR ExeName);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetConsoleAliasA(LPSTR Source,LPSTR TargetBuffer,DWORD TargetBufferLength,LPSTR ExeName);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetConsoleAliasW(LPWSTR Source,LPWSTR TargetBuffer,DWORD TargetBufferLength,LPWSTR ExeName);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetConsoleAliasesLengthA(LPSTR ExeName);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetConsoleAliasesLengthW(LPWSTR ExeName);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetConsoleAliasExesLengthA(void);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetConsoleAliasExesLengthW(void);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetConsoleAliasesA(LPSTR AliasBuffer,DWORD AliasBufferLength,LPSTR ExeName);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetConsoleAliasesW(LPWSTR AliasBuffer,DWORD AliasBufferLength,LPWSTR ExeName);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetConsoleAliasExesA(LPSTR ExeNameBuffer,DWORD ExeNameBufferLength);
  __attribute__((dllimport)) DWORD __attribute__((__stdcall__)) GetConsoleAliasExesW(LPWSTR ExeNameBuffer,DWORD ExeNameBufferLength);
# 72 "../tinyccbinary/win32/include/winapi/windows.h" 2
# 1 "../tinyccbinary/win32/include/winapi/winver.h" 1
# 110 "../tinyccbinary/win32/include/winapi/winver.h"
  typedef struct tagVS_FIXEDFILEINFO
  {
    DWORD dwSignature;
    DWORD dwStrucVersion;
    DWORD dwFileVersionMS;
    DWORD dwFileVersionLS;
    DWORD dwProductVersionMS;
    DWORD dwProductVersionLS;
    DWORD dwFileFlagsMask;
    DWORD dwFileFlags;
    DWORD dwFileOS;
    DWORD dwFileType;
    DWORD dwFileSubtype;
    DWORD dwFileDateMS;
    DWORD dwFileDateLS;
  } VS_FIXEDFILEINFO;
# 143 "../tinyccbinary/win32/include/winapi/winver.h"
  DWORD __attribute__((__stdcall__)) VerFindFileA(DWORD uFlags,LPSTR szFileName,LPSTR szWinDir,LPSTR szAppDir,LPSTR szCurDir,PUINT lpuCurDirLen,LPSTR szDestDir,PUINT lpuDestDirLen);
  DWORD __attribute__((__stdcall__)) VerFindFileW(DWORD uFlags,LPWSTR szFileName,LPWSTR szWinDir,LPWSTR szAppDir,LPWSTR szCurDir,PUINT lpuCurDirLen,LPWSTR szDestDir,PUINT lpuDestDirLen);
  DWORD __attribute__((__stdcall__)) VerInstallFileA(DWORD uFlags,LPSTR szSrcFileName,LPSTR szDestFileName,LPSTR szSrcDir,LPSTR szDestDir,LPSTR szCurDir,LPSTR szTmpFile,PUINT lpuTmpFileLen);
  DWORD __attribute__((__stdcall__)) VerInstallFileW(DWORD uFlags,LPWSTR szSrcFileName,LPWSTR szDestFileName,LPWSTR szSrcDir,LPWSTR szDestDir,LPWSTR szCurDir,LPWSTR szTmpFile,PUINT lpuTmpFileLen);
  DWORD __attribute__((__stdcall__)) GetFileVersionInfoSizeA(LPCSTR lptstrFilename,LPDWORD lpdwHandle);
  DWORD __attribute__((__stdcall__)) GetFileVersionInfoSizeW(LPCWSTR lptstrFilename,LPDWORD lpdwHandle);
  WINBOOL __attribute__((__stdcall__)) GetFileVersionInfoA(LPCSTR lptstrFilename,DWORD dwHandle,DWORD dwLen,LPVOID lpData);
  WINBOOL __attribute__((__stdcall__)) GetFileVersionInfoW(LPCWSTR lptstrFilename,DWORD dwHandle,DWORD dwLen,LPVOID lpData);
  DWORD __attribute__((__stdcall__)) VerLanguageNameA(DWORD wLang,LPSTR szLang,DWORD nSize);
  DWORD __attribute__((__stdcall__)) VerLanguageNameW(DWORD wLang,LPWSTR szLang,DWORD nSize);
  WINBOOL __attribute__((__stdcall__)) VerQueryValueA(const LPVOID pBlock,LPSTR lpSubBlock,LPVOID *lplpBuffer,PUINT puLen);
  WINBOOL __attribute__((__stdcall__)) VerQueryValueW(const LPVOID pBlock,LPWSTR lpSubBlock,LPVOID *lplpBuffer,PUINT puLen);
# 73 "../tinyccbinary/win32/include/winapi/windows.h" 2
# 1 "../tinyccbinary/win32/include/winapi/winreg.h" 1
# 32 "../tinyccbinary/win32/include/winapi/winreg.h"
  typedef ACCESS_MASK REGSAM;
# 50 "../tinyccbinary/win32/include/winapi/winreg.h"
  struct val_context {
    int valuelen;
    LPVOID value_context;
    LPVOID val_buff_ptr;
  };

  typedef struct val_context *PVALCONTEXT;

  typedef struct pvalueA {
    LPSTR pv_valuename;
    int pv_valuelen;
    LPVOID pv_value_context;
    DWORD pv_type;
  }PVALUEA,*PPVALUEA;

  typedef struct pvalueW {
    LPWSTR pv_valuename;
    int pv_valuelen;
    LPVOID pv_value_context;
    DWORD pv_type;
  }PVALUEW,*PPVALUEW;





  typedef PVALUEA PVALUE;
  typedef PPVALUEA PPVALUE;


  typedef DWORD  QUERYHANDLER(LPVOID keycontext,PVALCONTEXT val_list,DWORD num_vals,LPVOID outputbuffer,DWORD *total_outlen,DWORD input_blen);

  typedef QUERYHANDLER *PQUERYHANDLER;

  typedef struct provider_info {
    PQUERYHANDLER pi_R0_1val;
    PQUERYHANDLER pi_R0_allvals;
    PQUERYHANDLER pi_R3_1val;
    PQUERYHANDLER pi_R3_allvals;
    DWORD pi_flags;
    LPVOID pi_key_context;
  } REG_PROVIDER;

  typedef struct provider_info *PPROVIDER;

  typedef struct value_entA {
    LPSTR ve_valuename;
    DWORD ve_valuelen;
    DWORD_PTR ve_valueptr;
    DWORD ve_type;
  } VALENTA,*PVALENTA;

  typedef struct value_entW {
    LPWSTR ve_valuename;
    DWORD ve_valuelen;
    DWORD_PTR ve_valueptr;
    DWORD ve_type;
  } VALENTW,*PVALENTW;





  typedef VALENTA VALENT;
  typedef PVALENTA PVALENT;
# 176 "../tinyccbinary/win32/include/winapi/winreg.h"
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegCloseKey(HKEY hKey);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegOverridePredefKey(HKEY hKey,HKEY hNewHKey);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegOpenUserClassesRoot(HANDLE hToken,DWORD dwOptions,REGSAM samDesired,PHKEY phkResult);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegOpenCurrentUser(REGSAM samDesired,PHKEY phkResult);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegDisablePredefinedCache();
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegConnectRegistryA(LPCSTR lpMachineName,HKEY hKey,PHKEY phkResult);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegConnectRegistryW(LPCWSTR lpMachineName,HKEY hKey,PHKEY phkResult);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegConnectRegistryExA(LPCSTR lpMachineName,HKEY hKey,ULONG Flags,PHKEY phkResult);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegConnectRegistryExW(LPCWSTR lpMachineName,HKEY hKey,ULONG Flags,PHKEY phkResult);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegCreateKeyA(HKEY hKey,LPCSTR lpSubKey,PHKEY phkResult);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegCreateKeyW(HKEY hKey,LPCWSTR lpSubKey,PHKEY phkResult);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegCreateKeyExA(HKEY hKey,LPCSTR lpSubKey,DWORD Reserved,LPSTR lpClass,DWORD dwOptions,REGSAM samDesired,LPSECURITY_ATTRIBUTES lpSecurityAttributes,PHKEY phkResult,LPDWORD lpdwDisposition);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegCreateKeyExW(HKEY hKey,LPCWSTR lpSubKey,DWORD Reserved,LPWSTR lpClass,DWORD dwOptions,REGSAM samDesired,LPSECURITY_ATTRIBUTES lpSecurityAttributes,PHKEY phkResult,LPDWORD lpdwDisposition);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegDeleteKeyA(HKEY hKey,LPCSTR lpSubKey);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegDeleteKeyW(HKEY hKey,LPCWSTR lpSubKey);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegDeleteKeyExA(HKEY hKey,LPCSTR lpSubKey,REGSAM samDesired,DWORD Reserved);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegDeleteKeyExW(HKEY hKey,LPCWSTR lpSubKey,REGSAM samDesired,DWORD Reserved);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegDisableReflectionKey(HKEY hBase);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegEnableReflectionKey(HKEY hBase);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegQueryReflectionKey(HKEY hBase,WINBOOL *bIsReflectionDisabled);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegDeleteValueA(HKEY hKey,LPCSTR lpValueName);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegDeleteValueW(HKEY hKey,LPCWSTR lpValueName);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegEnumKeyA(HKEY hKey,DWORD dwIndex,LPSTR lpName,DWORD cchName);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegEnumKeyW(HKEY hKey,DWORD dwIndex,LPWSTR lpName,DWORD cchName);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegEnumKeyExA(HKEY hKey,DWORD dwIndex,LPSTR lpName,LPDWORD lpcchName,LPDWORD lpReserved,LPSTR lpClass,LPDWORD lpcchClass,PFILETIME lpftLastWriteTime);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegEnumKeyExW(HKEY hKey,DWORD dwIndex,LPWSTR lpName,LPDWORD lpcchName,LPDWORD lpReserved,LPWSTR lpClass,LPDWORD lpcchClass,PFILETIME lpftLastWriteTime);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegEnumValueA(HKEY hKey,DWORD dwIndex,LPSTR lpValueName,LPDWORD lpcchValueName,LPDWORD lpReserved,LPDWORD lpType,LPBYTE lpData,LPDWORD lpcbData);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegEnumValueW(HKEY hKey,DWORD dwIndex,LPWSTR lpValueName,LPDWORD lpcchValueName,LPDWORD lpReserved,LPDWORD lpType,LPBYTE lpData,LPDWORD lpcbData);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegFlushKey(HKEY hKey);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegGetKeySecurity(HKEY hKey,SECURITY_INFORMATION SecurityInformation,PSECURITY_DESCRIPTOR pSecurityDescriptor,LPDWORD lpcbSecurityDescriptor);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegLoadKeyA(HKEY hKey,LPCSTR lpSubKey,LPCSTR lpFile);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegLoadKeyW(HKEY hKey,LPCWSTR lpSubKey,LPCWSTR lpFile);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegNotifyChangeKeyValue(HKEY hKey,WINBOOL bWatchSubtree,DWORD dwNotifyFilter,HANDLE hEvent,WINBOOL fAsynchronous);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegOpenKeyA(HKEY hKey,LPCSTR lpSubKey,PHKEY phkResult);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegOpenKeyW(HKEY hKey,LPCWSTR lpSubKey,PHKEY phkResult);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegOpenKeyExA(HKEY hKey,LPCSTR lpSubKey,DWORD ulOptions,REGSAM samDesired,PHKEY phkResult);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegOpenKeyExW(HKEY hKey,LPCWSTR lpSubKey,DWORD ulOptions,REGSAM samDesired,PHKEY phkResult);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegQueryInfoKeyA(HKEY hKey,LPSTR lpClass,LPDWORD lpcchClass,LPDWORD lpReserved,LPDWORD lpcSubKeys,LPDWORD lpcbMaxSubKeyLen,LPDWORD lpcbMaxClassLen,LPDWORD lpcValues,LPDWORD lpcbMaxValueNameLen,LPDWORD lpcbMaxValueLen,LPDWORD lpcbSecurityDescriptor,PFILETIME lpftLastWriteTime);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegQueryInfoKeyW(HKEY hKey,LPWSTR lpClass,LPDWORD lpcchClass,LPDWORD lpReserved,LPDWORD lpcSubKeys,LPDWORD lpcbMaxSubKeyLen,LPDWORD lpcbMaxClassLen,LPDWORD lpcValues,LPDWORD lpcbMaxValueNameLen,LPDWORD lpcbMaxValueLen,LPDWORD lpcbSecurityDescriptor,PFILETIME lpftLastWriteTime);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegQueryValueA(HKEY hKey,LPCSTR lpSubKey,LPSTR lpData,PLONG lpcbData);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegQueryValueW(HKEY hKey,LPCWSTR lpSubKey,LPWSTR lpData,PLONG lpcbData);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegQueryMultipleValuesA(HKEY hKey,PVALENTA val_list,DWORD num_vals,LPSTR lpValueBuf,LPDWORD ldwTotsize);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegQueryMultipleValuesW(HKEY hKey,PVALENTW val_list,DWORD num_vals,LPWSTR lpValueBuf,LPDWORD ldwTotsize);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegQueryValueExA(HKEY hKey,LPCSTR lpValueName,LPDWORD lpReserved,LPDWORD lpType,LPBYTE lpData,LPDWORD lpcbData);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegQueryValueExW(HKEY hKey,LPCWSTR lpValueName,LPDWORD lpReserved,LPDWORD lpType,LPBYTE lpData,LPDWORD lpcbData);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegReplaceKeyA(HKEY hKey,LPCSTR lpSubKey,LPCSTR lpNewFile,LPCSTR lpOldFile);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegReplaceKeyW(HKEY hKey,LPCWSTR lpSubKey,LPCWSTR lpNewFile,LPCWSTR lpOldFile);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegRestoreKeyA(HKEY hKey,LPCSTR lpFile,DWORD dwFlags);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegRestoreKeyW(HKEY hKey,LPCWSTR lpFile,DWORD dwFlags);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegSaveKeyA(HKEY hKey,LPCSTR lpFile,LPSECURITY_ATTRIBUTES lpSecurityAttributes);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegSaveKeyW(HKEY hKey,LPCWSTR lpFile,LPSECURITY_ATTRIBUTES lpSecurityAttributes);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegSetKeySecurity(HKEY hKey,SECURITY_INFORMATION SecurityInformation,PSECURITY_DESCRIPTOR pSecurityDescriptor);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegSetValueA(HKEY hKey,LPCSTR lpSubKey,DWORD dwType,LPCSTR lpData,DWORD cbData);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegSetValueW(HKEY hKey,LPCWSTR lpSubKey,DWORD dwType,LPCWSTR lpData,DWORD cbData);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegSetValueExA(HKEY hKey,LPCSTR lpValueName,DWORD Reserved,DWORD dwType,const BYTE *lpData,DWORD cbData);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegSetValueExW(HKEY hKey,LPCWSTR lpValueName,DWORD Reserved,DWORD dwType,const BYTE *lpData,DWORD cbData);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegUnLoadKeyA(HKEY hKey,LPCSTR lpSubKey);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegUnLoadKeyW(HKEY hKey,LPCWSTR lpSubKey);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegGetValueA(HKEY hkey,LPCSTR lpSubKey,LPCSTR lpValue,DWORD dwFlags,LPDWORD pdwType,PVOID pvData,LPDWORD pcbData);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegGetValueW(HKEY hkey,LPCWSTR lpSubKey,LPCWSTR lpValue,DWORD dwFlags,LPDWORD pdwType,PVOID pvData,LPDWORD pcbData);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) InitiateSystemShutdownA(LPSTR lpMachineName,LPSTR lpMessage,DWORD dwTimeout,WINBOOL bForceAppsClosed,WINBOOL bRebootAfterShutdown);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) InitiateSystemShutdownW(LPWSTR lpMachineName,LPWSTR lpMessage,DWORD dwTimeout,WINBOOL bForceAppsClosed,WINBOOL bRebootAfterShutdown);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AbortSystemShutdownA(LPSTR lpMachineName);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) AbortSystemShutdownW(LPWSTR lpMachineName);
# 263 "../tinyccbinary/win32/include/winapi/winreg.h"
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) InitiateSystemShutdownExA(LPSTR lpMachineName,LPSTR lpMessage,DWORD dwTimeout,WINBOOL bForceAppsClosed,WINBOOL bRebootAfterShutdown,DWORD dwReason);
  __attribute__((dllimport)) WINBOOL __attribute__((__stdcall__)) InitiateSystemShutdownExW(LPWSTR lpMachineName,LPWSTR lpMessage,DWORD dwTimeout,WINBOOL bForceAppsClosed,WINBOOL bRebootAfterShutdown,DWORD dwReason);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegSaveKeyExA(HKEY hKey,LPCSTR lpFile,LPSECURITY_ATTRIBUTES lpSecurityAttributes,DWORD Flags);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) RegSaveKeyExW(HKEY hKey,LPCWSTR lpFile,LPSECURITY_ATTRIBUTES lpSecurityAttributes,DWORD Flags);
  __attribute__((dllimport)) LONG __attribute__((__stdcall__)) Wow64Win32ApiEntry (DWORD dwFuncNumber,DWORD dwFlag,DWORD dwRes);
# 74 "../tinyccbinary/win32/include/winapi/windows.h" 2
# 18 "tests/wingl0.c" 2

# 1 "./ffic.h" 1


typedef void* ffic_ptr;
typedef ffic_ptr(

		__attribute__((__stdcall__))

		*ffic_func)();
typedef double (*ffic_func_d)();
typedef long (*ffic_func_l)();
typedef int (*ffic_func_i)();
typedef float (*ffic_func_f)();


typedef char* ffic_string;
typedef int* ffic_wstring;

typedef enum { ffic_os_unknown, ffic_os_win, ffic_os_osx, ffic_os_unx, } ffic_os_t;

ffic_os_t ffic_os = ffic_os_win;
ffic_string ffic_libcname = "msvcrt";
ffic_string ffic_sosuffix = ".dll";
# 45 "./ffic.h"
typedef signed char ffic_i8;
typedef unsigned char ffic_u8;
typedef signed short int ffic_i16;
typedef unsigned short int ffic_u16;
typedef signed int ffic_i32;
typedef unsigned int ffic_u32;
typedef signed long ffic_ipt;
typedef unsigned long ffic_upt;




typedef signed long long int ffic_i64;
typedef unsigned long long int ffic_u64;
# 74 "./ffic.h"
ffic_func ffic_dlsym=0;
ffic_func ffic_dlopen=0;
extern int printf(const char*,...);

extern int strcmp(const char*,const char*);
extern void exit(int);
# 98 "./ffic.h"
char* _ffic_strcat(char* buffer, const char* a, const char* b) {
 char* p = buffer; while (*a) *(p++) = *(a++); while (*b) *(p++) = *(b++);
 *p = '\0';
 return buffer;
}
ffic_ptr ffic_void(){return 0;};
ffic_func(*ffic_core(const char *libfilename,const char* funcname))()
{
	if(!ffic_dlsym){




		ffic_dlsym = (ffic_func) GetProcAddress;




	}
	if(!ffic_dlopen){
# 128 "./ffic.h"
		ffic_dlopen = (ffic_func) LoadLibraryA;





	}

	return ffic_dlsym(ffic_dlopen(libfilename,0x101), funcname);
}
ffic_func(*ffic_raw(const char* part1, const char* funcname, const char* part2))()
{
	ffic_string libfilename = (char[512]){0};
	_ffic_strcat(libfilename, (part1)? part1 : ffic_libcname, (part2)? part2 : ffic_sosuffix );
	ffic_func addr = ffic_core(libfilename,funcname);
	if(!addr) {
		printf("WARN: 404 %s(%s).%s \n",part1,libfilename,funcname);
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
		if (!ffic_gettimeofday) ffic_gettimeofday = ffic_raw("kernel32","GetSystemTimePreciseAsFileTime",0);
		if (!ffic_gettimeofday) ffic_gettimeofday = ffic_raw("kernel32","GetSystemTimeAsFileTime",0);
		static const ffic_u64 epoch = 116444736000000000;
		struct _FILETIME { unsigned long dwLowDateTime; unsigned long dwHighDateTime; } file_time;
		ffic_gettimeofday(&file_time);
		ffic_u64 since_1601 = ( (ffic_u64) file_time.dwHighDateTime << 32) | (ffic_u64) file_time.dwLowDateTime;
		ffic_u64 since_1970 = ((ffic_u64) since_1601 - epoch);
		ffic_u64 microseconds_since_1970 = since_1970 / 10;
		tv.tv_sec = (microseconds_since_1970 / (ffic_u64) 1000000);
		tv.tv_usec = microseconds_since_1970 % (ffic_u64) 1000000;
	}else{
		if (!ffic_gettimeofday) ffic_gettimeofday = ffic_raw(0,"gettimeofday",0);
		ffic_gettimeofday(&tv, 0);
	}
	return ((ffic_u64)tv.tv_sec*(ffic_u64)1000 + (((ffic_u64)tv.tv_usec)/(ffic_u64)1000)%(ffic_u64)1000);
}
ffic_ptr(*ffic(const char* libname, const char* funcname))()
{
	ffic_ptr addr = 0;
	if(libname && 'c'==*libname && 0==*(libname+1)) libname=0;
	if(!libname){
		if(!_ffic_os_sleep) _ffic_os_sleep = (ffic_os==ffic_os_win) ? ffic_raw("kernel32","Sleep",0) : ffic_raw(ffic_libcname,"usleep",0);
		if(!strcmp("stderr",funcname) || !strcmp("2",funcname)){ return ffic_os_std(2); }
		else if(!strcmp("stdout",funcname) || !strcmp("1",funcname)){ return ffic_os_std(1); }
		else if(!strcmp("stdin",funcname) || !strcmp("0",funcname)){ return ffic_os_std(0); }
		else if(!strcmp("microtime",funcname)){ return ffic_microtime; }
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
# 20 "tests/wingl0.c" 2
# 32 "tests/wingl0.c"
	void
display()
{




	ffic_func BeginPaint = (ffic_func) ffic("user32","BeginPaint");
	ffic_func EndPaint = (ffic_func) ffic("user32","EndPaint");


	ffic_func glClear = (ffic_func) ffic("opengl32","glClear");




	ffic_func glBegin = (ffic_func) ffic("opengl32","glBegin");
	ffic_func glColor3f = (ffic_func) ffic("opengl32","glColor3f");
	ffic_func glVertex3f = (ffic_func) ffic("opengl32","glVertex3f");
	ffic_func glVertex2i = (ffic_func) ffic("opengl32","glVertex2i");
	ffic_func glEnd = (ffic_func) ffic("opengl32","glEnd");
	ffic_func glFlush = (ffic_func) ffic("opengl32","glFlush");


	glClear(0x00004000);
	glBegin(0x0004);
	glColor3f(1.0f, 0.0f, 0.0f);
	glVertex2i(0,  1);
	glColor3f(0.0f, 1.0f, 0.0f);
	glVertex2i(-1, -1);
	glColor3f(0.0f, 0.0f, 1.0f);
	glVertex2i(1, -1);
	glEnd();
	glFlush();
}


ffic_ptr WindowProc(HWND hWnd, UINT uMsg, WPARAM wParam, LPARAM lParam)
{
	ffic_func printf = (ffic_func) ffic("c","printf");

	ffic_func glViewport = (ffic_func) ffic("opengl32","glViewport");
	ffic_func DestroyWindow = (ffic_func) ffic("user32","DestroyWindow");
	ffic_func PostQuitMessage = (ffic_func) ffic("user32","PostQuitMessage");
	ffic_func PostMessageA = (ffic_func) ffic("user32","PostMessageA");

	ffic_func BeginPaint = (ffic_func) ffic("user32","BeginPaint");
	ffic_func EndPaint = (ffic_func) ffic("user32","EndPaint");

	static PAINTSTRUCT ps;

	switch(uMsg) {
		case 0x000F:
			display();
			BeginPaint(hWnd, &ps);
			EndPaint(hWnd, &ps);
			return 0;

		case 0x0005:

			glViewport(0, 0, 128, 128);
			PostMessageA(hWnd, 0x000F, 0, 0);
			return 0;

		case 0x0102:
			switch (wParam) {
				case 27:
					PostQuitMessage(0);
					break;
			}
			return 0;

		case 0x0010:
			PostQuitMessage(0);
			return 0;


	}

	ffic_func DefWindowProcA = (ffic_func) ffic("user32","DefWindowProcA");


	return DefWindowProcA(hWnd, uMsg, wParam, lParam);
}

	HWND
CreateOpenGLWindow(char* title, int x, int y, int width, int height,
		BYTE type, DWORD flags)
{

	int         pf;
	HDC         hDC;
	HWND        hWnd;
	WNDCLASSA    wc;
	PIXELFORMATDESCRIPTOR pfd;
	static HINSTANCE hInstance = 0;
	ffic_func printf = (ffic_func) ffic("c","printf");

	ffic_func GetModuleHandleA = (ffic_func) ffic("kernel32","GetModuleHandleA");


	printf("%s=%d\n", "GetModuleHandleA", GetModuleHandleA);

	ffic_func RegisterClassA = (ffic_func) ffic("user32","RegisterClassA");

	ffic_func CreateWindowExA = (ffic_func) ffic("user32","CreateWindowExA");




	if (!hInstance) {
		hInstance = GetModuleHandleA(((void*)0));

		wc.lpfnWndProc   = (WNDPROC)WindowProc;
		wc.cbClsExtra    = 0;
		wc.cbWndExtra    = 0;
		wc.hInstance     = hInstance;


		wc.hbrBackground = ((void*)0);
		wc.lpszMenuName  = ((void*)0);
		wc.lpszClassName = "OpenGL";

		if (!RegisterClassA(&wc)) {
			printf("RegisterClass() failed \n");


			return ((void*)0);
		}
	}

	hWnd = CreateWindowExA(0L,"OpenGL",title,(0x00000000L | 0x00C00000L | 0x00080000L | 0x00040000L | 0x00020000L | 0x00010000L) | 0x04000000L | 0x02000000L,x,y,width,height,((void*)0),((void*)0),hInstance,((void*)0));



	if (hWnd == ((void*)0)) {



	}

	ffic_func GetDC = (ffic_func) ffic("user32","GetDC");
	hDC = GetDC(hWnd);



	memset(&pfd, 0, sizeof(pfd));
	pfd.nSize        = sizeof(pfd);
	pfd.nVersion     = 1;
	pfd.dwFlags      = 0x00000004 | 0x00000020 | flags;
	pfd.iPixelType   = type;
	pfd.cColorBits   = 32;


	ffic_func_i ChoosePixelFormat = (ffic_func_i) ffic("gdi32","ChoosePixelFormat");
	pf = ChoosePixelFormat(hDC, &pfd);
	if (pf == 0) {



	}

	ffic_func SetPixelFormat = (ffic_func) ffic("gdi32","SetPixelFormat");
	if (SetPixelFormat(hDC, pf, &pfd) == 0) {


		return 0;
	}

	ffic_func DescribePixelFormat = (ffic_func) ffic("gdi32","DescribePixelFormat");
	DescribePixelFormat(hDC, pf, sizeof(PIXELFORMATDESCRIPTOR), &pfd);

	ffic_func ReleaseDC = (ffic_func) ffic("user32","ReleaseDC");
	ReleaseDC(hDC, hWnd);

	return hWnd;
}







int main()
{
	HDC hDC;
	ffic_ptr hRC;
	HWND  hWnd;
	MSG   msg;

	ffic_func printf = (ffic_func) ffic("c","printf");
	hWnd = CreateOpenGLWindow("minimal", 0, 0, 256, 256, 0, 0);
	printf("%s=%ld\n", "hWnd", hWnd);
	if (hWnd == ((void*)0)){
		ffic_func exit = (ffic_func) ffic("c","exit");
		exit(1);
	}

	ffic_func GetDC = (ffic_func) ffic("user32","GetDC");
	hDC = GetDC(hWnd);
	printf("%s=%ld\n", "hDC", hDC);
	ffic_func wglCreateContext = (ffic_func) ffic("opengl32","wglCreateContext");
	hRC = wglCreateContext(hDC);
	printf("%s=%ld\n", "hRC", hRC);
	ffic_func wglMakeCurrent = (ffic_func) ffic("opengl32","wglMakeCurrent");
	wglMakeCurrent(hDC, hRC);

	ffic_func ShowWindow = (ffic_func) ffic("user32","ShowWindow");

	ShowWindow(hWnd, 1);

	ffic_func GetMessageA = (ffic_func) ffic("user32","GetMessageA");

	ffic_func TranslateMessage = (ffic_func) ffic("user32","TranslateMessage");
	ffic_func DispatchMessageA = (ffic_func) ffic("user32","DispatchMessageA");


	while(GetMessageA(&msg, hWnd, 0, 0)) {
		TranslateMessage(&msg);
		DispatchMessageA(&msg);
	}

	wglMakeCurrent(((void*)0), ((void*)0));
	ffic_func ReleaseDC = (ffic_func) ffic("user32","ReleaseDC");
	ReleaseDC(hDC, hWnd);
	ffic_func wglDeleteContext = (ffic_func) ffic("opengl32","wglDeleteContext");
	wglDeleteContext(hRC);

	ffic_func DestroyWindow = (ffic_func) ffic("user32","DestroyWindow");
	DestroyWindow(hWnd);

	return (int) msg.wParam;
}
