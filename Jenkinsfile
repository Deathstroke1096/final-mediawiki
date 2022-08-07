pipeline {
    agent any

    stages {
        stage('Create Stack') {
            steps {
                echo 'Creating Stack'
                "bash createStack.sh".execute()
            }
        }
                
    }
}