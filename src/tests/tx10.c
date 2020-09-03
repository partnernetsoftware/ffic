//#include "stdio.h"
#include "tx_tool.c"
int main(int argc, char *argv[]) {

	tx_init();

	//tx_call("init",argv,argc,NULL);
	tx_call("start",argv,argc,NULL);
	tx_call("login",NULL,0,NULL);

	if(tx_flag_quit==0){
		tx_thread(&handle_stdin,0);

		while(!tx_flag_quit){
			tx_sleep(4000);
			if(nClientID>=0){
				if( 0==tdx2m_IsConnectOK( nClientID ) ){
					tx_flag_quit = 1;
					c_fprintf(c_stderr,"# IsConnectOK(%d)=%d\n",nClientID);
				}
			}
		}
	}

	tx_call("exit",NULL,0,NULL);

	return 0;
}

