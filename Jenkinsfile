pipeline {
  agent { docker { image 'jayabalan/puppetdocker:latest' } }
  stages {
    stage('Syntax test') {
      steps {
        sh 'puppet parser validate *.pp'
      }
    }
  }
}
