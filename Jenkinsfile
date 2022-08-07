pipeline {
    agent any

    stages {
        stage('Create Stack') {
            steps {
                echo 'Creating Stack'
                bat './createStack.sh'
            }
        }
        stage('Delete Stack') {
            steps {
                echo 'Deleting Stack'
                bat './deleteStack.sh'
                echo 'stack deleted'
            }
        }

        
    }
}