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
        '''        

        stage 'Push Image to DockerHub'
	sh '''#!/bin/bash -x
	docker push nidhishd/challenge	
	'''


        stage 'Build Container through Playbook'
	sh '''#!/bin/bash -x
	sudo ansible-playbook /var/lib/jenkins/workspace/Challenge_Testing/testansible.yml  -i  /var/lib/jenkins/workspace/Challenge_Testing/hosts -b --become-user ansadmin
	'''
	
}
