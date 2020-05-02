node {
	
	stage 'Git checkout'
	checkout scm
	
	stage 'image build'
	sh '''#!/bin/bash -x
	sudo docker build -t challenge .
	'''
	
	stage 'Start app'
	sh '''#!/bin/bash -x
	if [ "$(sudo docker ps -q -f name=challenge)" ]; then
        if [ "$(sudo docker ps -aq -f status=exited -f name=challenge)" ]; then
        sudo docker rm challenge
        fi
    	sudo docker stop challenge
    	sudo docker rm challenge
	fi
        '''        

        stage 'Push Image to DockerHub'
	sh '''#!/bin/bash -x
	sudo docker push nidhishd/challenge	
	'''


        stage 'Build Container through Playbook'
	sh '''#!/bin/bash -x
	/usr/local/bin/ansible-playbook /var/lib/jenkins/workspace/Challenge_Testing/testansible.yml  -i  /var/lib/jenkins/workspace/Challenge_Testing/hosts -b --become-user ansadmin
	'''
	
}
