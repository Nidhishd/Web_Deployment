node {

	stage 'Git checkout'
	checkout scm
	
	stage 'Deploy'
	sshagent (credentials: ['ec2-user']) {
    	sh 'ssh -o StrictHostKeyChecking=no -l ec2-user 3.84.119.239 uname -a'
  }
}
