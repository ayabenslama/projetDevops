pipeline{

    agent any

    stages {

     stage('Git Checkout'){

            steps{

                script{

                    git branch: 'main', url: 'https://github.com/ayabenslama/projetDevops.git'
                }
            }
        }
        stage('UNIT testing'){

            steps{

                script{

                    sh 'mvn test'
                }
            }
        }
        stage('Integration testing'){

            steps{

                script{

                    sh 'mvn verify -DskipUnitTests'
                }
            }
        }
        stage('Maven build'){

            steps{

                script{

                    sh 'mvn clean install'
                }
            }
        }
  stage('Static code analysis'){

            steps{

                script{

                    withSonarQubeEnv(credentialsId: 'SONARQUBE-TOKEN') {

                        sh 'mvn clean package sonar:sonar'
                    }
                   }

                }
            }
              stage('upload to nexus'){

                            steps{

                                script{
                sh 'mvn deploy -DskipTests'
            }
        }
                                }
                        
                  stage('Docker Image build'){

                              steps{

                                  script{

                 sh 'docker build -t aya/event:1.0.0 .'


                                  }
                              }
                          }
                   stage('push image to dockerhub'){

                              steps{

                                  script{

                                   
                sh "docker login -u aya343 -p 213JFT9182\\(s\\)"
                sh "docker push aya343/event:1.0.0"
            
                  }

                                  }
                              }
                          }
}


