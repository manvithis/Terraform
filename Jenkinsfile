
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
         stage('terraform apply') {
            steps  {
                withAWS(credentials: 'AWS_KEYS', region: 'us-east-1')
                {
                    sh 'terraform apply -auto-approve'
                }
            }
        }           
    }
}
