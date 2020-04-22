pipeline {
    agent any

    stages {
        stage ('start') {
            steps {
                script {
                    branch = "${JOB_BASE_NAME}"

                    sh """
                        echo 'simple echo'
                        echo ${JOB_NAME}
                      
                
                        #stuff
                        branch_raw=${branch}
                        echo $branch_raw

                        # replace
                        branch=`echo $branch_raw | sed 's/\\%2F/\\//g'`
                        echo $branch
                    """
                }
            }
        }
    }
}