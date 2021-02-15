pipeline {
    agent any
    
    environment {
	PASS = credentials('secret_password')
    }

    stages {
        stage('create the image') {
            steps {
                sh 'docker build -t manilici97/nginx-final:1 .'
            }
        }
        stage('deploy to docker hub') {
            steps {
                sh 'docker login -u manilici97 -p $PASS && docker push manilici97/nginx-final:1'
            }
        }
        stage('create the web-site') {
            steps {
                sh 'docker-compose up -d'
            }
        }
    }
}
