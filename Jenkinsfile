pipeline {
    agent any

    stages {
        stage('Create Stack') {
            steps {
                echo 'Creating Stack'
                "./createStack.sh".execute()
            }
        }
                
    }
}