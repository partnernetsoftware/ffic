typedef enum {
	type_list,
	type_integer,
	type_string,
} type_t;
typedef struct _sao_object sao_object;
typedef sao_object *(*native_t)(sao_object *);
//union(ptr3,type+union())
struct _sao_object {
	union {
		void* ptr3[3];
		struct {
			union{
				type_t type;
				void* any;
			};
			union {
				struct {
					sao_object *car;
					sao_object *cdr;
				};
				struct {
					sao_object **_vector;
					int _len;
				};
				long _integer;
				char *_string;
				//double _double;//TODO
				native_t native;
			};
		};
	};
	//int gc;//TODO
}__attribute__((packed));
typedef void* any;
#define out(t) printf("sizeof(" #t ")=%d\n",sizeof(t));
void test(sao_object x){
	printf("x.car=%d\n",x.ptr3[1]);
}
int main(){
	out(int);
	out(long);
	out(any);
	out(sao_object);
	sao_object *xx;
	sao_object so;
	sao_object so_car;
	sao_object so_cdr;
//	out(so.any);
	out(so.ptr3);
	out(so.type);
//	out(so._string);
	//so.type = type_list;
	so.type = type_string;
	so.car = &so_car;
	so.cdr = &so_cdr;
	//printf("*=%d\n",*0);
	//test(*xx);
	test(so);
	printf("so.type=%d\n",so.type);
	printf("so.car=%d\n",so.car);
	printf("so.cdr=%d\n",so.cdr);
	printf("so.ptr3[0]^so.ptr3[1]=%d\n",((long)so.ptr3[0])^((long)so.ptr3[1]));
	printf("so.ptr3[0]^so.ptr3[2]=%d\n",((long)so.ptr3[0])^((long)so.ptr3[2]));
	printf("so.ptr3[0]=%d\n",so.ptr3[0]);
	printf("so.ptr3[1]=%d\n",so.ptr3[1]);
	printf("so.ptr3[2]=%d\n",so.ptr3[2]);
//	printf("so.ptr3[3]=%d\n",so.ptr3[3]);
	//printf("sizeof(int)=%d\n",sizeof(int));
	//printf("sizeof(int)=%d\n",sizeof(int));
}
