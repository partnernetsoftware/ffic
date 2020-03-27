void check_env(){
	libc(printf)("DEBUG PTRSIZE=%d\n i8=%d,i16=%d,i32=%d,i64=%d\n u8=%d,u16=%d,u32=%d,u64=%d\n",
			PTRSIZE
			,sizeof(i8)
			,sizeof(i16)
			,sizeof(i32)
			,sizeof(i64)
			,sizeof(u8)
			,sizeof(u16)
			,sizeof(u32)
			,sizeof(u64)
			);
	int sizeof_pointer = sizeof(void*);
	if(sizeof_pointer!=PTRSIZE){
		libc(printf)("{STS:'KO',PTRSIZE:%d,sizeof_pointer:%d}\n",PTRSIZE,sizeof_pointer);
		libc(exit)(0);
	}
	//libc(exit)(0);
}

