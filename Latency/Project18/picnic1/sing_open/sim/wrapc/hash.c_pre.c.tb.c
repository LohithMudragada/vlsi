// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
# 1 "C:/Users/Sanil/Downloads/Project18/hash.c"
# 1 "C:/Users/Sanil/Downloads/Project18/hash.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 147 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Users/Sanil/Downloads/Project18/hash.c" 2
# 12 "C:/Users/Sanil/Downloads/Project18/hash.c"
# 1 "C:/Users/Sanil/Downloads/Project18/hash.h" 1
# 16 "C:/Users/Sanil/Downloads/Project18/hash.h"
# 1 "C:/Users/Sanil/Downloads/Project18/sha3/KeccakHash.h" 1
# 21 "C:/Users/Sanil/Downloads/Project18/sha3/KeccakHash.h"
# 1 "C:/Users/Sanil/Downloads/Project18/sha3/KeccakSpongeWidth1600.h" 1
# 19 "C:/Users/Sanil/Downloads/Project18/sha3/KeccakSpongeWidth1600.h"
# 1 "C:/Users/Sanil/Downloads/Project18/sha3/KeccakSponge-common.h" 1
# 19 "C:/Users/Sanil/Downloads/Project18/sha3/KeccakSponge-common.h"
# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\string.h" 1 3








# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 1 3
# 10 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include/_mingw_mac.h" 1 3
# 10 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 2 3
# 277 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\vadefs.h" 1 3
# 13 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\vadefs.h" 3
# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 1 3
# 674 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include/sdks/_mingw_directx.h" 1 3
# 674 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 2 3

# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include/sdks/_mingw_ddk.h" 1 3
# 675 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 2 3
# 13 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\vadefs.h" 2 3


#pragma pack(push,_CRT_PACKING)








 typedef __builtin_va_list __gnuc_va_list;






  typedef __gnuc_va_list va_list;
# 102 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\vadefs.h" 3
#pragma pack(pop)
# 277 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 2 3


#pragma pack(push,_CRT_PACKING)
# 370 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
__extension__ typedef unsigned long long size_t;
# 380 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
__extension__ typedef long long ssize_t;
# 392 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
__extension__ typedef long long intptr_t;
# 405 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
__extension__ typedef unsigned long long uintptr_t;
# 418 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
__extension__ typedef long long ptrdiff_t;
# 428 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
typedef unsigned short wchar_t;







typedef unsigned short wint_t;
typedef unsigned short wctype_t;
# 456 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
typedef int errno_t;




typedef long __time32_t;




__extension__ typedef long long __time64_t;







typedef __time64_t time_t;
# 607 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 3
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







const char *__mingw_get_crt_info (void);





#pragma pack(pop)
# 9 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\string.h" 2 3
# 36 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\string.h" 3
  __attribute__ ((__dllimport__)) void *__cdecl _memccpy(void *_Dst,const void *_Src,int _Val,size_t _MaxCount);
                void *__cdecl memchr(const void *_Buf ,int _Val,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __cdecl _memicmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  __attribute__ ((__dllimport__)) int __cdecl _memicmp_l(const void *_Buf1,const void *_Buf2,size_t _Size,_locale_t _Locale);
  int __cdecl memcmp(const void *_Buf1,const void *_Buf2,size_t _Size);
  void *__cdecl memcpy(void * __restrict__ _Dst,const void * __restrict__ _Src,size_t _Size) ;
  void *__cdecl memset(void *_Dst,int _Val,size_t _Size);

  void *__cdecl memccpy(void *_Dst,const void *_Src,int _Val,size_t _Size) ;
  int __cdecl memicmp(const void *_Buf1,const void *_Buf2,size_t _Size) ;


  char *__cdecl _strset(char *_Str,int _Val) ;
  char *__cdecl _strset_l(char *_Str,int _Val,_locale_t _Locale) ;
  char *__cdecl strcpy(char * __restrict__ _Dest,const char * __restrict__ _Source);
  char *__cdecl strcat(char * __restrict__ _Dest,const char * __restrict__ _Source);
  int __cdecl strcmp(const char *_Str1,const char *_Str2);
  size_t __cdecl strlen(const char *_Str);
  size_t __cdecl strnlen(const char *_Str,size_t _MaxCount);
  void *__cdecl memmove(void *_Dst,const void *_Src,size_t _Size) ;
  __attribute__ ((__dllimport__)) char *__cdecl _strdup(const char *_Src);
                char *__cdecl strchr(const char *_Str,int _Val);
  __attribute__ ((__dllimport__)) int __cdecl _stricmp(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __cdecl _strcmpi(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __cdecl _stricmp_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  int __cdecl strcoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __cdecl _strcoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __cdecl _stricoll(const char *_Str1,const char *_Str2);
  __attribute__ ((__dllimport__)) int __cdecl _stricoll_l(const char *_Str1,const char *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __cdecl _strncoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __cdecl _strncoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __cdecl _strnicoll (const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __cdecl _strnicoll_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  size_t __cdecl strcspn(const char *_Str,const char *_Control);
  __attribute__ ((__dllimport__)) char *__cdecl _strerror(const char *_ErrMsg) ;
  char *__cdecl strerror(int) ;
  __attribute__ ((__dllimport__)) char *__cdecl _strlwr(char *_String) ;
  char *strlwr_l(char *_String,_locale_t _Locale) ;
  char *__cdecl strncat(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  int __cdecl strncmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __cdecl _strnicmp(const char *_Str1,const char *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __cdecl _strnicmp_l(const char *_Str1,const char *_Str2,size_t _MaxCount,_locale_t _Locale);
  char *strncpy(char * __restrict__ _Dest,const char * __restrict__ _Source,size_t _Count) ;
  __attribute__ ((__dllimport__)) char *__cdecl _strnset(char *_Str,int _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) char *__cdecl _strnset_l(char *str,int c,size_t count,_locale_t _Locale) ;
                char *__cdecl strpbrk(const char *_Str,const char *_Control);
                char *__cdecl strrchr(const char *_Str,int _Ch);
  __attribute__ ((__dllimport__)) char *__cdecl _strrev(char *_Str);
  size_t __cdecl strspn(const char *_Str,const char *_Control);
                char *__cdecl strstr(const char *_Str,const char *_SubStr);
  char *__cdecl strtok(char * __restrict__ _Str,const char * __restrict__ _Delim) ;
  __attribute__ ((__dllimport__)) char *__cdecl _strupr(char *_String) ;
  __attribute__ ((__dllimport__)) char *_strupr_l(char *_String,_locale_t _Locale) ;
  size_t __cdecl strxfrm(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __cdecl _strxfrm_l(char * __restrict__ _Dst,const char * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);


  char *__cdecl strdup(const char *_Src) ;
  int __cdecl strcmpi(const char *_Str1,const char *_Str2) ;
  int __cdecl stricmp(const char *_Str1,const char *_Str2) ;
  char *__cdecl strlwr(char *_Str) ;
  int __cdecl strnicmp(const char *_Str1,const char *_Str,size_t _MaxCount) ;
  int __cdecl strncasecmp (const char *, const char *, size_t);
  int __cdecl strcasecmp (const char *, const char *);







  char *__cdecl strnset(char *_Str,int _Val,size_t _MaxCount) ;
  char *__cdecl strrev(char *_Str) ;
  char *__cdecl strset(char *_Str,int _Val) ;
  char *__cdecl strupr(char *_Str) ;





  __attribute__ ((__dllimport__)) wchar_t *__cdecl _wcsdup(const wchar_t *_Str);
  wchar_t *__cdecl wcscat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
                wchar_t *__cdecl wcschr(const wchar_t *_Str,wchar_t _Ch);
  int __cdecl wcscmp(const wchar_t *_Str1,const wchar_t *_Str2);
  wchar_t *__cdecl wcscpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source) ;
  size_t __cdecl wcscspn(const wchar_t *_Str,const wchar_t *_Control);
  size_t __cdecl wcslen(const wchar_t *_Str);
  size_t __cdecl wcsnlen(const wchar_t *_Src,size_t _MaxCount);
  wchar_t *wcsncat(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  int __cdecl wcsncmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  wchar_t *wcsncpy(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count) ;
  wchar_t *__cdecl _wcsncpy_l(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Source,size_t _Count,_locale_t _Locale) ;
                wchar_t *__cdecl wcspbrk(const wchar_t *_Str,const wchar_t *_Control);
                wchar_t *__cdecl wcsrchr(const wchar_t *_Str,wchar_t _Ch);
  size_t __cdecl wcsspn(const wchar_t *_Str,const wchar_t *_Control);
                wchar_t *__cdecl wcsstr(const wchar_t *_Str,const wchar_t *_SubStr);
  wchar_t *__cdecl wcstok(wchar_t * __restrict__ _Str,const wchar_t * __restrict__ _Delim) ;
  __attribute__ ((__dllimport__)) wchar_t *__cdecl _wcserror(int _ErrNum) ;
  __attribute__ ((__dllimport__)) wchar_t *__cdecl __wcserror(const wchar_t *_Str) ;
  __attribute__ ((__dllimport__)) int __cdecl _wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __cdecl _wcsicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __cdecl _wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __cdecl _wcsnicmp_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) wchar_t *__cdecl _wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  __attribute__ ((__dllimport__)) wchar_t *__cdecl _wcsrev(wchar_t *_Str);
  __attribute__ ((__dllimport__)) wchar_t *__cdecl _wcsset(wchar_t *_Str,wchar_t _Val) ;
  __attribute__ ((__dllimport__)) wchar_t *__cdecl _wcslwr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcslwr_l(wchar_t *_String,_locale_t _Locale) ;
  __attribute__ ((__dllimport__)) wchar_t *__cdecl _wcsupr(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) wchar_t *_wcsupr_l(wchar_t *_String,_locale_t _Locale) ;
  size_t __cdecl wcsxfrm(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount);
  __attribute__ ((__dllimport__)) size_t __cdecl _wcsxfrm_l(wchar_t * __restrict__ _Dst,const wchar_t * __restrict__ _Src,size_t _MaxCount,_locale_t _Locale);
  int __cdecl wcscoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __cdecl _wcscoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __cdecl _wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2);
  __attribute__ ((__dllimport__)) int __cdecl _wcsicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __cdecl _wcsncoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __cdecl _wcsncoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);
  __attribute__ ((__dllimport__)) int __cdecl _wcsnicoll(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount);
  __attribute__ ((__dllimport__)) int __cdecl _wcsnicoll_l(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount,_locale_t _Locale);


  wchar_t *__cdecl wcsdup(const wchar_t *_Str) ;

  int __cdecl wcsicmp(const wchar_t *_Str1,const wchar_t *_Str2) ;
  int __cdecl wcsnicmp(const wchar_t *_Str1,const wchar_t *_Str2,size_t _MaxCount) ;
  wchar_t *__cdecl wcsnset(wchar_t *_Str,wchar_t _Val,size_t _MaxCount) ;
  wchar_t *__cdecl wcsrev(wchar_t *_Str) ;
  wchar_t *__cdecl wcsset(wchar_t *_Str,wchar_t _Val) ;
  wchar_t *__cdecl wcslwr(wchar_t *_Str) ;
  wchar_t *__cdecl wcsupr(wchar_t *_Str) ;
  int __cdecl wcsicoll(const wchar_t *_Str1,const wchar_t *_Str2) ;








# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\sec_api/string_s.h" 1 3








# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\string.h" 1 3
# 9 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\sec_api/string_s.h" 2 3
# 175 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\string.h" 2 3
# 20 "C:/Users/Sanil/Downloads/Project18/sha3/KeccakSponge-common.h" 2
# 1 "C:/Users/Sanil/Downloads/Project18/sha3/align.h" 1
# 21 "C:/Users/Sanil/Downloads/Project18/sha3/KeccakSponge-common.h" 2
# 20 "C:/Users/Sanil/Downloads/Project18/sha3/KeccakSpongeWidth1600.h" 2


# 1 "C:/Users/Sanil/Downloads/Project18/sha3/KeccakP-1600-SnP.h" 1
# 31 "C:/Users/Sanil/Downloads/Project18/sha3/KeccakP-1600-SnP.h"
void KeccakP1600_Initialize(void *state);
void KeccakP1600_AddByte(void *state, unsigned char data, unsigned int offset);
void KeccakP1600_AddBytes(void *state, const unsigned char *data, unsigned int offset, unsigned int length);
void KeccakP1600_OverwriteBytes(void *state, const unsigned char *data, unsigned int offset, unsigned int length);
void KeccakP1600_OverwriteWithZeroes(void *state, unsigned int byteCount);
void KeccakP1600_Permute_Nrounds(void *state, unsigned int nrounds);
void KeccakP1600_Permute_12rounds(void *state);
void KeccakP1600_Permute_24rounds(void *state);
void KeccakP1600_ExtractBytes(const void *state, unsigned char *data, unsigned int offset, unsigned int length);
void KeccakP1600_ExtractAndAddBytes(const void *state, const unsigned char *input, unsigned char *output, unsigned int offset, unsigned int length);
# 23 "C:/Users/Sanil/Downloads/Project18/sha3/KeccakSpongeWidth1600.h" 2
 __attribute__ ((aligned(8))) typedef struct KeccakWidth1600_SpongeInstanceStruct { unsigned char state[200]; unsigned int rate; unsigned int byteIOIndex; int squeezing; } KeccakWidth1600_SpongeInstance;
    int KeccakWidth1600_Sponge(unsigned int rate, unsigned int capacity, const unsigned char *input, size_t inputByteLen, unsigned char suffix, unsigned char *output, size_t outputByteLen); int KeccakWidth1600_SpongeInitialize(KeccakWidth1600_SpongeInstance *spongeInstance, unsigned int rate, unsigned int capacity); int KeccakWidth1600_SpongeAbsorb(KeccakWidth1600_SpongeInstance *spongeInstance, const unsigned char *data, size_t dataByteLen); int KeccakWidth1600_SpongeAbsorbLastFewBits(KeccakWidth1600_SpongeInstance *spongeInstance, unsigned char delimitedData); int KeccakWidth1600_SpongeSqueeze(KeccakWidth1600_SpongeInstance *spongeInstance, unsigned char *data, size_t dataByteLen);




    __attribute__ ((aligned(8))) typedef struct KeccakWidth1600_12rounds_SpongeInstanceStruct { unsigned char state[200]; unsigned int rate; unsigned int byteIOIndex; int squeezing; } KeccakWidth1600_12rounds_SpongeInstance;
    int KeccakWidth1600_12rounds_Sponge(unsigned int rate, unsigned int capacity, const unsigned char *input, size_t inputByteLen, unsigned char suffix, unsigned char *output, size_t outputByteLen); int KeccakWidth1600_12rounds_SpongeInitialize(KeccakWidth1600_12rounds_SpongeInstance *spongeInstance, unsigned int rate, unsigned int capacity); int KeccakWidth1600_12rounds_SpongeAbsorb(KeccakWidth1600_12rounds_SpongeInstance *spongeInstance, const unsigned char *data, size_t dataByteLen); int KeccakWidth1600_12rounds_SpongeAbsorbLastFewBits(KeccakWidth1600_12rounds_SpongeInstance *spongeInstance, unsigned char delimitedData); int KeccakWidth1600_12rounds_SpongeSqueeze(KeccakWidth1600_12rounds_SpongeInstance *spongeInstance, unsigned char *data, size_t dataByteLen);
# 22 "C:/Users/Sanil/Downloads/Project18/sha3/KeccakHash.h" 2




typedef unsigned char BitSequence;

typedef size_t BitLength;


typedef enum { SUCCESS = 0, FAIL = 1, BAD_HASHLEN = 2 } HashReturn;

typedef struct {
    KeccakWidth1600_SpongeInstance sponge;
    unsigned int fixedOutputLength;
    unsigned char delimitedSuffix;
} Keccak_HashInstance;
# 54 "C:/Users/Sanil/Downloads/Project18/sha3/KeccakHash.h"
HashReturn Keccak_HashInitialize(Keccak_HashInstance *hashInstance, unsigned int rate, unsigned int capacity, unsigned int hashbitlen, unsigned char delimitedSuffix);
# 90 "C:/Users/Sanil/Downloads/Project18/sha3/KeccakHash.h"
HashReturn Keccak_HashUpdate(Keccak_HashInstance *hashInstance, const BitSequence *data, BitLength databitlen);
# 103 "C:/Users/Sanil/Downloads/Project18/sha3/KeccakHash.h"
HashReturn Keccak_HashFinal(Keccak_HashInstance *hashInstance, BitSequence *hashval);
# 114 "C:/Users/Sanil/Downloads/Project18/sha3/KeccakHash.h"
HashReturn Keccak_HashSqueeze(Keccak_HashInstance *hashInstance, BitSequence *data, BitLength databitlen);
# 17 "C:/Users/Sanil/Downloads/Project18/hash.h" 2



# 1 "C:/Users/Sanil/Downloads/Project18/picnic_impl.h" 1
# 19 "C:/Users/Sanil/Downloads/Project18/picnic_impl.h"
# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/include\\stdint.h" 1 3 4
# 33 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/include\\stdint.h" 3 4
# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdint.h" 1 3 4
# 28 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdint.h" 3 4
# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 1 3 4
# 28 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdint.h" 2 3 4




# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/include\\stddef.h" 1 3 4
# 31 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/include\\stddef.h" 3 4
typedef __typeof__(((int*)0)-((int*)0)) ptrdiff_t;



typedef __typeof__(sizeof(int)) size_t;




typedef unsigned short wchar_t;
# 32 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdint.h" 2 3 4



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
# 33 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/include\\stdint.h" 2 3 4
# 20 "C:/Users/Sanil/Downloads/Project18/picnic_impl.h" 2
# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/include\\stddef.h" 1 3 4
# 21 "C:/Users/Sanil/Downloads/Project18/picnic_impl.h" 2

typedef enum {
    TRANSFORM_FS = 0,
    TRANSFORM_UR = 1,
    TRANSFORM_INVALID = 255
} transform_t;

typedef struct paramset_t {
    uint32_t numRounds;
    uint32_t numSboxes;
    uint32_t stateSizeBits;
    uint32_t stateSizeBytes;
    uint32_t stateSizeWords;
    uint32_t andSizeBytes;
    uint32_t UnruhGWithoutInputBytes;
    uint32_t UnruhGWithInputBytes;
    uint32_t numMPCRounds;
    uint32_t numOpenedRounds;
    uint32_t numMPCParties;
    uint32_t seedSizeBytes;
    uint32_t saltSizeBytes;
    uint32_t digestSizeBytes;
    transform_t transform;
} paramset_t;
# 63 "C:/Users/Sanil/Downloads/Project18/picnic_impl.h"
typedef struct proof_t {
    uint8_t seed1[16];
    uint8_t seed2[16];
    uint32_t inputShare[4];
    uint8_t communicatedBits[75];
    uint8_t view3Commitment[32];
    uint8_t view3UnruhG;
} proof_t;


typedef struct signature_t {
    proof_t proofs[219];
    uint8_t challengeBits[55];
    uint8_t salt[32];
} signature_t;



int sign_picnic1(uint32_t* privateKey, uint32_t* pubKey, uint32_t* plaintext, const uint8_t* message, size_t messageByteLength, signature_t* sig, paramset_t* params);
int verify(signature_t* sig, const uint32_t* pubKey, const uint32_t* plaintext, const uint8_t* message, size_t messageByteLength, paramset_t* params);

void allocateSignature(signature_t* sig, paramset_t* params);
void freeSignature(signature_t* sig, paramset_t* params);

uint8_t getChallenge(const uint8_t* challenge, size_t round);
void printHex(const char* s, const uint8_t* data, size_t len);

void LowMCEnc(const uint32_t* plaintext, uint32_t* output, uint32_t* key, paramset_t* params);


int serializeSignature(const signature_t* sig, uint8_t* sigBytes, size_t sigBytesLen, paramset_t* params);

int deserializeSignature(signature_t* sig, const uint8_t* sigBytes, size_t sigBytesLen, paramset_t* params);





int random_bytes_default(uint8_t* buf, size_t len);


uint32_t numBytes(uint32_t numBits);


uint32_t ceil_log2(uint32_t x);


uint8_t getBit(const uint8_t* array, uint32_t bitNumber);
uint8_t getBitFromWordArray(const uint32_t* array, uint32_t bitNumber);
void setBit(uint8_t* bytes, uint32_t bitNumber, uint8_t val);
void setBitInWordArray(uint32_t* array, uint32_t bitNumber, uint8_t val);
uint8_t parity(uint32_t* data, size_t len);
void xor_array(uint32_t* out, const uint32_t * in1, const uint32_t * in2, uint32_t length);
# 21 "C:/Users/Sanil/Downloads/Project18/hash.h" 2







static const uint8_t HASH_PREFIX_NONE = -1;
static const uint8_t HASH_PREFIX_0 = 0;
static const uint8_t HASH_PREFIX_1 = 1;
static const uint8_t HASH_PREFIX_2 = 2;
static const uint8_t HASH_PREFIX_3 = 3;
static const uint8_t HASH_PREFIX_4 = 4;
static const uint8_t HASH_PREFIX_5 = 5;

typedef Keccak_HashInstance HashInstance;

void HashUpdate(HashInstance* ctx, const uint8_t* data, size_t byteLen);

void HashInit(HashInstance* ctx, paramset_t* params, uint8_t hashPrefix);

void HashFinal(HashInstance* ctx);

void HashSqueeze(HashInstance* ctx, uint8_t* digest, size_t byteLen);


uint16_t toLittleEndian(uint16_t x);
void HashUpdateIntLE(HashInstance* ctx, uint16_t x);
uint16_t fromLittleEndian(uint16_t x);
# 13 "C:/Users/Sanil/Downloads/Project18/hash.c" 2
# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 1 3








# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 1 3
# 9 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 2 3


# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw_print_push.h" 1 3
# 11 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 2 3


#pragma pack(push,_CRT_PACKING)
# 26 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 3
 struct _iobuf {
    char *_ptr;
    int _cnt;
    char *_base;
    int _flag;
    int _file;
    int _charbuf;
    int _bufsiz;
    char *_tmpfname;
  };
  typedef struct _iobuf FILE;
# 84 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 3
  typedef long _off_t;

  typedef long off_t;






  __extension__ typedef long long _off64_t;

  __extension__ typedef long long off64_t;





  __attribute__ ((__dllimport__)) FILE *__cdecl __iob_func(void);
# 120 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 3
  __extension__ typedef long long fpos_t;
# 157 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 3
  __attribute__ ((__dllimport__)) int __cdecl _filbuf(FILE *_File);
  __attribute__ ((__dllimport__)) int __cdecl _flsbuf(int _Ch,FILE *_File);



  __attribute__ ((__dllimport__)) FILE *__cdecl _fsopen(const char *_Filename,const char *_Mode,int _ShFlag);

  void __cdecl clearerr(FILE *_File);
  int __cdecl fclose(FILE *_File);
  __attribute__ ((__dllimport__)) int __cdecl _fcloseall(void);



  __attribute__ ((__dllimport__)) FILE *__cdecl _fdopen(int _FileHandle,const char *_Mode);

  int __cdecl feof(FILE *_File);
  int __cdecl ferror(FILE *_File);
  int __cdecl fflush(FILE *_File);
  int __cdecl fgetc(FILE *_File);
  __attribute__ ((__dllimport__)) int __cdecl _fgetchar(void);
  int __cdecl fgetpos(FILE * __restrict__ _File ,fpos_t * __restrict__ _Pos);
  char *__cdecl fgets(char * __restrict__ _Buf,int _MaxCount,FILE * __restrict__ _File);
  __attribute__ ((__dllimport__)) int __cdecl _fileno(FILE *_File);



  __attribute__ ((__dllimport__)) char *__cdecl _tempnam(const char *_DirName,const char *_FilePrefix);
  __attribute__ ((__dllimport__)) int __cdecl _flushall(void);
  FILE *__cdecl fopen(const char * __restrict__ _Filename,const char * __restrict__ _Mode) ;
  FILE *fopen64(const char * __restrict__ filename,const char * __restrict__ mode);
  int __cdecl fprintf(FILE * __restrict__ _File,const char * __restrict__ _Format,...);
  int __cdecl fputc(int _Ch,FILE *_File);
  __attribute__ ((__dllimport__)) int __cdecl _fputchar(int _Ch);
  int __cdecl fputs(const char * __restrict__ _Str,FILE * __restrict__ _File);
  size_t __cdecl fread(void * __restrict__ _DstBuf,size_t _ElementSize,size_t _Count,FILE * __restrict__ _File);
  FILE *__cdecl freopen(const char * __restrict__ _Filename,const char * __restrict__ _Mode,FILE * __restrict__ _File) ;
  int __cdecl fscanf(FILE * __restrict__ _File,const char * __restrict__ _Format,...) ;
  int __cdecl _fscanf_l(FILE * __restrict__ _File,const char * __restrict__ _Format,_locale_t locale,...) ;
  int __cdecl fsetpos(FILE *_File,const fpos_t *_Pos);
  int __cdecl fseek(FILE *_File,long _Offset,int _Origin);
  int fseeko64(FILE* stream, _off64_t offset, int whence);
  long __cdecl ftell(FILE *_File);
  _off64_t ftello64(FILE * stream);
  __extension__ int __cdecl _fseeki64(FILE *_File,long long _Offset,int _Origin);
  __extension__ long long __cdecl _ftelli64(FILE *_File);
  size_t __cdecl fwrite(const void * __restrict__ _Str,size_t _Size,size_t _Count,FILE * __restrict__ _File);
  int __cdecl getc(FILE *_File);
  int __cdecl getchar(void);
  __attribute__ ((__dllimport__)) int __cdecl _getmaxstdio(void);
  char *__cdecl gets(char *_Buffer) ;
  int __cdecl _getw(FILE *_File);


  void __cdecl perror(const char *_ErrMsg);

  __attribute__ ((__dllimport__)) int __cdecl _pclose(FILE *_File);
  __attribute__ ((__dllimport__)) FILE *__cdecl _popen(const char *_Command,const char *_Mode);




  int __cdecl printf(const char * __restrict__ _Format,...);
  int __cdecl putc(int _Ch,FILE *_File);
  int __cdecl putchar(int _Ch);
  int __cdecl puts(const char *_Str);
  __attribute__ ((__dllimport__)) int __cdecl _putw(int _Word,FILE *_File);


  int __cdecl remove(const char *_Filename);
  int __cdecl rename(const char *_OldFilename,const char *_NewFilename);
  __attribute__ ((__dllimport__)) int __cdecl _unlink(const char *_Filename);

  int __cdecl unlink(const char *_Filename) ;


  void __cdecl rewind(FILE *_File);
  __attribute__ ((__dllimport__)) int __cdecl _rmtmp(void);
  int __cdecl scanf(const char * __restrict__ _Format,...) ;
  int __cdecl _scanf_l(const char * __restrict__ format,_locale_t locale,... ) ;
  void __cdecl setbuf(FILE * __restrict__ _File,char * __restrict__ _Buffer) ;
  __attribute__ ((__dllimport__)) int __cdecl _setmaxstdio(int _Max);
  __attribute__ ((__dllimport__)) unsigned int __cdecl _set_output_format(unsigned int _Format);
  __attribute__ ((__dllimport__)) unsigned int __cdecl _get_output_format(void);
  unsigned int __cdecl __mingw_set_output_format(unsigned int _Format);
  unsigned int __cdecl __mingw_get_output_format(void);




  int __cdecl setvbuf(FILE * __restrict__ _File,char * __restrict__ _Buf,int _Mode,size_t _Size);
  __attribute__ ((__dllimport__)) int __cdecl _scprintf(const char * __restrict__ _Format,...);
  int __cdecl sscanf(const char * __restrict__ _Src,const char * __restrict__ _Format,...) ;
  int __cdecl _sscanf_l(const char * __restrict__ buffer,const char * __restrict__ format,_locale_t locale,...) ;
  __attribute__ ((__dllimport__)) int __cdecl _snscanf(const char * __restrict__ _Src,size_t _MaxCount,const char * __restrict__ _Format,...) ;
  __attribute__ ((__dllimport__)) int __cdecl _snscanf_l(const char * __restrict__ input,size_t length,const char * __restrict__ format,_locale_t locale,...) ;
  FILE *__cdecl tmpfile(void) ;
  char *__cdecl tmpnam(char *_Buffer);
  int __cdecl ungetc(int _Ch,FILE *_File);
  int __cdecl vfprintf(FILE * __restrict__ _File,const char * __restrict__ _Format,va_list _ArgList);
  int __cdecl vprintf(const char * __restrict__ _Format,va_list _ArgList);


  extern
    __attribute__((__format__ (gnu_printf, 3, 0))) __attribute__ ((__nonnull__ (3)))
    int __cdecl __mingw_vsnprintf(char * __restrict__ _DstBuf,size_t _MaxCount,const char * __restrict__ _Format,
      va_list _ArgList);
  extern
    __attribute__((__format__ (gnu_printf, 3, 4))) __attribute__ ((__nonnull__ (3)))
    int __cdecl __mingw_snprintf(char * __restrict__ s, size_t n, const char * __restrict__ format, ...);
  extern
    __attribute__((__format__ (gnu_printf, 1, 2))) __attribute__ ((__nonnull__ (1)))
    int __cdecl __mingw_printf(const char * __restrict__ , ... ) __attribute__ ((__nothrow__));
  extern
    __attribute__((__format__ (gnu_printf, 1, 0))) __attribute__ ((__nonnull__ (1)))
    int __cdecl __mingw_vprintf (const char * __restrict__ , va_list) __attribute__ ((__nothrow__));
  extern
    __attribute__((__format__ (gnu_printf, 2, 3))) __attribute__ ((__nonnull__ (2)))
    int __cdecl __mingw_fprintf (FILE * __restrict__ , const char * __restrict__ , ...) __attribute__ ((__nothrow__));
  extern
    __attribute__((__format__ (gnu_printf, 2, 0))) __attribute__ ((__nonnull__ (2)))
    int __cdecl __mingw_vfprintf (FILE * __restrict__ , const char * __restrict__ , va_list) __attribute__ ((__nothrow__));
  extern
    __attribute__((__format__ (gnu_printf, 2, 3))) __attribute__ ((__nonnull__ (2)))
    int __cdecl __mingw_sprintf (char * __restrict__ , const char * __restrict__ , ...) __attribute__ ((__nothrow__));
  extern
    __attribute__((__format__ (gnu_printf, 2, 0))) __attribute__ ((__nonnull__ (2)))
    int __cdecl __mingw_vsprintf (char * __restrict__ , const char * __restrict__ , va_list) __attribute__ ((__nothrow__));

  __attribute__ ((__dllimport__)) int __cdecl _snprintf(char * __restrict__ _Dest,size_t _Count,const char * __restrict__ _Format,...) ;
  __attribute__ ((__dllimport__)) int __cdecl _snprintf_l(char * __restrict__ buffer,size_t count,const char * __restrict__ format,_locale_t locale,...) ;
  __attribute__ ((__dllimport__)) int __cdecl _vsnprintf(char * __restrict__ _Dest,size_t _Count,const char * __restrict__ _Format,va_list _Args) ;
  __attribute__ ((__dllimport__)) int __cdecl _vsnprintf_l(char * __restrict__ buffer,size_t count,const char * __restrict__ format,_locale_t locale,va_list argptr) ;
  int __cdecl sprintf(char * __restrict__ _Dest,const char * __restrict__ _Format,...) ;
  int __cdecl _sprintf_l(char * __restrict__ buffer,const char * __restrict__ format,_locale_t locale,...) ;
  int __cdecl vsprintf(char * __restrict__ _Dest,const char * __restrict__ _Format,va_list _Args) ;







  int __cdecl vsnprintf(char * __restrict__ _DstBuf,size_t _MaxCount,const char * __restrict__ _Format,va_list _ArgList) ;

  int __cdecl snprintf(char * __restrict__ s, size_t n, const char * __restrict__ format, ...);
# 312 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 3
  int __cdecl vscanf(const char * __restrict__ Format, va_list argp);
  int __cdecl vfscanf (FILE * __restrict__ fp, const char * __restrict__ Format,va_list argp);
  int __cdecl vsscanf (const char * __restrict__ _Str,const char * __restrict__ Format,va_list argp);

  __attribute__ ((__dllimport__)) int __cdecl _vscprintf(const char * __restrict__ _Format,va_list _ArgList);
  __attribute__ ((__dllimport__)) int __cdecl _set_printf_count_output(int _Value);
  __attribute__ ((__dllimport__)) int __cdecl _get_printf_count_output(void);
# 330 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 3
  __attribute__ ((__dllimport__)) FILE *__cdecl _wfsopen(const wchar_t *_Filename,const wchar_t *_Mode,int _ShFlag);


  wint_t __cdecl fgetwc(FILE *_File);
  __attribute__ ((__dllimport__)) wint_t __cdecl _fgetwchar(void);
  wint_t __cdecl fputwc(wchar_t _Ch,FILE *_File);
  __attribute__ ((__dllimport__)) wint_t __cdecl _fputwchar(wchar_t _Ch);
  wint_t __cdecl getwc(FILE *_File);
  wint_t __cdecl getwchar(void);
  wint_t __cdecl putwc(wchar_t _Ch,FILE *_File);
  wint_t __cdecl putwchar(wchar_t _Ch);
  wint_t __cdecl ungetwc(wint_t _Ch,FILE *_File);
  wchar_t *__cdecl fgetws(wchar_t * __restrict__ _Dst,int _SizeInWords,FILE * __restrict__ _File);
  int __cdecl fputws(const wchar_t * __restrict__ _Str,FILE * __restrict__ _File);
  __attribute__ ((__dllimport__)) wchar_t *__cdecl _getws(wchar_t *_String) ;
  __attribute__ ((__dllimport__)) int __cdecl _putws(const wchar_t *_Str);
  int __cdecl fwprintf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,...);
  int __cdecl wprintf(const wchar_t * __restrict__ _Format,...);
  __attribute__ ((__dllimport__)) int __cdecl _scwprintf(const wchar_t * __restrict__ _Format,...);
  int __cdecl vfwprintf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,va_list _ArgList);
  int __cdecl vwprintf(const wchar_t * __restrict__ _Format,va_list _ArgList);
  __attribute__ ((__dllimport__)) int __cdecl swprintf(wchar_t * __restrict__ , const wchar_t * __restrict__ , ...) ;
  __attribute__ ((__dllimport__)) int __cdecl _swprintf_l(wchar_t * __restrict__ buffer,size_t count,const wchar_t * __restrict__ format,_locale_t locale,... ) ;
  __attribute__ ((__dllimport__)) int __cdecl vswprintf(wchar_t * __restrict__ , const wchar_t * __restrict__ ,va_list) ;
  __attribute__ ((__dllimport__)) int __cdecl _swprintf_c(wchar_t * __restrict__ _DstBuf,size_t _SizeInWords,const wchar_t * __restrict__ _Format,...);
  __attribute__ ((__dllimport__)) int __cdecl _vswprintf_c(wchar_t * __restrict__ _DstBuf,size_t _SizeInWords,const wchar_t * __restrict__ _Format,va_list _ArgList);
  __attribute__ ((__dllimport__)) int __cdecl _snwprintf(wchar_t * __restrict__ _Dest,size_t _Count,const wchar_t * __restrict__ _Format,...) ;
  __attribute__ ((__dllimport__)) int __cdecl _vsnwprintf(wchar_t * __restrict__ _Dest,size_t _Count,const wchar_t * __restrict__ _Format,va_list _Args) ;





  int __cdecl snwprintf (wchar_t * __restrict__ s, size_t n, const wchar_t * __restrict__ format, ...);
  int __cdecl vsnwprintf (wchar_t * __restrict__ , size_t, const wchar_t * __restrict__ , va_list);
# 373 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 3
  int __cdecl vwscanf (const wchar_t * __restrict__ , va_list);
  int __cdecl vfwscanf (FILE * __restrict__ ,const wchar_t * __restrict__ ,va_list);
  int __cdecl vswscanf (const wchar_t * __restrict__ ,const wchar_t * __restrict__ ,va_list);

  __attribute__ ((__dllimport__)) int __cdecl _fwprintf_p(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,...);
  __attribute__ ((__dllimport__)) int __cdecl _wprintf_p(const wchar_t * __restrict__ _Format,...);
  __attribute__ ((__dllimport__)) int __cdecl _vfwprintf_p(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,va_list _ArgList);
  __attribute__ ((__dllimport__)) int __cdecl _vwprintf_p(const wchar_t * __restrict__ _Format,va_list _ArgList);
  __attribute__ ((__dllimport__)) int __cdecl _swprintf_p(wchar_t * __restrict__ _DstBuf,size_t _MaxCount,const wchar_t * __restrict__ _Format,...);
  __attribute__ ((__dllimport__)) int __cdecl _vswprintf_p(wchar_t * __restrict__ _DstBuf,size_t _MaxCount,const wchar_t * __restrict__ _Format,va_list _ArgList);
  __attribute__ ((__dllimport__)) int __cdecl _scwprintf_p(const wchar_t * __restrict__ _Format,...);
  __attribute__ ((__dllimport__)) int __cdecl _vscwprintf_p(const wchar_t * __restrict__ _Format,va_list _ArgList);
  __attribute__ ((__dllimport__)) int __cdecl _wprintf_l(const wchar_t * __restrict__ _Format,_locale_t _Locale,...);
  __attribute__ ((__dllimport__)) int __cdecl _wprintf_p_l(const wchar_t * __restrict__ _Format,_locale_t _Locale,...);
  __attribute__ ((__dllimport__)) int __cdecl _vwprintf_l(const wchar_t * __restrict__ _Format,_locale_t _Locale,va_list _ArgList);
  __attribute__ ((__dllimport__)) int __cdecl _vwprintf_p_l(const wchar_t * __restrict__ _Format,_locale_t _Locale,va_list _ArgList);
  __attribute__ ((__dllimport__)) int __cdecl _fwprintf_l(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,_locale_t _Locale,...);
  __attribute__ ((__dllimport__)) int __cdecl _fwprintf_p_l(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,_locale_t _Locale,...);
  __attribute__ ((__dllimport__)) int __cdecl _vfwprintf_l(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,_locale_t _Locale,va_list _ArgList);
  __attribute__ ((__dllimport__)) int __cdecl _vfwprintf_p_l(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,_locale_t _Locale,va_list _ArgList);
  __attribute__ ((__dllimport__)) int __cdecl _swprintf_c_l(wchar_t * __restrict__ _DstBuf,size_t _MaxCount,const wchar_t * __restrict__ _Format,_locale_t _Locale,...);
  __attribute__ ((__dllimport__)) int __cdecl _swprintf_p_l(wchar_t * __restrict__ _DstBuf,size_t _MaxCount,const wchar_t * __restrict__ _Format,_locale_t _Locale,...);
  __attribute__ ((__dllimport__)) int __cdecl _vswprintf_c_l(wchar_t * __restrict__ _DstBuf,size_t _MaxCount,const wchar_t * __restrict__ _Format,_locale_t _Locale,va_list _ArgList);
  __attribute__ ((__dllimport__)) int __cdecl _vswprintf_p_l(wchar_t * __restrict__ _DstBuf,size_t _MaxCount,const wchar_t * __restrict__ _Format,_locale_t _Locale,va_list _ArgList);
  __attribute__ ((__dllimport__)) int __cdecl _scwprintf_l(const wchar_t * __restrict__ _Format,_locale_t _Locale,...);
  __attribute__ ((__dllimport__)) int __cdecl _scwprintf_p_l(const wchar_t * __restrict__ _Format,_locale_t _Locale,...);
  __attribute__ ((__dllimport__)) int __cdecl _vscwprintf_p_l(const wchar_t * __restrict__ _Format,_locale_t _Locale,va_list _ArgList);
  __attribute__ ((__dllimport__)) int __cdecl _snwprintf_l(wchar_t * __restrict__ _DstBuf,size_t _MaxCount,const wchar_t * __restrict__ _Format,_locale_t _Locale,...);
  __attribute__ ((__dllimport__)) int __cdecl _vsnwprintf_l(wchar_t * __restrict__ _DstBuf,size_t _MaxCount,const wchar_t * __restrict__ _Format,_locale_t _Locale,va_list _ArgList) ;
  __attribute__ ((__dllimport__)) int __cdecl _swprintf(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Format,...);
  __attribute__ ((__dllimport__)) int __cdecl _vswprintf(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Format,va_list _Args);
  __attribute__ ((__dllimport__)) int __cdecl __swprintf_l(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Format,_locale_t _Plocinfo,...) ;
  __attribute__ ((__dllimport__)) int __cdecl _vswprintf_l(wchar_t * __restrict__ buffer,size_t count,const wchar_t * __restrict__ format,_locale_t locale,va_list argptr) ;
  __attribute__ ((__dllimport__)) int __cdecl __vswprintf_l(wchar_t * __restrict__ _Dest,const wchar_t * __restrict__ _Format,_locale_t _Plocinfo,va_list _Args) ;
# 417 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 3
  __attribute__ ((__dllimport__)) wchar_t *__cdecl _wtempnam(const wchar_t *_Directory,const wchar_t *_FilePrefix);
  __attribute__ ((__dllimport__)) int __cdecl _vscwprintf(const wchar_t * __restrict__ _Format,va_list _ArgList);
  __attribute__ ((__dllimport__)) int __cdecl _vscwprintf_l(const wchar_t * __restrict__ _Format,_locale_t _Locale,va_list _ArgList);
  int __cdecl fwscanf(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,...) ;
  __attribute__ ((__dllimport__)) int __cdecl _fwscanf_l(FILE * __restrict__ _File,const wchar_t * __restrict__ _Format,_locale_t _Locale,...) ;
  int __cdecl swscanf(const wchar_t * __restrict__ _Src,const wchar_t * __restrict__ _Format,...) ;
  __attribute__ ((__dllimport__)) int __cdecl _swscanf_l(const wchar_t * __restrict__ _Src,const wchar_t * __restrict__ _Format,_locale_t _Locale,...) ;
  __attribute__ ((__dllimport__)) int __cdecl _snwscanf(const wchar_t * __restrict__ _Src,size_t _MaxCount,const wchar_t * __restrict__ _Format,...);
  __attribute__ ((__dllimport__)) int __cdecl _snwscanf_l(const wchar_t * __restrict__ _Src,size_t _MaxCount,const wchar_t * __restrict__ _Format,_locale_t _Locale,...);
  int __cdecl wscanf(const wchar_t * __restrict__ _Format,...) ;
  __attribute__ ((__dllimport__)) int __cdecl _wscanf_l(const wchar_t * __restrict__ _Format,_locale_t _Locale,...) ;
  __attribute__ ((__dllimport__)) FILE *__cdecl _wfdopen(int _FileHandle ,const wchar_t *_Mode);
  __attribute__ ((__dllimport__)) FILE *__cdecl _wfopen(const wchar_t * __restrict__ _Filename,const wchar_t *__restrict__ _Mode) ;
  __attribute__ ((__dllimport__)) FILE *__cdecl _wfreopen(const wchar_t * __restrict__ _Filename,const wchar_t * __restrict__ _Mode,FILE * __restrict__ _OldFile) ;



  __attribute__ ((__dllimport__)) void __cdecl _wperror(const wchar_t *_ErrMsg);

  __attribute__ ((__dllimport__)) FILE *__cdecl _wpopen(const wchar_t *_Command,const wchar_t *_Mode);




  __attribute__ ((__dllimport__)) int __cdecl _wremove(const wchar_t *_Filename);
  __attribute__ ((__dllimport__)) wchar_t *__cdecl _wtmpnam(wchar_t *_Buffer);
  __attribute__ ((__dllimport__)) wint_t __cdecl _fgetwc_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) wint_t __cdecl _fputwc_nolock(wchar_t _Ch,FILE *_File);
  __attribute__ ((__dllimport__)) wint_t __cdecl _ungetwc_nolock(wint_t _Ch,FILE *_File);
# 475 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 3
  __attribute__ ((__dllimport__)) void __cdecl _lock_file(FILE *_File);
  __attribute__ ((__dllimport__)) void __cdecl _unlock_file(FILE *_File);
  __attribute__ ((__dllimport__)) int __cdecl _fclose_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) int __cdecl _fflush_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) size_t __cdecl _fread_nolock(void * __restrict__ _DstBuf,size_t _ElementSize,size_t _Count,FILE * __restrict__ _File);
  __attribute__ ((__dllimport__)) int __cdecl _fseek_nolock(FILE *_File,long _Offset,int _Origin);
  __attribute__ ((__dllimport__)) long __cdecl _ftell_nolock(FILE *_File);
  __extension__ __attribute__ ((__dllimport__)) int __cdecl _fseeki64_nolock(FILE *_File,long long _Offset,int _Origin);
  __extension__ __attribute__ ((__dllimport__)) long long __cdecl _ftelli64_nolock(FILE *_File);
  __attribute__ ((__dllimport__)) size_t __cdecl _fwrite_nolock(const void * __restrict__ _DstBuf,size_t _Size,size_t _Count,FILE * __restrict__ _File);
  __attribute__ ((__dllimport__)) int __cdecl _ungetc_nolock(int _Ch,FILE *_File);





  char *__cdecl tempnam(const char *_Directory,const char *_FilePrefix) ;
  int __cdecl fcloseall(void) ;
  FILE *__cdecl fdopen(int _FileHandle,const char *_Format) ;
  int __cdecl fgetchar(void) ;
  int __cdecl fileno(FILE *_File) ;
  int __cdecl flushall(void) ;
  int __cdecl fputchar(int _Ch) ;
  int __cdecl getw(FILE *_File) ;
  int __cdecl putw(int _Ch,FILE *_File) ;
  int __cdecl rmtmp(void) ;






#pragma pack(pop)


# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\sec_api/stdio_s.h" 1 3








# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 1 3
# 9 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\sec_api/stdio_s.h" 2 3
# 509 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 2 3


# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw_print_pop.h" 1 3
# 511 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\stdio.h" 2 3
# 14 "C:/Users/Sanil/Downloads/Project18/hash.c" 2
# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\assert.h" 1 3
# 15 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\assert.h" 3
# 1 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\_mingw.h" 1 3
# 15 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\assert.h" 2 3







  void __cdecl __attribute__ ((__nothrow__)) exit(int _Code) __attribute__ ((__noreturn__));
 __attribute__ ((__dllimport__)) void __cdecl __attribute__ ((__nothrow__)) _exit(int _Code) __attribute__ ((__noreturn__));



  void __cdecl _Exit(int) __attribute__ ((__noreturn__));
# 36 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\assert.h" 3
  void __cdecl __attribute__((noreturn)) abort(void);
# 45 "C:/Xilinx/Vivado/2019.2/win64/tools/clang/bin/../lib/clang/3.1/../../../x86_64-w64-mingw32/include\\assert.h" 3
extern void __cdecl
_wassert(const wchar_t *_Message,const wchar_t *_File,unsigned _Line);
extern void __cdecl
_assert (const char *_Message, const char *_File, unsigned _Line);
# 15 "C:/Users/Sanil/Downloads/Project18/hash.c" 2
# 1 "C:/Users/Sanil/Downloads/Project18/sha3/brg_endian.h" 1
# 16 "C:/Users/Sanil/Downloads/Project18/hash.c" 2

void HashUpdate(HashInstance* ctx, const uint8_t* data, size_t byteLen)
{





    HashReturn ret = Keccak_HashUpdate(ctx, data, byteLen * 8);





}

void HashUpdate_2(HashInstance* ctx, const uint32_t* data, size_t byteLen)
{
 uint8_t temp[75] = {0};
 uint32_t temp2;
 int loop;
 HashUpdate_2_label2:for(loop=0;loop<byteLen;loop=loop+4) {
  temp2 = data[loop/4];
  temp[loop] = temp2%256;
  temp2 = temp2/256;
  temp[loop+1] = temp2%256;
  temp2 = temp2/256;
  temp[loop+2] = temp2%256;
  temp2 = temp2/256;
  temp[loop+3] = temp2%256;
 }
    HashReturn ret = Keccak_HashUpdate(ctx, temp, byteLen * 8);





}

void HashInit(HashInstance* ctx, paramset_t* params, uint8_t hashPrefix)
{
 uint8_t temp[1];
 temp[0] = hashPrefix;
    if (params->stateSizeBits == 128) {
        Keccak_HashInitialize(ctx, 1344, 256, 0, 0x1F);
    }
    else {
        Keccak_HashInitialize(ctx, 1088, 512, 0, 0x1F);
    }

    if (hashPrefix != HASH_PREFIX_NONE) {
        HashUpdate(ctx, temp, 1);
    }
}

void HashFinal(HashInstance* ctx)
{
    HashReturn ret = Keccak_HashFinal(ctx, ((void*)0));

    if (ret != SUCCESS) {

    }
}


void HashSqueeze(HashInstance* ctx, uint8_t* digest, size_t byteLen)
{
    HashReturn ret = Keccak_HashSqueeze(ctx, digest, byteLen * 8);

    if (ret != SUCCESS) {
        fprintf((&__iob_func()[2]), "%s: Keccak_HashSqueeze failed (returned %d)\n", __func__, ret);
    }
}

uint16_t toLittleEndian(uint16_t x)
{



    return x;


}

uint16_t fromLittleEndian(uint16_t x)
{



    return x;

}

void HashUpdateIntLE(HashInstance* ctx, uint16_t x)
{

 uint8_t temp[2];
 temp[0] = x %256;
 temp[1] = x /256;


    HashUpdate(ctx, temp, sizeof(uint16_t));
}
