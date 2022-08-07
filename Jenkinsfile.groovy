pipeline {
    agent any

    stages {
        stage('Create Stack') {
            steps {
                echo 'Creating Stack'
                sh createStack.sh
            }
        stage('Delete Stack') {
            steps {
                echo 'Deleting Stack'
                sh deleteStack.sh
                echo 'stack deleted'
            }

        }
    }
}