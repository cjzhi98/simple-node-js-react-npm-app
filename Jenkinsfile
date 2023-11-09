pipeline {
    agent any
    stages {
        stage('Stop and remove old Docker container') {
            steps {
                script {
                    sh 'docker stop my-app || true'
                    sh 'docker rm my-app || true'
                }
            }
        }
        stage('Build Docker image') {
            steps {
                script {
                  sh 'docker build -t my-app .'
                }
            }
        }
        stage('Run Docker container') {
            steps {
                script {
                    sh 'docker run -d --name my-app -p 8080:8080 my-app'
                }
            }
        }
    }
}