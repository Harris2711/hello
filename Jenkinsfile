pipeline {
    agent any
    stages{
        stage('Checkout'){
            step{
                git branch: 'main', url: 'https://github.com/Harris2711/hello.git'
            }
        }
        stage('Build'){
            step{
                echo "Hello World"
            }
        }
    }
}
