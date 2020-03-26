//build32 tccffi && tccffi_win32 win.c

extern void*(*ffi(const char*, const char*, ...))();
extern void*(*ffi_raw(const char*, const char*, ...))();
# define libc(f) ffi("c",#f)

//extern void ffi_list_symbols( void *ctx,  void (*symbol_cb)(void *ctx, const char *name, const void *val));
//extern void ffi_list_symbols( void *ctx,  void (*symbol_cb)());

//extern void* ffi_std(int);
//extern void* ffi_printf();
extern void* ffi_fprintf();
extern void* ffi_libc_printf();
extern void* ffi_libc_fprintf();

//void symbol_cb(void *ctx, const char *name, const void *val)
//{
//	libc(printf)("42.c: symbol_cb: %s\n",name);
//};

//extern int fprintf(FILE *stream, const char *format, ...);

int main(){

	//libc(printf)("MessageBoxA=%ld",ffi("user","MessageBoxA"));
	//ffi("user","MessageBoxA")(0,"hello1","hello2",0);//KO, strage problem
	//ffi_raw("user32","MessageBoxA")(0,"hello1","hello2",0);//OK
	//ffi_raw("msvcrt","printf")("MessageBoxA=%ld",ffi_raw("user32","MessageBoxA"));//OK

	//ffi_raw("libc","printf")("MessageBoxA=%ld",ffi_raw("user32","MessageBoxA"));//OK
	//ffi_raw("msvcrt","printf")("MessageBoxA=%ld\n",ffi_raw("user32","MessageBoxA"));//OK
	//ffi_raw("msvcrt","printf")("MessageBoxA=%ld\n",ffi_raw("user32","MessageBoxA"));//OK
	//ffi_raw("msvcrt","printf")("printf=%ld\n",ffi_raw("msvcrt","printf"));//OK
	////ffi("c","printf")("MessageBoxA=%ld",ffi_raw("user32","MessageBoxA"));//OK
	//ffi_raw("user32","MessageBoxA")(0,"hello3","hello4",0);//OK
	////ffi_raw("user32","MessageBoxA")(0,"hello1","hello2",0);//srange, no show for second call...
	//ffi_raw("user32","MessageBoxA")(0,"hello3","hello4",0);//OK

	//libc(printf)("42.c: libc(stderr)=%d,ffi_std(1)=%d\n",libc(stderr),ffi_std(1));
	//ffi_printf("42.c: ffi_libc_printf=%ld,ffi_fprintf=%ld,libc(fprintf)=%ld\n",ffi_libc_printf,ffi_fprintf,libc(fprintf));
	//libc(printf)("42.c: libc(fprintf)=%d,ffi_fprintf=%ld,ffi_libc_fprintf=%ld\n",libc(fprintf),ffi_fprintf,ffi_libc_fprintf);
	//libc(printf)("compare=%s\n",libc(strcmp)("c","c")==0?"YES":"NO");
	//ffi_printf("ffi_fprintf(ffi_std(1)");//OK
	//ffi_libc_fprintf(libc(stderr),"ffi_libc_printf(libc(stdin))");//KO
	//ffi_raw("libc","fprintf")(libc(stderr),"ffi_fprintf(libc(stderr))");
	//ffi_raw("msvcrt","fprintf")(libc(stderr),"ffi_fprintf(libc(stderr))");//OK too???
	ffi("c","fprintf")(libc(stderr),"ffi_fprintf(libc(stderr))");//OK too???
	//ffi_fprintf(libc(stderr),"ffi_fprintf(libc(stderr))");//OK...
	//ffi("c","fprintf")(libc(stderr),"ffi_fprintf(libc(stderr))");

	ffi_raw("user32","MessageBoxA")(0,"hello3","hello4",0);//OK
	//ffi_raw("user32","MessageBoxA")(0,"hello3","hello4",0);//OK
	//ffi_libc_fprintf(ffi_std(1),"ffi_libc_fprintf(ffi_std(1)");

	//libc(fprintf)(libc(stdout),"42.c: fprintf stdout=%d\n",libc(stdout));
	//libc(fprintf)(libc(stderr),"42.c: fprintf stderr=%d\n",libc(stderr));
	//fprintf(libc(stderr),"42.c: fprintf stderr=%d\n",libc(stderr));

	//not exists yet in libtcc.dll (older version)
	//ffi_list_symbols((void*)0,symbol_cb);

	return 0;
}
