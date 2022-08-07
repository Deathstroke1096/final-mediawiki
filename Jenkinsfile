pipeline {
    agent any

    stages {
        stage('Create Stack') {
            steps {
                echo 'Creating Stack'
                'sh createStack.sh'.execute()
            }
        }
                
    }
}