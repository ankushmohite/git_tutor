

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
                
               git credentialsId: 'git-token', url: 'https://github.com/ankushmohite/git_tutor.git'
            }
        }
        
        stage('Build image') {
            steps {
                  sh'docker build -t my-image .'

                    
                
            }
        }

        stage('Run Container') {
            steps {
                script {
                    sh'docker run -d -p 80:80 my-image'
                }
            }
        }
    }

}
        
            
        
    

