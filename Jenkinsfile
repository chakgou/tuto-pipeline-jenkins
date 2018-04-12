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
        echo 'test ok'
      }
    }

  switch(env.BRANCH_NAME) {
    case 'development':
      stage('Staging') {
        input message: 'Validez-vous l\'application? (Cliquez "Proceed" pour continuer)'
      }
    break
    case 'master':
    stage('Deploy') {
      echo 'deploy'
    }
    break
    default:
    break
  }
}
