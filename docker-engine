var exec = require('child_process').exec;
const { spawnSync} = require('child_process');



if (process.platform === 'win32'){
		const child = spawnSync('docker', ['ps', '-a']);

		const error = String(child.stderr).toLowerCase()

		if(error.includes("error")){
			let path = "C:\Program Files\Docker\Docker\Docker Desktop.exe"
			path = path.replace(' ', '\ ');
			var cmd = 'start "" "C:\\Program Files\\Docker\\Docker\\Docker Desktop.exe"'
			exec(cmd, (error, stdout, stderr) => {
				//console.log("STDOUT:", stdout, ", STDERR:", stderr);
			});
		}

		const sleep = (millis) => {
		  var stop = new Date().getTime();
		  while (new Date().getTime() < stop + millis) {}
		};

		var status = true

		while(status){
			
			console.log("wait ...")
			
			const child = spawnSync('docker', ['ps', '-a']);
			const error = String(child.stderr).toLowerCase()
			
			if(!error.includes("error")){
				status = false
				console.log("ok ...")
			}
			
			sleep(2000);
		}
}



