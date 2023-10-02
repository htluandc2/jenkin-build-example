pipeline {
    agent any

    environment {
        registry = "my_registry"
        registryCredential = "cc628db2-1ca8-4913-b987-264adb97801d"
        dockerImage = "Test"
    }

    stages {
        stage("Build") {
            steps {
                script {
                    dockerImage = docker.build("my-image:${env.BUILD_ID}")
                }
            }
        }
        stage("Test") {
            agent { 
                docker { 
                    image "my-image:${env.BUILD_ID}" 
                } 
            }
            steps {
                // Checking my code run in new docker image
                sh """
                    python --version
                    pytest --junit-xml test-reports/results.xml test.py
                """
                // Print result into Jenkins console (by JUnit console)
                junit test-reports/results.xml
            }
        }
    }
}