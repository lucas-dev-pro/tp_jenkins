pipeline {
    agent any

    stages {
        stage('Cloner le dépôt') {
            steps {
                git 'https://github.com/lucas-dev-pro/tp_jenkins.git'
            }
        }

        stage('Tests unitaires') {
            steps {
                bat 'python -m unittest discover tests'
            }
        }

        stage('Build Docker') {
            steps {
                bat 'docker build -t saes5/mon-image:test .'
            }
        }

        stage('Push vers Docker Hub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'docker-hub', usernameVariable: 'DOCKER_USER', passwordVariable: 'DOCKER_PASS')]) {
                    bat '''
                    echo %DOCKER_PASS% | docker login -u %DOCKER_USER% --password-stdin
                    docker push saes5/mon-image:test
                    '''
                }
            }
        }
    }
}
