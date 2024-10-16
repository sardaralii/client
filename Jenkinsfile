pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Clone the Git repository
                git 'git@github.com:sardaralii/client.git'
            }
        }
        stage('Build') {
            steps {
                // Build the application
                sh './mvnw clean package'
            }
        }
        stage('Build Docker Image') {
            steps {
                // Build the Docker image
                sh 'docker build -t pring-petclinic .'
            }
        }
        stage('Run Tests') {
            steps {
                // Run your tests here (if applicable)
                // sh './mvnw test'
            }
        }
        stage('Deploy') {
            steps {
                // Optionally push the image to Docker Hub or a private registry
                // sh 'docker push your-dockerhub-username/pring-petclinic:latest'
                
                // Run the Docker container
                sh 'docker run -d -p 8080:8080 pring-petclinic'
            }
        }
    }

    post {
        always {
            // Clean up the workspace
            cleanWs()
        }
    }
}
