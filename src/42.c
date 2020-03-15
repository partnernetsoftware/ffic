typedef void* any_ptr;
typedef any_ptr (*function_ptr)();
extern function_ptr c(const char * funcname, ...);
extern function_ptr ffi(const char * libname, const char* funcname, ...);

int main(){
	//c("printf")("TEST ffi=%d\n",ffi);
	ffi("c","printf")("TEST ffi=%d\n",ffi);
	ffi("cc","printf")("TEST ffi=%d\n",ffi);
	//c("printf","42\n");
	return 0;
}
