//Jenkinsfile (Declarative Pipeline)
/* Requires the Docker Pipeline plugin */
pipeline {
    agent { label 'jenkins_agent' }

    parameters {
        booleanParam(name: 'Deploy', defaultValue: 'false', description: "Would you like to deploy?")
    }
    environment {
        APP_NAME = "analytics"
    }
    stages {
        stage('checkout') {
            steps {
                echo 'Checkout SCM'
                sh "echo ${APP_NAME}"
            }
        }
        stage('clean') {
            steps {
                script {
                    if (APP_NAME == "ai") {
                        echo "Running ibuild for ai"
                    } else {
                        echo 'clean the current dir'
                        sh "echo ${APP_NAME}"
                    }
                }
            }
        }
    }
    post {
        always {
            deleteDir()
            cleanWs()
        }
    }
}
