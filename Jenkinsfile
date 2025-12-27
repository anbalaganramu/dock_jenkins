pipeline {
    agent {label 'slave1'}
    environment{
        DOCKERHUB_USER= "anbumca05"
        IMAGE_REPO= "docker-jenkins"
        IMAGE_TAG= "v1"
    }
    stages {
        stage('Pull SCM') {
            steps {
                git branch: 'main', url: 'https://github.com/anbalaganramu/dock_jenkins.git'
            }
        }
        stage('Build and Push Docker Image') {
            steps {
                script{
                    withDockerRegistry(credentialsId: 'dockerhub_cred') {
                        sh 'docker build -t ${DOCKERHUB_USER}/${IMAGE_REPO}:${IMAGE_TAG} .'
                        sh 'docker push ${DOCKERHUB_USER}/${IMAGE_REPO}:${IMAGE_TAG}'
                    }
                }
               
            }
        }
    }
}
