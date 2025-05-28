pipeline {
    agent any

    triggers {
        pollSCM '*/5 * * * *'
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
		sh '''
		cat my_ada_app.gpr
		gprbuild -P my_ada_app.gpr
		ls -l
		./my_ada_app
		'''	
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
		sh '''
		cp my_ada_app workspace
		ls -al workspace
		'''
            }
        }
    }
}
