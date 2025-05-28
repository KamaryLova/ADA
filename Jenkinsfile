pipeline {
    agent any

    triggers {
        githubPush()
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
		sh '''
		cat my_adda_app.gpr
		gprbuild -P my_ada_app.gpr
		ls -l
		./my_adda_app
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
		mkdir workspace
		cp my_ada_app workspace
            }
        }
    }
}
