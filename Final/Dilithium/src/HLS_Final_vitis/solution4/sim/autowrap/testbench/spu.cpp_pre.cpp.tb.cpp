// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "C:/Users/user/Desktop/HLS/HLS_Final_vitis_src/spu.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/user/Desktop/HLS/HLS_Final_vitis_src/spu.cpp"
# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/6.2.0/include/stdint.h" 1 3 4
# 10 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/6.2.0/include/stdint.h" 3 4
# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdint.h" 1 3 4
# 29 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdint.h" 3 4
# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 1 3 4
# 11 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3 4
# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 1 3 4
# 13 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 3 4
# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h" 1 3 4
# 89 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h" 3 4
             
# 98 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_mac.h" 3 4
             
# 14 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 2 3 4
# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h" 1 3 4
# 45 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h" 3 4

# 45 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw_secapi.h" 3 4
extern "C++" {
template <bool __test, typename __dsttype>
  struct __if_array;
template <typename __dsttype>
  struct __if_array <true, __dsttype> {
    typedef __dsttype __type;
};
}
# 15 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 2 3 4
# 276 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 3 4
# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/vadefs.h" 1 3 4
# 10 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/vadefs.h" 3 4
# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 1 3 4
# 566 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 3 4
# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_directx.h" 1 3 4
# 567 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 2 3 4
# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/sdks/_mingw_ddk.h" 1 3 4
# 568 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 2 3 4
# 11 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/vadefs.h" 2 3 4




#pragma pack(push,_CRT_PACKING)



extern "C" {





  typedef __builtin_va_list __gnuc_va_list;






  typedef __gnuc_va_list va_list;
# 100 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/vadefs.h" 3 4
}



#pragma pack(pop)
# 277 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 2 3 4
# 535 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/_mingw.h" 3 4
extern "C" {




void __attribute__((__cdecl__)) __debugbreak(void);
extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) void __attribute__((__cdecl__)) __debugbreak(void)
{
  __asm__ __volatile__("int {$}3":);
}




const char *__mingw_get_crt_info (void);


}
# 12 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 2 3 4




#pragma pack(push,_CRT_PACKING)
# 36 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3 4
__extension__ typedef unsigned long long size_t;
# 46 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3 4
__extension__ typedef long long ssize_t;






typedef size_t rsize_t;
# 63 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3 4
__extension__ typedef long long intptr_t;
# 76 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3 4
__extension__ typedef unsigned long long uintptr_t;
# 89 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3 4
__extension__ typedef long long ptrdiff_t;
# 107 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3 4
typedef unsigned short wint_t;
typedef unsigned short wctype_t;





typedef int errno_t;




typedef long __time32_t;




__extension__ typedef long long __time64_t;
# 139 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3 4
typedef __time64_t time_t;
# 423 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/crtdefs.h" 3 4
struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct *pthreadlocinfo;
typedef struct threadmbcinfostruct *pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct {
  pthreadlocinfo locinfo;
  pthreadmbcinfo mbcinfo;
} _locale_tstruct,*_locale_t;



typedef struct tagLC_ID {
  unsigned short wLanguage;
  unsigned short wCountry;
  unsigned short wCodePage;
} LC_ID,*LPLC_ID;




typedef struct threadlocaleinfostruct {
  int refcount;
  unsigned int lc_codepage;
  unsigned int lc_collate_cp;
  unsigned long lc_handle[6];
  LC_ID lc_id[6];
  struct {
    char *locale;
    wchar_t *wlocale;
    int *refcount;
    int *wrefcount;
  } lc_category[6];
  int lc_clike;
  int mb_cur_max;
  int *lconv_intl_refcount;
  int *lconv_num_refcount;
  int *lconv_mon_refcount;
  struct lconv *lconv;
  int *ctype1_refcount;
  unsigned short *ctype1;
  const unsigned short *pctype;
  const unsigned char *pclmap;
  const unsigned char *pcumap;
  struct __lc_time_data *lc_time_curr;
} threadlocinfo;







#pragma pack(pop)
# 30 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdint.h" 2 3 4



# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/6.2.0/include/stddef.h" 1 3 4

# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stddef.h" 1 3 4
# 14 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stddef.h" 3 4
extern "C" {




  __attribute__ ((__dllimport__)) extern int *__attribute__((__cdecl__)) _errno(void);

  errno_t __attribute__((__cdecl__)) _set_errno(int _Value);
  errno_t __attribute__((__cdecl__)) _get_errno(int *_Value);


  __attribute__ ((__dllimport__)) extern unsigned long __attribute__((__cdecl__)) __threadid(void);

  __attribute__ ((__dllimport__)) extern uintptr_t __attribute__((__cdecl__)) __threadhandle(void);


}
# 3 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/6.2.0/include/stddef.h" 2 3 4
# 428 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/6.2.0/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;






  typedef decltype(nullptr) nullptr_t;
# 34 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdint.h" 2 3 4


typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned uint32_t;
__extension__ typedef long long int64_t;
__extension__ typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned uint_least32_t;
__extension__ typedef long long int_least64_t;
__extension__ typedef unsigned long long uint_least64_t;





typedef signed char int_fast8_t;
typedef unsigned char uint_fast8_t;
typedef short int_fast16_t;
typedef unsigned short uint_fast16_t;
typedef int int_fast32_t;
typedef unsigned int uint_fast32_t;
__extension__ typedef long long int_fast64_t;
__extension__ typedef unsigned long long uint_fast64_t;


__extension__ typedef long long intmax_t;
__extension__ typedef unsigned long long uintmax_t;
# 11 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/6.2.0/include/stdint.h" 2 3 4
# 2 "C:/Users/user/Desktop/HLS/HLS_Final_vitis_src/spu.cpp" 2
# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/include/c++/6.2.0/stdlib.h" 1 3
# 37 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/include/c++/6.2.0/stdlib.h" 3
# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/include/c++/6.2.0/cstdlib" 1 3
# 39 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/include/c++/6.2.0/cstdlib" 3
       
# 40 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/include/c++/6.2.0/cstdlib" 3

# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 1 3
# 197 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 3
namespace std
{
  typedef long long unsigned int size_t;
  typedef long long int ptrdiff_t;


  typedef decltype(nullptr) nullptr_t;

}
# 219 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 3
namespace std
{
  inline namespace __cxx11 __attribute__((__abi_tag__ ("cxx11"))) { }
}
namespace __gnu_cxx
{
  inline namespace __cxx11 __attribute__((__abi_tag__ ("cxx11"))) { }
}
# 496 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 3
# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/os_defines.h" 1 3
# 497 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 2 3


# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/cpu_defines.h" 1 3
# 500 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/include/c++/6.2.0/x86_64-w64-mingw32/bits/c++config.h" 2 3
# 42 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/include/c++/6.2.0/cstdlib" 2 3
# 75 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/include/c++/6.2.0/cstdlib" 3
# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h" 1 3
# 11 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h" 3
# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/6.2.0/include-fixed/limits.h" 1 3 4
# 35 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/6.2.0/include-fixed/limits.h" 3 4
# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/6.2.0/include-fixed/syslimits.h" 1 3 4







# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/6.2.0/include-fixed/limits.h" 1 3 4
# 169 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/6.2.0/include-fixed/limits.h" 3 4
# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/limits.h" 1 3 4
# 170 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/6.2.0/include-fixed/limits.h" 2 3 4
# 9 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/6.2.0/include-fixed/syslimits.h" 2 3 4
# 36 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/lib/gcc/x86_64-w64-mingw32/6.2.0/include-fixed/limits.h" 2 3 4
# 12 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h" 2 3
# 26 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h" 3
#pragma pack(push,_CRT_PACKING)


extern "C" {
# 50 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h" 3
  typedef int (__attribute__((__cdecl__)) *_onexit_t)(void);
# 60 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h" 3
  typedef struct _div_t {
    int quot;
    int rem;
  } div_t;

  typedef struct _ldiv_t {
    long quot;
    long rem;
  } ldiv_t;





#pragma pack(4)
  typedef struct {
    unsigned char ld[10];
  } _LDOUBLE;
#pragma pack()



  typedef struct {
    double x;
  } _CRT_DOUBLE;

  typedef struct {
    float f;
  } _CRT_FLOAT;

       


  typedef struct {
    long double x;
  } _LONGDOUBLE;

       

#pragma pack(4)
  typedef struct {
    unsigned char ld12[12];
  } _LDBL12;
#pragma pack()
# 115 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h" 3
  extern int * __imp___mb_cur_max;
# 141 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h" 3
  typedef void (__attribute__((__cdecl__)) *_purecall_handler)(void);

  __attribute__ ((__dllimport__)) _purecall_handler __attribute__((__cdecl__)) _set_purecall_handler(_purecall_handler _Handler);
  __attribute__ ((__dllimport__)) _purecall_handler __attribute__((__cdecl__)) _get_purecall_handler(void);

  typedef void (__attribute__((__cdecl__)) *_invalid_parameter_handler)(const wchar_t *,const wchar_t *,const wchar_t *,unsigned int,uintptr_t);
  __attribute__ ((__dllimport__)) _invalid_parameter_handler __attribute__((__cdecl__)) _set_invalid_parameter_handler(_invalid_parameter_handler _Handler);
  __attribute__ ((__dllimport__)) _invalid_parameter_handler __attribute__((__cdecl__)) _get_invalid_parameter_handler(void);
# 157 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h" 3
  __attribute__ ((__dllimport__)) unsigned long *__attribute__((__cdecl__)) __doserrno(void);

  errno_t __attribute__((__cdecl__)) _set_doserrno(unsigned long _Value);
  errno_t __attribute__((__cdecl__)) _get_doserrno(unsigned long *_Value);




  extern __attribute__((dllimport)) char *_sys_errlist[1];
  extern __attribute__((dllimport)) int _sys_nerr;
# 181 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h" 3
  extern int * __imp___argc;







  extern char *** __imp___argv;







  extern wchar_t *** __imp___wargv;
# 209 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h" 3
  extern char *** __imp__environ;
# 218 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h" 3
  extern wchar_t *** __imp__wenviron;
# 227 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h" 3
  extern char ** __imp__pgmptr;
# 236 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h" 3
  extern wchar_t ** __imp__wpgmptr;



  errno_t __attribute__((__cdecl__)) _get_pgmptr(char **_Value);
  errno_t __attribute__((__cdecl__)) _get_wpgmptr(wchar_t **_Value);




  extern int * __imp__fmode;



  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _set_fmode(int _Mode);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _get_fmode(int *_PMode);





  extern unsigned int * __imp__osplatform;
# 266 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h" 3
  extern unsigned int * __imp__osver;
# 275 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h" 3
  extern unsigned int * __imp__winver;
# 284 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h" 3
  extern unsigned int * __imp__winmajor;
# 293 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h" 3
  extern unsigned int * __imp__winminor;




  errno_t __attribute__((__cdecl__)) _get_osplatform(unsigned int *_Value);
  errno_t __attribute__((__cdecl__)) _get_osver(unsigned int *_Value);
  errno_t __attribute__((__cdecl__)) _get_winver(unsigned int *_Value);
  errno_t __attribute__((__cdecl__)) _get_winmajor(unsigned int *_Value);
  errno_t __attribute__((__cdecl__)) _get_winminor(unsigned int *_Value);




  extern "C++" {
    template <typename _CountofType,size_t _SizeOfArray> char (*__countof_helper( _CountofType (&_Array)[_SizeOfArray]))[_SizeOfArray];

  }





  void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) exit(int _Code) __attribute__ ((__noreturn__));
  void __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) _exit(int _Code) __attribute__ ((__noreturn__));



  void __attribute__((__cdecl__)) _Exit(int) __attribute__ ((__noreturn__));






       

  void __attribute__((__cdecl__)) __attribute__((noreturn)) abort(void);
       



  __attribute__ ((__dllimport__)) unsigned int __attribute__((__cdecl__)) _set_abort_behavior(unsigned int _Flags,unsigned int _Mask);



  int __attribute__((__cdecl__)) abs(int _X);
  long __attribute__((__cdecl__)) labs(long _X);


  __extension__ long long __attribute__((__cdecl__)) _abs64(long long);

  extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) long long __attribute__((__cdecl__)) _abs64(long long x) {
    return __builtin_llabs(x);
  }


  int __attribute__((__cdecl__)) atexit(void (__attribute__((__cdecl__)) *)(void));


  double __attribute__((__cdecl__)) atof(const char *_String);
  double __attribute__((__cdecl__)) _atof_l(const char *_String,_locale_t _Locale);

  int __attribute__((__cdecl__)) atoi(const char *_Str);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _atoi_l(const char *_Str,_locale_t _Locale);
  long __attribute__((__cdecl__)) atol(const char *_Str);
  __attribute__ ((__dllimport__)) long __attribute__((__cdecl__)) _atol_l(const char *_Str,_locale_t _Locale);


  void *__attribute__((__cdecl__)) bsearch(const void *_Key,const void *_Base,size_t _NumOfElements,size_t _SizeOfElements,int (__attribute__((__cdecl__)) *_PtFuncCompare)(const void *,const void *));
  void __attribute__((__cdecl__)) qsort(void *_Base,size_t _NumOfElements,size_t _SizeOfElements,int (__attribute__((__cdecl__)) *_PtFuncCompare)(const void *,const void *));

  unsigned short __attribute__((__cdecl__)) _byteswap_ushort(unsigned short _Short);
  unsigned long __attribute__((__cdecl__)) _byteswap_ulong (unsigned long _Long);
  __extension__ unsigned long long __attribute__((__cdecl__)) _byteswap_uint64(unsigned long long _Int64);
  div_t __attribute__((__cdecl__)) div(int _Numerator,int _Denominator);
  char *__attribute__((__cdecl__)) getenv(const char *_VarName) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _itoa(int _Value,char *_Dest,int _Radix);
  __extension__ __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _i64toa(long long _Val,char *_DstBuf,int _Radix) ;
  __extension__ __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _ui64toa(unsigned long long _Val,char *_DstBuf,int _Radix) ;
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _atoi64(const char *_String);
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _atoi64_l(const char *_String,_locale_t _Locale);
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _strtoi64(const char *_String,char **_EndPtr,int _Radix);
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _strtoi64_l(const char *_String,char **_EndPtr,int _Radix,_locale_t _Locale);
  __extension__ __attribute__ ((__dllimport__)) unsigned long long __attribute__((__cdecl__)) _strtoui64(const char *_String,char **_EndPtr,int _Radix);
  __extension__ __attribute__ ((__dllimport__)) unsigned long long __attribute__((__cdecl__)) _strtoui64_l(const char *_String,char **_EndPtr,int _Radix,_locale_t _Locale);
  ldiv_t __attribute__((__cdecl__)) ldiv(long _Numerator,long _Denominator);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _ltoa(long _Value,char *_Dest,int _Radix) ;
  int __attribute__((__cdecl__)) mblen(const char *_Ch,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _mblen_l(const char *_Ch,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _mbstrlen(const char *_Str);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _mbstrlen_l(const char *_Str,_locale_t _Locale);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _mbstrnlen(const char *_Str,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _mbstrnlen_l(const char *_Str,size_t _MaxCount,_locale_t _Locale);
  int __attribute__((__cdecl__)) mbtowc(wchar_t * __restrict__ _DstCh,const char * __restrict__ _SrcCh,size_t _SrcSizeInBytes);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _mbtowc_l(wchar_t * __restrict__ _DstCh,const char * __restrict__ _SrcCh,size_t _SrcSizeInBytes,_locale_t _Locale);
  size_t __attribute__((__cdecl__)) mbstowcs(wchar_t * __restrict__ _Dest,const char * __restrict__ _Source,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _mbstowcs_l(wchar_t * __restrict__ _Dest,const char * __restrict__ _Source,size_t _MaxCount,_locale_t _Locale);
  int __attribute__((__cdecl__)) mkstemp(char *template_name);
  int __attribute__((__cdecl__)) rand(void);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _set_error_mode(int _Mode);
  void __attribute__((__cdecl__)) srand(unsigned int _Seed);
# 405 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h" 3
inline __attribute__((__cdecl__))
double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtod(const char * __restrict__ _Str,char ** __restrict__ _EndPtr)
{
  double __attribute__((__cdecl__)) __mingw_strtod (const char * __restrict__, char ** __restrict__);
  return __mingw_strtod( _Str, _EndPtr);
}

inline __attribute__((__cdecl__))
float __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtof(const char * __restrict__ _Str,char ** __restrict__ _EndPtr)
{
  float __attribute__((__cdecl__)) __mingw_strtof (const char * __restrict__, char ** __restrict__);
  return __mingw_strtof( _Str, _EndPtr);
}






  long double __attribute__((__cdecl__)) __attribute__ ((__nothrow__)) strtold(const char * __restrict__ , char ** __restrict__ );


  extern double __attribute__((__cdecl__)) __attribute__ ((__nothrow__))
  __strtod (const char * __restrict__ , char ** __restrict__);






  float __attribute__((__cdecl__)) __mingw_strtof (const char * __restrict__, char ** __restrict__);
  double __attribute__((__cdecl__)) __mingw_strtod (const char * __restrict__, char ** __restrict__);
  long double __attribute__((__cdecl__)) __mingw_strtold(const char * __restrict__, char ** __restrict__);

  __attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) _strtod_l(const char * __restrict__ _Str,char ** __restrict__ _EndPtr,_locale_t _Locale);
  long __attribute__((__cdecl__)) strtol(const char * __restrict__ _Str,char ** __restrict__ _EndPtr,int _Radix);
  __attribute__ ((__dllimport__)) long __attribute__((__cdecl__)) _strtol_l(const char * __restrict__ _Str,char ** __restrict__ _EndPtr,int _Radix,_locale_t _Locale);
  unsigned long __attribute__((__cdecl__)) strtoul(const char * __restrict__ _Str,char ** __restrict__ _EndPtr,int _Radix);
  __attribute__ ((__dllimport__)) unsigned long __attribute__((__cdecl__)) _strtoul_l(const char * __restrict__ _Str,char ** __restrict__ _EndPtr,int _Radix,_locale_t _Locale);


  int __attribute__((__cdecl__)) system(const char *_Command);

  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _ultoa(unsigned long _Value,char *_Dest,int _Radix) ;
  int __attribute__((__cdecl__)) wctomb(char *_MbCh,wchar_t _WCh) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wctomb_l(char *_MbCh,wchar_t _WCh,_locale_t _Locale) ;
  size_t __attribute__((__cdecl__)) wcstombs(char * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _wcstombs_l(char * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _MaxCount,_locale_t _Locale) ;



  void *__attribute__((__cdecl__)) calloc(size_t _NumOfElements,size_t _SizeOfElements);
  void __attribute__((__cdecl__)) free(void *_Memory);
  void *__attribute__((__cdecl__)) malloc(size_t _Size);
  void *__attribute__((__cdecl__)) realloc(void *_Memory,size_t _NewSize);
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _recalloc(void *_Memory,size_t _Count,size_t _Size);


       
       


  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _aligned_free(void *_Memory);
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _aligned_malloc(size_t _Size,size_t _Alignment);
       
       

  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _aligned_offset_malloc(size_t _Size,size_t _Alignment,size_t _Offset);
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _aligned_realloc(void *_Memory,size_t _Size,size_t _Alignment);
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _aligned_recalloc(void *_Memory,size_t _Count,size_t _Size,size_t _Alignment);
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _aligned_offset_realloc(void *_Memory,size_t _Size,size_t _Alignment,size_t _Offset);
  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _aligned_offset_recalloc(void *_Memory,size_t _Count,size_t _Size,size_t _Alignment,size_t _Offset);





  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _itow(int _Value,wchar_t *_Dest,int _Radix) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _ltow(long _Value,wchar_t *_Dest,int _Radix) ;
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _ultow(unsigned long _Value,wchar_t *_Dest,int _Radix) ;

  double __attribute__((__cdecl__)) __mingw_wcstod(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr);
  float __attribute__((__cdecl__)) __mingw_wcstof(const wchar_t * __restrict__ nptr, wchar_t ** __restrict__ endptr);
  long double __attribute__((__cdecl__)) __mingw_wcstold(const wchar_t * __restrict__, wchar_t ** __restrict__);


  inline __attribute__((__cdecl__))
  double __attribute__((__cdecl__)) wcstod(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr){
    return __mingw_wcstod(_Str,_EndPtr);
  }
  inline __attribute__((__cdecl__))
  float __attribute__((__cdecl__)) wcstof(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr){
    return __mingw_wcstof(_Str,_EndPtr);
  }






  long double __attribute__((__cdecl__)) wcstold(const wchar_t * __restrict__, wchar_t ** __restrict__);

  __attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) _wcstod_l(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr,_locale_t _Locale);
  long __attribute__((__cdecl__)) wcstol(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr,int _Radix);
  __attribute__ ((__dllimport__)) long __attribute__((__cdecl__)) _wcstol_l(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr,int _Radix,_locale_t _Locale);
  unsigned long __attribute__((__cdecl__)) wcstoul(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr,int _Radix);
  __attribute__ ((__dllimport__)) unsigned long __attribute__((__cdecl__)) _wcstoul_l(const wchar_t * __restrict__ _Str,wchar_t ** __restrict__ _EndPtr,int _Radix,_locale_t _Locale);
  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wgetenv(const wchar_t *_VarName) ;


  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wsystem(const wchar_t *_Command);

  __attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) _wtof(const wchar_t *_Str);
  __attribute__ ((__dllimport__)) double __attribute__((__cdecl__)) _wtof_l(const wchar_t *_Str,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wtoi(const wchar_t *_Str);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wtoi_l(const wchar_t *_Str,_locale_t _Locale);
  __attribute__ ((__dllimport__)) long __attribute__((__cdecl__)) _wtol(const wchar_t *_Str);
  __attribute__ ((__dllimport__)) long __attribute__((__cdecl__)) _wtol_l(const wchar_t *_Str,_locale_t _Locale);

  __extension__ __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _i64tow(long long _Val,wchar_t *_DstBuf,int _Radix) ;
  __extension__ __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _ui64tow(unsigned long long _Val,wchar_t *_DstBuf,int _Radix) ;
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _wtoi64(const wchar_t *_Str);
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _wtoi64_l(const wchar_t *_Str,_locale_t _Locale);
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _wcstoi64(const wchar_t *_Str,wchar_t **_EndPtr,int _Radix);
  __extension__ __attribute__ ((__dllimport__)) long long __attribute__((__cdecl__)) _wcstoi64_l(const wchar_t *_Str,wchar_t **_EndPtr,int _Radix,_locale_t _Locale);
  __extension__ __attribute__ ((__dllimport__)) unsigned long long __attribute__((__cdecl__)) _wcstoui64(const wchar_t *_Str,wchar_t **_EndPtr,int _Radix);
  __extension__ __attribute__ ((__dllimport__)) unsigned long long __attribute__((__cdecl__)) _wcstoui64_l(const wchar_t *_Str ,wchar_t **_EndPtr,int _Radix,_locale_t _Locale);


  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _putenv(const char *_EnvString);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _wputenv(const wchar_t *_EnvString);



  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _fullpath(char *_FullPath,const char *_Path,size_t _SizeInBytes);
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _ecvt(double _Val,int _NumOfDigits,int *_PtDec,int *_PtSign) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _fcvt(double _Val,int _NumOfDec,int *_PtDec,int *_PtSign) ;
  __attribute__ ((__dllimport__)) char *__attribute__((__cdecl__)) _gcvt(double _Val,int _NumOfDigits,char *_DstBuf) ;
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _atodbl(_CRT_DOUBLE *_Result,char *_Str);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _atoldbl(_LDOUBLE *_Result,char *_Str);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _atoflt(_CRT_FLOAT *_Result,char *_Str);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _atodbl_l(_CRT_DOUBLE *_Result,char *_Str,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _atoldbl_l(_LDOUBLE *_Result,char *_Str,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _atoflt_l(_CRT_FLOAT *_Result,char *_Str,_locale_t _Locale);
# 564 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h" 3
unsigned long __attribute__((__cdecl__)) _lrotl(unsigned long,int);
unsigned long __attribute__((__cdecl__)) _lrotr(unsigned long,int);





  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _makepath(char *_Path,const char *_Drive,const char *_Dir,const char *_Filename,const char *_Ext);
  _onexit_t __attribute__((__cdecl__)) _onexit(_onexit_t _Func);



  void __attribute__((__cdecl__)) perror(const char *_ErrMsg);

       
       


  __extension__ unsigned long long __attribute__((__cdecl__)) _rotl64(unsigned long long _Val,int _Shift);
  __extension__ unsigned long long __attribute__((__cdecl__)) _rotr64(unsigned long long Value,int Shift);
       
       
       
       


  unsigned int __attribute__((__cdecl__)) _rotr(unsigned int _Val,int _Shift);
  unsigned int __attribute__((__cdecl__)) _rotl(unsigned int _Val,int _Shift);
       
       
  __extension__ unsigned long long __attribute__((__cdecl__)) _rotr64(unsigned long long _Val,int _Shift);
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _searchenv(const char *_Filename,const char *_EnvVar,char *_ResultPath) ;
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _splitpath(const char *_FullPath,char *_Drive,char *_Dir,char *_Filename,char *_Ext) ;
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _swab(char *_Buf1,char *_Buf2,int _SizeInBytes);



  __attribute__ ((__dllimport__)) wchar_t *__attribute__((__cdecl__)) _wfullpath(wchar_t *_FullPath,const wchar_t *_Path,size_t _SizeInWords);
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _wmakepath(wchar_t *_ResultPath,const wchar_t *_Drive,const wchar_t *_Dir,const wchar_t *_Filename,const wchar_t *_Ext);


  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _wperror(const wchar_t *_ErrMsg);

  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _wsearchenv(const wchar_t *_Filename,const wchar_t *_EnvVar,wchar_t *_ResultPath) ;
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _wsplitpath(const wchar_t *_FullPath,wchar_t *_Drive,wchar_t *_Dir,wchar_t *_Filename,wchar_t *_Ext) ;


  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _beep(unsigned _Frequency,unsigned _Duration) __attribute__ ((__deprecated__));

  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _seterrormode(int _Mode) __attribute__ ((__deprecated__));
  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) _sleep(unsigned long _Duration) __attribute__ ((__deprecated__));
# 635 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h" 3
  char *__attribute__((__cdecl__)) ecvt(double _Val,int _NumOfDigits,int *_PtDec,int *_PtSign) ;
  char *__attribute__((__cdecl__)) fcvt(double _Val,int _NumOfDec,int *_PtDec,int *_PtSign) ;
  char *__attribute__((__cdecl__)) gcvt(double _Val,int _NumOfDigits,char *_DstBuf) ;
  char *__attribute__((__cdecl__)) itoa(int _Val,char *_DstBuf,int _Radix) ;
  char *__attribute__((__cdecl__)) ltoa(long _Val,char *_DstBuf,int _Radix) ;
  int __attribute__((__cdecl__)) putenv(const char *_EnvString) ;



  void __attribute__((__cdecl__)) swab(char *_Buf1,char *_Buf2,int _SizeInBytes) ;


  char *__attribute__((__cdecl__)) ultoa(unsigned long _Val,char *_Dstbuf,int _Radix) ;
  _onexit_t __attribute__((__cdecl__)) onexit(_onexit_t _Func);





  typedef struct { __extension__ long long quot, rem; } lldiv_t;

  __extension__ lldiv_t __attribute__((__cdecl__)) lldiv(long long, long long);

  __extension__ long long __attribute__((__cdecl__)) llabs(long long);




  __extension__ long long __attribute__((__cdecl__)) strtoll(const char * __restrict__, char ** __restrict, int);
  __extension__ unsigned long long __attribute__((__cdecl__)) strtoull(const char * __restrict__, char ** __restrict__, int);


  __extension__ long long __attribute__((__cdecl__)) atoll (const char *);


  __extension__ long long __attribute__((__cdecl__)) wtoll (const wchar_t *);
  __extension__ char *__attribute__((__cdecl__)) lltoa (long long, char *, int);
  __extension__ char *__attribute__((__cdecl__)) ulltoa (unsigned long long , char *, int);
  __extension__ wchar_t *__attribute__((__cdecl__)) lltow (long long, wchar_t *, int);
  __extension__ wchar_t *__attribute__((__cdecl__)) ulltow (unsigned long long, wchar_t *, int);
# 690 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h" 3
}


#pragma pack(pop)

# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h" 1 3
# 10 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h" 3
# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/include/c++/6.2.0/stdlib.h" 1 3
# 31 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/include/c++/6.2.0/stdlib.h" 3
# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h" 1 3
# 32 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/include/c++/6.2.0/stdlib.h" 2 3
# 11 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/sec_api/stdlib_s.h" 2 3




extern "C" {


  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _dupenv_s(char **_PBuffer,size_t *_PBufferSizeInBytes,const char *_VarName);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _itoa_s(int _Value,char *_DstBuf,size_t _Size,int _Radix);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _i64toa_s(long long _Val,char *_DstBuf,size_t _Size,int _Radix);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _ui64toa_s(unsigned long long _Val,char *_DstBuf,size_t _Size,int _Radix);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _ltoa_s(long _Val,char *_DstBuf,size_t _Size,int _Radix);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) mbstowcs_s(size_t *_PtNumOfCharConverted,wchar_t *_DstBuf,size_t _SizeInWords,const char *_SrcBuf,size_t _MaxCount);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _mbstowcs_s_l(size_t *_PtNumOfCharConverted,wchar_t *_DstBuf,size_t _SizeInWords,const char *_SrcBuf,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _ultoa_s(unsigned long _Val,char *_DstBuf,size_t _Size,int _Radix);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wctomb_s_l(int *_SizeConverted,char *_MbCh,size_t _SizeInBytes,wchar_t _WCh,_locale_t _Locale);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) wcstombs_s(size_t *_PtNumOfCharConverted,char *_Dst,size_t _DstSizeInBytes,const wchar_t *_Src,size_t _MaxCountInBytes);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wcstombs_s_l(size_t *_PtNumOfCharConverted,char *_Dst,size_t _DstSizeInBytes,const wchar_t *_Src,size_t _MaxCountInBytes,_locale_t _Locale);



  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _itow_s (int _Val,wchar_t *_DstBuf,size_t _SizeInWords,int _Radix);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _ltow_s (long _Val,wchar_t *_DstBuf,size_t _SizeInWords,int _Radix);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _ultow_s (unsigned long _Val,wchar_t *_DstBuf,size_t _SizeInWords,int _Radix);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wgetenv_s(size_t *_ReturnSize,wchar_t *_DstBuf,size_t _DstSizeInWords,const wchar_t *_VarName);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wdupenv_s(wchar_t **_Buffer,size_t *_BufferSizeInWords,const wchar_t *_VarName);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _i64tow_s(long long _Val,wchar_t *_DstBuf,size_t _SizeInWords,int _Radix);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _ui64tow_s(unsigned long long _Val,wchar_t *_DstBuf,size_t _SizeInWords,int _Radix);



  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _ecvt_s(char *_DstBuf,size_t _Size,double _Val,int _NumOfDights,int *_PtDec,int *_PtSign);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _fcvt_s(char *_DstBuf,size_t _Size,double _Val,int _NumOfDec,int *_PtDec,int *_PtSign);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _gcvt_s(char *_DstBuf,size_t _Size,double _Val,int _NumOfDigits);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _makepath_s(char *_PathResult,size_t _Size,const char *_Drive,const char *_Dir,const char *_Filename,const char *_Ext);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _putenv_s(const char *_Name,const char *_Value);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _searchenv_s(const char *_Filename,const char *_EnvVar,char *_ResultPath,size_t _SizeInBytes);

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _splitpath_s(const char *_FullPath,char *_Drive,size_t _DriveSize,char *_Dir,size_t _DirSize,char *_Filename,size_t _FilenameSize,char *_Ext,size_t _ExtSize);
  extern "C++" { template <size_t __drive_size, size_t __dir_size, size_t __name_size, size_t __ext_size> inline errno_t __attribute__((__cdecl__)) _splitpath_s(const char *_Dest, char (&__drive)[__drive_size], char (&__dir)[__dir_size], char (&__name)[__name_size], char (&__ext)[__ext_size]) { return _splitpath_s(_Dest, __drive, __drive_size, __dir, __dir_size, __name, __name_size, __ext, __ext_size); } }



  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wmakepath_s(wchar_t *_PathResult,size_t _SizeInWords,const wchar_t *_Drive,const wchar_t *_Dir,const wchar_t *_Filename,const wchar_t *_Ext);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wputenv_s(const wchar_t *_Name,const wchar_t *_Value);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wsearchenv_s(const wchar_t *_Filename,const wchar_t *_EnvVar,wchar_t *_ResultPath,size_t _SizeInWords);

  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _wsplitpath_s(const wchar_t *_FullPath,wchar_t *_Drive,size_t _DriveSizeInWords,wchar_t *_Dir,size_t _DirSizeInWords,wchar_t *_Filename,size_t _FilenameSizeInWords,wchar_t *_Ext,size_t _ExtSizeInWords);
  extern "C++" { template <size_t __drive_size, size_t __dir_size, size_t __name_size, size_t __ext_size> inline errno_t __attribute__((__cdecl__)) _wsplitpath_s(const wchar_t *_Dest, wchar_t (&__drive)[__drive_size], wchar_t (&__dir)[__dir_size], wchar_t (&__name)[__name_size], wchar_t (&__ext)[__ext_size]) { return _wsplitpath_s(_Dest, __drive, __drive_size, __dir, __dir_size, __name, __name_size, __ext, __ext_size); } }





  __attribute__ ((__dllimport__)) void __attribute__((__cdecl__)) qsort_s(void *_Base,size_t _NumOfElements,size_t _SizeOfElements,int (__attribute__((__cdecl__)) *_PtFuncCompare)(void *,const void *,const void *),void *_Context);





}
# 696 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h" 2 3
# 1 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/malloc.h" 1 3
# 12 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/malloc.h" 3
#pragma pack(push,_CRT_PACKING)


extern "C" {
# 47 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/malloc.h" 3
  typedef struct _heapinfo {
    int *_pentry;
    size_t _size;
    int _useflag;
  } _HEAPINFO;


  extern unsigned int _amblksiz;
# 66 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/malloc.h" 3
       
       
# 98 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/malloc.h" 3
       
       




void * __mingw_aligned_malloc (size_t _Size, size_t _Alignment);
void __mingw_aligned_free (void *_Memory);
void * __mingw_aligned_offset_realloc (void *_Memory, size_t _Size, size_t _Alignment, size_t _Offset);
void * __mingw_aligned_realloc (void *_Memory, size_t _Size, size_t _Offset);



  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _resetstkoflw (void);
  __attribute__ ((__dllimport__)) unsigned long __attribute__((__cdecl__)) _set_malloc_crt_max_wait(unsigned long _NewValue);

  __attribute__ ((__dllimport__)) void *__attribute__((__cdecl__)) _expand(void *_Memory,size_t _NewSize);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _msize(void *_Memory);






  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _get_sbh_threshold(void);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _set_sbh_threshold(size_t _NewValue);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _set_amblksiz(size_t _Value);
  __attribute__ ((__dllimport__)) errno_t __attribute__((__cdecl__)) _get_amblksiz(size_t *_Value);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _heapadd(void *_Memory,size_t _Size);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _heapchk(void);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _heapmin(void);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _heapset(unsigned int _Fill);
  __attribute__ ((__dllimport__)) int __attribute__((__cdecl__)) _heapwalk(_HEAPINFO *_EntryInfo);
  __attribute__ ((__dllimport__)) size_t __attribute__((__cdecl__)) _heapused(size_t *_Used,size_t *_Commit);
  __attribute__ ((__dllimport__)) intptr_t __attribute__((__cdecl__)) _get_heap_handle(void);
# 145 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/malloc.h" 3
  static __inline void *_MarkAllocaS(void *_Ptr,unsigned int _Marker) {
    if(_Ptr) {
      *((unsigned int*)_Ptr) = _Marker;
      _Ptr = (char*)_Ptr + 16;
    }
    return _Ptr;
  }
# 164 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/malloc.h" 3
  static __inline void __attribute__((__cdecl__)) _freea(void *_Memory) {
    unsigned int _Marker;
    if(_Memory) {
      _Memory = (char*)_Memory - 16;
      _Marker = *(unsigned int *)_Memory;
      if(_Marker==0xDDDD) {
 free(_Memory);
      }





    }
  }
# 207 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/malloc.h" 3
}


#pragma pack(pop)
# 697 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/x86_64-w64-mingw32/include/stdlib.h" 2 3
# 76 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/include/c++/6.2.0/cstdlib" 2 3
# 118 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/include/c++/6.2.0/cstdlib" 3
extern "C++"
{
namespace std
{


  using ::div_t;
  using ::ldiv_t;

  using ::abort;
  using ::abs;
  using ::atexit;





  using ::atof;
  using ::atoi;
  using ::atol;
  using ::bsearch;
  using ::calloc;
  using ::div;
  using ::exit;
  using ::free;
  using ::getenv;
  using ::labs;
  using ::ldiv;
  using ::malloc;

  using ::mblen;
  using ::mbstowcs;
  using ::mbtowc;

  using ::qsort;





  using ::rand;
  using ::realloc;
  using ::srand;
  using ::strtod;
  using ::strtol;
  using ::strtoul;
  using ::system;

  using ::wcstombs;
  using ::wctomb;



  inline long
  abs(long __i) { return __builtin_labs(__i); }

  inline ldiv_t
  div(long __i, long __j) { return ldiv(__i, __j); }



  inline long long
  abs(long long __x) { return __builtin_llabs (__x); }



  inline __int128
  abs(__int128 __x) { return __x >= 0 ? __x : -__x; }
# 201 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/include/c++/6.2.0/cstdlib" 3

}
# 215 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/include/c++/6.2.0/cstdlib" 3
namespace __gnu_cxx
{



  using ::lldiv_t;





  using ::_Exit;



  using ::llabs;

  inline lldiv_t
  div(long long __n, long long __d)
  { lldiv_t __q; __q.quot = __n / __d; __q.rem = __n % __d; return __q; }

  using ::lldiv;
# 247 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/include/c++/6.2.0/cstdlib" 3
  using ::atoll;
  using ::strtoll;
  using ::strtoull;

  using ::strtof;
  using ::strtold;


}

namespace std
{

  using ::__gnu_cxx::lldiv_t;

  using ::__gnu_cxx::_Exit;

  using ::__gnu_cxx::llabs;
  using ::__gnu_cxx::div;
  using ::__gnu_cxx::lldiv;

  using ::__gnu_cxx::atoll;
  using ::__gnu_cxx::strtof;
  using ::__gnu_cxx::strtoll;
  using ::__gnu_cxx::strtoull;
  using ::__gnu_cxx::strtold;
}



}
# 38 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/include/c++/6.2.0/stdlib.h" 2 3

using std::abort;
using std::atexit;
using std::exit;
# 52 "Z:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/include/c++/6.2.0/stdlib.h" 3
using std::div_t;
using std::ldiv_t;

using std::abs;
using std::atof;
using std::atoi;
using std::atol;
using std::bsearch;
using std::calloc;
using std::div;
using std::free;
using std::getenv;
using std::labs;
using std::ldiv;
using std::malloc;

using std::mblen;
using std::mbstowcs;
using std::mbtowc;

using std::qsort;
using std::rand;
using std::realloc;
using std::srand;
using std::strtod;
using std::strtol;
using std::strtoul;
using std::system;

using std::wcstombs;
using std::wctomb;
# 3 "C:/Users/user/Desktop/HLS/HLS_Final_vitis_src/spu.cpp" 2
# 1 "C:/Users/user/Desktop/HLS/HLS_Final_vitis_src/clean/params.h" 1



# 1 "C:/Users/user/Desktop/HLS/HLS_Final_vitis_src/clean/config.h" 1
# 5 "C:/Users/user/Desktop/HLS/HLS_Final_vitis_src/clean/params.h" 2
# 4 "C:/Users/user/Desktop/HLS/HLS_Final_vitis_src/spu.cpp" 2
# 1 "C:/Users/user/Desktop/HLS/HLS_Final_vitis_src/spu.h" 1
# 13 "C:/Users/user/Desktop/HLS/HLS_Final_vitis_src/spu.h"

# 13 "C:/Users/user/Desktop/HLS/HLS_Final_vitis_src/spu.h"
class SPU
{
private:
    uint64_t s[25];
    unsigned int pos;
public:
    SPU();
    void store64(uint8_t x[8], uint64_t u);
    uint64_t load64(const uint8_t x[8]);
    void KeccakF1600_StatePermute();
    void shake_init();
    void stream_init(unsigned int mode, const uint8_t seed[48], uint16_t nonce);
    void shake_absorb(unsigned int mode, const uint8_t *m, size_t mlen);
    void shake_finalize(unsigned int mode);
    void shake_squeezeblocks(unsigned int mode, uint8_t *out, size_t nblocks);
    void shake_squeeze(unsigned int mode, uint8_t *out, size_t outlen);
    void shake(unsigned int mode, uint8_t *out, size_t outlen, const uint8_t *in, size_t inlen);
    void sample_uniform(int32_t* a, const uint8_t seed[32], uint16_t nonce);
    void sample_eta(int32_t* a, const uint8_t seed[32], uint16_t nonce);
};
# 5 "C:/Users/user/Desktop/HLS/HLS_Final_vitis_src/spu.cpp" 2

SPU::SPU(){}

uint64_t SPU::load64(const uint8_t x[8]) {
  unsigned int i;
  uint64_t r = 0;

  for(i=0;i<8;i++)
    r |= (uint64_t)x[i] << 8*i;

  return r;
}

void SPU::store64(uint8_t x[8], uint64_t u) {
  unsigned int i;

  for(i=0;i<8;i++)
    x[i] = u >> 8*i;
}


static const uint64_t KeccakF_RoundConstants[24] = {
  (uint64_t)0x0000000000000001ULL,
  (uint64_t)0x0000000000008082ULL,
  (uint64_t)0x800000000000808aULL,
  (uint64_t)0x8000000080008000ULL,
  (uint64_t)0x000000000000808bULL,
  (uint64_t)0x0000000080000001ULL,
  (uint64_t)0x8000000080008081ULL,
  (uint64_t)0x8000000000008009ULL,
  (uint64_t)0x000000000000008aULL,
  (uint64_t)0x0000000000000088ULL,
  (uint64_t)0x0000000080008009ULL,
  (uint64_t)0x000000008000000aULL,
  (uint64_t)0x000000008000808bULL,
  (uint64_t)0x800000000000008bULL,
  (uint64_t)0x8000000000008089ULL,
  (uint64_t)0x8000000000008003ULL,
  (uint64_t)0x8000000000008002ULL,
  (uint64_t)0x8000000000000080ULL,
  (uint64_t)0x000000000000800aULL,
  (uint64_t)0x800000008000000aULL,
  (uint64_t)0x8000000080008081ULL,
  (uint64_t)0x8000000000008080ULL,
  (uint64_t)0x0000000080000001ULL,
  (uint64_t)0x8000000080008008ULL
};

void SPU::KeccakF1600_StatePermute()
{
        int round;

        uint64_t Aba, Abe, Abi, Abo, Abu;
        uint64_t Aga, Age, Agi, Ago, Agu;
        uint64_t Aka, Ake, Aki, Ako, Aku;
        uint64_t Ama, Ame, Ami, Amo, Amu;
        uint64_t Asa, Ase, Asi, Aso, Asu;
        uint64_t BCa, BCe, BCi, BCo, BCu;
        uint64_t Da, De, Di, Do, Du;
        uint64_t Eba, Ebe, Ebi, Ebo, Ebu;
        uint64_t Ega, Ege, Egi, Ego, Egu;
        uint64_t Eka, Eke, Eki, Eko, Eku;
        uint64_t Ema, Eme, Emi, Emo, Emu;
        uint64_t Esa, Ese, Esi, Eso, Esu;


        Aba = s[ 0];
        Abe = s[ 1];
        Abi = s[ 2];
        Abo = s[ 3];
        Abu = s[ 4];
        Aga = s[ 5];
        Age = s[ 6];
        Agi = s[ 7];
        Ago = s[ 8];
        Agu = s[ 9];
        Aka = s[10];
        Ake = s[11];
        Aki = s[12];
        Ako = s[13];
        Aku = s[14];
        Ama = s[15];
        Ame = s[16];
        Ami = s[17];
        Amo = s[18];
        Amu = s[19];
        Asa = s[20];
        Ase = s[21];
        Asi = s[22];
        Aso = s[23];
        Asu = s[24];

        for( round = 0; round < 24; round += 2 )
        {

            BCa = Aba^Aga^Aka^Ama^Asa;
            BCe = Abe^Age^Ake^Ame^Ase;
            BCi = Abi^Agi^Aki^Ami^Asi;
            BCo = Abo^Ago^Ako^Amo^Aso;
            BCu = Abu^Agu^Aku^Amu^Asu;


            Da = BCu^((BCe << 1) ^ (BCe >> (64-1)));
            De = BCa^((BCi << 1) ^ (BCi >> (64-1)));
            Di = BCe^((BCo << 1) ^ (BCo >> (64-1)));
            Do = BCi^((BCu << 1) ^ (BCu >> (64-1)));
            Du = BCo^((BCa << 1) ^ (BCa >> (64-1)));

            Aba ^= Da;
            BCa = Aba;
            Age ^= De;
            BCe = ((Age << 44) ^ (Age >> (64-44)));
            Aki ^= Di;
            BCi = ((Aki << 43) ^ (Aki >> (64-43)));
            Amo ^= Do;
            BCo = ((Amo << 21) ^ (Amo >> (64-21)));
            Asu ^= Du;
            BCu = ((Asu << 14) ^ (Asu >> (64-14)));
            Eba = BCa ^((~BCe)& BCi );
            Eba ^= (uint64_t)KeccakF_RoundConstants[round];
            Ebe = BCe ^((~BCi)& BCo );
            Ebi = BCi ^((~BCo)& BCu );
            Ebo = BCo ^((~BCu)& BCa );
            Ebu = BCu ^((~BCa)& BCe );

            Abo ^= Do;
            BCa = ((Abo << 28) ^ (Abo >> (64-28)));
            Agu ^= Du;
            BCe = ((Agu << 20) ^ (Agu >> (64-20)));
            Aka ^= Da;
            BCi = ((Aka << 3) ^ (Aka >> (64-3)));
            Ame ^= De;
            BCo = ((Ame << 45) ^ (Ame >> (64-45)));
            Asi ^= Di;
            BCu = ((Asi << 61) ^ (Asi >> (64-61)));
            Ega = BCa ^((~BCe)& BCi );
            Ege = BCe ^((~BCi)& BCo );
            Egi = BCi ^((~BCo)& BCu );
            Ego = BCo ^((~BCu)& BCa );
            Egu = BCu ^((~BCa)& BCe );

            Abe ^= De;
            BCa = ((Abe << 1) ^ (Abe >> (64-1)));
            Agi ^= Di;
            BCe = ((Agi << 6) ^ (Agi >> (64-6)));
            Ako ^= Do;
            BCi = ((Ako << 25) ^ (Ako >> (64-25)));
            Amu ^= Du;
            BCo = ((Amu << 8) ^ (Amu >> (64-8)));
            Asa ^= Da;
            BCu = ((Asa << 18) ^ (Asa >> (64-18)));
            Eka = BCa ^((~BCe)& BCi );
            Eke = BCe ^((~BCi)& BCo );
            Eki = BCi ^((~BCo)& BCu );
            Eko = BCo ^((~BCu)& BCa );
            Eku = BCu ^((~BCa)& BCe );

            Abu ^= Du;
            BCa = ((Abu << 27) ^ (Abu >> (64-27)));
            Aga ^= Da;
            BCe = ((Aga << 36) ^ (Aga >> (64-36)));
            Ake ^= De;
            BCi = ((Ake << 10) ^ (Ake >> (64-10)));
            Ami ^= Di;
            BCo = ((Ami << 15) ^ (Ami >> (64-15)));
            Aso ^= Do;
            BCu = ((Aso << 56) ^ (Aso >> (64-56)));
            Ema = BCa ^((~BCe)& BCi );
            Eme = BCe ^((~BCi)& BCo );
            Emi = BCi ^((~BCo)& BCu );
            Emo = BCo ^((~BCu)& BCa );
            Emu = BCu ^((~BCa)& BCe );

            Abi ^= Di;
            BCa = ((Abi << 62) ^ (Abi >> (64-62)));
            Ago ^= Do;
            BCe = ((Ago << 55) ^ (Ago >> (64-55)));
            Aku ^= Du;
            BCi = ((Aku << 39) ^ (Aku >> (64-39)));
            Ama ^= Da;
            BCo = ((Ama << 41) ^ (Ama >> (64-41)));
            Ase ^= De;
            BCu = ((Ase << 2) ^ (Ase >> (64-2)));
            Esa = BCa ^((~BCe)& BCi );
            Ese = BCe ^((~BCi)& BCo );
            Esi = BCi ^((~BCo)& BCu );
            Eso = BCo ^((~BCu)& BCa );
            Esu = BCu ^((~BCa)& BCe );


            BCa = Eba^Ega^Eka^Ema^Esa;
            BCe = Ebe^Ege^Eke^Eme^Ese;
            BCi = Ebi^Egi^Eki^Emi^Esi;
            BCo = Ebo^Ego^Eko^Emo^Eso;
            BCu = Ebu^Egu^Eku^Emu^Esu;


            Da = BCu^((BCe << 1) ^ (BCe >> (64-1)));
            De = BCa^((BCi << 1) ^ (BCi >> (64-1)));
            Di = BCe^((BCo << 1) ^ (BCo >> (64-1)));
            Do = BCi^((BCu << 1) ^ (BCu >> (64-1)));
            Du = BCo^((BCa << 1) ^ (BCa >> (64-1)));

            Eba ^= Da;
            BCa = Eba;
            Ege ^= De;
            BCe = ((Ege << 44) ^ (Ege >> (64-44)));
            Eki ^= Di;
            BCi = ((Eki << 43) ^ (Eki >> (64-43)));
            Emo ^= Do;
            BCo = ((Emo << 21) ^ (Emo >> (64-21)));
            Esu ^= Du;
            BCu = ((Esu << 14) ^ (Esu >> (64-14)));
            Aba = BCa ^((~BCe)& BCi );
            Aba ^= (uint64_t)KeccakF_RoundConstants[round+1];
            Abe = BCe ^((~BCi)& BCo );
            Abi = BCi ^((~BCo)& BCu );
            Abo = BCo ^((~BCu)& BCa );
            Abu = BCu ^((~BCa)& BCe );

            Ebo ^= Do;
            BCa = ((Ebo << 28) ^ (Ebo >> (64-28)));
            Egu ^= Du;
            BCe = ((Egu << 20) ^ (Egu >> (64-20)));
            Eka ^= Da;
            BCi = ((Eka << 3) ^ (Eka >> (64-3)));
            Eme ^= De;
            BCo = ((Eme << 45) ^ (Eme >> (64-45)));
            Esi ^= Di;
            BCu = ((Esi << 61) ^ (Esi >> (64-61)));
            Aga = BCa ^((~BCe)& BCi );
            Age = BCe ^((~BCi)& BCo );
            Agi = BCi ^((~BCo)& BCu );
            Ago = BCo ^((~BCu)& BCa );
            Agu = BCu ^((~BCa)& BCe );

            Ebe ^= De;
            BCa = ((Ebe << 1) ^ (Ebe >> (64-1)));
            Egi ^= Di;
            BCe = ((Egi << 6) ^ (Egi >> (64-6)));
            Eko ^= Do;
            BCi = ((Eko << 25) ^ (Eko >> (64-25)));
            Emu ^= Du;
            BCo = ((Emu << 8) ^ (Emu >> (64-8)));
            Esa ^= Da;
            BCu = ((Esa << 18) ^ (Esa >> (64-18)));
            Aka = BCa ^((~BCe)& BCi );
            Ake = BCe ^((~BCi)& BCo );
            Aki = BCi ^((~BCo)& BCu );
            Ako = BCo ^((~BCu)& BCa );
            Aku = BCu ^((~BCa)& BCe );

            Ebu ^= Du;
            BCa = ((Ebu << 27) ^ (Ebu >> (64-27)));
            Ega ^= Da;
            BCe = ((Ega << 36) ^ (Ega >> (64-36)));
            Eke ^= De;
            BCi = ((Eke << 10) ^ (Eke >> (64-10)));
            Emi ^= Di;
            BCo = ((Emi << 15) ^ (Emi >> (64-15)));
            Eso ^= Do;
            BCu = ((Eso << 56) ^ (Eso >> (64-56)));
            Ama = BCa ^((~BCe)& BCi );
            Ame = BCe ^((~BCi)& BCo );
            Ami = BCi ^((~BCo)& BCu );
            Amo = BCo ^((~BCu)& BCa );
            Amu = BCu ^((~BCa)& BCe );

            Ebi ^= Di;
            BCa = ((Ebi << 62) ^ (Ebi >> (64-62)));
            Ego ^= Do;
            BCe = ((Ego << 55) ^ (Ego >> (64-55)));
            Eku ^= Du;
            BCi = ((Eku << 39) ^ (Eku >> (64-39)));
            Ema ^= Da;
            BCo = ((Ema << 41) ^ (Ema >> (64-41)));
            Ese ^= De;
            BCu = ((Ese << 2) ^ (Ese >> (64-2)));
            Asa = BCa ^((~BCe)& BCi );
            Ase = BCe ^((~BCi)& BCo );
            Asi = BCi ^((~BCo)& BCu );
            Aso = BCo ^((~BCu)& BCa );
            Asu = BCu ^((~BCa)& BCe );
        }


        s[ 0] = Aba;
        s[ 1] = Abe;
        s[ 2] = Abi;
        s[ 3] = Abo;
        s[ 4] = Abu;
        s[ 5] = Aga;
        s[ 6] = Age;
        s[ 7] = Agi;
        s[ 8] = Ago;
        s[ 9] = Agu;
        s[10] = Aka;
        s[11] = Ake;
        s[12] = Aki;
        s[13] = Ako;
        s[14] = Aku;
        s[15] = Ama;
        s[16] = Ame;
        s[17] = Ami;
        s[18] = Amo;
        s[19] = Amu;
        s[20] = Asa;
        s[21] = Ase;
        s[22] = Asi;
        s[23] = Aso;
        s[24] = Asu;
}

void SPU::shake_init()
{
  unsigned int i;
  for(i=0;i<25;i++) s[i] = 0;
  pos = 0;
}

void SPU::stream_init(unsigned int mode, const uint8_t seed[48], uint16_t nonce)
{
#pragma HLS ALLOCATION function instances=shake_absorb limit=1
  uint8_t t[2];
  t[0] = nonce;
  t[1] = nonce >> 8;
  size_t mlen;
  if(mode==128) mlen = 32;
  else mlen = 48;
  shake_init();
  shake_absorb(mode, seed, mlen);
  shake_absorb(mode, t, 2);
  shake_finalize(mode);
}

void SPU::shake_absorb(unsigned int mode, const uint8_t *m, size_t mlen)
{
  unsigned int i;
  uint8_t t[8] = {0};

  unsigned int r;
  if(mode==128) r = 168;
  else r = 136;

  if(pos & 7) {
    i = pos & 7;
    while(i < 8 && mlen > 0) {
      t[i++] = *m++;
      mlen--;
      pos++;
    }
    s[(pos-i)/8] ^= load64(t);
  }

  if(pos && mlen >= r-pos) {
    for(i=0;i<(r-pos)/8;i++)
      s[pos/8+i] ^= load64(m+8*i);
    m += r-pos;
    mlen -= r-pos;
    pos = 0;
    KeccakF1600_StatePermute();
  }

  while(mlen >= r) {
    for(i=0;i<r/8;i++)
      s[i] ^= load64(m+8*i);
    m += r;
    mlen -= r;
    KeccakF1600_StatePermute();
  }

  for(i=0;i<mlen/8;i++)
    s[pos/8+i] ^= load64(m+8*i);
  m += 8*i;
  mlen -= 8*i;
  pos += 8*i;

  if(mlen) {
    for(i=0;i<8;i++)
      t[i] = 0;
    for(i=0;i<mlen;i++)
      t[i] = m[i];
    s[pos/8] ^= load64(t);
    pos += mlen;
  }
}

void SPU::shake_finalize(unsigned int mode)
{
  unsigned int i,j;
  unsigned int r;
  if(mode==128) r = 168;
  else r = 136;
  uint8_t p = 0x1F;

  i = pos >> 3;
  j = pos & 7;
  s[i] ^= (uint64_t)p << 8*j;
  s[r/8-1] ^= 1ULL << 63;

  pos = 0;
}

void SPU::shake_squeezeblocks(unsigned int mode, uint8_t *out, size_t nblocks)
{
  unsigned int i;
  unsigned int r;
  if(mode==128) r = 168;
  else r = 136;

  while(nblocks > 0) {
    KeccakF1600_StatePermute();
    for(i=0;i<r/8;i++)
      store64(out + 8*i, s[i]);
    out += r;
    nblocks--;
  }
}


void SPU::shake_squeeze(unsigned int mode, uint8_t *out, size_t outlen)
{
  unsigned int i;
  uint8_t t[8];
  unsigned int r;
  if(mode==128) r = 168;
  else r = 136;

  if(pos & 7) {
    store64(t,s[pos/8]);
    i = pos & 7;
    while(i < 8 && outlen > 0) {
      *out++ = t[i++];
      outlen--;
      pos++;
    }
  }

  if(pos && outlen >= r-pos) {
    for(i=0;i<(r-pos)/8;i++)
      store64(out+8*i,s[pos/8+i]);
    out += r-pos;
    outlen -= r-pos;
    pos = 0;
  }

  while(outlen >= r) {
    KeccakF1600_StatePermute();
    for(i=0;i<r/8;i++)
      store64(out+8*i,s[i]);
    out += r;
    outlen -= r;
  }

  if(!outlen){

  }
  else{

   if(!pos)
     KeccakF1600_StatePermute();

   for(i=0;i<outlen/8;i++)
     store64(out+8*i,s[pos/8+i]);
   out += 8*i;
   outlen -= 8*i;
   pos += 8*i;

   store64(t,s[pos/8]);
   for(i=0;i<outlen;i++)
     out[i] = t[i];
   pos += outlen;

  }

}

void SPU::shake(unsigned int mode, uint8_t *out, size_t outlen, const uint8_t *in, size_t inlen)
{
  shake_init();
  shake_absorb(mode, in, inlen);
  shake_finalize(mode);
  shake_squeeze(mode, out, outlen);
}

void SPU::sample_uniform(int32_t* a, const uint8_t seed[32], uint16_t nonce)
{
  unsigned int ctr, off;
  unsigned int buflen = 168;
  uint8_t buf[168 + 2];
  uint32_t t;
  stream_init(128, seed, nonce);
  ctr = 0;
  off = 0;

  while(ctr < 256) {
#pragma HLS LOOP_TRIPCOUNT max=5
    shake_squeezeblocks(128, buf + off, 1);
    for(unsigned int i=0; i + 3 <= buflen; i=i+3) {
#pragma HLS LOOP_TRIPCOUNT max=57

      t = buf[i];
      t |= (uint32_t)buf[i+1] << 8;
      t |= (uint32_t)buf[i+2] << 16;
      t &= 0x7FFFFF;
      if(t < 8380417){
        a[ctr] = t;
        ctr += 1;
      }
      if(ctr>=256) break;
    }
    off = buflen % 3;
    buflen = 168 + off;
  }
}

void SPU::sample_eta(int32_t* a, const uint8_t seed[32], uint16_t nonce)
{
  unsigned int ctr;
  unsigned int buflen = 168;
  uint8_t buf[168];
  uint32_t t0, t1;
  stream_init(128, seed, nonce);
  ctr = 0;

  while(ctr < 256) {
#pragma HLS LOOP_TRIPCOUNT max=2
    shake_squeezeblocks(128, buf, 1);
    for(unsigned int i=0; i < buflen; i++) {
#pragma HLS LOOP_TRIPCOUNT max=168
      t0 = buf[i] & 0x0F;
      t1 = buf[i] >> 4;
      if(t0 < 9) a[ctr++] = 4 - t0;
      if(t1 < 9 && ctr < 256) a[ctr++] = 4 - t1;
      if(ctr>=256) break;
    }
  }
}
