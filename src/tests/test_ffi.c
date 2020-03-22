//#include <windows.h>
// gcc -I. -lffi -fdeclspec test_ffi.c -o test_ffi
// gcc -I. -lffi -fms-extensions test_ffi.c -o test_ffi && ls -al test_ffi && ./test_ffi
//#include "ffi_osx.h"
//#include "ffi_osx.h"
#include "ffi_win_fix.h"
#include <stdarg.h>

#define ARR_LEN(a) (sizeof(a)/sizeof(a[0]))
#define CASTAS(t) *(t*)
typedef void* any;
typedef any (*pointer_func)();//generic function pointer

//TODO plan 准备搞成:
// func = get_func("libname","funcname","types types types","ret")
// func();

int printf(const char *format, ...);

//int testFunc(int m, int n) {
//	printf("params: %d %d \n", m, n);
//	return m+n;
//}

int testFunc(const char *format, int m, int n) {
	printf("params: %s, %d, %d \n", format, m, n);
	return m+n;
}

int play(ffi_type** ffiArgTypes, int argCount, ...)
{
	//void* functionPtr = &testFunc;
	void* functionPtr = &printf;

	printf("argCount=%d\n",argCount);

  //void *values[MAX_ARGS];
	ffi_type **ffiArgs = alloca(sizeof(void *) *argCount);

	//void *ffiArgPtr = alloca(ffiArgTypes[0]->size);

	va_list lp;	
	va_start (lp, argCount);
	for(int i=0;i<argCount;i++) {
		any a = va_arg(lp,any);

		int size = ffiArgTypes[i]->size;
		int type = ffiArgTypes[i]->type;
		any argPtr = alloca(size);
		memcpy( argPtr, &a, size );
		ffiArgs[i] = argPtr;

		//printf("debug d=%d\n",CASTAS(int) ffiArgs[i]);
		printf("debug (%d): type=%d, size=%d,*=%d\n",i, type, size,argPtr);
	};
	va_end(lp);
	ffi_cif cif;
	ffi_type *returnFfiType = &ffi_type_sint;
	//ffi_status ffiPrepStatus = ffi_prep_cif(&cif, FFI_DEFAULT_ABI, (unsigned int)argCount, returnFfiType, ffiArgs);
	//ffi_status ffiPrepStatus = ffi_prep_cif(&cif, FFI_DEFAULT_ABI, argCount, returnFfiType, ffiArgs);
	printf("debug 222\n");
	ffi_status ffiPrepStatus = ffi_prep_cif(&cif, FFI_DEFAULT_ABI, argCount,  &ffi_type_sint, ffiArgTypes);
	printf("debug 333\n");

	if (ffiPrepStatus == FFI_OK) {
		void *returnPtr = NULL;
		if (returnFfiType->size) {
			returnPtr = alloca(returnFfiType->size);
		}
		ffi_call(&cif, functionPtr, returnPtr, ffiArgs);

		int returnValue = *(int *)returnPtr;
		printf("ret: %d \n", returnValue);

		//TODO free ffiArgs
		return returnValue;
	}else{
		printf("no call\n");
	}
	return 0;
}

int main(){
	testFunc("%d,%d;",1, 2);

	ffi_type* ffiArgTypes[] = {& ffi_type_pointer, & ffi_type_sint, & ffi_type_sint };
	play(ffiArgTypes, ARR_LEN(ffiArgTypes), "%d,%d\n", 6, 7);
}

//static size_t my_f(float a, char *s)
//{
//  return (size_t) ((int) strlen(s) + (int) a);
//}

//#include <stdlib.h> //for abort()

//#define CHECK(x) (void)(!(x) ? (abort(), 1) : 0)

//int main001 (void)
//{
//  ffi_cif cif;
//  ffi_type *args[111];
//  void *values[111];
//  ffi_arg rint;
//  char *s;
//  float v2;
//  args[1] = &ffi_type_pointer;
//  args[0] = &ffi_type_float;
//  values[1] = (void*) &s;
//  values[0] = (void*) &v2;
//  
//  /* Initialize the cif */
//  if(ffi_prep_cif(&cif, FFI_DEFAULT_ABI, 2,
//				&ffi_type_sint, args) == FFI_OK){
//
//		s = "a";
//		v2 = 0.0;
//		ffi_call(&cif, FFI_FN(my_f), &rint, values);
//		//CHECK(rint == 1);
//
//		s = "1234567";
//		v2 = -1.0;
//		ffi_call(&cif, FFI_FN(my_f), &rint, values);
//		//CHECK(rint == 6);
//
//		s = "1234567890123456789012345";
//		v2 = 1.0;
//		ffi_call(&cif, FFI_FN(my_f), &rint, values);
//		//CHECK(rint == 26);
//
//		//exit(0);
//		printf("OK?");
//	}else{
//		printf("KO?");
//	}
//}

