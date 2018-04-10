pipeline {
    agent {
        docker {
            image 'node:6-alpine'
            args '-p 3000:3000'
        }
    }
    stages {
        stage('Install dependencies') {
            steps {
                sh 'apk --update add git'
                sh 'npm install'
            }
        }
        stage('Build') {
            steps {
                sh 'npm run build'
                sh 'npm run serve:dist'
            }
        }
        stage('Test') {
            steps {
                sh 'echo Test'
            }
        }
    }
}
