pipeline {
    agent any
    stages{        
        stage('Checkout'){
            steps {
                git branch: 'main', url: 'https://github.com/Harris2711/hello.git'
            }
        }
        stage('Build') {
            steps {
                sh 'docker build -t demo .'
            }
        }
        stage('Docker_Push'){
            steps {
                withCredentials([string(credentialsId: 'docker_pass', variable: 'docker_pass')]) {
                sh 'docker login -u harris2711 -p ${docker_pass}'
}
                sh 'docker push -a harris2711/sample demo'
            }
        }
        stage ('Deploy'){
            steps {
                sh '''docker run -itd --name cont -p 80:80 demo:latest'''
            }
        }
    }
}
