#define dump(v, t) printf(#v "=%" #t "\n", v)
extern int printf(const char *, ...);
//void lgc(T this){
//	this->
//}
//void
typedef void *var;
typedef var (*func)();
struct test_struct
{
	func insert;
	char* name;
	int x;
	struct test_struct * self;
};
//#define THIS() void* this; asm volatile("mov %0,%%eax" : "m"(this));
void m_insert(var a1,var a2,var a3)
{
	//THIS();
	//void *this;
	var *eax;
	asm("mov %0,%%eax" ::"m"(eax));
	var *edx;
	asm("mov %0,%%edx" ::"m"(edx));
	dump(eax, ld);
	dump(edx, ld);
	struct test_struct * kk; asm("": "=d"(kk)); 
	dump(kk,ld);
	dump(&kk,ld);
	struct test_struct * this;
	this = a1;
	dump(this, ld);
	dump(a1, ld);
	dump(a2, ld);
	dump(a3, ld);
	dump(this==a1,d);
	if(this==a1){
		dump(this->name, s);
		dump(this->insert, d);
		dump(this->self, ld);
	}
	return;
}
//#define call(inst.method,...) inst.method(&(inst),__VA_ARGS__)
void main(int argc, char *argv[], char **envp)
{
	dump(main, d);
	//const struct test_struct * test_list = & (struct list) { m_insert, "wtf"};
	//const
	struct test_struct test_list = { m_insert,"wtf",99,&test_list };
	struct test_struct test_list2 = { m_insert,"wtf2",88,&test_list };
	dump(&test_list, ld);
	dump(test_list, ld);
	dump(test_list.insert, ld);
	dump(test_list.name, s);
	dump(test_list.self, ld);
	dump(&(test_list.name), ld);

	//asm("movl %eax,%edx");
	//TODO
	//class.method(inst,...) <=> inst.method(...) call(inst,method,...)
	test_list.insert(&test_list,test_list.name,test_list);
	test_list2.insert(&test_list2,test_list.name,test_list2);
}
