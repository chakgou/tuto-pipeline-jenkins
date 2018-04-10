pipeline {
    agent {
        docker {
            image 'node:6-alpine'
            args '-p 3000:3000'
        }
    }
    stages {
        stage('Install') {
            steps {
                sh 'apk --update add git'
            }
        }
        stage('Build') {
            steps {
                sh 'npm install'
                sh 'npm run bower install'
                sh 'npm run build'
            }
        }
        stage('Test') {
            steps {
              sh 'npm run test'
            }
        }
        stage('Deliver') {
            steps {
             echo 'Deliver'
            }
        }
    }
}
