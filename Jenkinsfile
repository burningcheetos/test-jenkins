pipeline {
    agent any

    stages {
        stage ('start') {
            steps {
                script {
                    sh """
                        echo 'simple echo'
                        echo 'release branch'
                    """
                }
            }
        }
    }
}