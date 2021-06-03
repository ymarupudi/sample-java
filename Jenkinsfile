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
        stage('SCM Checkout') {
            steps {
            // Get source code from Gitlab repository
                sh 'git config remote.origin.url https://github.com/yoganandamarupudi/sample-java.git'
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'RelativeTargetDirectory', relativeTargetDir: '']], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '1e646dec-f0e3-4461-a4ac-08bd8d593e37', url: 'https://github.com/yoganandamarupudi/sample-java.git']]])
            }
        }
        stage('Mvn Package') {
            steps {
                sh 'mvn -B -DskipTests clean package -e'
            }
        }      
    }
}
