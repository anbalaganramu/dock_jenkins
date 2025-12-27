pipeline {
    agent {label 'slave1'}
    stages {
        stage('Pull SCM') {
            steps {
                git branch: 'main', url: 'https://github.com/anbalaganramu/dock_jenkins.git'
            }
        }
        stage('Build Docker Image from Dockerfile') {
            steps {
                sh 'docker build -t dock-img:v1 .'
            }
        }
    }
}
