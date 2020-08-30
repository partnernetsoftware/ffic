extern void printf();
void main(){
	printf("main()\n");
#define dump(x,f) printf("%s=%"#f"\n", #x, x,0)
	dump(printf,d);
#ifdef __APPLE__
	dump(__APPLE__,d);
#endif
#ifdef _WIN32
	printf("%s=%s\n", "_WIN32", "YES");
#endif
#ifdef _WIN64
	printf("%s=%s\n", "_WIN64", "YES");
#endif
#ifdef FFIC
	printf("%s=%s\n", "FFIC", "YES");
#endif
}
