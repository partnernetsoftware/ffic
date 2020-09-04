:loop
@rem del /y 
@rem call build 9
@rem call build hq
@rem node512 server512 /cpus=1 /port=8080
@rem node512 server512
node512 --harmony_destructuring --harmony_default_parameters server512

@rem git pull
node512 -e "setTimeout(process.exit,1111)"

goto loop
