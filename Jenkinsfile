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
                    docker.build('my-app')
                }
            }
        }
        stage('Run Docker container') {
            steps {
                script {
                    docker.image('my-app').run('--name my-app -p 3000:3000')
                }
            }
        }
    }
}