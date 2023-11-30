

pipeline {
    agent {
   label{
				label 'built-in'
				customWorkspace '/mnt/ankush'
   }
    }

	  stage ("git") {
            
            steps  {
                
               git credentialsId: 'git-token', url: 'https://github.com/ankushmohite/git_tutor.git'
            }
        }

    stages {
        stage('Build and Test') {
            steps {
                script {
                    // Stage 1: Build and test container 1
                    container('container-1') {
                        sh 'docker build -t my-container-1 .'
                        sh 'docker run -d -p 80:80 my-container-1'
                    }

                    // Stage 2: Build and test container 2
                    container('container-2') {
                        sh 'docker build -t my-container-2 .'
                        sh 'docker run -d -p 90:80 my-container-2'
                    }

                    // Stage 3: Build and test container 3
                    container('container-3') {
                        sh 'docker build -t my-container-3 .'
                        sh 'docker run -d -p 8000:80 my-container-3'
                    }
                }
            }
        }
    }
}

        
            
        
    

