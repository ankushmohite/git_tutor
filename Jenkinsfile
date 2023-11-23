pipeline {
agent{
label{
		label "Slave"
		customWorkspace "/mnt/vel-app"
    
}
}

stages {

		stage ("Build image"){
			steps {
					def dockerImage = docker.build("my-image", "-f Dockerfile .")
                              
			}

            stage ("Run Container"){
			steps {
    			sh"docker run -d -p 80:80 my-image"
                              
			}
    }
		}
        }
}

