:loop

node512 --harmony_destructuring --harmony_default_parameters server512 %*

node512 -e "setTimeout(process.exit,1111)"

goto loop
