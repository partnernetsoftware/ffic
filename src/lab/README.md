# About

Release repo of [SaoLang](https://search.ipaustralia.gov.au/trademarks/search/view/2000064)

# Reference and Paper

* https://en.wikipedia.org/wiki/CAR_and_CDR
* https://en.wikipedia.org/wiki/S-expression

# Spec

```
Expr=Atom(...Expr)
Yup, nothing else.

```

# Quick Example

```
#var(fib(n),if(lt(n,3),1,add(fib(sub(n,1)),fib(sub(n,2)))))
@(fib(n),if(lt(n,3),1,+(fib(-(n,1)),fib(-(n,2)))))

fib(12)

exit()
```

# What is SaoLang?

A Very "Sao" Computer Language, which runtime < 64KB (no compress) for almost all platform/arch

```
                         :yyydmmmMMMh`                  
       yMh+smNMMd-      -NMMMMMMMMMMM:                  
       mMMMMMMMMN/       +mMNhoodMMMN`                  
      `NMMyMMMh-`        .:+-   hMMMh                   
      `NMN.MMMh          dMMMo .NMMM/                   
      -NMy`MMMy`      -` `yMMM-sMMMy                    
      /MM+/MMMMN+   `dMNy- +Nd-NMMM-                    
      oMMMMMMMMd+    `+mMMy. `hMMMy                     
      oMNsmMMMs        `yMMMdmMMMN.                     
      oMN`/MMM:          /NMMMMMMs                      
      oMm oMMMNm+         +MMMMMM+                      
      sMMmMMMMMNo         -NMMMMMMNo`                   
      hMNNMMMMo          /NMMMMMMMMMNd/-                
      dMo`hMMN`        `sMMMMNooNMMMMMMMms/`            
     `mMy sMMh`/:     .dMMMMMMMh`oNMMMMMMMMNy+.         
     .NMdodMMNNMMs   -mMMMd/dMMM: :NMMMMMMMMMMMNmh+.    
     :MMMMMMmdmMMM/ /NMMN/ `mMMMmhNMMMNmMMMMMMMNNNNm`   
     .NMNy+.  :MMMmoho/NMymMMMMMyodMMMm`:ohmy/.         
      sM+ .::-/MMMh    yMmdNMMMM. dMMMs                 
       /- `dMMNMMMo    +Mh `mMMm oMMMm`                 
    /` oMN:`oNMMMN:    :Mm -MMMMNMMMs`                  
os- dNo`yN+  `hMMM-    -NMmNMMMMMMmo                    
dMd /Nm` ~`   sMMN.    .NMMMMMMh.``Md:                  
/MN- `        hMMm`    `dM//MMM:   dMM+                 
 oN`         `NMMh      `h.oMMM-   yMMN:                
             :MMMo         yMMN+shddMMMh                
        `hms+hMMN.        :NMMMMN/ `mMMN.               
          oNMMMMs      `/hMMMMdo.   yMMM/               
           oMMMd` `+oodMMMMho.      oMMM+               
           -NNo`  +MMMMMNs.         -NMM+               
            +-    .dMMMd-            /Ny`               
                   `ohs               -                 
```

# Current Feature

* runtime less than 64KB (without upx)
* scripting sharelib with ffi()
* play like block toys
* define your own syntax

# Plan

* core runtime release
* bootstrap (self hosting)
* ARM support
* binary snapshot plugin
* gc plugin
* libsao to support customize native symbols
* eco system (package management etc)

# Author

WeChat me:

![wx](wxqr.png)

