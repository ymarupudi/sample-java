pipeline {
    agent any
    tools {
        maven 'maven'
    }
    stages {
        stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}/bin/mvn"
                '''
            }
        }
        stage('Git') {
           git branch: 'dev', credentialsId: '39504cb7-8286-4f57-94fe-e2544d0b86a1', 
           url: 'https://github.com/shareef242/sample-java.git'
        }
        stage('Mvn Package') {
            steps {
                sh 'mvn -B -DskipTests clean package -e'
            }
        }      
    }
}
