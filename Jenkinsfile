pipeline {
    agent {label 'slave1'}
    stages {
        stage('Pull SCM') {
            steps {
                git branch: 'main', url: 'https://github.com/anbalaganramu/dock_jenkins.git'
            }
        }
    }
}
