#ifndef TX_TOOL_C
#define TX_TOOL_C

#include "ffic.h"
#include "base64.c"

///////////////////////////////////////////////////////////////////////
//TODO merge as line-def mode
#define $decl(n,t) t n
#define $use(c,m,t) (t) ffic(#c,#m)
#define $import(c,m,n,t) $decl(t,n) = $use(c,m,t)
//#define $import(c,m,n,t) $decl(t,n) = $use(c,m,typeof(n))
#define $dump(v,t) c_printf(#v "=%" #t "\n",v)
#define $link(n,c,m) n = $use(c,m,typeof(n))
#define $linkx(c,m) c##_##m = $use(c,m,typeof(c##_##m))

$decl(tx_sleep,ffic_func);

$decl(c_stdin,ffic_ptr);
$decl(c_stdout,ffic_ptr);
$decl(c_stderr,ffic_ptr);

$decl(c_printf,ffic_func);
$decl(c_fprintf,ffic_func);
$decl(c_sprintf,ffic_func);
$decl(c_fflush,ffic_func);
$decl(c_calloc,ffic_func);
$decl(c_strtok,ffic_func);
$decl(c_strcpy,ffic_func);
$decl(c_memset,ffic_func);
$decl(c_free,ffic_func);
$decl(c_fopen,ffic_func);
$decl(c_fgets,ffic_func);
$decl(c_fclose,ffic_func);

$decl(c_strcmp,ffic_func_i);
$decl(c_strlen,ffic_func_i);
$decl(c_atol,ffic_func_l);
$decl(c_atof,ffic_func_f);

$decl(tdx2m_IsConnectOK,ffic_func_i);
$decl(tdx2m_OpenTdx,ffic_func_i);
$decl(tdx2m_CloseTdx,ffic_func_i);
$decl(tdx2m_Logon,ffic_func_i);
$decl(tdx2m_GetMachineInfo,ffic_func_i);
$decl(tdx2m_GetQuote,ffic_func_i);
$decl(tdx2m_QueryData,ffic_func_i);
$decl(tdx2m_CancelOrder,ffic_func_i);
$decl(tdx2m_SendOrder,ffic_func_i);
$decl(tdx2m_TdxHq_GetSecurityBars,ffic_func_i);
$decl(tdx2m_TdxHq_GetSecurityCount,ffic_func_i);
$decl(tdx2m_TdxHq_Connect,ffic_func_i);

$decl(CloseHandle,ffic_func);
$decl(CreateThread,ffic_func);

void tx_init(){
	$linkx(c,stdin);
	$linkx(c,stdout);
	$linkx(c,stderr);

	//c_stdin = $use(c,stdin,ffic_ptr);
	//c_stdout = $use(c,stdout,ffic_ptr);
	//c_stderr = $use(c,stderr,ffic_ptr);

	tx_sleep = $use(c,msleep,ffic_func);
	
	c_printf = $use(c,printf,ffic_func);
	c_fprintf = $use(c,fprintf,ffic_func);
	c_sprintf = $use(c,sprintf,ffic_func);
	c_fflush = $use(c,fflush,ffic_func);
	c_calloc = $use(c,calloc,ffic_func);
	c_strtok = $use(c,strtok,ffic_func);
	c_strcpy = $use(c,strcpy,ffic_func);
	c_memset = $use(c,memset,ffic_func);
	c_free = $use(c,free,ffic_func);
	c_fopen = $use(c,fopen,ffic_func);
	c_fclose = $use(c,fclose,ffic_func);
	c_fgets = $use(c,fgets,ffic_func);

	c_strcmp = $use(c,strcmp,ffic_func_i);
	c_strlen = $use(c,strlen,ffic_func_i);
	c_atol = $use(c,atol,ffic_func_l);
	c_atof = $use(c,atol,ffic_func_f);

	tdx2m_IsConnectOK = $use(tdx2m,IsConnectOK,ffic_func_i);
	tdx2m_OpenTdx = $use(tdx2m,OpenTdx,ffic_func_i);
	tdx2m_CloseTdx = $use(tdx2m,CloseTdx,ffic_func_i);
	tdx2m_Logon = $use(tdx2m,Logon,ffic_func_i);
	tdx2m_GetMachineInfo = $use(tdx2m,GetMachineInfo,ffic_func_i);
	tdx2m_GetQuote = $use(tdx2m,GetQuote,ffic_func_i);
	tdx2m_QueryData = $use(tdx2m,QueryData,ffic_func_i);
	tdx2m_CancelOrder = $use(tdx2m,CancelOrder,ffic_func_i);
	tdx2m_SendOrder = $use(tdx2m,SendOrder,ffic_func_i);
	tdx2m_TdxHq_GetSecurityBars = $use(tdx2m,TdxHq_GetSecurityBars,ffic_func_i);
	tdx2m_TdxHq_GetSecurityCount = $use(tdx2m,TdxHq_GetSecurityCount,ffic_func_i);
	tdx2m_TdxHq_Connect = $use(tdx2m,TdxHq_Connect,ffic_func_i);

	CloseHandle = $use(kernel32,CloseHandle,ffic_func);
	CreateThread = $use(kernel32,CreateThread,ffic_func);
}
///////////////////////////////////////////////////////////////////////

int tx_output(int f,char* timestamp,char* out,char* err){
	char* txt = (f>=0) ? out : err;

	c_fprintf(c_stderr, "# %s %s %s\n",timestamp,out,err);
	c_fflush(c_stderr);

	int len = c_strlen(txt);
	char * txt_base64= c_calloc(4*len, sizeof(char));//calloc() auto init
	b64_encode(txt,c_strlen(txt),txt_base64);
	//cas_printf("[\"%s\",\"%s\",\"%s\"]\n",timestamp,(f>=0)?"OK":"KO",txt_base64);
	c_printf("[\"%s\",\"%s\",\"%s\"]\n",timestamp,(f>=0)?"OK":"KO",txt_base64);
	c_fflush(c_stdout);
	c_free(txt_base64);
	return f;
}

int tx_split(char* line,char** argv){
	int c=0;
	char* pch;
	const char * DLM = " \t\r\n";
	pch = c_strtok(line,DLM);
	while (pch) {
		argv[c++] = pch;
		pch = c_strtok(0,DLM);
	}
	return c;
}

int tx_unknown(char** argv, int argc, char* timestamp){
	c_fprintf(c_stderr,"# timestamp=%s ",timestamp);
	for(int i=0;i<argc;i++){
		c_fprintf(c_stderr,"%s ",argv[i]);
	}
	c_fprintf(c_stderr,"\n");

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
	while(fn->fp){
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
	ffic_ptr fp;
	fp = c_fopen("config.txt" , "r");
	if(!fp) {
		c_fprintf(c_stderr,"# Error opening config file");
		return(-1);
	}
	c_fgets (str, 1024, fp);
	c_fclose(fp);
	return 0;
}

int tx_flag_quit = 0;

int tx_login(char** argv, int argc, char* timestamp){

	char str[512] = {0};
	tx_read_config(str);
	c_fprintf(c_stderr,"# Loaded config.txt\n");

	char* str_a[24];//
	tx_split(str, str_a);

	int m_nQsid=c_atol(str_a[0]);
	char m_sHost[64]={0};
	c_strcpy(m_sHost,str_a[1]);
	short m_nPort = c_atol(str_a[2]);
	char m_sVersion[8]={0};
	c_strcpy(m_sVersion,str_a[3]);
	short m_nYybId= c_atol(str_a[4]);
	char m_nAccountType= c_atol(str_a[5]);
	char m_sAccountNo[16]={0};
	c_strcpy(m_sAccountNo,str_a[6]);
	char m_sJyPassword[12]={0};
	c_strcpy(m_sJyPassword,str_a[7]);
	char m_sTxPassword[12]={0};
	c_strcpy(m_sTxPassword,str_a[8]);

	c_strcpy(m_sTradeAccount[0], str_a[9]);
	c_strcpy(m_sTradeAccount[1], str_a[10]);

	char szErrInfo[512];
	c_fprintf(c_stderr,"# Logon START\n");
	nClientID = (int) tdx2m_Logon(m_nQsid,
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
		c_fprintf(c_stderr,"# Logon KO %s\n",szErrInfo);
		tx_flag_quit = 1;
	}else{
		c_fprintf(c_stderr,"# Logon OK %d\n",nClientID);
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
	char * szResult = c_calloc(len_out,sizeof(char));
	tdx2m_GetMachineInfo(nClientID, szResult, len_out);
	tx_output(1,timestamp,szResult,"");
	c_free(szResult);
	return 0;
}

//1 sh, 0 sz
int tx_market(char* pszZqdm){
	if (c_strlen(pszZqdm)>2 && (
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
	long offset = c_atol(timestamp)>0?1:0;
	if(argc-offset<1){
		char * usage = "quote $stock\n";
		c_fprintf(c_stderr,usage);
		tx_output(-1,timestamp,"",usage);
		return 0;
	}
	char * szErrInfo = c_calloc(1024,sizeof(char));
	char* pszZqdm = argv[1+offset];
	char * szResult = c_calloc(1024*4,sizeof(char));
	int f = tdx2m_GetQuote(nClientID, pszZqdm, szResult, szErrInfo);
	tx_output(f,timestamp,szResult,szErrInfo);
	c_free(szResult);
	c_free(szErrInfo);
	return 0;
}

int hq_bars(char** argv, int argc, char* timestamp){
	long offset = c_atol(timestamp)>0?1:0;

	if(argc-offset<2){
		c_fprintf(c_stderr,"hq $stock $type $line $market\n");
		tx_output(-1,timestamp,"","hq $stock $type $line $market");
		return 0;
	}

	char * szErrInfo = c_calloc(1024,sizeof(char));

	char* pszZqdm = argv[1+offset];

	short nCount = 30;
	if(argc-offset>2){
		nCount = (short) c_atol(argv[2+offset]);
	}

	int nCategory = 4;
	if(argc-offset>3){
		nCategory = (int) c_atol(argv[3+offset]);
	}

	int nMarket = tx_market( pszZqdm );

	//char szResult2[nCount*1024];
	//c_memset(szResult2, '\0', nCount*1024);
	//int f = tdx2m_TdxHq_GetSecurityBars(nConn, nCategory, nMarket, pszZqdm, 0, &nCount, &szResult2, szErrInfo);
	//tx_output(f,timestamp,szResult2,szErrInfo);

	char * szResult = c_calloc(1024*nCount,sizeof(char));
	int f = tdx2m_TdxHq_GetSecurityBars(nConn, nCategory, nMarket, pszZqdm, 0, &nCount, szResult, szErrInfo);
	tx_output(f,timestamp,szResult,szErrInfo);
	c_free(szResult);
	c_free(szErrInfo);
	return 0;
}

int hq_check_conn(char** argv, int argc, char* timestamp){
	if(tx_flag_quit==1){
		return 0;
	}
	long offset = c_atol(timestamp)>0?1:0;
	int nMarket = 0;//0 sz 1 sh .... TMP
	if(argc-offset>1){
		nMarket = (int) c_atol(argv[1+offset]);
	}
	char * szErrInfo = c_calloc(1024,sizeof(char));
	short pnCount = 0;
	int f = tdx2m_TdxHq_GetSecurityCount(nConn, nMarket, &pnCount, szErrInfo);
	c_free(szErrInfo);
	if(f>=0 && pnCount>0) return (int) pnCount;
	else return f;
}

int hq_market_stock_count(char** argv, int argc, char* timestamp){
	long offset = c_atol(timestamp)>0?1:0;

	char * szErrInfo = c_calloc(1024,sizeof(char));

	int nMarket = 0;//0 sz 1 sh .... TMP
	if(argc-offset>1){
		nMarket = (int) c_atol(argv[1+offset]);
	}

	short pnCount = 0;
	int f = tdx2m_TdxHq_GetSecurityCount(nConn, nMarket, &pnCount, szErrInfo);

	char * szResult = c_calloc(1024,sizeof(char));
	c_sprintf(szResult,"pnCount=%d",pnCount);

	tx_output(f,timestamp,szResult,szErrInfo);

	c_free(szResult);

	c_free(szErrInfo);
	return 0;
}

int tx_info(char** argv, int argc, char* timestamp){
	long offset = c_atol(timestamp)>0?1:0;

	int t = (argc-offset>1)?c_atol(argv[1+offset]):0;

	char * szErrInfo = c_calloc(1024,sizeof(char));
	char * szResult = c_calloc(1024*128,sizeof(char));
	int f = tdx2m_QueryData(nClientID, t, szResult, szErrInfo);
	tx_output(f,timestamp,szResult,szErrInfo);
	c_free(szResult);
	c_free(szErrInfo);
	return 0;
}

int hq_conn(char** argv, int argc, char* timestamp){
	long offset = c_atol(timestamp)>0?1:0;

	if(argc-offset<2){
		char * hq_usage = "conn $hq_server $hq_port\n";
		c_fprintf(c_stderr,hq_usage);
		tx_output(-1,timestamp,"",hq_usage);
		return 0;
	}

	char * szErrInfo = c_calloc(1024,sizeof(char));
	char * szResult = c_calloc(1024*10,sizeof(char));

	char * pszHqSvrIP = argv[1+offset];
	int nPort = 7709;
	if(argc-offset>2){
		nPort = c_atol(argv[2+offset]);
	}

	c_fprintf(c_stderr,"# HQ CONN START %s :%d\n", pszHqSvrIP,nPort);

	nConn = tdx2m_TdxHq_Connect(pszHqSvrIP, nPort, szResult, szErrInfo);
	if (nConn < 0) {
		c_fprintf(c_stderr,"# HQ CONN KO %s\n",szErrInfo);
		tx_flag_quit = 1;
	} else {
		c_fprintf(c_stderr,"# HQ CONN OK\n");
	}
	c_free(szResult);
	c_free(szErrInfo);
	return 0;
}

int tx_cancel_order(char** argv, int argc, char* timestamp){
	long offset = c_atol(timestamp)>0?1:0;
	const char* usage = "# cancel $order_id\n";
	if(argc<2){ c_fprintf(c_stderr,usage); return 0; }

	char nMarket = 0;
	for(int i=1;i<argc;i++){
		char* pszHth = argv[i+offset];
		c_fprintf(c_stderr,"# CancelOrder %s\n",pszHth);
		char * szErrInfo = c_calloc(1024,sizeof(char));
		char * szResult = c_calloc(1024,sizeof(char));
		int f = tdx2m_CancelOrder(
				nClientID,
				nMarket,
				pszHth,
				szResult,
				szErrInfo);
		tx_output(f,timestamp,szResult,szErrInfo);
		c_free(szResult);
		c_free(szErrInfo);
	}
	return 0;
}

int tx_order(char** argv, int argc, char* timestamp){
	const char* usage = "# play \"$StockCode\" +/-$amount $price\n";
	if(argc<4){
		c_fprintf(c_stderr,usage);
		return 0;
	}
	long offset = c_atol(timestamp)>0?1:0;

	int nPriceType =  0;
	char pszZqdm[64] = {0};
	c_strcpy(pszZqdm, argv[1+offset]);//stock code

	const char* pszGddm = m_sTradeAccount[ tx_market( pszZqdm) ];

	float fPrice = c_atof(argv[3+offset]);
	int nQuantity = (int) c_atol(argv[2+offset]);

	int nCategory = (nQuantity>0) ? 0 : 1;//0 buy, 1 sell

	float total = fPrice*nQuantity;
	if(total>99999 || total<-99999){
		tx_output(-1,timestamp,"","too much");
		return 0;
	}
	c_fprintf(c_stderr,"# SendOrder %f %d (%f) \"%s\"\n",fPrice,nQuantity,total,pszZqdm);

	char * szErrInfo = c_calloc(1024,sizeof(char));
	char * szResult = c_calloc(1024,sizeof(char));
	int f = tdx2m_SendOrder(nClientID,
			nCategory,
			nPriceType,
			pszGddm,
			pszZqdm,
			fPrice,
			(nQuantity>0)?nQuantity:-nQuantity,//
			szResult,
			szErrInfo);
	tx_output(f,timestamp,szResult,szErrInfo);
	c_free(szResult);
	c_free(szErrInfo);

	return 0;
}

int tx_start(){
	char szErrInfo[1024];
	c_fprintf(c_stderr,"# OpenTdx START\n");
	char* pszClientVersion = "9.40";
	char nCliType = 12;
	char nVipTermFlag = 0;
	if (tdx2m_OpenTdx(14, pszClientVersion, nCliType, nVipTermFlag, szErrInfo) < 0) {
		c_fprintf(c_stderr,"# OpenTdx KO %s\n",szErrInfo);
		tx_flag_quit = 1;
	} else {
		c_fprintf(c_stderr,"# OpenTdx OK\n");
	}
	return 0;
}

int tx_exit(){
	tx_flag_quit = 1;
	tdx2m_CloseTdx();
	return 1;
}

tx_method_desc tx_a_hq[] = {
	"conn",    hq_conn,

	"count",   hq_market_stock_count,

	"bars",    hq_bars,
	"b",       hq_bars,

	"quit",    tx_quit,
	"q",       tx_quit,
	"",        0
};

//TODO order list

tx_method_desc tx_a_tx[] = {
	"start",   tx_start,

	"l",       tx_login,
	"login",   tx_login,

	"info",    tx_info,
	"i",       tx_info,

	"order",   tx_order,
	"play",    tx_order,
	"p",       tx_order,

	"cancel",  tx_cancel_order,
	"c",       tx_cancel_order,

	"pc",      tx_pc,

	"quote",   tx_quote,

	"quit",    tx_quit,
	"q",       tx_quit,

	"exit",    tx_exit,
	"",        0
};

tx_method_desc * tx_a = tx_a_tx;

int tx_call(char* cmd,char** argv,int argc, char* timestamp){
	return tx_type_get(tx_a,cmd)(argv,argc,timestamp);
}

void tx_thread(ffic_ptr func, char* line){
	unsigned long tid;
	CloseHandle(CreateThread(0,1024,func,line,0,&tid));
}

unsigned long handle_request(ffic_ptr lpParameter)
{
	char* argv[30];
	char line[1024];
	char line_out[1024];
	c_strcpy(line, (char*) lpParameter);
	c_strcpy(line_out, line);
	int argc = tx_split(line, argv);
	if(argc>0){
		char timestamp[256] = {0};
		c_strcpy(timestamp, argv[0]);
		char* cmd = argv[0];
		if(0==c_strcmp(cmd,"#")){
			c_fprintf(c_stderr, "# COMMENT %s\n",line_out);
			c_fflush (c_stderr);
			return 0;
		}else if(c_atol(cmd)>0){
			if(argc>1){
				cmd = argv[1];
			}
		}
		tx_call(cmd,argv,argc,timestamp);
		c_fflush(c_stderr);
	}
	return 0;
}

unsigned long handle_stdin(ffic_ptr lpParameter)
{
	while(!tx_flag_quit){
		int len = 1024;
		char line[len];
		c_fgets(line,len,c_stdin);
		if( line ) {
			tx_thread(&handle_request,line);
		}
	}
	tx_sleep(666);//important to prevent a quiting failure
	return 0;
}

//@ref  __attribute__((dllimport)) LPTOP_LEVEL_EXCEPTION_FILTER __attribute__((__stdcall__)) SetUnhandledExceptionFilter(LPTOP_LEVEL_EXCEPTION_FILTER lpTopLevelExceptionFilter);
//@usage: SetUnhandledExceptionFilter(MyUnhandledExceptionFilter);
//long MyUnhandledExceptionFilter(ffic_ptr pExceptionPtrs){
//	c_fprintf(c_stderr,"# MyUnhandledExceptionFilter()\n");
//	tdx2m_CloseTdx();
//	return 0;
//}

#endif

