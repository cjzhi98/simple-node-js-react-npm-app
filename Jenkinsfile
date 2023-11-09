pipeline {
    agent any
    environment {
        CI = 'true'
    }
    tools {
        nodejs 'NodeJS-21.1.0'
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Deliver') {
            steps {
                sh './scripts/deliver.sh'
            }
        }
    }
}
