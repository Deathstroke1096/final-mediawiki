pipeline {
    agent any

    stages {
        stage('Create Stack') {
            steps {
                echo 'Creating Stack'
                aws cloudformation create-stack --stack-name blue-green --template-body blueGreen.yaml --parameters param.json
            }
        }
        

        
    }
}