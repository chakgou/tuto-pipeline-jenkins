pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile.Jenkins'
      dir 'scripts/jenkins'
    }
  }
  stages {
    stage('Build') {
      steps {
        sh 'npm install'
        sh 'npm run bower install'
        sh 'npm install http-server'
        sh 'npm run build'
      }
    }
    stage('Test') {
      steps {
        echo 'test OK'
      }
    }
    stage('Staging') {
      when {
        branch 'development'
      }
      steps {
        sh './scripts/jenkins/deliver-to-staging.sh'
        input message: 'Validez-vous l\'application? (Cliquez "Proceed" pour continuer)'
      }
    }
    stage('Deploy') {
      when {
        branch 'master'
      }
      steps {
        sh 'docker info'
      }
    }
  }
}
