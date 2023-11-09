pipeline {
    agent any
    stages {
        stage('Build Docker image') {
            steps {
                sh 'docker build -t my-app .'
            }
        }
        stage('Run Docker container') {
            steps {
                sh 'docker run -d -p 3000:3000 my-app'
            }
        }
    }
}