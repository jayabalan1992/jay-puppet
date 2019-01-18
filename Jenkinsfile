pipeline {
  agent { docker { image 'jayabalan/puppetdocker:1' } }
  stages {
    stage('Syntax test') {
      steps {
        sh 'ls'
        sh 'pwd'
        sh '''
	find . -name *.pp | xargs -n 1 -t puppet parser validate
        '''
      }
    }
  }
}
