pipeline {
    agent any
    
    stages {
        stage('checkout') {
            steps {
                checkout scm: [$class: 'GitSCM', branches: [[name: '*/main']], userRemoteConfigs: [[url: 'https://github.com/Ajlaluddin/Abalone-Age-Prediction.git']]]
            }
        }
        
        stage('Build') {
            steps {
                sh 'sudo docker build -t abalone-img-ajlal .'
            }
        }
        
        stage('Deploy') {
            steps {
                sh 'sudo docker run -d -p 8082:8082 abalone-img-ajlal'
            }
        }
    }
}

