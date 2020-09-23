//https://gist.github.com/kwaters/1516195 for x86_64 only
#include <assert.h>
#include <errno.h>
#include <math.h>
#include <stdio.h>
#include <string.h>

#include <sys/mman.h>

#define FUNCTION(type, name, count) \
    do { \
        self->name = Object_trampoline(&self->object, type ## _ ## name, \
                                       count); \
    } while (0);

static const unsigned char kTrampoline[] = {
    // MOV RDI, 0x0
    0x48, 0xbf, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    // JMP [RIP + 0]
    0xff, 0x25, 0x00, 0x00, 0x00, 0x00,
    // DQ 0x0
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};

typedef struct ObjectRec {
    void (*destroy)(void);

    size_t codePageSize;
    unsigned char *codePage;
    unsigned char *codePagePtr;
} Object;

typedef struct CircleRec {
    Object object;

    float (*getRadius)(void);
    float (*setRadius)(float);
    float (*area)(void);

    float radius;
} Circle;

typedef struct RectangleRec {
    Object object;

    int (*getWidth)(void);
    int (*getHeight)(void);
    void (*setSize)(int, int);
    int (*area)(void);

    int width;
    int height;
} Rectangle;

void *Object_trampoline(Object *self, void *target, int argCount)
{
    unsigned char opcode[][2] = {
        0x48, 0xbf,
        0x48, 0xbe,
        0x48, 0xba,
        0x48, 0xb9,
        0x49, 0xb8,
        0x49, 0xb9,
    };
    memcpy(self->codePagePtr, opcode[argCount], sizeof(opcode[argCount]));
    memcpy(self->codePagePtr + 2, &self, sizeof(void *));
    memcpy(self->codePagePtr + 10, kTrampoline + 10, sizeof(kTrampoline) - 10);
    memcpy(self->codePagePtr + 16, &target, sizeof(void *));
    self->codePagePtr += sizeof(kTrampoline);
    return self->codePagePtr - sizeof(kTrampoline);
}

void Object_destroy(Object *self)
{
    int ret = munmap(self->codePage, self->codePageSize);
    assert(!ret);
    free(self);
}

void *Object_create(size_t size, int functionCount)
{
    // Add the functions for object.
    functionCount += 1;

    Object *self = malloc(size);
    self->codePageSize = functionCount * sizeof(kTrampoline);
    self->codePageSize = 4096;
    self->codePage = mmap(NULL, self->codePageSize, PROT_READ | PROT_WRITE,
                          MAP_ANON | MAP_PRIVATE, -1, 0);
    self->codePagePtr = self->codePage;

    self->destroy = Object_trampoline(self, Object_destroy, 0);

    return self;
}

void Object_prepare(Object *self)
{
    int ret = mprotect(self->codePage, self->codePageSize,
                       PROT_READ | PROT_EXEC);
    assert(!ret);
}

float Circle_getRadius(Circle *self)
{
    return self->radius;
}

void Circle_setRadius(float radius, Circle *self)
{
    self->radius = radius;
}

float Circle_area(Circle *self)
{
    return M_PI * self->radius * self->radius;
}

Circle *Circle_new(float radius)
{
    Circle *self = Object_create(sizeof(Circle), 3);
    self->radius = radius;

    FUNCTION(Circle, getRadius, 0);
    FUNCTION(Circle, setRadius, 0);
    FUNCTION(Circle, area, 0);

    Object_prepare(&self->object);
    return self;
}

int Rectangle_getWidth(Rectangle *self)
{
    return self->width;
}

int Rectangle_getHeight(Rectangle *self)
{
    return self->height;
}

void Rectangle_setSize(int width, int height, Rectangle *self)
{
    self->width = width;
    self->height = height;
}

int Rectangle_area(Rectangle *self)
{
    return self->width * self->height;
}

Rectangle *Rectangle_new(int width, int height)
{
    Rectangle *self = Object_create(sizeof(Rectangle), 4);
    self->width = width;
    self->height = height;

    FUNCTION(Rectangle, getWidth, 0);
    FUNCTION(Rectangle, getHeight, 0);
    FUNCTION(Rectangle, setSize, 2);
    FUNCTION(Rectangle, area, 0);

    Object_prepare(&self->object);
    return self;
}

int main()
{
    Circle *c1 = Circle_new(10.f);
    Circle *c2 = Circle_new(1.f);
    Rectangle *r = Rectangle_new(5, 7);

    printf("c1->area() = %f\n", c1->area());
    printf("c2->area() = %f\n", c2->area());
    printf("c2->setRadius(5.f);\n");
    c2->setRadius(5.f);
    printf("c1->getRadius() = %f\n", c1->getRadius());
    printf("c2->getRadius() = %f\n", c2->getRadius());
    c1->object.destroy();
    c2->object.destroy();

    printf("r->getWidth() = %d\n", r->getWidth());
    printf("r->getHeight() = %d\n", r->getHeight());
    printf("r->area() = %d\n", r->area());
    printf("r->setSize(13, 9);\n");
    r->setSize(13, 9);
    printf("r->getWidth() = %d\n", r->getWidth());
    printf("r->getHeight() = %d\n", r->getHeight());
    printf("r->area() = %d\n", r->area());
    r->object.destroy();

    return 0;
}
