pipeline {
    agent {node { label 'jenkins_agent'} }

    stages {
        stage('Hello') {
            steps {
              dir('B1_S3') {
                echo 'Hello World'
            }
        }
    }
}
