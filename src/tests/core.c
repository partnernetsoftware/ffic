int main(int argc, char* argv[]){
	typedef void*(*ffic_func)();
	typedef int(*ffic_func_i)();
	extern void*(*ffic)();
	//ffic_func printf = ffic(0,"printf");
	//printf("print");
	ffic();
	return 0;
}
