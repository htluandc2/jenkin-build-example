pipeline {
    agent none

    environment {
        registry = "my_registry"
        registryCredential = "cc628db2-1ca8-4913-b987-264adb97801d"
        dockerImage = "Test"
    }

    stages {
        stage("Build") {
            steps {
                script {
                    dockerImage = docker.build registry
                }
            }
        }

    }
}