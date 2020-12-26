pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'starting the process..'
            }
        }
        stage('terraform init') {
            steps{
                echo 'terraform init'
                PATH=/usr/local/bin/terraform
                sh 'terraform init'
                echo 'init done'
            }
        }
        stage('terraform plan') {
            steps{
                echo 'terraform plan'
                PATH=/usr/local/bin/terraform
                sh 'terraform plan'
                echo 'planned finished'
            }
        }

    }
}