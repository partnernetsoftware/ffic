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
How to contribute patches to our "mob" patchwork (what's mob?):

If you haven't done before, clone our tinycc repository: "git clone git://repo.or.cz/tinycc.git"
Fetch the latest changes: "git fetch origin"
Create a new branch on top of origin/mob: "git checkout -b mypatch origin/mob".
Commit your patches to this new branch ("git gui") and verify ("gitk --all").
Push your changes to here: "git push ssh://mob@repo.or.cz/srv/git/tinycc.git mypatch:mob"
Don't forget to talk about on the TinyCC mailing list. 


git checkout -b mob_wanjochan origin/mob
git push ssh://mob@repo.or.cz/srv/git/tinycc.git mob_wanjochan:mob

```
