pipeline {
    agent any

    stages {
        stage('Clean and Package') {
            steps {
                // Compile and test using the Spring Boot Maven plugin
                sh './mvnw clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build a Docker image using the Spring Boot build plugin
                sh './mvnw spring-boot:build-image'
            }
        }

        stage('Run Application') {
            steps {
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
