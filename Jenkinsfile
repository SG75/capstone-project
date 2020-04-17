colorgame pipeline {
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
                        sh 'docker build -t simple-cg-image:latest .'
                        sh 'docker images'
                    }
                }
    }
}