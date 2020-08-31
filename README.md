# ffic

* "scripting c in ffi-mode" (based on tinycc) with extern ffic() to survive the painful libc header files...

# examples

```
./ffic_osx tests/42.c

./ffic_osx tests/fib.c 5

echo "(exit)" | ./ffic_osx scheme.c
```

# TODO

* smarter "import"...
* release for LNX
* release for WIN64
* to try little libc.so from https://github.com/lattera/glibc/

# why?

* c-lover but don't wanna handle the libc headers
* wanna have a tiny scripting tool to ease our life

# TO LEARN

* https://github.com/recp/cglm (OpenGL Math for C)
* https://github.com/kozross/awesome-c
* https://learnopengl-cn.readthedocs.io/zh/latest/01%20Getting%20started/07%20Transformations/
