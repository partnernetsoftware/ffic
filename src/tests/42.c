extern void*(*ffi(const char*, const char*, ...))();
extern void*(*ffi_raw(const char*, const char*, ...))();
# define libc(f) ffi("c",#f)

//extern void ffi_list_symbols( void *ctx,  void (*symbol_cb)(void *ctx, const char *name, const void *val));
//extern void ffi_list_symbols( void *ctx,  void (*symbol_cb)());

void symbol_cb(void *ctx, const char *name, const void *val)
{
	libc(printf)("42.c: symbol_cb: %s\n",name);
};

int main(){

	//libc(printf)("42.c: stderr=%d\n",libc(stderr));
	//libc(fprintf)(libc(stderr),"42.c: fprintf stderr=%d\n",libc(stderr));

	ffi_raw("libc.dylib","fprintf")(libc(stderr),"42.c: fprintf stderr=%d\n",libc(stderr));

//	ffi_list_symbols((void*)0,symbol_cb);

	return 0;
}
