pipeline {
    agent any

    stages {
        stage('Clean and Package') {
            steps {
                echo 'Cleaning and packaging the application...'
                // Compile and package the application using the Spring Boot Maven plugin
                sh './mvnw clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building the Docker image...'
                // Build a Docker image using the Spring Boot Maven plugin
                sh './mvnw spring-boot:build-image'
            }
        }

        stage('Run Application') {
            steps {
                echo 'Running the Spring Boot application...'
                // Run the Spring Boot application to verify it works
                sh './mvnw spring-boot:run'
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished running.'
        }
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed during Build and Test.'
        }
    }
}
