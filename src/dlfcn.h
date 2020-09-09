#define RTLD_LAZY       0x001
#define RTLD_NOW        0x002
#define RTLD_GLOBAL     0x100
#define RTLD_DEFAULT    NULL
void *dlopen(const char *filename, int flag);
void dlclose(void *p);
const char *dlerror(void);
void *dlsym(void *handle, const char *symbol);
