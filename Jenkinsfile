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
	ansible-playbook -i hosts testansible.yml
	'''
	
}
