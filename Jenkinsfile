pipeline {
    agent any

    environment {
        // Use the name of your SonarQube installation configured in Jenkins
        SONARQUBE_ENV = 'Sonarqube'
    }

    tools {
        // Tool name must match the SonarScanner installation name in Jenkins
        sonarScanner 'Sonarqube'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('SonarQube Analysis') {
            steps {
                withSonarQubeEnv("${SONARQUBE_ENV}") {
                    sh 'sonar-scanner'
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline execution completed.'
        }
    }
}

