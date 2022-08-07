pipeline {
    agent any

    stages {
        stage('Create Stack') {
            steps {
                echo 'Creating Stack'
                exec createStack.sh
            }
        }
        stage('Delete Stack') {
            steps {
                echo 'Deleting Stack'
                exec deleteStack.sh
                echo 'stack deleted'
            }
        }

        
    }
}