# FFIC

* "c-scripting in ffi-mode" (based on tinycc), providing an extern ffic() to survive the painful libc-headers...

# Quick Examples

```
echo 'extern void*(*ffic())(); unsigned long fib(int n){ if(n<=1) return 1; return n*fib(n-1); } void main(){ ffic("c","printf")("fib(%d)=%d\n",10,fib(10)); }' | ../bin/ffic64.osx

../bin/ffic64.osx tests/42.c

../bin/ffic64.osx tests/fib.c 5

echo "(exit)" | ../bin/ffic64.osx tests/scheme.c
```

# Why?

* c-lover but not much willing to handle the libc headers
* Wanna have a tiny scripting tool to ease our life

# TODO

* full release for LNX
* merge libdl?
* for nostdlib, to try tiny libc.so from https://github.com/lattera/glibc/

# Links for learning

* https://github.com/recp/cglm (OpenGL Math for C)
* https://github.com/kozross/awesome-c
* https://learnopengl-cn.readthedocs.io/zh/latest/01%20Getting%20started/07%20Transformations/
* https://github.com/dianpeng/tiny-network
* https://blog.csdn.net/weibo1230123/article/details/79975574
