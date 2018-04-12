node {
  def app
    stage('Clone repo') {
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
      echo 'deploy'
    }
}
