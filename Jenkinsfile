pipeline {
    
      agent {
		
		label{
				label 'built-in'
				customWorkspace '/mnt/ankush'
		}
	}
    stages {
        
        stage ("git") {
            
            steps  {
                
               git credentialsId: 'git-token', url: 'https://github.com/ankushmohite/git_tutor.git', branch :'23Q1'
            }
        }
        
        stage('Build image') {
            steps {
                  sh'docker build -t deepali-image .'

                    
                
            }
        }

        stage('Run Container') {
            steps {
                script {
                    sh'docker run -d -p 90:80 deepali-image'
                }
            }
        }
    }

}

