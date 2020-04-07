typedef enum {
	type_list,
	type_integer,
	type_string,
} type_t;
typedef struct _sao_obj sao_obj,*p_sao_obj;
typedef p_sao_obj (*native_t)(p_sao_obj );
struct _sao_obj {
	union {
		void* ptr3[3];//for future speed improving
		struct {
			union{
				void* ptr;
				type_t _type;
			};
			union {
				struct {
					p_sao_obj car;
					p_sao_obj cdr;
					//p_sao_obj upr;//TODO (maybe) upper link for context 
				};
				struct { p_sao_obj* _vector; long _len; };
				struct { p_sao_obj* _table; long _size; };
				char *_string;
				long _integer;
				double _double;//TODO with basic math.
				native_t _native;
			};
		};
	};
};

typedef void* any;
//#define out(t) printf("sizeof(" #t ")=%d\n",sizeof(t));
#define outx(x) printf(#x "=%d\n",x);
//void test(sao_obj x){ printf("x.car=%d\n",x.ptr3[1]); }
void testx(sao_obj x){
	outx(x._type);
}
int main(){
	outx(sizeof(int));
	outx(sizeof(sao_obj));
	int i = 3;
	sao_obj x = {._type=type_integer,._integer=i};//work
	outx(x._integer);
	outx(x._type);
	//testx(x);
	;
	testx( (sao_obj) {._type=type_string,._string="haha"} );//c99 syntax works
	//out(int);
	return 0;
//	out(int);
//	out(long);
//	out(any);
//	out(sao_obj);
//	//sao_obj *xx;
//	sao_obj so;
//	sao_obj so_car;
//	sao_obj so_cdr;
////	out(so.any);
//	out(so.ptr3);
//	out(so.type);
////	out(so._string);
//	//so.type = type_list;
//	so.type = type_string;
//	so.car = &so_car;
//	so.cdr = &so_cdr;
//	//printf("*=%d\n",*0);
//	//test(*xx);
//	//test(so);
//	printf("so.type=%d\n",so.type);
//	printf("so.car=%d\n",so.car);
//	printf("so.cdr=%d\n",so.cdr);
//	printf("so.ptr3[0]^so.ptr3[1]=%d\n",((long)so.ptr3[0])^((long)so.ptr3[1]));
//	printf("so.ptr3[0]^so.ptr3[2]=%d\n",((long)so.ptr3[0])^((long)so.ptr3[2]));
//	printf("so.ptr3[0]=%d\n",so.ptr3[0]);
//	printf("so.ptr3[1]=%d\n",so.ptr3[1]);
//	printf("so.ptr3[2]=%d\n",so.ptr3[2]);
////	printf("so.ptr3[3]=%d\n",so.ptr3[3]);
//	//printf("sizeof(int)=%d\n",sizeof(int));
//	//printf("sizeof(int)=%d\n",sizeof(int));
}
