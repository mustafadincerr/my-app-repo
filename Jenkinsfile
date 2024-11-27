@Library('library') _

pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/mustafadincerr/my-app-repo.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    buildDocker('my-app-image:latest')
                }
            }
        }
    }
}
