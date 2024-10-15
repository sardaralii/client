pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Clone the Spring Pet Clinic project from your GitHub repository
                checkout scm
            }
        }

        stage('Build and Test') {
            steps {
                // Compile and test using the Spring Boot Maven plugin
                //sh './mvnw clean package -DskipTests'
                echo "hello"
                //sh 'docker build -t tobi:latest .'

            }
        }

        stage('Run Application') {
            steps {
                // Run the Spring Boot application to verify it works
                // sh './mvnw spring-boot:run'
                sh 'docker run -it tobi'
            }
        }

    //     stage('Build Docker Image') {
    //         steps {
    //             // Build a Docker image using the Spring Boot build plugin
    //             sh './mvnw spring-boot:build-image'
    //         }
    //     }
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
