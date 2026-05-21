pipeline {

    agent any

    triggers {
        cron('* * * * *')
    }

    stages {

        stage('Clone Repository') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/smsagar6/java-maven.git'
            }
        }

        stage('Build Maven Project') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t java-maven-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run --rm java-maven-app'
            }
        }

    }
}
