pipeline {
  agent any
  stages {
    stage('Clone') {
        steps {
            git branch: 'master', url: 'https://github.com/jayabalan1992/jay-puppet.git'
            stash name:'scm', includes:'*'
        }
    }
    stage('Syntax test') {
      steps {
        unstash 'scm'
	script{
	  docker.image('jayabalan/puppetdocker:1').inside{
            sh 'ls'
            sh 'pwd'
            sh 'find . -name *.pp | xargs -n 1 -t puppet parser validate'
          }
        }
      }
    }
  }
}
