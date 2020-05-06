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
                        echo "${JOB_BASE_NAME}" | sed 's/\\%2F/\\//g' > /tmp/file.txt
                        cat /tmp/file.txt
                    """
                }
            }
        }
    }
}
