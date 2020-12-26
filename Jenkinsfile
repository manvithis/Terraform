pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'starting the process..'
            }
        }
        stage('par') {
            steps{
                echo '$PATH'

            }
        }
        stage('terraform init') {
            steps{
                echo 'terraform init'
                sh 'terraform init'
                echo 'init done'
            }
        }
        stage('terraform plan') {
            steps{
                echo 'terraform plan'
                sh 'terraform plan'
                echo 'planned finished'
            }
        }

    }
}