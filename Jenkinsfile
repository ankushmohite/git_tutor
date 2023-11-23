pipeline {
    agent any
    stages {
        stage('Build image') {
            steps {
                script {
                    def dockerImage = docker.build("my-image", "-f Dockerfile .")
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    docker.image('my-image').run('-p 80:80', 'my-image')
                }
            }
        }
    }

    post {
        always {
            // Clean up by stopping and removing the container
            script {
                docker.image('my-image').stop()
                docker.image('my-image').remove()
            }
        }
    }
}
