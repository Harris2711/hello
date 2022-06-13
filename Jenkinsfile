pipeline {
    agent any
    stages{
        stage('Checkout'){
            steps{
                git branch: 'main', url: 'https://github.com/Harris2711/hello.git'
            }
        }
        stage('Build'){
            steps{
                echo "Hello World"
            }
        }
    }
}
