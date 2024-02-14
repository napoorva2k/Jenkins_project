pipeline {
          agent any
		stages {
			stage ("checkout") {
			steps {
			git branch: 'main',
			url: 'https://github.com/napoorva2k/Jenkins_project.git'
			}
		}
			stage ("Build_artifact") {
			steps {
			sh "mvn clean package"
				}
			}
	}
}
