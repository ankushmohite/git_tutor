pipeline {
    
      agent {
		
		label{
				label 'slave'
				customWorkspace '/mnt/ankush'
		}
	}
    stages {
        
        stage ("git") {
            
            steps  {
                
               git credentialsId: 'git-token', url: 'https://github.com/ankushmohite/git_tutor.git', branch : '23Q2'
            }
        }
        
        stage('Build image') {
            steps {
                  sh'docker build -t hemant-image .'

                    
                
            }
        }

        stage('Run Container') {
            steps {
                script {
                    sh'docker run -d -p 8000:80 hemant-image'
                }
            }
        }
    }

}

