pipeline {
    agent none
    stage ('Checkout') {
        agent any
        steps {
            git(
                url: 'https://github.com/jitudsce52/Mkdocs.git'
            )
        }
    }
    stage ('Build') {
        agent {
            dockerfile {
            filename 'Dockerfile'
        }
      }
    }
    stage ('deploy') {
        sh 'mkdockerize.sh'
    }
}
