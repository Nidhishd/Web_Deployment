node {
	
	stage 'Git checkout'
	checkout scm
	
	stage 'image build'
	sh '''#!/bin/bash -x
	docker build -t challenge .
	'''
	
	stage 'Start app'
	sh '''#!/bin/bash -x
	docker run -d -it -p 8082:3000 --name challenge challenge
	'''
	
}
