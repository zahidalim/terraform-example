pipeline {
  agent any
  stages {
    stage("Clone git")
      {
        steps{
           script{
              checkout scm
           }
        }
      } // stage -1
    stage("terraform-script"){
      {
        steps{
          script{
            sh 'terraform init'
            sh 'terraform plan'
          }
        }
      }
  }
}
