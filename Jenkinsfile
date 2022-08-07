pipeline {
    agent any

    stages {
        stage('Create Stack') {
            steps {
                echo 'Creating Stack'
                bash 'createStack.sh'
            }
        }
        stage('Delete Stack') {
            steps {
                echo 'Deleting Stack'
                bash 'deleteStack.sh'
                echo 'stack deleted'
            }
        }

        
    }
}