pipeline {
  agent { dockerfile true }
    stages {
      stage('Build') {
        steps {
          sh 'npm install'
          sh 'npm run bower install'
          sh 'npm install serve'
          sh 'npm run build'
        }
      }
      stage('Test') {
        steps {
          echo 'test OK'
        }
      }
      stage('Deliver') {
        when {
          branch 'development'
        }
        steps {
          sh './scripts/jenkins/deliver-to-staging.sh'
          input message: 'Finished using the web site for test? (Click "Proceed" to continue)'
          sh './scripts/jenkins/kill.sh'
        }
      }
      stage('Deploy') {
        when {
          branch 'master'
        }
        steps {
          echo 'Deploy'
        }
      }
   }
}
