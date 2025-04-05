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
                sh 'python -m unittest discover tests'
            }
        }

        stage('Build Docker') {
            steps {
                sh 'docker build -t mon-image:test .'
            }
        }

        stage('Déploiement') {
            steps {
                sh 'docker run -d -p 8000:8000 mon-image:test'
            }
        }
    }
}
