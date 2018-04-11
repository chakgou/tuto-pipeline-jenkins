pipeline {
  agent none
  stages {
    stage('Build') {
      agent {
        dockerfile {
          filename 'Dockerfile.Jenkins'
          dir 'scripts/jenkins'
        }
      }
      steps {
        sh 'npm install'
        sh 'npm run bower install'
        sh 'npm install http-server'
        sh 'npm run build'
      }
    }
    stage('Test') {
      agent any
      steps {
        sh 'npm --version'
      }
    }
    stage('Staging') {
      agent any
      when {
        branch 'development'
      }
      steps {
        sh './scripts/jenkins/deliver-to-staging.sh'
        input message: 'Validez-vous l\'application? (Cliquez "Proceed" pour continuer)'
        sh 'docker info'
      }
    }
    stage('Deploy') {
      when {
        branch 'master'
      }
      steps {
        echo 'deploy'
      }
    }
  }
}
