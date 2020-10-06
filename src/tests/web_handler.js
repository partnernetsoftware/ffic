var	trycatch = (fn,flagIgnoreErr)=>{try{return fn()}catch(ex){return flagIgnoreErr?'':ex}};
var o2s = JSON.stringify;//
//var s2o = s => {try{return JSON.parse(s)}catch(ex){return null}};
var s2o = s => trycatch(()=>JSON.parse(s,true))
var iconv = require('iconv-lite');
var spawn = require('child_process').spawn;
var base64_decode_x = (t) => Buffer.from(t||'', 'base64');
var trim = s => (s?s.trim():s);
var out = d => (console.log(d),d);
var err = d => console.log('\x1b[44m',''+trim(d),'\x1b[0m');
var cb_pool = {};
var child_a = {};
var start_child = (child_name,exe_name,args)=>{
	var the_child = spawn(exe_name,args);
	the_child.stdout.on('data', (data)=>{
		var o = s2o(''+data) || [];//we always design the child response json-array
		var timestamp_id = o[0];
		if (timestamp_id) {
			var ccbb = cb_pool[timestamp_id];
			if(ccbb){
				var b64s = o.pop();
				var b = base64_decode_x( b64s );
				var sutf8 = iconv.decode(b, 'GB18030');
				var line = ccbb.line;
				try{
					delete cb_pool[timestamp_id];//delete after call
					if(ccbb.ext) {
						ccbb(ccbb.ext({sutf8,line}));
					}else{
						ccbb({sutf8,line});
					}
				}catch(ex){ err('## ccbb '+child_name+' err'+ex); };
			}
		}
	});
	the_child.stderr.on('data', (data)=>{ err(iconv.decode(new Buffer(data), 'GBK')); });
	the_child.on('close', (code)=>{
		err('## '+child_name+'.close:' + code);
		try{ the_child.kill("SIGINT"); }catch(ex){ err('## '+child_name+'.kill:'+ex) }
		child_a[child_name] = start_child(child_name,exe_name,args);
	});
	err('## child '+child_name+' Start');
	return the_child;
}
///child_a['hq'] = start_child('hq', 'hq_win32.exe');
///child_a['bt'] = start_child('bt', '9_win32.exe' );
//child_a['hq'] = start_child('hq', 'txhq.exe');
//child_a['bt'] = start_child('bt', 'tx10.exe' );
child_a['hq'] = start_child('hq', '..\\..\\bin\\ffic32.exe',['txhq.c']);
child_a['hq'] = start_child('hq', '..\\..\\bin\\ffic32.exe',['tx10.c']);
//process.stdin.setEncoding('utf8');
//NOTES: no need readline here... 'coz data comes as line
process.stdin.on('end',()=>err("# stdin end"));
var exit = ()=>{
	try{ child_a['bt'].kill("SIGINT"); }catch(ex){ err(ex) }
	try{ child_a['hq'].kill("SIGINT"); }catch(ex){ err(ex) }
	process.exit();
}

//
var P=(f)=>('function'==typeof f)?new Promise(f):P.resolve(f);
P.all    =(a)=>Promise.all(a||[]);
P.delay  =(t)=>P(resolve=>setTimeout(resolve,t>0?t:1));
P.reject =(o)=>Promise.reject(o);
P.resolve=(o)=>Promise.resolve(o);

var {round,abs,pow}=Math;//not ok 512
var fixed = (n,d=0) => round( pow(10,d) * n )/pow(10,d);
var sgn=n=>((n>0)-(n<0))||n;
var tgt = (ma,lvl,dlt) => fixed(ma*pow((1+dlt*sgn(lvl)),abs(lvl)),2);
var calc = (ma,lvl,dlt=0.01,amt=50000)=>{var _tgt = tgt(ma,lvl,dlt);var _lot = fixed(amt/_tgt,-2);return [_tgt,_lot,ma];};
var mavg = a => {
	var t = 0.0;
	var s = 0.0;
	for(var k in a){
		var v = a[k];
		var [x,xma] = v;
		t+=1/x;
		s+=xma/x;
	}
	var a = 0;
	if (t>0) a = s / t;
	return [t,s,a];//t,sum,avg
};

var savg = a =>{
	var t = 0.0;
	var s = 0.0;
	for(var k in a){
		var v = a[k];
		//var [x,xma] = v;//mavg
		var [x,xma] = [1,v];
		t+=1/x;
		s+=xma/x;
	}
	var a = 0;
	if (t>0) a = s / t;
	return [t,s,a];//t,sum,avg
}

//var delta = 0.02, level = -3;
//calc(mavg([ [2,5.09], [5,5.43], [12,5.18], [20,4.94], [120,4.22], [250,3.99] ])[2], level, delta);

var call_logic_cb = (line, cb)=>{
	if(line==null)line="";
	else line=trim(line);
	if(line==""){ return; }//skip empty line
	var timestamp_id = (new Date()).getTime() % 1000000;
	if(cb){
		cb.timestamp_id = timestamp_id;//for later clean up
		cb.line = line;
	}
	cb_pool[timestamp_id] = cb;
	setTimeout(()=>{ 
		var ccbb = cb_pool[timestamp_id];
		if(ccbb){
			try{ 
				ccbb({STS:'KO',errmsg:'99 '+line});//notify 99 timeout 
			}catch(ex){};
			delete cb_pool[timestamp_id];
		}
	},7000);
	//TODO test with [ to do faster matching

	//e.g. ["b 000725 30","e 2"]
	//["b 000725","e 000725 -1"]
	var line_a = s2o(line)||[];
	if(line_a[0]){ line = line_a[0]; }
	var ext_line="";
	if(line_a[1]){ ext_line = line_a[1]; }
	//var m = (ext_line).match(new RegExp("^e\\s+(\\d*)+\\s*(\\d*)"));
	var m = (ext_line).match(new RegExp("^e\\s+([0-9-]*)\\s*([0-9-]*)"));
	if(m){
		//TODO change line = `b ${m[1]}`
		var stock = m[1] || '000725';
		var lvl = 1*(m[2]);
		//var delta = 1.0*(m[3] || 0.02);
		var delta = 1.0*(m[3] || 0.015);
		cb.ext = d =>{
			var ma5_a = [];
			var sutf8 = d.sutf8 || "";
			var s_a = sutf8.split("\n");
			var Pn = null;
			var dump_line;
			var head_line;
			var ma5_v = '';
			for(var k in s_a){
				var v = s_a[k]||"";
				var v_a = v.split("\t") || [];
				var Dx = v_a[0];//日期

				//var Px = 1*v_a[ m[1]||2 ];
				var Px = 1*v_a[ 2 ];// 2 是收市价,如果是今天则为当前最新

				if(Px>0){
					ma5_a.push(Px);
					if(ma5_a.length>5){
						//ma5_a = ma5_a.shift();
						ma5_a.shift();
					}
					//ma5_v = savg(ma5_a);
					ma5_v = savg(ma5_a)[2];

					//Pn = (Px+(Pn||Px))/2;
					Pn = (Px+2*(Pn||Px))/3;

					//out(Dx+'.'+m[1]+"\t"+Px+"\t"+Pn);
					//out(Dx+"\t"+Px+"\t"+Pn);

					//var mid_v = ma5_v;
					var mid_v = Pn;
					dump_line= Dx+"\t"+Px+"\t"+fixed(Pn,3)+"\t"+fixed(ma5_v,3)
						+"\t"+fixed(calc(mid_v,lvl-1,delta)[0],2)
						+"\t"+fixed(calc(mid_v,lvl,delta)[0],2)
						+"\t"+fixed(calc(mid_v,lvl+1,delta)[0],2);
					out(dump_line);
				}else{
					head_line = stock+"/"+delta+"\tClose\t\exMA\tMA5\t"+(lvl-1)+"\t"+(lvl)+"\t"+(lvl+1);
					out(head_line);
				}
			}
			d.sutf8 = head_line+"\n"+dump_line;//o2s([ma5_v,Pn,dump_line]);//TODO MA5, MAx
			d.line = line;//TMP
			return d;
		};
	}else{
		err("not matching m");
	}
	
	switch(true){
		case (new RegExp("^(q$|quit|exit)").test(line)): exit(); break;
		case (new RegExp("^(count|b\\s)").test(line)): child_a['hq'].stdin.write(`${timestamp_id} ${line}\r\n`); break;
		default: child_a['bt'].stdin.write(`${timestamp_id} ${line}\r\n`);
	}
}

var call_logic_p = (line) => P(resolve=>call_logic_cb(line,resolve));

process.stdin.on('readable', () => { var chunk;
	while ((chunk = process.stdin.read()) !== null) {
		call_logic_p(''+chunk).then(data=>out(o2s(data)));
	}
});
var url = require('url');
module.exports = (init_opts) => (req,resp)=>{
	if(!init_opts) init_opts = {};
	try{
		var url_parts = url.parse(req.url);
		//var line = decodeURI(url_parts.query);
		var line = decodeURIComponent(url_parts.query);
		resp.writeHead(200, { "content-type": "text/javascript;charset=utf-8" });
		call_logic_p(line).then(data=>resp.end(o2s(data)));
	}catch(ex){
		err(ex);
		resp.end(o2s(ex))
	}
};
