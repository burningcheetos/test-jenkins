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
                        branch=${branch}
                        echo $branch

                    """
                }
            }
        }
    }
}