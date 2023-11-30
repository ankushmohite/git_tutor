

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
                
               git credentialsId: 'git-token', url: 'https://github.com/ankushmohite/fork.git'
            }
        }
        
        stage('Build image') {
            steps {
                  sh'sudo docker build -t my-image .'

                    
                
            }
        }

        stage('Run Container') {
            steps {
                script {
                    sh'sudo docker run -d -p 80:80 my-image'
                }
            }
        }
    }

}
        
            
        
    

