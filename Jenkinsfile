
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
                withAWS(credentials: 'AWS_1', region: 'us-east-1')
                {
                    sh 'terraform apply -auto-approve'
                }
            }
         }
             stage('sleeeping') {
                 steps {
                     sh 'sleep 10'
                 }
             }
             stage('terraform destroy') {
                 steps {
                     sh 'terraform destroy -auto-approve'
                 }
             }
          
        }           
    }
}
