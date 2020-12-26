pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'starting the process..'
            }
        }
\
        stage('terraform init') {
            steps{
                withEnv(['PATH+EXTRA=/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/cloud_user/.local/bin:/home/cloud_user/bin:/terraform-path/:/usr/local/bin/terraform:/terraform-path/'])
                echo 'terraform init'
                sh 'terraform init'
                echo 'init done'
            }
        }
        stage('terraform plan') {
            steps{
                withEnv(['PATH+EXTRA=/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/cloud_user/.local/bin:/home/cloud_user/bin:/terraform-path/:/usr/local/bin/terraform:/terraform-path/'])
                echo 'terraform plan'
                sh 'terraform plan'
                echo 'planned finished'
            }
        }

    }
}