pipeline {
    agent any

    stages {
        stage ('start') {
            steps {
                script {
                    sh """
                        echo 'simple echo'
                        echo ${JOB_NAME}
                      
                
                        #stuff
                        branch=${JOB_BASE_NAME}
                        echo $branch
                        
                    """
                }
            }
        }
    }
}