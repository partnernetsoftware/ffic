#ifndef FFIC
#define FFIC 1
#endif

//gcc -o tcc.o -c tcc.c -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO       -DONE_SOURCE=0 -Wall -g -O2 -Wdeclaration-after-statement -fno-strict-aliasing -Wno-pointer-sign -Wno-sign-compare -Wno-unused-result -D_FORTIFY_SOURCE=0 -I.
//TODO:
//gcc -O1 ffic.c -o ffic -D FFIC_ONE_SOURCE -D ONE_SOURCE -I ../tinycc/
//#ifndef FFIC_ONE_SOURCE
//# define FFIC_ONE_SOURCE 1
//# define TCC_TARGET_MACHO 1
//# define TCC_TARGET_X86_64 1
//#ifndef ONE_SOURCE
//# define ONE_SOURCE 1
//#endif
//#endif

#ifdef FFIC_ONE_SOURCE
# include "tcc.h"
# include "libtcc.c"
# include "ffic.h"
# define tcc(f) f
#else
# include "ffic.h"
#ifdef _WIN64
# define tcc(f) ffic("libtcc64",#f)
#elif defined(_WIN32)
# define tcc(f) ffic("libtcc32",#f)
#else
# define tcc(f) ffic("libtcc",#f)
#endif
#endif

int main(int argc, char **argv, char **envp){

	ffic_ptr tcc_ptr = tcc(tcc_new)();
	if (!tcc_ptr) {
		//tcc_error("Unable new tcc, memory full?")
		return 1; }

	//run
	tcc(tcc_set_output_type)(tcc_ptr, 1/*TCC_OUTPUT_MEMORY*/);

	tcc(tcc_define_symbol)(tcc_ptr, "FFIC", "2");

#ifdef _WIN32
	//tcc(tcc_set_options)(tcc_ptr, "-nostdlib");
	tcc(tcc_set_options)(tcc_ptr, "-D_WIN32");
	tcc(tcc_set_options)(tcc_ptr, "-DTCC_TARGET_PE");
	tcc(tcc_set_options)(tcc_ptr, "-DTCC_TARGET_I386");
#else
	//tcc(tcc_set_options)(tcc_ptr, "-nostdlib");
	//tcc(tcc_set_options)(tcc_ptr, "-I/usr/lib");
#endif
	tcc(tcc_set_options)(tcc_ptr, "-nostdinc");
#ifdef _WIN64
	tcc(tcc_set_options)(tcc_ptr, "-D_WIN64");
#endif

#ifdef _APPLE_
	tcc(tcc_set_options)(tcc_ptr, "-D_APPLE_");
	tcc(tcc_set_options)(tcc_ptr, "-DTCC_TARGET_MACHO");
	//tcc(tcc_set_options)(tcc_ptr, "-run");
	//tcc(tcc_set_options)(tcc_ptr, "-nostdlib");
#endif

	if(0==tcc(tcc_get_symbol)(tcc_ptr, "ffic"))
		tcc(tcc_add_symbol)(tcc_ptr, "ffic", ffic);

	if(0==tcc(tcc_get_symbol)(tcc_ptr, "ffic_raw"))
		tcc(tcc_add_symbol)(tcc_ptr, "ffic_raw", ffic_raw);

	tcc(tcc_add_file)(tcc_ptr,(argc>1) ? argv[1] : "-");

	if (tcc(tcc_relocate)(tcc_ptr, (void*)1/*TCC_RELOCATE_AUTO*/) < 0) return 2;

	int rt;
//#ifdef FFIC_ONE_SOURCE
	//ffic_ptr (*entry)() = tcc(tcc_get_symbol)(tcc_ptr, "main");
	int (*entry)() = tcc(tcc_get_symbol)(tcc_ptr, "main");
	if (!entry) { return 3; }
	rt = (int) entry(argc>1?argc-1:argc,argc>1?(argv+1):argv);
//#else
//	rt = (int) tcc(tcc_run)(tcc_ptr, argc>1?argc-1:argc, argc>1?argv++:argv);
//#endif

	tcc(tcc_delete)(tcc_ptr);
	return rt;
}
/*
 * clang -o libtcc.o -c libtcc.c -DCONFIG_USR_INCLUDE="\"/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include\"" -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO       -DONE_SOURCE=0 -Wall -O2 -Wdeclaration-after-statement -fno-strict-aliasing -fheinous-gnu-extensions -Wno-pointer-sign -Wno-sign-compare -Wno-unused-result -Wno-string-plus-int -I.
clang -o tccpp.o -c tccpp.c -DCONFIG_USR_INCLUDE="\"/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include\"" -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO       -DONE_SOURCE=0 -Wall -O2 -Wdeclaration-after-statement -fno-strict-aliasing -fheinous-gnu-extensions -Wno-pointer-sign -Wno-sign-compare -Wno-unused-result -Wno-string-plus-int -I.
clang -o tccgen.o -c tccgen.c -DCONFIG_USR_INCLUDE="\"/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include\"" -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO       -DONE_SOURCE=0 -Wall -O2 -Wdeclaration-after-statement -fno-strict-aliasing -fheinous-gnu-extensions -Wno-pointer-sign -Wno-sign-compare -Wno-unused-result -Wno-string-plus-int -I.
clang -o tccelf.o -c tccelf.c -DCONFIG_USR_INCLUDE="\"/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include\"" -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO       -DONE_SOURCE=0 -Wall -O2 -Wdeclaration-after-statement -fno-strict-aliasing -fheinous-gnu-extensions -Wno-pointer-sign -Wno-sign-compare -Wno-unused-result -Wno-string-plus-int -I.
clang -o tccasm.o -c tccasm.c -DCONFIG_USR_INCLUDE="\"/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include\"" -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO       -DONE_SOURCE=0 -Wall -O2 -Wdeclaration-after-statement -fno-strict-aliasing -fheinous-gnu-extensions -Wno-pointer-sign -Wno-sign-compare -Wno-unused-result -Wno-string-plus-int -I.
clang -o tccrun.o -c tccrun.c -DCONFIG_USR_INCLUDE="\"/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include\"" -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO       -DONE_SOURCE=0 -Wall -O2 -Wdeclaration-after-statement -fno-strict-aliasing -fheinous-gnu-extensions -Wno-pointer-sign -Wno-sign-compare -Wno-unused-result -Wno-string-plus-int -I.
clang -o x86_64-gen.o -c x86_64-gen.c -DCONFIG_USR_INCLUDE="\"/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include\"" -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO       -DONE_SOURCE=0 -Wall -O2 -Wdeclaration-after-statement -fno-strict-aliasing -fheinous-gnu-extensions -Wno-pointer-sign -Wno-sign-compare -Wno-unused-result -Wno-string-plus-int -I.
clang -o x86_64-link.o -c x86_64-link.c -DCONFIG_USR_INCLUDE="\"/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include\"" -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO       -DONE_SOURCE=0 -Wall -O2 -Wdeclaration-after-statement -fno-strict-aliasing -fheinous-gnu-extensions -Wno-pointer-sign -Wno-sign-compare -Wno-unused-result -Wno-string-plus-int -I.
clang -o i386-asm.o -c i386-asm.c -DCONFIG_USR_INCLUDE="\"/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include\"" -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO       -DONE_SOURCE=0 -Wall -O2 -Wdeclaration-after-statement -fno-strict-aliasing -fheinous-gnu-extensions -Wno-pointer-sign -Wno-sign-compare -Wno-unused-result -Wno-string-plus-int -I.
clang -o tccmacho.o -c tccmacho.c -DCONFIG_USR_INCLUDE="\"/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include\"" -DTCC_TARGET_X86_64 -DTCC_TARGET_MACHO       -DONE_SOURCE=0 -Wall -O2 -Wdeclaration-after-statement -fno-strict-aliasing -fheinous-gnu-extensions -Wno-pointer-sign -Wno-sign-compare -Wno-unused-result -Wno-string-plus-int -I.
clang -dynamiclib -current_version 0.9.27 -compatibility_version 0.9.27 -o libtcc.dylib libtcc.o tccpp.o tccgen.o tccelf.o tccasm.o tccrun.o x86_64-gen.o x86_64-link.o i386-asm.o tccmacho.o  -flat_namespace -undefined warning
*/
