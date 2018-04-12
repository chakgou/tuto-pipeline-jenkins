node {
  def app
    stage('Build') {
      checkout scm
    }
    stage('Build') {
      echo 'build'
    }
    stage('Test') {
      echo 'test'
    }
    stage('Staging') {
      input message: 'Validez-vous l\'application? (Cliquez "Proceed" pour continuer)'
    }
    stage('Deploy') {
      when {
        branch 'master'
      }
      echo 'deploy'
    }
}
