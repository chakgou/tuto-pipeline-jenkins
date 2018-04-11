pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
                sh 'npm run bower install'
                sh 'npm run build'
            }
        }
        stage('Test') {
            steps {
              echo 'test OK'
            }
        }
        stage('Deliver') {
            steps {
             echo 'Deliver'
            }
        }
    }
}
