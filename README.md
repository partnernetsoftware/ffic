# tinycc-ffi

scripting in c in ffi-mode with tinycc


# feature 

* ffi(func,lib) to call share lib
* free from suffering the libc header files (yup, you don't need them in most cases)

# TODO

* WIN32/WIN64
* enhance tcc

# init

```
$ git submodule init
$ git submodule update
```

# notes

```
```

# tinycc

```
How to contribute patches to tcc "mob" patchwork (what's mob?):

git clone git://repo.or.cz/tinycc.git

cd tinycc
#Fetch the latest changes: 
git fetch origin
git checkout -b mob_$USER origin/mob

# Commit your patches to this new branch ("git gui") and verify ("gitk --all").

git push ssh://mob@repo.or.cz/srv/git/tinycc.git mob_$USER:mob

# Don't forget to talk about on the TinyCC mailing list. 

```
