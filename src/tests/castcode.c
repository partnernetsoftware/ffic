struct int_with_code
{
    int i;
    char code[]; // C99 flexible array member.  GNU extension in C++
                 // Store machine code here
                 // you can't get the compiler to do this for you.  Good Luck!
};

void foo(struct int_with_code *p)
{
    // explicit C-style cast compiles as both C and C++
    void (*funcp)(void) = (void (*)(void))p->code;
    funcp();
}
