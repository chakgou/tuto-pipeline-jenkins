node {
  def app
    stage('Clone repo') {
      checkout scm
    }
    stage('Docker:Build') {
      app = docker.build('app/todos:${env.BUILD_ID}')
    }
    stage('Test') {
      app.inside {
        echo 'test ok'
      }
    }

  switch(env.BRANCH_NAME) {
    case 'development':
      stage('Staging') {
        app.withRun('-d -p 3000:3000 node_modules/http-server/bin/http-server dist -p 3000')
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
