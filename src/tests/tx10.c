//#include "stdio.h"
#include "tx_tool.c"
extern void printf(const char*,...);
int main(int argc, char *argv[]) {

	tx_init();

	tx_call("start",argv,argc,0);
	tx_call("login",0,0,0);

	if(tx_flag_quit==0){
		tx_thread(&handle_stdin,0);

		while(!tx_flag_quit){
			tx_sleep(4000);
			if(nClientID>=0){
				if( !tdx2m_IsConnectOK( nClientID ) ){
					c_fprintf(c_stderr,"# IsConnectOK(%d)=%d\n",nClientID);
					if (tx_flag_ever) { tx_call("login",0,0,0); } else 
					tx_flag_quit = 1;
				}
			}
		}
	}

	tx_call("exit",0,0,0);

	return 0;
}

