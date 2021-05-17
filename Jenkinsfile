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
          cp target/*.zip users.zip
          zip -r users.zip *
        '''
      }
    }

//     stage('upload artifacts') {
//       steps {
//         sh '''
//           curl -v -u admin:admin123 --upload-file users.zip http://localhost:8081/repositories/users/users.zip
//         '''
//       }
//     }
  }
}
