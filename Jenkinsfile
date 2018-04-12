node {
  def app

    stage('Build') {
      echo 'build'
    }
    stage('Test') {
      echo 'test'
    }
    stage('Staging') {
      when {
        branch 'development'
      }
      input message: 'Validez-vous l\'application? (Cliquez "Proceed" pour continuer)'
    }
    stage('Deploy') {
      when {
        branch 'master'
      }
      echo 'deploy'
    }
}
