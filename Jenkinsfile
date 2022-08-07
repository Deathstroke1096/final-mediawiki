pipeline {
    agent any

    stages {
        stage('Create Stack') {
            steps {
                echo 'Creating Stack'
                createStack.sh
            }
        }
        stage('Delete Stack') {
            steps {
                echo 'Deleting Stack'
                deleteStack.sh
                echo 'stack deleted'
            }
        }

        
    }
}