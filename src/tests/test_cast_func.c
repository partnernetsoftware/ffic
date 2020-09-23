int
test1(){
	printf("test1\n");
	return 0;
}
char func[1024];
void* getptr(){
	memcpy(&func,test1,1024);
	//return &func;
	return test1;
}
int main()
{
	int(*func2)() = getptr();
	//func2();
	printf("%d\n",func2());
	return 0;
}
