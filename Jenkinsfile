pipeline {
    agent {label 'slave1'}
    environment{
        DOCKERHUB_USER= "anbumca05"
        IMAGE_REPO= "docker-jenkins"
        IMAGE_TAG= "v1"
        CONTAINER_NAME="myhttpd"
        HOST_PORT= "8080"
        CONTAINER_PORT= "80"
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
                       // sh 'docker rm -f ${CONTAINER_NAME} || true'
                        sh 'docker run --name ${CONTAINER_NAME} -d -p ${HOST_PORT}:{CONTAINER_PORT} ${DOCKERHUB_USER}/${IMAGE_REPO}:${IMAGE_TAG}'
                    }
                }
               
            }
        }
    }
}
