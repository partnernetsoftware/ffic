# FFIC

* "c scripting in ffi-mode" (based on tinycc), providing an extern ffic() to survive the painful libc-headers...

# Examples

```

echo 'extern void*(*ffic())(); unsigned long fib(int n){ if(n<=1) return 1; return n*fib(n-1); } void main(){ ffic("c","printf")("fib(%d)=%d\n",10,fib(10)); }' | ./ffic_osx

./ffic_osx tests/42.c

./ffic_osx tests/fib.c 5

echo "(exit)" | ./ffic_osx scheme.c
```

# TODO

* full release for OSX/LNX/WIN32/WIN64
* merge libdl
* to try little libc.so from https://github.com/lattera/glibc/

# Why?

* c-lover but not much willing to handle the libc headers
* Wanna have a tiny scripting tool to ease our life

# Links for learning

* https://github.com/recp/cglm (OpenGL Math for C)
* https://github.com/kozross/awesome-c
* https://learnopengl-cn.readthedocs.io/zh/latest/01%20Getting%20started/07%20Transformations/
* https://github.com/dianpeng/tiny-network
* https://blog.csdn.net/weibo1230123/article/details/79975574
