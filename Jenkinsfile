
pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'terraform init'
            }
        }
        stage('terraform planning') {
            steps  {
                sh 'terraform plan'
            }
        }           
    }
}
