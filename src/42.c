typedef void* any_ptr;
typedef any_ptr (*function_ptr)();
//extern function_ptr ffi(const char * libname, const char* funcname, ...);
function_ptr ffi(const char * libname, const char* funcname, ...);
#define c(f) ffi("c",#f)

any_ptr kkk( function_ptr pp ){
	return (void(*)())0;	
}

any_ptr ooo(){
	return (any_ptr)0;
}

int main(){
	//	print_ptr pp = ffi("c","printf");
	//	printf("TEST ffi(c,printf)=%d\n", ffi("c","printf")("wtf"));
	//ffi("c","printf")();
	//c("printf")("TEST ffi=%d\n",ffi);
	//ffi("c","printf")("TEST any_ptr=%d\n",any_ptr);
	ffi("c","printf")("TEST ffi=%d\n",ffi);
	//	c(printf)("TEST ffi=%d\n",ffi);
	//	ffi("cc","printf")("TEST ffi=%d\n",ffi);
	//	//c("printf","42\n");
	return 0;
}
