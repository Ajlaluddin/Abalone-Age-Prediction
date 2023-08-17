pipeline {
    agent any
    
    stages {
        stages('checkout') {
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
                sh 'sudo docker run -d -p 8081:8081 abalone-img'
            }
        }
    }
}

