// Note: sete sets a ’byte’ not the word
//char tx_cas(int *ptr, int old, int new) {
//	unsigned char ret;
//	__asm__ __volatile__ (
//			" lock\n"
//			" cmpxchgl %2,%1\n"
//			" sete %0\n"
//			: "=q" (ret), "=m" (*ptr)
//			: "r" (new), "m" (*ptr), "a" (old)
//			: "memory");
//	return ret;
//}

//int cas_printf_lock = 0;
//int cas_printf(char *format, ...){
//	for(int i=0;i<3;i++){if(!tx_cas(&cas_printf_lock, 0, 1)){tx_sleep(1000);printf("CAS");}else break;}
//	va_list args;
//	va_start (args, format);
//	vprintf(format, args);
//	va_end (args);
//	cas_printf_lock = 0;//reset
//}


