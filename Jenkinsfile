//Jenkinsfile (Declarative Pipeline)
/* Requires the Docker Pipeline plugin */
pipeline {
    agent { label 'jenkins_agent' }
    stages {
        stage('build') {
            steps {
                echo 'hello world'
            }
        }
        stage('clean') {
            steps {
                echo 'clean the current dir'
            }
        }
        stage('build') {
            steps {
                echo 'Build the app'
            }
        }
        stage('unit tests') {
            steps {
                echo 'Run unit tests'
            }
        }
        stage('Push Docker Image') {
            steps {
                echo 'Push Docker Image'
            }
        }
    }
}
