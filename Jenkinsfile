pipeline {
  def app
  stages {
    stage('Build') {
      echo 'build'
    }
    stage('Test') {
      steps {
        echo 'test'
      }
    }
    stage('Staging') {
      when {
        branch 'development'
      }
      steps {
        input message: 'Validez-vous l\'application? (Cliquez "Proceed" pour continuer)'
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
