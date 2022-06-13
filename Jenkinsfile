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
                sh '''docker run --name cont -p 80:80 demo:latest'''
            }
        }
    }
}
