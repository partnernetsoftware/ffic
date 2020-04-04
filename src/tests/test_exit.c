extern void*(*ffic())();
int main(){
	ffic("c","printf")
		("fprintf=>%d",ffic("c","fprintf")(ffic("c","stderr"),""));
	return 0;
}
