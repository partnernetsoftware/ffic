#ifndef TX_TOOL_C
#define TX_TOOL_C

//#include "tcclib.h"
#include "ffic.h"
//#include "TradeX.h"
#define size_t int
typedef unsigned char uint8_t;
#include "base64.h"
#include "base64.c"

//#ifdef _WIN32
//#include <windows.h>
//#include <process.h>
//
//#define tx_sleep(t) Sleep(t);
//#else
//extern int usleep(int t);
//#define tx_sleep(t) usleep(t);
//#endif
//#define tx_sleep(t) ffic_msleep(t);
#define tx_sleep ffic(0,"msleep")

#define tx_arr_len(a) (sizeof(a)/sizeof(a[0]))

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

ffic_func fprintf;
ffic_ptr stderr;
ffic_ptr stdout;
ffic_ptr stdin;
ffic_func fflush;
ffic_func_i strlen;
ffic_func calloc;
ffic_func c_printf;
ffic_func free;
ffic_func strtok;
#define NULL ((void*)0)
#define FILE void
ffic_func c_strcmp;
ffic_func fopen;
ffic_func fclose;
ffic_func fgets;
ffic_func_l atol;
ffic_func_f atof;
ffic_func strcpy;
ffic_func sprintf;

ffic_func_i Logon;
ffic_func GetMachineInfo;
ffic_func_i GetQuote;
ffic_func_i TdxHq_GetSecurityBars;
ffic_func_i QueryData;
ffic_func_i TdxHq_GetSecurityCount;
ffic_func_i TdxHq_Connect;
ffic_func_i CancelOrder;
ffic_func_i OpenTdx;
ffic_func_i CloseTdx;
ffic_func_i SendOrder;
ffic_func CreateThread;
ffic_func CloseHandle;
ffic_func_i CloseTdx;
typedef unsigned long DWORD;
typedef long LONG;
#define HANDLE ffic_ptr
#define LPTHREAD_START_ROUTINE ffic_ptr
#define WINAPI
#define LPVOID ffic_ptr
#define PEXCEPTION_POINTERS ffic_ptr

void tx_ffic(){
	c_printf = (ffic_func) ffic(0,"printf");
	c_printf("c_printf=%d\n",c_printf);
	c_strcmp = (ffic_func) ffic(0,"strcmp");
}

int tx_output(int f,char* timestamp,char* out,char* err){
	char* txt = (f>=0) ? out : err;

	fprintf(stderr, "# %s %s %s\n",timestamp,out,err);
	fflush(stderr);

	int len = strlen(txt);
	char * txt_base64= calloc(4*len, sizeof(char));//calloc() auto init
	b64_encode(txt,strlen(txt),txt_base64);
	//cas_printf("[\"%s\",\"%s\",\"%s\"]\n",timestamp,(f>=0)?"OK":"KO",txt_base64);
	c_printf("[\"%s\",\"%s\",\"%s\"]\n",timestamp,(f>=0)?"OK":"KO",txt_base64);
	fflush (stdout);
	free(txt_base64);
	return f;
}

int tx_split(char* line,char** argv){
	int c=0;
	char* pch;
	const char * DLM = " \t\r\n";
	pch = strtok(line,DLM);
	while (pch != NULL) {
		argv[c++] = pch;
		pch = strtok(NULL,DLM);
	}
	return c;
}

int tx_unknown(char** argv, int argc, char* timestamp){
	fprintf(stderr,"# timestamp=%s ",timestamp);
	for(int i=0;i<argc;i++){
		fprintf(stderr,"%s ",argv[i]);
	}
	fprintf(stderr,"\n");

	tx_output(0,timestamp,"wrong cmd","");
	return 0;
}
typedef int (*tx_func)();
typedef struct _tx_method_desc tx_method_desc,*p_tx_method_desc;
struct _tx_method_desc {
	const char *name;
	tx_func fp;
};

tx_func tx_type_get(tx_method_desc * self, const char* name)
{
	tx_method_desc * fn = self;
	while(fn->fp!=NULL){
		if(0==c_strcmp(fn->name,name)) {
			return fn->fp;
		}
		fn++;
	}
	return tx_unknown;
}

int nClientID = -1;

char m_sTradeAccount[2][16] = {"",""};

int tx_read_config(char* str){
	FILE *fp;
	fp = (FILE*) fopen("config.txt" , "r");
	if(fp == NULL) {
		fprintf(stderr,"# Error opening config file");
		return(-1);
	}
	fgets (str, 1024, fp);
	fclose(fp);
	return 0;
}

int tx_flag_quit = 0;

int tx_login(char** argv, int argc, char* timestamp){

	char str[512] = {0};
	tx_read_config(str);
	fprintf(stderr,"# Loaded config.txt\n");

	char* str_a[24];//
	tx_split(str, str_a);

	int m_nQsid=atol(str_a[0]);
	char m_sHost[64]={0};
	strcpy(m_sHost,str_a[1]);
	short m_nPort = atol(str_a[2]);
	char m_sVersion[8]={0};
	strcpy(m_sVersion,str_a[3]);
	short m_nYybId= atol(str_a[4]);
	char m_nAccountType= atol(str_a[5]);
	char m_sAccountNo[16]={0};
	strcpy(m_sAccountNo,str_a[6]);
	char m_sJyPassword[12]={0};
	strcpy(m_sJyPassword,str_a[7]);
	char m_sTxPassword[12]={0};
	strcpy(m_sTxPassword,str_a[8]);

	strcpy(m_sTradeAccount[0], str_a[9]);
	strcpy(m_sTradeAccount[1], str_a[10]);

	char szErrInfo[512];
	fprintf(stderr,"# Logon START\n");
	nClientID = (int) Logon(m_nQsid,
			m_sHost,
			m_nPort,
			m_sVersion,
			m_nYybId,
			m_nAccountType,
			m_sAccountNo,
			"",
			m_sJyPassword,
			m_sTxPassword,
			szErrInfo);
	if(nClientID < 0){
		fprintf(stderr,"# Logon KO %s\n",szErrInfo);
		tx_flag_quit = 1;
	}else{
		fprintf(stderr,"# Logon OK %d\n",nClientID);
	}
	return 0;
}

int tx_quit(){
	tx_flag_quit = 1;
	return 1;
}

int hq_quit(){
	tx_flag_quit = 1;
	return 1;
}

int tx_pc(char** argv, int argc, char* timestamp){
	int len_out = 2048;
	char * szResult = calloc(len_out,sizeof(char));
	GetMachineInfo(nClientID, szResult, len_out);
	tx_output(1,timestamp,szResult,"");
	free(szResult);
	return 0;
}

//1 sh, 0 sz
int tx_market(char* pszZqdm){
	if (strlen(pszZqdm)>2 && (
				pszZqdm[0]=='6' && pszZqdm[1]=='0' && (pszZqdm[2]=='0' || pszZqdm[2]=='1')
				|| //204--- for SH GuoZhai
				pszZqdm[0]=='2' && pszZqdm[1]=='0' && pszZqdm[2]=='4'
				))
	{
		return 1;
	}
	return 0;
}

int nConn = -1;

int tx_quote(char** argv, int argc, char* timestamp){
	long offset = atol(timestamp)>0?1:0;
	if(argc-offset<1){
		char * usage = "quote $stock\n";
		fprintf(stderr,usage);
		tx_output(-1,timestamp,"",usage);
		return 0;
	}
	char * szErrInfo = calloc(1024,sizeof(char));
	char* pszZqdm = argv[1+offset];
	char * szResult = calloc(1024*4,sizeof(char));
	int f = GetQuote(nClientID, pszZqdm, szResult, szErrInfo);
	tx_output(f,timestamp,szResult,szErrInfo);
	free(szResult);
	free(szErrInfo);
	return 0;
}

int hq_bars(char** argv, int argc, char* timestamp){
	long offset = atol(timestamp)>0?1:0;

	if(argc-offset<2){
		fprintf(stderr,"hq $stock $type $line $market\n");
		tx_output(-1,timestamp,"","hq $stock $type $line $market");
		return 0;
	}

	char * szErrInfo = calloc(1024,sizeof(char));

	char* pszZqdm = argv[1+offset];

	short nCount = 30;
	if(argc-offset>2){
		nCount = (short) atol(argv[2+offset]);
	}

	int nCategory = 4;
	if(argc-offset>3){
		nCategory = (int) atol(argv[3+offset]);
	}

	int nMarket = tx_market( pszZqdm );

	char * szResult = calloc(1024*nCount,sizeof(char));
	int f = TdxHq_GetSecurityBars(nConn, nCategory, nMarket, pszZqdm, 0, &nCount, szResult, szErrInfo);
	tx_output(f,timestamp,szResult,szErrInfo);
	free(szResult);

	free(szErrInfo);
	return 0;
}

int hq_check_conn(char** argv, int argc, char* timestamp){
	if(tx_flag_quit==1){
		return 0;
	}
	long offset = atol(timestamp)>0?1:0;
	int nMarket = 0;//0 sz 1 sh .... TMP
	if(argc-offset>1){
		nMarket = (int) atol(argv[1+offset]);
	}
	char * szErrInfo = calloc(1024,sizeof(char));
	short pnCount = 0;
	int f = TdxHq_GetSecurityCount(nConn, nMarket, &pnCount, szErrInfo);
	free(szErrInfo);
	if(f>=0 && pnCount>0) return (int) pnCount;
	else return f;
}

int hq_market_stock_count(char** argv, int argc, char* timestamp){
	long offset = atol(timestamp)>0?1:0;

	char * szErrInfo = calloc(1024,sizeof(char));

	int nMarket = 0;//0 sz 1 sh .... TMP
	if(argc-offset>1){
		nMarket = (int) atol(argv[1+offset]);
	}

	short pnCount = 0;
	int f = TdxHq_GetSecurityCount(nConn, nMarket, &pnCount, szErrInfo);

	char * szResult = calloc(1024,sizeof(char));
	sprintf(szResult,"pnCount=%d",pnCount);

	tx_output(f,timestamp,szResult,szErrInfo);

	free(szResult);

	free(szErrInfo);
	return 0;
}

int tx_info(char** argv, int argc, char* timestamp){
	long offset = atol(timestamp)>0?1:0;

	int t = (argc-offset>1)?atol(argv[1+offset]):0;

	char * szErrInfo = calloc(1024,sizeof(char));
	char * szResult = calloc(1024*128,sizeof(char));
	int f = QueryData(nClientID, t, szResult, szErrInfo);
	tx_output(f,timestamp,szResult,szErrInfo);
	free(szResult);
	free(szErrInfo);
	return 0;
}

int hq_conn(char** argv, int argc, char* timestamp){
	long offset = atol(timestamp)>0?1:0;

	if(argc-offset<2){
		char * hq_usage = "conn $hq_server $hq_port\n";
		fprintf(stderr,hq_usage);
		tx_output(-1,timestamp,"",hq_usage);
		return 0;
	}

	char * szErrInfo = calloc(1024,sizeof(char));
	char * szResult = calloc(1024*10,sizeof(char));

	char * pszHqSvrIP = argv[1+offset];
	int nPort = 7709;
	if(argc-offset>2){
		nPort = atol(argv[2+offset]);
	}

	fprintf(stderr,"# HQ CONN START %s :%d\n", pszHqSvrIP,nPort);

	nConn = TdxHq_Connect(pszHqSvrIP, nPort, szResult, szErrInfo);
	if (nConn < 0) {
		fprintf(stderr,"# HQ CONN KO %s\n",szErrInfo);
		tx_flag_quit = 1;
	} else {
		fprintf(stderr,"# HQ CONN OK\n");
	}
	free(szResult);
	free(szErrInfo);
	return 0;
}

int tx_cancel_order(char** argv, int argc, char* timestamp){
	long offset = atol(timestamp)>0?1:0;
	const char* usage = "# cancel $order_id\n";
	if(argc<2){ fprintf(stderr,usage); return 0; }

	char nMarket = 0;
	for(int i=1;i<argc;i++){
		char* pszHth = argv[i+offset];
		fprintf(stderr,"# CancelOrder %s\n",pszHth);
		char * szErrInfo = calloc(1024,sizeof(char));
		char * szResult = calloc(1024,sizeof(char));
		int f = CancelOrder(
				nClientID,
				nMarket,
				pszHth,
				szResult,
				szErrInfo);
		tx_output(f,timestamp,szResult,szErrInfo);
		free(szResult);
		free(szErrInfo);
	}
	return 0;
}

int tx_order(char** argv, int argc, char* timestamp){
	const char* usage = "# play \"$StockCode\" +/-$amount $price\n";
	if(argc<4){
		fprintf(stderr,usage);
		return 0;
	}
	long offset = atol(timestamp)>0?1:0;

	int nPriceType =  0;
	char pszZqdm[64] = {0};
	strcpy(pszZqdm, argv[1+offset]);//stock code

	const char* pszGddm = m_sTradeAccount[ tx_market( pszZqdm) ];

	float fPrice = atof(argv[3+offset]);
	int nQuantity = (int) atol(argv[2+offset]);

	int nCategory = (nQuantity>0) ? 0 : 1;//0 buy, 1 sell

	float total = fPrice*nQuantity;
	if(total>99999 || total<-99999){
		tx_output(-1,timestamp,"","too much");
		return 0;
	}
	fprintf(stderr,"# SendOrder %f %d (%f) \"%s\"\n",fPrice,nQuantity,total,pszZqdm);

	char * szErrInfo = calloc(1024,sizeof(char));
	char * szResult = calloc(1024,sizeof(char));
	int f = SendOrder(nClientID,
			nCategory,
			nPriceType,
			pszGddm,
			pszZqdm,
			fPrice,
			(nQuantity>0)?nQuantity:-nQuantity,//
			szResult,
			szErrInfo);
	tx_output(f,timestamp,szResult,szErrInfo);
	free(szResult);
	free(szErrInfo);

	return 0;
}

int tx_init(){
	char szErrInfo[1024];
	fprintf(stderr,"# OpenTdx START\n");
	char* pszClientVersion = "9.40";
	char nCliType = 12;
	char nVipTermFlag = 0;
	if (OpenTdx(14, pszClientVersion, nCliType, nVipTermFlag, szErrInfo) < 0) {
		fprintf(stderr,"# OpenTdx KO %s\n",szErrInfo);
		tx_flag_quit = 1;
	} else {
		fprintf(stderr,"# OpenTdx OK\n");
	}
	return 0;
}

int tx_exit(){
	tx_flag_quit = 1;
	CloseTdx();
	return 1;
}

tx_method_desc tx_a_tx[] = {
	"init",    tx_init,

	"l",       tx_login,
	"login",   tx_login,

	"info",    tx_info,
	"i",       tx_info,

	"order",   tx_order,
	"play",    tx_order,
	"p",       tx_order,

	//TODO order list

	"cancel",  tx_cancel_order,
	"c",       tx_cancel_order,

	"pc",      tx_pc,

	"quote",   tx_quote,

	"quit",    tx_quit,
	"q",       tx_quit,

	"exit",    tx_exit,
	"",        NULL
};

tx_method_desc tx_a_hq[] = {
	"conn",    hq_conn,

	"count",   hq_market_stock_count,

	"bars",    hq_bars,
	"b",       hq_bars,

	"quit",    tx_quit,
	"q",       tx_quit,
	"",        NULL
};

tx_method_desc * tx_a = tx_a_tx;//defaut to tx one

void tx_thread(LPTHREAD_START_ROUTINE func, char* line){
	DWORD tid;
	HANDLE hThread = CreateThread(NULL,1024,func,line,0,&tid);
	CloseHandle(hThread);
}

int tx_call(char* cmd,char** argv,int argc, char* timestamp){
	int rt = tx_type_get(tx_a,cmd)(argv,argc,timestamp);
	fflush(stderr);
	return rt;
}

DWORD WINAPI handle_request(LPVOID lpParameter)
{
	char* argv[30];
	char line[1024];
	char line_out[1024];
	strcpy(line, (char*) lpParameter);
	strcpy(line_out, line);
	int argc = tx_split(line, argv);
	if(argc>0){
		char timestamp[256] = {0};
		strcpy(timestamp, argv[0]);
		char* cmd = argv[0];
		if(0==c_strcmp(cmd,"#")){
			fprintf(stderr, "# COMMENT %s\n",line_out);
			fflush (stderr);
			return 0;
		}else if(atol(cmd)>0){
			if(argc>1){
				cmd = argv[1];
			}
		}
		tx_call(cmd,argv,argc,timestamp);
	}
	return 0;
}

DWORD WINAPI handle_stdin(LPVOID lpParameter)
{
	while(!tx_flag_quit){
		int len = 1024;
		char line[len];
		fgets(line,len,stdin);
		if( NULL==line ) {
		}else{
			tx_thread(&handle_request,line);
		}
	}
	tx_sleep(666);//important to prevent a quiting failure
	return 0;
}

//@usage: SetUnhandledExceptionFilter(MyUnhandledExceptionFilter);
LONG WINAPI MyUnhandledExceptionFilter(PEXCEPTION_POINTERS pExceptionPtrs){
	fprintf(stderr,"# MyUnhandledExceptionFilter()\n");
	CloseTdx();
	return 0;
}

#endif

