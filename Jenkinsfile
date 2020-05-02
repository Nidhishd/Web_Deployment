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
	sudo docker run -d -it -p 8082:3000 --name challenge challenge
	'''
	
}
