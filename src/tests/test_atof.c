extern void*(*ffic())();
#define libc(f) ffic("c",#f)
typedef void*(*ffic_func)();
typedef double (*ffic_func_f)();
extern void*(*ffic())();

int main(void)
{
	ffic_func printf = libc(printf);
	ffic_func_f atof = (ffic_func_f) libc(atof);
	printf("%g\n", atof("  -0.0000000123junk"));
	printf("%g\n", atof("0.012"));
	printf("%g\n", atof("15e16"));
	printf("%g\n", atof("-0x1afp-2"));
	printf("%g\n", atof("inF"));
	printf("%g\n", atof("Nan"));
	printf("%g\n", atof("1.0e+309"));   // UB: out of range of double
	printf("%g\n", atof("0.0"));
	printf("%g\n", atof("junk"));       // no conversion can be performed
	return 0;
}
