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
              echo 'Test'
            }
        }
        stage('Deliver') {
            steps {
             sh 'npm run serve:dist'
             input message: 'Finished using the web site? (Click "Proceed" to continue)'
            }
        }
    }
}
