pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'git@github.com:sardaralii/client.git'
            }
        }
        stage('Set Permissions') {
            steps {
                sh 'chmod +x ./mvnw'
            }
        }
        stage('Build') {
            steps {
                sh './mvnw clean package'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t pring-petclinic .'
            }
        }
        stage('Run Tests') {
            steps {
                echo 'Running tests...'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker run -d -p 8080:8080 pring-petclinic'
            }
        }
    }

    post {
        always {
            cleanWs()
        }
    }
}
