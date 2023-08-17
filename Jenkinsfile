pipeline {
    agent any
    
    stages {
        stage('checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Build') {
            steps {
                sh 'sudo docker build -t abalone-img .'
            }
        }
        
        stage('Deploy') {
            steps {
                sh 'sudo docker run -d -p 8082:8082 abalone-img'
            }
        }
    }
}

