//..\tcc32.exe -L. TradeX2-M.dl -run hq.c

//#include "ffic.h"
//#include "txhq.h"
#include "tx_tool.c"

//180.153.18.170 @ref https://github.com/iorj/tdxhq-1/blob/master/tdx/hq/tdxhq.py
//14.17.75.71 @ref ./TradeX2Demo-M/TradeXDemo-M.cpp
//101.227.77.254 @ref https://github.com/plenari/economic/blob/187f11b32d03cea8479ac8ba643eb9ecd24b0eab/quantaxiss/QA_Trade_stock_query.py

//or check from "connect.cfg" of the software by broker !!!

//..\ffic_static_32.exe txhq.c
//..\tcc32 -I.. -L.. -run txhq.c

//typedef char* ffic_string;
//typedef void* ffic_ptr;
//typedef struct {
//	ffic_string c;
//	ffic_string m;
//	ffic_ptr f;
//} ffic_def;

//struct {
//	struct {
//		ffic_func printf;
//	} c;
//} lib;

//struct {
//	ffic_func printf;
//} $c;

//static struct _c {
//};

//extern int write (int fd, void *buf, int len);
//static void __attribute__ ((constructor))
//testc (void) {
//	c_printf = $use(c,printf,ffic_func);
//	//write (1, "constructor\n", 12);
//}
//static void __attribute__ ((destructor))
//testd (void) { write (1, "destructor\n", 11); }

void main(int argc,char* argv[]) {

	//$decl(c_printf,ffic_func) = $use(c,printf,ffic_func);
	//$dump(c_printf,d);
	//ffic_ptr x;
	//x = (typeof(x)) 0;
	//$dump(x,d);
	//return;

	tx_init();
	tx_a = tx_a_hq;
	if(argc<2){
		//char * argv_[] = {"conn","139.159.195.177","7709"};
		char * argv_[] = {"conn","114.118.82.209","7709"};
		argv = argv_;
		argc = tx_arr_len(argv_);
	}

	tx_call("conn",argv,argc,NULL);

	tx_thread(&handle_stdin,0);

	//long c = 0;
	while(!tx_flag_quit){
		tx_sleep(5000);
		if(nConn>=0){
			int count = hq_check_conn(NULL,0,NULL);
			if( count<=0 ){
				tx_flag_quit = 1;
				c_fprintf(c_stderr,"# quit for count %d\n", count);
			}else{
				//c_fprintf(c_stderr,"# count %d\n", count);
				c_fprintf(c_stderr,".");
			}
			c_fflush(c_stderr);
		}
	}
	c_fprintf(c_stderr,"# exit\n");
	c_fflush(c_stderr);
}


