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
                        branch=${branch}
                        echo $branch

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
        stage ('Dev branch check') {
            steps {
                script {
                    def git_branch = readFile("/tmp/file.txt").trim()
                    
                    if (git_branch == "develop") {
                        echo "develop branch - do stuff"
                    }else{
                        echo "skipping"
                    }
                }
            }
        } 
    }
}
