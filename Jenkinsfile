pipeline {
    agent any

    stages {
        stage ('start') {
            steps {
                script {
                    sh """
                        echo 'simple echo'
                    """
                }
            }
        }
        stage ('Get branch') {
            steps {
                script {
                    sh """
                        echo ${JOB_BASE_NAME}
                    """
                }
            }
        }
    }
}
