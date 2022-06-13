pipeline {
    agent any
    environment {
        DOCKERHUUB_CREDENTIALS = credentials('dockeraccesstoken')
    }
    stages{        
        stage('Checkout'){
            steps {
                git branch: 'main', url: 'https://github.com/Harris2711/hello.git'
            }
        }
        stage('Build') {
            steps {
                sh '''docker build -t demo .'''
            }
        }
        stage('Docker_Login'){
            steps {
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | sudo docker login -u $DOCKERHUB_CREDENTIALS_USER --password-stdin'
                echo 'Login Completed'
            }
        }
        stage('Docker Push'){
            steps {
                sh 'sudo docker push harris2711/sample:$BUILD_NUMBER'
                echo 'push completed with success'
            }
        }
        stage ('Deploy'){
            steps {
                sh '''docker run -itd --name newcont -p 8082:8082 demo:latest'''
            }
        }
    }
}
