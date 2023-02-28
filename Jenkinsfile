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
              script {
                echo 'Checkout SCM'
                echo "APP_NAME: ${APP_NAME}"
                echo "${env.APP_NAME}"
                sh "cp file1 file1.log"
              }
            }
        }
        stage('clean') {
            steps {
                script {
                     if ("${APP_NAME}" == 'ai') {
                        echo "Running build for ai"
                    } else {
                        echo 'clean the current dir'
                        echo "APP_NAME ${env.APP_NAME}"
                        // build wait: false, job: 'ai-services/dev/ai-robot/main'
                    }
                }
            }
        }
    }
    post {
        always {
            archiveArtifacts artifacts: '*.log', followSymlinks: false
            deleteDir()
            cleanWs()
            emailext body: 'Git Branch: $GIT_BRANCH', subject: 'BUILD Status', to: 'rameshbabu.thoomu@gmail.com'
        }
    }
}

