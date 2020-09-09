# 1 "ffic_dev.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 363 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "ffic_dev.c" 2
# 13 "ffic_dev.c"
typedef void* ffic_ptr;
typedef ffic_ptr(



  *ffic_func)();
typedef double (*ffic_func_d)();
typedef long (*ffic_func_l)();
typedef int (*ffic_func_i)();
typedef float (*ffic_func_f)();
ffic_ptr (*ffic_core(const char *libfilename,const char* funcname))()
{
 static ffic_func ffic_dlsym;
 static ffic_func ffic_dlopen;
 if(!ffic_dlsym){







  extern ffic_ptr dlsym();
  ffic_dlsym = (ffic_func) dlsym;






 }
 if(!ffic_dlopen){
# 59 "ffic_dev.c"
  extern ffic_ptr dlopen();
  ffic_dlopen = (ffic_func) dlopen;






 }

 return ffic_dlsym(ffic_dlopen(libfilename,0x101), funcname);
}




int main(int argc, char **argv){
 extern char* getenv();
 extern char* strcat();
 extern int printf(const char*,...);
 char PWD[256]="-L";
 strcat(PWD,getenv("PWD"));





 ffic_func tcc_new = ffic_core("libtcc.dylib","tcc_new");
 if(!tcc_new){
  printf("failed load tcc_new\n");
  return 0;
 }
 printf("tcc_new=%ld\n",(long)tcc_new);
 ffic_ptr tcc_ptr = tcc_new();
 printf("tcc_ptr=%ld\n",(long)tcc_ptr);
 ffic_core("libtcc.dylib","tcc_set_output_type")(tcc_ptr, 1 );
 ffic_core("libtcc.dylib","tcc_define_symbol")(tcc_ptr, "FFIC", "2");

 ffic_core("libtcc.dylib","tcc_set_options")(tcc_ptr, "-Llib");

 ffic_core("libtcc.dylib","tcc_set_options")(tcc_ptr, "-L.");
 ffic_core("libtcc.dylib","tcc_set_options")(tcc_ptr, "-L..");

 ffic_core("libtcc.dylib","tcc_set_options")(tcc_ptr, "-I.");
 ffic_core("libtcc.dylib","tcc_set_options")(tcc_ptr, "-I..");

 ffic_core("libtcc.dylib","tcc_set_options")(tcc_ptr, PWD);
# 119 "ffic_dev.c"
 ffic_core("libtcc.dylib","tcc_set_options")(tcc_ptr, "-DCONFIG_LDDIR=\".\"");





 ffic_core("libtcc.dylib","tcc_set_options")(tcc_ptr, "-D__APPLE__");
 ffic_core("libtcc.dylib","tcc_set_options")(tcc_ptr, "-DTCC_TARGET_MACHO");

 ffic_core("libtcc.dylib","tcc_set_options")(tcc_ptr, "-DTCC_TARGET_X86_64");
# 155 "ffic_dev.c"
 ffic_func tcc_add_file = (ffic_func) ffic_core("libtcc.dylib","tcc_add_file");
 printf("1111\n");
 if(argc>1){
  tcc_add_file(tcc_ptr,argv[1]);
 }else{
  tcc_add_file(tcc_ptr,"-");
 }
 printf("2222\n");


 ffic_func_i tcc_run = (ffic_func_i) ffic_core("libtcc.dylib","tcc_run");







 int rt = tcc_run(tcc_ptr, argc>1?argc-1:argc,argc>1?(argv+1):argv);



 ffic_core("libtcc.dylib","tcc_delete")(tcc_ptr);
 return rt;
}
