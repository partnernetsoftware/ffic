const fs = require('fs');
var	conn,
	pid,pm_id,fk_id,
	flagMaster,cpus,
	//flagPm2,
	cluster_mode,
	start_time
;

(opts=>{
	var argo = opts.argo;
	var logger = opts.logger;

	((argo.HTTPS_KEY) ? 
		require('https').createServer({key: fs.readFileSync(argo.HTTPS_KEY),cert: fs.readFileSync(argo.HTTPS_CERT)})
		: require('http').createServer()
	).on('error',console.log).on('request', require('./web_handler')({argo,
		conn,
		pid,pm_id,fk_id,
		flagMaster,cpus,
		//flagPm2,
		cluster_mode,
		start_time,
		//argo_rdb,
	})).listen({port:argo.port || 8080,host:argo.host||'0.0.0.0'})

})({argo:(a=>(a||require('process').argv||[]).reduce((r,e)=>((m=e.match(/^(\/|--?)([\w-]*)="?(.*)"?$/))&&(r[m[2]]=m[3]),r),{}))(),logger:console});
