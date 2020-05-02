node {
	
	stage 'Git checkout'
	checkout scm
	
	stage 'image build'
	sh '''#!/bin/bash -x
	sudo docker build -t challenge .
	'''
	
	stage 'Start app'
	sh '''#!/bin/bash -x
	if [ "$(docker ps -q -f name=challenge)" ]; then
        if [ "$(docker ps -aq -f status=exited -f name=challenge)" ]; then
        docker rm challenge
        fi
    	docker stop challenge
    	docker rm challenge
	fi
        '''        


        stage 'Build Container through Playbook'
	sh '''#!/bin/bash -x
	sudo ansible-playbook /var/lib/jenkins/workspace/Challenge_Testing/testansible.yml  -i  /var/lib/jenkins/workspace/Challenge_Testing/hosts -b --become-user ansadmin
	'''
	
}
