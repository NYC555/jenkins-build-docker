node {
   def app

   stage('Clone') {
	checkout scm
   }

   stage('Build Image') {
        app = docker.build("nyc555/nginx")
   }

   stage('Run Image') {
         docker.iamge("nyc555/nginx").withRun('-p 80;80') { c ->
	   sh 'docker ps'
	   sh 'curl localhost'
	 })
   }
}
