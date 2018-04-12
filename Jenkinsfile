node {
  def app
    stage('Clone repo') {
      checkout scm
    }
    stage('Docker:Build') {
      app = docker.build("app/todos")
    }
    stage('Test') {
      app.inside {
        sh 'npm run test'
      }
    }
    stage('Staging') {
      input message: 'Validez-vous l\'application? (Cliquez "Proceed" pour continuer)'
    }
    stage('Deploy') {
      echo 'deploy'
    }
}
