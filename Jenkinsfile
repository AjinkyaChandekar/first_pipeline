pipeline {
   agent any
   stages {
      stage ('Build') {
	     steps {
		 sh '''
		 ./jenkins/build/maven.sh mvn -B -DskipTests clean package
		 ./jenkins/build/build.sh
		    '''
		 
		 }
	  
	  }
	  
	  stage ('Test') {
	     steps {
		 sh './jenkins/test/maven.sh mvn test'
		 
		 }
	  
	  }
     
	  stage ('Push') {
	     steps {
		 sh './jenkins/push/push.sh'
		 
		 }
	  
	  }
   
   
   
   }
   

}
