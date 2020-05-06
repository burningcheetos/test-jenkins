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
        stage ('Non Dev stuff') {
            steps {
                script {
                    def git_branch = readFile("/tmp/file.txt").trim()

                    if (git_branch == "develop") {
                        return
                    }else{
                        echo "do more stuff"
                    }
                }
            }
        }
        stage ('Master stuff') {
            steps {
                script {
                    echo "hold my stuff"
                }
            }
        }
    }
}
