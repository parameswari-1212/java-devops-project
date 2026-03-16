pipeline {
 agent any

 stages {

  stage('Clone Repo') {
   steps {
    git 'https://github.com/username/java-devops-project.git'
   }
  }

  stage('Build') {
   steps {
    sh 'mvn clean package'
   }
  }

  stage('Build Docker Image') {
   steps {
    sh 'docker build -t username/java-app .'
   }
  }

  stage('Push Docker Image') {
   steps {
    sh 'docker push username/java-app'
   }
  }

  stage('Deploy to Kubernetes') {
   steps {
    sh 'kubectl apply -f deployment.yaml'
    sh 'kubectl apply -f service.yaml'
   }
  }

 }

}
