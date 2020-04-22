pipeline {
    agent any

    stages {
        stage ('start') {
            steps {
                script {
                    branch = ${JOB_BASE_NAME}

                    sh """
                        echo 'simple echo'
                        echo ${JOB_NAME}
                      
                
                        #stuff
                        branch="${branch}"
                        echo $branch

                    """
                }
            }
        }
        stage ('branch') {
            steps {
                script {
                    def release = readFile "${WORKSPACE}/branch.txt"

                    git branch: "${release}", changelog: false, credentialsId: 'github_key', poll: false, url: 'https://github.com/burningcheetos/test-jenkins.git'
                }
            }
        }
        stage ('verify') {
            steps {
                script {
                    sh """
                        ls -l
                    """
                }
            }
        }
    }
}