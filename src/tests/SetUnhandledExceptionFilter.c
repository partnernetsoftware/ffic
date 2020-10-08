//@ref  __attribute__((dllimport)) LPTOP_LEVEL_EXCEPTION_FILTER __attribute__((__stdcall__)) SetUnhandledExceptionFilter(LPTOP_LEVEL_EXCEPTION_FILTER lpTopLevelExceptionFilter);
//@usage: SetUnhandledExceptionFilter(MyUnhandledExceptionFilter);
long MyUnhandledExceptionFilter(ffic_ptr pExceptionPtrs){
	c_fprintf(c_stderr,"# MyUnhandledExceptionFilter()\n");
	tdx1m_CloseTdx();
	return -1;
}
