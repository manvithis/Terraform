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
                echo 'terraform init -from-module=/var/lib/jenkins/workspace/Prod_server_main/'
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