pipeline{
    agent any
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
        stage ('Deploy'){
            steps {
                sh '''docker run -itd --name demo1cont -p 8081:8081 demo:latest'''
            }
        }
    }
}
