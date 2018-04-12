node {
  def app
  stage('Clone repo') {
    checkout scm
  }
  stage('Docker:Build') {
    app = docker.build("app/todos:${env.BUILD_ID}")
  }
  stage('Test') {
    app.inside {
      echo 'test ok'
    }
  }

  switch(env.BRANCH_NAME) {
    case 'development':
      stage('Staging') {
        sh "docker run -d --rm --name ${env.BUILD_ID} -p 3000:3000 app/todos:${env.BUILD_ID} node_modules/http-server/bin/http-server dist -p 3000"
        input message: 'Validez-vous l\'application? (Cliquez "Proceed" pour continuer)'
        sh "docker rm -f ${env.BUILD_ID}"
      }
    break
    case 'master':
    stage('Deploy') {
      echo 'Push Docker image to registry'
    }
    break
    default:
    break
  }
}
