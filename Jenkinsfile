pipeline {
  agent {
    label 'agent1'
  }

  stages {

    stage('mvn clean and install') {
      steps {
        sh '''
          mvn clean install
        '''
      }
    }


    stage('prepare artifacts') {
      steps {
        sh '''
          zip -r users.zip *
        '''
      }
    }

    stage('upload artifacts') {
      steps {
        sh '''
          curl -v -u admin:admin123 --upload-file users.zip http://172.31.3.71:8081/repository/users/users.zip
        '''
      }
    }
  }
}
