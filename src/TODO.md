# SPEC

```
SaoLang is a customized LISP dialet, but the leading head/first object is show outside.

## english keywords

none

## symbolic keyworkds (global):

| Symbol | meaning | 
| -- | -- | -- |
| @@ | nil | |
| @+() | add() | |
| @-() | sub() | |
| @*() | mul() | |
| @/() | div() | |
| @() | var() | merge of declare/define/var/set/assign |
| @?() | if() |
| ^() | quote() |


==()
	equal
===()
  exactly

#

[ vector
{ table

```

# TODO

## resign

```

$sym( ... $args )

sao_obj(
 ...args
)

type:

vector[]
vector()

autonomy, paradigm
$sym(...$args)

_raw
_sym
_car car of list
_cdr rest of list


```

## sao

autonomy, paradigm

```
/* TODO (Plan)
 * * ctype() + ffic() C.$sym() [0.0.7]

 * * improve: table hash table size (refer to lua/jerryscript) [0.0.11]
 * * table auto resize (0.0.12)
 * * redesign (remove interger and double, using "number" instead which actually just a notation of number as well) [0.0.13]

 * * sao.h (share by sao.c(the loader) and libsaolang.c (the default lang evaluator) [0.1.1]
 * * shared libsaolang (so that became the default lang interpreter) [0.1.2]
 * * rewrite: native (add symbol and then auto load when call, will have to save as binary); (0.1.3)
 * * shell return [0.1.4]
 * * double/float and maths (0.1.5)

 * * suggestion: type: ERROR (0.2)
 * * redesign context/global with idea from ES6 [0.3]
 * * utf8 support for string [0.4]
 * * remove "ok" stuff? (change to true or else?)
 * * feature: compile to binary / load from binary [0.6]

 * * improve: translate std func (i.e. caar...) to inline? [1.5]
 * * [LIEF](https://lief.quarkslab.com/doc/latest/Intro.html) [1.5.1]

 * * JIT [1.8]

 * * static compile libdl [1.9]

 * * remove libc dependency [2.0]
 */

```

# notes

sao.c for framework
libsaolang.c for customize the lang

# improve

```
* native_* => merge into sticky struct;
* libc macro as c_##m which predefine and delay assign
* table share vector but different locating method

```
