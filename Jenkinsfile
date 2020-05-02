node {
	
	stage 'Git checkout'
	checkout scm
	
	stage 'image build'
	sh '''#!/bin/bash -x
	sudo docker build -t challenge .
	'''
	
	stage 'Start app'
	sh '''#!/bin/bash -x
	if [ $(sudo docker inspect -f '{{.State.Running}}' challenge) = "true" ]
	then
	sudo docker stop challenge
	fi
	sudo docker rm challenge
<<<<<<< HEAD
	sudo docker run -d -it -p 8082:3000 --name challenge challenge
=======
        '''
	
	
        stage 'Build Container through Playbook'
	sh '''#!/bin/bash -x
	ansible-playbook /var/lib/jenkins/workspace/Challenge_Testing/testansible.yml  -i  /var/lib/jenkins/workspace/Challenge_Testing/hosts -b --become-user root
>>>>>>> 2e5d14203288e5d9829f8d5e9ba730c86a7c7a6a
	'''
}
