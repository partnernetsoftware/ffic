//node512 --harmony_destructuring --harmony_default_parameters server512

const fs = require('fs');

(opts=>{
	var {argo={},logger} = opts;
	var {handler='./web_handler',port=8080,host='0.0.0.0',
		HTTPS_KEY,HTTPS_CERT} = argo;

	((HTTPS_KEY) ? 
		require('https').createServer({key: fs.readFileSync(HTTPS_KEY),cert: fs.readFileSync(HTTPS_CERT)})
		: require('http').createServer()
	)
		.on('error',console.log)
		.on('request', require(handler)({argo}))
		.listen({port,host})
})
({argo:(a=>(a||require('process').argv||[]).reduce((r,e)=>((m=e.match(/^(\/|--?)([\w-]*)="?(.*)"?$/))&&(r[m[2]]=m[3]),r),{}))(),logger:console})
