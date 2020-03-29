# ffic

* "scripting c in ffi-mode" with extern ffic()
* survived from the painful libc header files.

# examples

```

./ffic_osx tests/42.c

./ffic_osx tests/fib.c 5

echo "(exit)" | ./ffic_osx scheme.c
```

# TODO

* release for LNX
* release for WIN64

# why?

* love c but don't wanna handle the libc headers
* want to build a smallest scripting tool to easy our life (others are damn to big)

