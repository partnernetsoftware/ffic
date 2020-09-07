#define TMP_STRING(l,v) (((struct{const char _[l];const char __[1];}){._=v,.__='\0'})._)
#define dump(v,t) printf(#v "=%" #t "\n", v)
extern void printf();
extern int strlen();
void test(char* s,char* s2,int l){
	struct _struct_test1 {char _[l];};
	struct _struct_test1 v1 = {s};
	struct _struct_test1 v2 = {s2};
	struct _struct_test2 {
		struct _struct_test1 v1;
		struct _struct_test1 v2;
	};
	struct _struct_test2 v3;
	dump(v1._,s);
	v3.v1=v1;
	v3.v2=v2;
	dump(v3.v1,s);
	dump(v3.v2,s);
	dump(v3,s);
	return;

	//dump(TMP_STRING(l,s),s);
	//char * ss = (((struct{const char _[l];const char __[1];}){._=s,.__='\0'})._);
	struct{char _[l-1];char __[l];char ___[1];} y;
	typeof(y) *z = &((typeof(y)){s,s2,0});
	y = *z;
	//char * s1 = (((struct{char _[l];char __[1];}){0})._);
	//char * s1 = z->_;
	char * b1 = y._;
	dump(b1,s);
	char * b2 = y.__;
	dump(b2,s);
}
void main(){

	//typedef char s4[4];
	//KO
	//s4
	//typedef char s4[4];
	//s4 s4a = "aaaa";
	//s4 s4b = "bbbb";
	//*(s4b) = *(s4a);
	//dump(s4b,s);
	//dump(&s4b,d);
	//dump(&s4a,d);

	//OK 1
	//struct _s4 {char s4[4];char _[1];};
	//struct _s4 s4a = {"aaaa",0};
	//struct _s4 s4b = {"bbbb",0};
	//*(&s4b) = *(&s4a);
	//dump(&s4b,d);
	//dump(&s4a,d);

	//KO
	//char t5[5] = "55555";
	//char t4[4] = "4444";
	//*(t4)=*(t5);
	//dump(t4,s);

	//test("abcdef","hijkl",2);

	//dump(TMP_STRING(4,"abcdef"),s);
	//dump(TMP_STRING(4,""),s);

	return;
#define JOIN_STRING(a,b) (((struct{char _[sizeof(a)-1];char __[sizeof(b)];char ___[0];}){a,b})._)
	dump(JOIN_STRING("aaa","bbb"),s);

#define JOIN_STRING2(a,ca,b,cb) (((struct{char _[ca];char __[cb];char ___[0];}){a,b}).__)
	char* s1="s3s3";
	char* s2="s4s4";

	dump(strlen(s1),d);
	dump(strlen(s2),d);
	//dump(JOIN_STRING2("s1s1",2,"s2s2",2),s);
	//dump(JOIN_STRING2(*s1,2,*s2,2),s);
	dump(s2,s);

	//	char s1[4]="s1s1";
	//	char s2[4]="s2s2";
	//	dump(JOIN_STRING(s1,s2),s);
	//
	//	char s[sizeof("")-1]="";
	//	dump(sizeof(""),d);

	//	int c = 4;
	//	struct {
	//		char x[c];
	//		char _[0];
	//	} y;
	//	y.x[0] = 'W';
	//	y.x[1] = 'T';
	//	y.x[2] = 'F';
	//	printf("y.x=%s\n",y.x);
	//
	//typedef struct {
	//	char x[c];
	//} yy;
	//yy yyy = (yy) {"a"};
	//	//printf("y.x=%s\n",yyy.x);
	//printf("=%s\n",
	//		((struct { char x[c]; }) {"a"}).x
	//		);
	//
	//	//char x[3*c];
	//	//x[0] = 'W';
	//	//x[1] = 'T';
	//	//x[2] = 'F';
	//	//printf("x=%s\n",&x[1]);

}
