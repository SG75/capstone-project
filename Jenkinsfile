pipeline {
    agent any
    stages {
        stage('Lint HTML & Dockerfile'){
            steps {
                sh 'tidy -q -e colorgame/*.html'
                sh 'hadolint Dockerfile'
            }
        }
        stage('Build Docker Image'){
                    steps {
                        sh 'docker build -t simple-cg-image:v1 .'
                        sh 'docker images'
                        sh 'docker run -d --name cg-container -p 80:80 simple-cg-image:v1'
                    }
                }
    }
}
