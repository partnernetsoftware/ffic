#include <stdio.h>
#include <windows.h>
#include <ffi.h>
#include <Windows.h>

//#include "TradeX.h"

//int flag_quit_next_round = 0 ;
//int tx_init(){
//	char szErrInfo[1024];
//	fprintf(stderr,"# Init START\n");
//	if (OpenTdx(14, "9.40", 12, 0, szErrInfo) < 0) {
//		flag_quit_next_round = 1;
//		fprintf(stderr,"# Init KO %s",szErrInfo);
//	} else {
//		fprintf(stderr,"# Init OK");
//	}
//	fprintf(stderr,"\n");
//	return 0;
//}

int test_alert(){
	ffi_cif cif;
	HINSTANCE dllHandle = LoadLibrary("user32.dll");

	int n = 4;    

	ffi_type *ffi_argTypes[4]; 
	void *values[4];
	UINT64 a=0;
	UINT32 b=0;
	TCHAR* s1= "hello"; 
	TCHAR* s2= "hello2";  
	values[0] = &a;
	values[1] = &s1;
	values[2] = &s2;
	values[3] = &b;    
	ffi_argTypes[0] = &ffi_type_uint64;    
	ffi_argTypes[1] = &ffi_type_pointer;    
	ffi_argTypes[2] = &ffi_type_pointer;    
	ffi_argTypes[3] = &ffi_type_uint; 
	ffi_type *c_retType = &ffi_type_sint;    
	ffi_type rc; // return value    

	if (ffi_prep_cif(&cif, FFI_DEFAULT_ABI, 4, &ffi_type_sint, ffi_argTypes) == FFI_OK)    {
		ffi_call(&cif, FFI_FN(GetProcAddress(dllHandle,"MessageBoxA")), &rc, values); 
	}
	return 0;
}

int test_tdx(){
	ffi_cif cif;
	HINSTANCE dllHandle = LoadLibrary("TradeX2-M.dll");

	int n = 0;
	ffi_type *ffi_argTypes[n]; 
	void *values[n];
	
	//int n = 4;    

	//ffi_type *ffi_argTypes[4]; 
	//void *values[4];
	//UINT64 a=0;
	//UINT32 b=0;
	//TCHAR* s1= "hello"; 
	//TCHAR* s2= "hello2";  
	//values[0] = &a;
	//values[1] = &s1;
	//values[2] = &s2;
	//values[3] = &b;    
	//ffi_argTypes[0] = &ffi_type_uint64;    
	//ffi_argTypes[1] = &ffi_type_pointer;    
	//ffi_argTypes[2] = &ffi_type_pointer;    
	//ffi_argTypes[3] = &ffi_type_uint; 
	//ffi_type *c_retType = &ffi_type_sint;    
	ffi_type rc; // return value    

	if (ffi_prep_cif(&cif, FFI_DEFAULT_ABI, 4, &ffi_type_sint, ffi_argTypes) == FFI_OK)    {
		//ffi_call(&cif, FFI_FN(GetProcAddress(dllHandle,"OpenTdx")), &rc, values); 
		ffi_call(&cif, FFI_FN(GetProcAddress(dllHandle,"OpenTdx")), &rc, values); 
	}
	return 0;
}

int main(){
	//return tx_init();
	return test_tdx();
}
